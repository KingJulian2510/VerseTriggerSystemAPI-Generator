#!/usr/bin/env python3
import os

INPUT_GEN = "TriggerSystemInput_Gen.py"
OUTPUT_GEN = "TriggerSystemOutput_Gen.py"
INPUT_FILE = "InputTriggerAPI.verse"
OUTPUT_FILE = "OutputTriggerAPI.verse"
MERGED_FILE = "TriggerSystemAPI.verse"

def run_script(script):
    code = os.system(f"python {script}")
    if code != 0:
        raise RuntimeError(f"Failed to run {script}")

def read_file(path):
    with open(path, "r", encoding="utf-8") as f:
        return f.read()

def main():
    run_script(INPUT_GEN)
    run_script(OUTPUT_GEN)
    input_content = read_file(INPUT_FILE)
    output_content = read_file(OUTPUT_FILE)
    with open(MERGED_FILE, "w", encoding="utf-8") as f:
        f.write(input_content.strip())
        f.write("\n\n# === OUTPUT API ===\n\n")
        f.write(output_content.strip())
    # Remove raw API files
    for raw in (INPUT_FILE, OUTPUT_FILE):
        try:
            os.remove(raw)
            print(f"Deleted: {raw}")
        except Exception as e:
            print(f"Warning: Could not delete {raw}: {e}")
    print(f"Combined API written to: {os.path.abspath(MERGED_FILE)}")

if __name__ == "__main__":
    main()
