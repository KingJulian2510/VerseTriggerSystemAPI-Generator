#!/usr/bin/env python3
import re
import os

BLACKLIST_FILE = "blacklist.txt"
API_FILE = "Fortnite.digest.verse"


def snake_to_pascal(s: str) -> str:
    return ''.join(part.capitalize() for part in s.split('_'))

def load_api():
    if not os.path.exists(API_FILE):
        return ""

    with open(API_FILE, "r", encoding="utf-8") as f:
        return f.read()

def load_blacklist():
    if not os.path.exists(BLACKLIST_FILE):
        return set()

    with open(BLACKLIST_FILE, "r", encoding="utf-8") as f:
        lines = f.readlines()

    blacklist = set()

    for line in lines:
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        blacklist.add(line)

    return blacklist


def extract_classes(input_text):
    # Match lines like:
    #   text_button_base<native><public> := class<abstract>(widget):
    #   (/Module/Path:)item_name<public> := class<final>(entity):
    class_pattern = re.compile(
        r'(?m)^\s*(?P<qualname>(?:\([^\)]*\))?[A-Za-z0-9_/:\-]+?)<[^>]*>\s*:=\s*class[^()]*\((?P<parent>[^)]+)\):(?P<body>.*?)(?=^\s*(?:[^\n]+<[^>]*>\s*:=\s*class)|\Z)',
        re.S | re.M
    )

    def simple_name(qualname: str) -> str:
        # If a module prefix in parentheses exists like '(/path:)name', extract after '):'
        if '):' in qualname:
            return qualname.split('):', 1)[1]
        # Otherwise, if a colon appears, take text after last ':'
        if ':' in qualname:
            return qualname.split(':')[-1]
        return qualname

    classes = {}

    for m in class_pattern.finditer(input_text):
        qual = m.group('qualname').strip()
        name = simple_name(qual)
        parent_qual = m.group('parent').strip()
        # parent may be qualified too; take last token after ':' or '/'
        if '):' in parent_qual:
            parent = parent_qual.split('):', 1)[1]
        elif ':' in parent_qual:
            parent = parent_qual.split(':')[-1]
        else:
            parent = parent_qual

        body = m.group('body')

        # Find method-like signatures inside the class body.
        # Captures lines like: Name<...>(Param1:Type):Return = external {}
        method_pattern = re.compile(
            r'^\s*([A-Za-z_][A-Za-z0-9_]*)'                     # method name
            r'(?:<[^>]*>)?\s*'                                   # optional generics/qualifiers
            r'\((?P<params>[^)]*)\)\s*'                        # parameters
            r'(?:\:(?P<rettype>[^=\n]+))?',
            re.M
        )

        methods = []
        for mo in method_pattern.finditer(body):
            mname = mo.group(1)
            params = mo.group('params') or ''
            rettype = (mo.group('rettype') or '').strip()

            # Keep only parameterless methods
            if params.strip() != '':
                continue

            # Skip events/listenable or subscribable patterns by checking nearby text
            line_pattern = re.compile(r'^\s*' + re.escape(mname) + r'[^\n]*$', re.M)
            line_match = line_pattern.search(body)
            sig_line = line_match.group(0) if line_match else ''
            sig_lower = sig_line.lower()
            if 'listenable' in sig_lower or 'event' in sig_lower or 'listenable(' in sig_lower:
                continue

            # Require return type to be 'void' (allow optional whitespace and qualifiers)
            # Some signatures may include generics or attributes after the return type; check start
            if not rettype.lower().startswith('void'):
                continue

            methods.append(mname)

        classes[name] = {
            "parent": parent.strip(),
            "methods": methods
        }

    return classes


def extract_build_id(input_text: str) -> str:
    """Extract the build id from the API header, if present."""
    if not input_text:
        return "unknown"
    m = re.search(r'^[ \t]*#\s*Generated from build:\s*(.+)$', input_text, re.M)
    if m:
        return m.group(1).strip()
    # alternative pattern
    m2 = re.search(r'Generated from build[:\s]+([^\n\r]+)', input_text)
    if m2:
        return m2.group(1).strip()
    return "unknown"


def resolve_methods(class_name, classes, visited=None):
    """
    Rekursiv alle Methoden von Parent + eigener Klasse sammeln
    """
    if visited is None:
        visited = set()

    if class_name in visited:
        return []

    visited.add(class_name)

    current = classes.get(class_name)
    if not current:
        return []

    all_methods = []

    parent = current["parent"]

    if parent in classes:
        parent_methods = resolve_methods(parent, classes, visited)
        all_methods.extend(parent_methods)

    all_methods.extend(current["methods"])

    seen = set()
    unique = []
    for m in all_methods:
        if m not in seen:
            seen.add(m)
            unique.append(m)

    return unique


def generate_wrapper(classes, blacklist, build_id=None):
    out_parts = []

    header = """using { /Fortnite.com/Devices }
using { /Fortnite.com/Devices/Patchwork }
using { /Verse.org/Simulation }

# API Base call

creative_device_output<public> := class():

    Main():void=
        {}

"""
    out_parts.append(header)

    # If a build id was provided, include a fancy header
    if build_id:
        fancy = f"""# ==================================
#  Generated from API build: {build_id}
#  Generated on: {__import__('datetime').datetime.utcnow().isoformat()}Z
# ==================================
"""
        out_parts.insert(0, fancy)

    for name, data in classes.items():

        if name in blacklist:
            print(f"Skipping blacklisted device: {name}")
            continue

        methods = resolve_methods(name, classes)

        if not methods:
            continue

        seen = set()
        methods_unique = []
        for mm in methods:
            if mm not in seen:
                seen.add(mm)
                methods_unique.append(mm)

        pascal = snake_to_pascal(name)
        enum_name = f"{pascal}_Options"
        class_name = pascal
        default = methods_unique[0]

        # Enum
        enum_entries = []
        for i, method in enumerate(methods_unique):
            if i == len(methods_unique) - 1:
                enum_entries.append(f"    {method}")
            else:
                enum_entries.append(f"    {method},")
        enum_lines = "\n".join(enum_entries)

        # Case
        case_entries = []
        for i, method in enumerate(methods_unique):
            if i == len(methods_unique) - 1:
                case_entries.append(
                    f"            {enum_name}.{method} => Target.{method}()"
                )
            else:
                case_entries.append(
                    f"            {enum_name}.{method} => Target.{method}(),"
                )
        case_lines = "\n".join(case_entries)

        wrapper = f"""# {name}

{enum_name} := enum:
{enum_lines}

{class_name} := class(creative_device_output):

    @editable
    Target : {name} = {name}{{}}

    @editable
    Interaction : {enum_name} = {enum_name}.{default}

    Main<override>():void=
        case(Interaction):
{case_lines}

"""
        out_parts.append(wrapper)

    return "\n".join(out_parts).strip()


def is_device(class_name: str, classes: dict) -> bool:
    # Consider as device if it (directly or indirectly) inherits from a creative_device.* base
    # or if the name contains 'device'
    visited = set()

    def walk(cn: str):
        if cn in visited:
            return False
        visited.add(cn)
        if 'creative_device' in cn:
            return True
        entry = classes.get(cn)
        if not entry:
            return False
        parent = entry.get('parent')
        if not parent:
            return False
        # parent may include qualifiers; take simple part
        parent_simple = parent.split('.')[-1].split(':')[-1]
        if 'creative_device' in parent_simple:
            return True
        return walk(parent_simple)

    # also treat classes whose name contains 'device' as devices
    if 'device' in class_name.lower():
        return True

    return walk(class_name)


def collect_devices(classes: dict):
    devices = []
    for name in classes.keys():
        if is_device(name, classes):
            devices.append(name)
    return sorted(devices)


if __name__ == "__main__":

    input_file = load_api()

    blacklist = load_blacklist()
    if blacklist:
        print(f"Loaded {len(blacklist)} blacklisted device(s).")

    classes = extract_classes(input_file)

    # Extract build id from the API text
    build_id = extract_build_id(input_file)

    # Collect devices (no devices.txt written)
    devices = collect_devices(classes)
    print(f"Found {len(devices)} device(s).")

    # Generate wrappers only for devices
    device_classes = {k: v for k, v in classes.items() if k in devices}
    result = generate_wrapper(device_classes, blacklist, build_id=build_id)

    output_file = "OutputTriggerAPI.verse"
    with open(output_file, "w", encoding="utf-8") as f:
        f.write(result)

    print(f"Wrapper successfully written to: {os.path.abspath(output_file)}")
