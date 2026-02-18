# ==================================
#  Generated from API build: ++Fortnite+Release-39.40-CL-50577083
#  Generated on: 2026-02-18T12:59:01.423098Z
# ==================================

using { /Fortnite.com/Devices }
using { /Fortnite.com/Devices/Patchwork }
using { /Verse.org/Simulation }

# API Base call

creative_device_output<public> := class():

    Main():void=
        {}


# automated_turret_device

AutomatedTurretDevice_Options := enum:
    Enable,
    Disable,
    UseDefaultTeam,
    UseTeamWildlifeAndCreatures,
    ClearTarget

AutomatedTurretDevice := class(creative_device_output):

    @editable
    Target : automated_turret_device = automated_turret_device{}

    @editable
    Interaction : AutomatedTurretDevice_Options = AutomatedTurretDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            AutomatedTurretDevice_Options.Enable => Target.Enable(),
            AutomatedTurretDevice_Options.Disable => Target.Disable(),
            AutomatedTurretDevice_Options.UseDefaultTeam => Target.UseDefaultTeam(),
            AutomatedTurretDevice_Options.UseTeamWildlifeAndCreatures => Target.UseTeamWildlifeAndCreatures(),
            AutomatedTurretDevice_Options.ClearTarget => Target.ClearTarget()


# animated_mesh_device

AnimatedMeshDevice_Options := enum:
    Play,
    Pause,
    PlayReverse

AnimatedMeshDevice := class(creative_device_output):

    @editable
    Target : animated_mesh_device = animated_mesh_device{}

    @editable
    Interaction : AnimatedMeshDevice_Options = AnimatedMeshDevice_Options.Play

    Main<override>():void=
        case(Interaction):
            AnimatedMeshDevice_Options.Play => Target.Play(),
            AnimatedMeshDevice_Options.Pause => Target.Pause(),
            AnimatedMeshDevice_Options.PlayReverse => Target.PlayReverse()


# carryable_spawner_device

CarryableSpawnerDevice_Options := enum:
    Spawn,
    Despawn,
    Explode,
    Enable,
    Disable

CarryableSpawnerDevice := class(creative_device_output):

    @editable
    Target : carryable_spawner_device = carryable_spawner_device{}

    @editable
    Interaction : CarryableSpawnerDevice_Options = CarryableSpawnerDevice_Options.Spawn

    Main<override>():void=
        case(Interaction):
            CarryableSpawnerDevice_Options.Spawn => Target.Spawn(),
            CarryableSpawnerDevice_Options.Despawn => Target.Despawn(),
            CarryableSpawnerDevice_Options.Explode => Target.Explode(),
            CarryableSpawnerDevice_Options.Enable => Target.Enable(),
            CarryableSpawnerDevice_Options.Disable => Target.Disable()


# reboot_van_device

RebootVanDevice_Options := enum:
    EnableReboot,
    DisableReboot

RebootVanDevice := class(creative_device_output):

    @editable
    Target : reboot_van_device = reboot_van_device{}

    @editable
    Interaction : RebootVanDevice_Options = RebootVanDevice_Options.EnableReboot

    Main<override>():void=
        case(Interaction):
            RebootVanDevice_Options.EnableReboot => Target.EnableReboot(),
            RebootVanDevice_Options.DisableReboot => Target.DisableReboot()


# post_process_device

PostProcessDevice_Options := enum:
    Enable,
    Disable,
    BlendInForAll,
    BlendOutForAll,
    ResetForAll

PostProcessDevice := class(creative_device_output):

    @editable
    Target : post_process_device = post_process_device{}

    @editable
    Interaction : PostProcessDevice_Options = PostProcessDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PostProcessDevice_Options.Enable => Target.Enable(),
            PostProcessDevice_Options.Disable => Target.Disable(),
            PostProcessDevice_Options.BlendInForAll => Target.BlendInForAll(),
            PostProcessDevice_Options.BlendOutForAll => Target.BlendOutForAll(),
            PostProcessDevice_Options.ResetForAll => Target.ResetForAll()


# accolades_device

AccoladesDevice_Options := enum:
    Enable,
    Disable

AccoladesDevice := class(creative_device_output):

    @editable
    Target : accolades_device = accolades_device{}

    @editable
    Interaction : AccoladesDevice_Options = AccoladesDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            AccoladesDevice_Options.Enable => Target.Enable(),
            AccoladesDevice_Options.Disable => Target.Disable()


# analytics_device

AnalyticsDevice_Options := enum:
    Enable,
    Disable

AnalyticsDevice := class(creative_device_output):

    @editable
    Target : analytics_device = analytics_device{}

    @editable
    Interaction : AnalyticsDevice_Options = AnalyticsDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            AnalyticsDevice_Options.Enable => Target.Enable(),
            AnalyticsDevice_Options.Disable => Target.Disable()


# audio_mixer_device

AudioMixerDevice_Options := enum:
    ActivateMix,
    DeactivateMix,
    UnregisterAll

AudioMixerDevice := class(creative_device_output):

    @editable
    Target : audio_mixer_device = audio_mixer_device{}

    @editable
    Interaction : AudioMixerDevice_Options = AudioMixerDevice_Options.ActivateMix

    Main<override>():void=
        case(Interaction):
            AudioMixerDevice_Options.ActivateMix => Target.ActivateMix(),
            AudioMixerDevice_Options.DeactivateMix => Target.DeactivateMix(),
            AudioMixerDevice_Options.UnregisterAll => Target.UnregisterAll()


# audio_player_device

AudioPlayerDevice_Options := enum:
    Enable,
    Disable,
    Play,
    Stop,
    UnregisterAll

AudioPlayerDevice := class(creative_device_output):

    @editable
    Target : audio_player_device = audio_player_device{}

    @editable
    Interaction : AudioPlayerDevice_Options = AudioPlayerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            AudioPlayerDevice_Options.Enable => Target.Enable(),
            AudioPlayerDevice_Options.Disable => Target.Disable(),
            AudioPlayerDevice_Options.Play => Target.Play(),
            AudioPlayerDevice_Options.Stop => Target.Stop(),
            AudioPlayerDevice_Options.UnregisterAll => Target.UnregisterAll()


# campfire_device

CampfireDevice_Options := enum:
    AddWood

CampfireDevice := class(creative_device_output):

    @editable
    Target : campfire_device = campfire_device{}

    @editable
    Interaction : CampfireDevice_Options = CampfireDevice_Options.AddWood

    Main<override>():void=
        case(Interaction):
            CampfireDevice_Options.AddWood => Target.AddWood()


# elimination_feed_device

EliminationFeedDevice_Options := enum:
    Enable,
    Disable,
    Activate

EliminationFeedDevice := class(creative_device_output):

    @editable
    Target : elimination_feed_device = elimination_feed_device{}

    @editable
    Interaction : EliminationFeedDevice_Options = EliminationFeedDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            EliminationFeedDevice_Options.Enable => Target.Enable(),
            EliminationFeedDevice_Options.Disable => Target.Disable(),
            EliminationFeedDevice_Options.Activate => Target.Activate()


# firefly_spawner_device

FireflySpawnerDevice_Options := enum:
    Enable,
    Disable,
    ResetRespawnCount

FireflySpawnerDevice := class(creative_device_output):

    @editable
    Target : firefly_spawner_device = firefly_spawner_device{}

    @editable
    Interaction : FireflySpawnerDevice_Options = FireflySpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            FireflySpawnerDevice_Options.Enable => Target.Enable(),
            FireflySpawnerDevice_Options.Disable => Target.Disable(),
            FireflySpawnerDevice_Options.ResetRespawnCount => Target.ResetRespawnCount()


# end_game_device

EndGameDevice_Options := enum:
    Enable,
    Disable

EndGameDevice := class(creative_device_output):

    @editable
    Target : end_game_device = end_game_device{}

    @editable
    Interaction : EndGameDevice_Options = EndGameDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            EndGameDevice_Options.Enable => Target.Enable(),
            EndGameDevice_Options.Disable => Target.Disable()


# input_trigger_device

InputTriggerDevice_Options := enum:
    Enable,
    Disable,
    UnregisterAll

InputTriggerDevice := class(creative_device_output):

    @editable
    Target : input_trigger_device = input_trigger_device{}

    @editable
    Interaction : InputTriggerDevice_Options = InputTriggerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            InputTriggerDevice_Options.Enable => Target.Enable(),
            InputTriggerDevice_Options.Disable => Target.Disable(),
            InputTriggerDevice_Options.UnregisterAll => Target.UnregisterAll()


# item_placer_device

ItemPlacerDevice_Options := enum:
    Enable,
    Disable

ItemPlacerDevice := class(creative_device_output):

    @editable
    Target : item_placer_device = item_placer_device{}

    @editable
    Interaction : ItemPlacerDevice_Options = ItemPlacerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ItemPlacerDevice_Options.Enable => Target.Enable(),
            ItemPlacerDevice_Options.Disable => Target.Disable()


# item_remover_device

ItemRemoverDevice_Options := enum:
    Enable,
    Disable

ItemRemoverDevice := class(creative_device_output):

    @editable
    Target : item_remover_device = item_remover_device{}

    @editable
    Interaction : ItemRemoverDevice_Options = ItemRemoverDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ItemRemoverDevice_Options.Enable => Target.Enable(),
            ItemRemoverDevice_Options.Disable => Target.Disable()


# player_counter_device

PlayerCounterDevice_Options := enum:
    Enable,
    Disable,
    Reset,
    IncrementTargetCount,
    DecrementTargetCount,
    CompareToTarget,
    TransmitForAllCounted,
    UnregisterAll,
    ShowInfoPanel,
    HideInfoPanel

PlayerCounterDevice := class(creative_device_output):

    @editable
    Target : player_counter_device = player_counter_device{}

    @editable
    Interaction : PlayerCounterDevice_Options = PlayerCounterDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PlayerCounterDevice_Options.Enable => Target.Enable(),
            PlayerCounterDevice_Options.Disable => Target.Disable(),
            PlayerCounterDevice_Options.Reset => Target.Reset(),
            PlayerCounterDevice_Options.IncrementTargetCount => Target.IncrementTargetCount(),
            PlayerCounterDevice_Options.DecrementTargetCount => Target.DecrementTargetCount(),
            PlayerCounterDevice_Options.CompareToTarget => Target.CompareToTarget(),
            PlayerCounterDevice_Options.TransmitForAllCounted => Target.TransmitForAllCounted(),
            PlayerCounterDevice_Options.UnregisterAll => Target.UnregisterAll(),
            PlayerCounterDevice_Options.ShowInfoPanel => Target.ShowInfoPanel(),
            PlayerCounterDevice_Options.HideInfoPanel => Target.HideInfoPanel()


# customizable_light_device

CustomizableLightDevice_Options := enum:
    Enable,
    Disable,
    Reset,
    TurnOn,
    TurnOff,
    Toggle,
    DimLight,
    UndimLight

CustomizableLightDevice := class(creative_device_output):

    @editable
    Target : customizable_light_device = customizable_light_device{}

    @editable
    Interaction : CustomizableLightDevice_Options = CustomizableLightDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            CustomizableLightDevice_Options.Enable => Target.Enable(),
            CustomizableLightDevice_Options.Disable => Target.Disable(),
            CustomizableLightDevice_Options.Reset => Target.Reset(),
            CustomizableLightDevice_Options.TurnOn => Target.TurnOn(),
            CustomizableLightDevice_Options.TurnOff => Target.TurnOff(),
            CustomizableLightDevice_Options.Toggle => Target.Toggle(),
            CustomizableLightDevice_Options.DimLight => Target.DimLight(),
            CustomizableLightDevice_Options.UndimLight => Target.UndimLight()


# player_marker_device

PlayerMarkerDevice_Options := enum:
    Enable,
    Disable,
    DetachFromAll

PlayerMarkerDevice := class(creative_device_output):

    @editable
    Target : player_marker_device = player_marker_device{}

    @editable
    Interaction : PlayerMarkerDevice_Options = PlayerMarkerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PlayerMarkerDevice_Options.Enable => Target.Enable(),
            PlayerMarkerDevice_Options.Disable => Target.Disable(),
            PlayerMarkerDevice_Options.DetachFromAll => Target.DetachFromAll()


# race_checkpoint_device

RaceCheckpointDevice_Options := enum:
    Enable,
    Disable

RaceCheckpointDevice := class(creative_device_output):

    @editable
    Target : race_checkpoint_device = race_checkpoint_device{}

    @editable
    Interaction : RaceCheckpointDevice_Options = RaceCheckpointDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            RaceCheckpointDevice_Options.Enable => Target.Enable(),
            RaceCheckpointDevice_Options.Disable => Target.Disable()


# race_manager_device

RaceManagerDevice_Options := enum:
    Enable,
    Disable,
    Begin,
    End

RaceManagerDevice := class(creative_device_output):

    @editable
    Target : race_manager_device = race_manager_device{}

    @editable
    Interaction : RaceManagerDevice_Options = RaceManagerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            RaceManagerDevice_Options.Enable => Target.Enable(),
            RaceManagerDevice_Options.Disable => Target.Disable(),
            RaceManagerDevice_Options.Begin => Target.Begin(),
            RaceManagerDevice_Options.End => Target.End()


# prop_mover_device

PropMoverDevice_Options := enum:
    Reset,
    Begin,
    Advance,
    Reverse

PropMoverDevice := class(creative_device_output):

    @editable
    Target : prop_mover_device = prop_mover_device{}

    @editable
    Interaction : PropMoverDevice_Options = PropMoverDevice_Options.Reset

    Main<override>():void=
        case(Interaction):
            PropMoverDevice_Options.Reset => Target.Reset(),
            PropMoverDevice_Options.Begin => Target.Begin(),
            PropMoverDevice_Options.Advance => Target.Advance(),
            PropMoverDevice_Options.Reverse => Target.Reverse()


# prop_manipulator_device

PropManipulatorDevice_Options := enum:
    Enable,
    Disable,
    ShowProps,
    HideProps,
    ExhaustResources,
    RestockResources,
    RestoreHealth,
    SetResourceOverridesActive,
    DisableResourceNodeOverrides

PropManipulatorDevice := class(creative_device_output):

    @editable
    Target : prop_manipulator_device = prop_manipulator_device{}

    @editable
    Interaction : PropManipulatorDevice_Options = PropManipulatorDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PropManipulatorDevice_Options.Enable => Target.Enable(),
            PropManipulatorDevice_Options.Disable => Target.Disable(),
            PropManipulatorDevice_Options.ShowProps => Target.ShowProps(),
            PropManipulatorDevice_Options.HideProps => Target.HideProps(),
            PropManipulatorDevice_Options.ExhaustResources => Target.ExhaustResources(),
            PropManipulatorDevice_Options.RestockResources => Target.RestockResources(),
            PropManipulatorDevice_Options.RestoreHealth => Target.RestoreHealth(),
            PropManipulatorDevice_Options.SetResourceOverridesActive => Target.SetResourceOverridesActive(),
            PropManipulatorDevice_Options.DisableResourceNodeOverrides => Target.DisableResourceNodeOverrides()


# real_time_clock_device

RealTimeClockDevice_Options := enum:
    Enable,
    Disable

RealTimeClockDevice := class(creative_device_output):

    @editable
    Target : real_time_clock_device = real_time_clock_device{}

    @editable
    Interaction : RealTimeClockDevice_Options = RealTimeClockDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            RealTimeClockDevice_Options.Enable => Target.Enable(),
            RealTimeClockDevice_Options.Disable => Target.Disable()


# sentry_device

SentryDevice_Options := enum:
    Enable,
    Disable,
    Spawn,
    DestroySentry,
    ResetTeam,
    Pacify,
    EnableAlert,
    ResetAlertCooldown

SentryDevice := class(creative_device_output):

    @editable
    Target : sentry_device = sentry_device{}

    @editable
    Interaction : SentryDevice_Options = SentryDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            SentryDevice_Options.Enable => Target.Enable(),
            SentryDevice_Options.Disable => Target.Disable(),
            SentryDevice_Options.Spawn => Target.Spawn(),
            SentryDevice_Options.DestroySentry => Target.DestroySentry(),
            SentryDevice_Options.ResetTeam => Target.ResetTeam(),
            SentryDevice_Options.Pacify => Target.Pacify(),
            SentryDevice_Options.EnableAlert => Target.EnableAlert(),
            SentryDevice_Options.ResetAlertCooldown => Target.ResetAlertCooldown()


# skydome_device

SkydomeDevice_Options := enum:
    Enable,
    Disable

SkydomeDevice := class(creative_device_output):

    @editable
    Target : skydome_device = skydome_device{}

    @editable
    Interaction : SkydomeDevice_Options = SkydomeDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            SkydomeDevice_Options.Enable => Target.Enable(),
            SkydomeDevice_Options.Disable => Target.Disable()


# switch_device

SwitchDevice_Options := enum:
    Enable,
    Disable,
    LoadStateForAll,
    SaveStateForAll,
    ClearAllPersistenceData

SwitchDevice := class(creative_device_output):

    @editable
    Target : switch_device = switch_device{}

    @editable
    Interaction : SwitchDevice_Options = SwitchDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            SwitchDevice_Options.Enable => Target.Enable(),
            SwitchDevice_Options.Disable => Target.Disable(),
            SwitchDevice_Options.LoadStateForAll => Target.LoadStateForAll(),
            SwitchDevice_Options.SaveStateForAll => Target.SaveStateForAll(),
            SwitchDevice_Options.ClearAllPersistenceData => Target.ClearAllPersistenceData()


# vfx_creator_device

VfxCreatorDevice_Options := enum:
    Enable,
    Disable,
    ToggleEnabled,
    Begin,
    BeginForAll,
    End,
    EndForAll,
    Toggle,
    ToggleForAll,
    TogglePause,
    TogglePauseForAll,
    RemoveFromAll

VfxCreatorDevice := class(creative_device_output):

    @editable
    Target : vfx_creator_device = vfx_creator_device{}

    @editable
    Interaction : VfxCreatorDevice_Options = VfxCreatorDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VfxCreatorDevice_Options.Enable => Target.Enable(),
            VfxCreatorDevice_Options.Disable => Target.Disable(),
            VfxCreatorDevice_Options.ToggleEnabled => Target.ToggleEnabled(),
            VfxCreatorDevice_Options.Begin => Target.Begin(),
            VfxCreatorDevice_Options.BeginForAll => Target.BeginForAll(),
            VfxCreatorDevice_Options.End => Target.End(),
            VfxCreatorDevice_Options.EndForAll => Target.EndForAll(),
            VfxCreatorDevice_Options.Toggle => Target.Toggle(),
            VfxCreatorDevice_Options.ToggleForAll => Target.ToggleForAll(),
            VfxCreatorDevice_Options.TogglePause => Target.TogglePause(),
            VfxCreatorDevice_Options.TogglePauseForAll => Target.TogglePauseForAll(),
            VfxCreatorDevice_Options.RemoveFromAll => Target.RemoveFromAll()


# player_spawner_device

PlayerSpawnerDevice_Options := enum:
    Enable,
    Disable

PlayerSpawnerDevice := class(creative_device_output):

    @editable
    Target : player_spawner_device = player_spawner_device{}

    @editable
    Interaction : PlayerSpawnerDevice_Options = PlayerSpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PlayerSpawnerDevice_Options.Enable => Target.Enable(),
            PlayerSpawnerDevice_Options.Disable => Target.Disable()


# player_checkpoint_device

PlayerCheckpointDevice_Options := enum:
    Enable,
    Disable

PlayerCheckpointDevice := class(creative_device_output):

    @editable
    Target : player_checkpoint_device = player_checkpoint_device{}

    @editable
    Interaction : PlayerCheckpointDevice_Options = PlayerCheckpointDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PlayerCheckpointDevice_Options.Enable => Target.Enable(),
            PlayerCheckpointDevice_Options.Disable => Target.Disable()


# map_controller_device

MapControllerDevice_Options := enum:
    Activate,
    Deactivate,
    Enable,
    Disable

MapControllerDevice := class(creative_device_output):

    @editable
    Target : map_controller_device = map_controller_device{}

    @editable
    Interaction : MapControllerDevice_Options = MapControllerDevice_Options.Activate

    Main<override>():void=
        case(Interaction):
            MapControllerDevice_Options.Activate => Target.Activate(),
            MapControllerDevice_Options.Deactivate => Target.Deactivate(),
            MapControllerDevice_Options.Enable => Target.Enable(),
            MapControllerDevice_Options.Disable => Target.Disable()


# hud_controller_device

HudControllerDevice_Options := enum:
    Enable,
    Disable,
    ResetAffectedClass,
    ResetAffectedTeam

HudControllerDevice := class(creative_device_output):

    @editable
    Target : hud_controller_device = hud_controller_device{}

    @editable
    Interaction : HudControllerDevice_Options = HudControllerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            HudControllerDevice_Options.Enable => Target.Enable(),
            HudControllerDevice_Options.Disable => Target.Disable(),
            HudControllerDevice_Options.ResetAffectedClass => Target.ResetAffectedClass(),
            HudControllerDevice_Options.ResetAffectedTeam => Target.ResetAffectedTeam()


# gameplay_controls_side_scroller_device

GameplayControlsSideScrollerDevice_Options := enum:
    Enable,
    Disable,
    AddToAll,
    RemoveFromAll

GameplayControlsSideScrollerDevice := class(creative_device_output):

    @editable
    Target : gameplay_controls_side_scroller_device = gameplay_controls_side_scroller_device{}

    @editable
    Interaction : GameplayControlsSideScrollerDevice_Options = GameplayControlsSideScrollerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            GameplayControlsSideScrollerDevice_Options.Enable => Target.Enable(),
            GameplayControlsSideScrollerDevice_Options.Disable => Target.Disable(),
            GameplayControlsSideScrollerDevice_Options.AddToAll => Target.AddToAll(),
            GameplayControlsSideScrollerDevice_Options.RemoveFromAll => Target.RemoveFromAll()


# gameplay_controls_third_person_device

GameplayControlsThirdPersonDevice_Options := enum:
    Enable,
    Disable,
    AddToAll,
    RemoveFromAll

GameplayControlsThirdPersonDevice := class(creative_device_output):

    @editable
    Target : gameplay_controls_third_person_device = gameplay_controls_third_person_device{}

    @editable
    Interaction : GameplayControlsThirdPersonDevice_Options = GameplayControlsThirdPersonDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            GameplayControlsThirdPersonDevice_Options.Enable => Target.Enable(),
            GameplayControlsThirdPersonDevice_Options.Disable => Target.Disable(),
            GameplayControlsThirdPersonDevice_Options.AddToAll => Target.AddToAll(),
            GameplayControlsThirdPersonDevice_Options.RemoveFromAll => Target.RemoveFromAll()


# player_reference_device

PlayerReferenceDevice_Options := enum:
    Enable,
    Disable,
    Clear

PlayerReferenceDevice := class(creative_device_output):

    @editable
    Target : player_reference_device = player_reference_device{}

    @editable
    Interaction : PlayerReferenceDevice_Options = PlayerReferenceDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PlayerReferenceDevice_Options.Enable => Target.Enable(),
            PlayerReferenceDevice_Options.Disable => Target.Disable(),
            PlayerReferenceDevice_Options.Clear => Target.Clear()


# bouncer_device

BouncerDevice_Options := enum:
    Enable,
    Disable

BouncerDevice := class(creative_device_output):

    @editable
    Target : bouncer_device = bouncer_device{}

    @editable
    Interaction : BouncerDevice_Options = BouncerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            BouncerDevice_Options.Enable => Target.Enable(),
            BouncerDevice_Options.Disable => Target.Disable()


# signal_remote_manager_device

SignalRemoteManagerDevice_Options := enum:
    Enable,
    Disable

SignalRemoteManagerDevice := class(creative_device_output):

    @editable
    Target : signal_remote_manager_device = signal_remote_manager_device{}

    @editable
    Interaction : SignalRemoteManagerDevice_Options = SignalRemoteManagerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            SignalRemoteManagerDevice_Options.Enable => Target.Enable(),
            SignalRemoteManagerDevice_Options.Disable => Target.Disable()


# crash_pad_device

CrashPadDevice_Options := enum:
    Enable,
    Disable

CrashPadDevice := class(creative_device_output):

    @editable
    Target : crash_pad_device = crash_pad_device{}

    @editable
    Interaction : CrashPadDevice_Options = CrashPadDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            CrashPadDevice_Options.Enable => Target.Enable(),
            CrashPadDevice_Options.Disable => Target.Disable()


# crowd_volume_device

CrowdVolumeDevice_Options := enum:
    Enable,
    Disable

CrowdVolumeDevice := class(creative_device_output):

    @editable
    Target : crowd_volume_device = crowd_volume_device{}

    @editable
    Interaction : CrowdVolumeDevice_Options = CrowdVolumeDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            CrowdVolumeDevice_Options.Enable => Target.Enable(),
            CrowdVolumeDevice_Options.Disable => Target.Disable()


# disguise_device

DisguiseDevice_Options := enum:
    Enable,
    Disable

DisguiseDevice := class(creative_device_output):

    @editable
    Target : disguise_device = disguise_device{}

    @editable
    Interaction : DisguiseDevice_Options = DisguiseDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            DisguiseDevice_Options.Enable => Target.Enable(),
            DisguiseDevice_Options.Disable => Target.Disable()


# fishing_zone_device

FishingZoneDevice_Options := enum:
    Enable,
    Disable,
    Reset,
    Restock

FishingZoneDevice := class(creative_device_output):

    @editable
    Target : fishing_zone_device = fishing_zone_device{}

    @editable
    Interaction : FishingZoneDevice_Options = FishingZoneDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            FishingZoneDevice_Options.Enable => Target.Enable(),
            FishingZoneDevice_Options.Disable => Target.Disable(),
            FishingZoneDevice_Options.Reset => Target.Reset(),
            FishingZoneDevice_Options.Restock => Target.Restock()


# hiding_prop_device

HidingPropDevice_Options := enum:
    Enable,
    Disable

HidingPropDevice := class(creative_device_output):

    @editable
    Target : hiding_prop_device = hiding_prop_device{}

    @editable
    Interaction : HidingPropDevice_Options = HidingPropDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            HidingPropDevice_Options.Enable => Target.Enable(),
            HidingPropDevice_Options.Disable => Target.Disable()


# video_player_device

VideoPlayerDevice_Options := enum:
    Enable,
    Disable,
    EnableCollision,
    DisableCollision,
    EndForAll,
    Restart,
    Seek,
    TakeControl,
    ReleaseControl

VideoPlayerDevice := class(creative_device_output):

    @editable
    Target : video_player_device = video_player_device{}

    @editable
    Interaction : VideoPlayerDevice_Options = VideoPlayerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VideoPlayerDevice_Options.Enable => Target.Enable(),
            VideoPlayerDevice_Options.Disable => Target.Disable(),
            VideoPlayerDevice_Options.EnableCollision => Target.EnableCollision(),
            VideoPlayerDevice_Options.DisableCollision => Target.DisableCollision(),
            VideoPlayerDevice_Options.EndForAll => Target.EndForAll(),
            VideoPlayerDevice_Options.Restart => Target.Restart(),
            VideoPlayerDevice_Options.Seek => Target.Seek(),
            VideoPlayerDevice_Options.TakeControl => Target.TakeControl(),
            VideoPlayerDevice_Options.ReleaseControl => Target.ReleaseControl()


# dance_mannequin_device

DanceMannequinDevice_Options := enum:
    Enable,
    Disable,
    ActivateDefaultPreset,
    ActivatePreset2,
    ActivatePreset3,
    DeactivateSkinAndEmoteCapture

DanceMannequinDevice := class(creative_device_output):

    @editable
    Target : dance_mannequin_device = dance_mannequin_device{}

    @editable
    Interaction : DanceMannequinDevice_Options = DanceMannequinDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            DanceMannequinDevice_Options.Enable => Target.Enable(),
            DanceMannequinDevice_Options.Disable => Target.Disable(),
            DanceMannequinDevice_Options.ActivateDefaultPreset => Target.ActivateDefaultPreset(),
            DanceMannequinDevice_Options.ActivatePreset2 => Target.ActivatePreset2(),
            DanceMannequinDevice_Options.ActivatePreset3 => Target.ActivatePreset3(),
            DanceMannequinDevice_Options.DeactivateSkinAndEmoteCapture => Target.DeactivateSkinAndEmoteCapture()


# barrier_device

BarrierDevice_Options := enum:
    Enable,
    Disable,
    RemoveAllFromIgnoreList

BarrierDevice := class(creative_device_output):

    @editable
    Target : barrier_device = barrier_device{}

    @editable
    Interaction : BarrierDevice_Options = BarrierDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            BarrierDevice_Options.Enable => Target.Enable(),
            BarrierDevice_Options.Disable => Target.Disable(),
            BarrierDevice_Options.RemoveAllFromIgnoreList => Target.RemoveAllFromIgnoreList()


# damage_volume_device

DamageVolumeDevice_Options := enum:
    Enable,
    Disable

DamageVolumeDevice := class(creative_device_output):

    @editable
    Target : damage_volume_device = damage_volume_device{}

    @editable
    Interaction : DamageVolumeDevice_Options = DamageVolumeDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            DamageVolumeDevice_Options.Enable => Target.Enable(),
            DamageVolumeDevice_Options.Disable => Target.Disable()


# fire_volume_device

FireVolumeDevice_Options := enum:
    Enable,
    Disable,
    Extinguish,
    Ignite

FireVolumeDevice := class(creative_device_output):

    @editable
    Target : fire_volume_device = fire_volume_device{}

    @editable
    Interaction : FireVolumeDevice_Options = FireVolumeDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            FireVolumeDevice_Options.Enable => Target.Enable(),
            FireVolumeDevice_Options.Disable => Target.Disable(),
            FireVolumeDevice_Options.Extinguish => Target.Extinguish(),
            FireVolumeDevice_Options.Ignite => Target.Ignite()


# mutator_zone_device

MutatorZoneDevice_Options := enum:
    Enable,
    Disable

MutatorZoneDevice := class(creative_device_output):

    @editable
    Target : mutator_zone_device = mutator_zone_device{}

    @editable
    Interaction : MutatorZoneDevice_Options = MutatorZoneDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            MutatorZoneDevice_Options.Enable => Target.Enable(),
            MutatorZoneDevice_Options.Disable => Target.Disable()


# skydive_volume_device

SkydiveVolumeDevice_Options := enum:
    Enable,
    Disable,
    EnableVolumeLocking,
    DisableVolumeLocking

SkydiveVolumeDevice := class(creative_device_output):

    @editable
    Target : skydive_volume_device = skydive_volume_device{}

    @editable
    Interaction : SkydiveVolumeDevice_Options = SkydiveVolumeDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            SkydiveVolumeDevice_Options.Enable => Target.Enable(),
            SkydiveVolumeDevice_Options.Disable => Target.Disable(),
            SkydiveVolumeDevice_Options.EnableVolumeLocking => Target.EnableVolumeLocking(),
            SkydiveVolumeDevice_Options.DisableVolumeLocking => Target.DisableVolumeLocking()


# spire_spike_device

SpireSpikeDevice_Options := enum:
    Spawn,
    Despawn,
    ChargeKnockback

SpireSpikeDevice := class(creative_device_output):

    @editable
    Target : spire_spike_device = spire_spike_device{}

    @editable
    Interaction : SpireSpikeDevice_Options = SpireSpikeDevice_Options.Spawn

    Main<override>():void=
        case(Interaction):
            SpireSpikeDevice_Options.Spawn => Target.Spawn(),
            SpireSpikeDevice_Options.Despawn => Target.Despawn(),
            SpireSpikeDevice_Options.ChargeKnockback => Target.ChargeKnockback()


# skilled_interaction_device

SkilledInteractionDevice_Options := enum:
    Enable,
    Disable

SkilledInteractionDevice := class(creative_device_output):

    @editable
    Target : skilled_interaction_device = skilled_interaction_device{}

    @editable
    Interaction : SkilledInteractionDevice_Options = SkilledInteractionDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            SkilledInteractionDevice_Options.Enable => Target.Enable(),
            SkilledInteractionDevice_Options.Disable => Target.Disable()


# gameplay_camera_fixed_point_device

GameplayCameraFixedPointDevice_Options := enum:
    Enable,
    Disable,
    AddToAll,
    RemoveFromAll

GameplayCameraFixedPointDevice := class(creative_device_output):

    @editable
    Target : gameplay_camera_fixed_point_device = gameplay_camera_fixed_point_device{}

    @editable
    Interaction : GameplayCameraFixedPointDevice_Options = GameplayCameraFixedPointDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            GameplayCameraFixedPointDevice_Options.Enable => Target.Enable(),
            GameplayCameraFixedPointDevice_Options.Disable => Target.Disable(),
            GameplayCameraFixedPointDevice_Options.AddToAll => Target.AddToAll(),
            GameplayCameraFixedPointDevice_Options.RemoveFromAll => Target.RemoveFromAll()


# gameplay_camera_first_person_device

GameplayCameraFirstPersonDevice_Options := enum:
    Enable,
    Disable,
    AddToAll,
    RemoveFromAll

GameplayCameraFirstPersonDevice := class(creative_device_output):

    @editable
    Target : gameplay_camera_first_person_device = gameplay_camera_first_person_device{}

    @editable
    Interaction : GameplayCameraFirstPersonDevice_Options = GameplayCameraFirstPersonDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            GameplayCameraFirstPersonDevice_Options.Enable => Target.Enable(),
            GameplayCameraFirstPersonDevice_Options.Disable => Target.Disable(),
            GameplayCameraFirstPersonDevice_Options.AddToAll => Target.AddToAll(),
            GameplayCameraFirstPersonDevice_Options.RemoveFromAll => Target.RemoveFromAll()


# gameplay_camera_fixed_angle_device

GameplayCameraFixedAngleDevice_Options := enum:
    Enable,
    Disable,
    AddToAll,
    RemoveFromAll

GameplayCameraFixedAngleDevice := class(creative_device_output):

    @editable
    Target : gameplay_camera_fixed_angle_device = gameplay_camera_fixed_angle_device{}

    @editable
    Interaction : GameplayCameraFixedAngleDevice_Options = GameplayCameraFixedAngleDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            GameplayCameraFixedAngleDevice_Options.Enable => Target.Enable(),
            GameplayCameraFixedAngleDevice_Options.Disable => Target.Disable(),
            GameplayCameraFixedAngleDevice_Options.AddToAll => Target.AddToAll(),
            GameplayCameraFixedAngleDevice_Options.RemoveFromAll => Target.RemoveFromAll()


# gameplay_camera_orbit_device

GameplayCameraOrbitDevice_Options := enum:
    Enable,
    Disable,
    AddToAll,
    RemoveFromAll

GameplayCameraOrbitDevice := class(creative_device_output):

    @editable
    Target : gameplay_camera_orbit_device = gameplay_camera_orbit_device{}

    @editable
    Interaction : GameplayCameraOrbitDevice_Options = GameplayCameraOrbitDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            GameplayCameraOrbitDevice_Options.Enable => Target.Enable(),
            GameplayCameraOrbitDevice_Options.Disable => Target.Disable(),
            GameplayCameraOrbitDevice_Options.AddToAll => Target.AddToAll(),
            GameplayCameraOrbitDevice_Options.RemoveFromAll => Target.RemoveFromAll()


# ai_patrol_path_device

AiPatrolPathDevice_Options := enum:
    Enable,
    Disable

AiPatrolPathDevice := class(creative_device_output):

    @editable
    Target : ai_patrol_path_device = ai_patrol_path_device{}

    @editable
    Interaction : AiPatrolPathDevice_Options = AiPatrolPathDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            AiPatrolPathDevice_Options.Enable => Target.Enable(),
            AiPatrolPathDevice_Options.Disable => Target.Disable()


# creature_manager_device

CreatureManagerDevice_Options := enum:
    Enable,
    Disable

CreatureManagerDevice := class(creative_device_output):

    @editable
    Target : creature_manager_device = creature_manager_device{}

    @editable
    Interaction : CreatureManagerDevice_Options = CreatureManagerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            CreatureManagerDevice_Options.Enable => Target.Enable(),
            CreatureManagerDevice_Options.Disable => Target.Disable()


# creature_placer_device

CreaturePlacerDevice_Options := enum:
    Despawn

CreaturePlacerDevice := class(creative_device_output):

    @editable
    Target : creature_placer_device = creature_placer_device{}

    @editable
    Interaction : CreaturePlacerDevice_Options = CreaturePlacerDevice_Options.Despawn

    Main<override>():void=
        case(Interaction):
            CreaturePlacerDevice_Options.Despawn => Target.Despawn()


# creature_spawner_device

CreatureSpawnerDevice_Options := enum:
    Enable,
    Disable,
    DestroySpawner,
    EliminateCreatures

CreatureSpawnerDevice := class(creative_device_output):

    @editable
    Target : creature_spawner_device = creature_spawner_device{}

    @editable
    Interaction : CreatureSpawnerDevice_Options = CreatureSpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            CreatureSpawnerDevice_Options.Enable => Target.Enable(),
            CreatureSpawnerDevice_Options.Disable => Target.Disable(),
            CreatureSpawnerDevice_Options.DestroySpawner => Target.DestroySpawner(),
            CreatureSpawnerDevice_Options.EliminateCreatures => Target.EliminateCreatures()


# patchwork_device

PatchworkDevice_Options := enum:
    Enable,
    Disable

PatchworkDevice := class(creative_device_output):

    @editable
    Target : patchwork_device = patchwork_device{}

    @editable
    Interaction : PatchworkDevice_Options = PatchworkDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PatchworkDevice_Options.Enable => Target.Enable(),
            PatchworkDevice_Options.Disable => Target.Disable()


# drum_sequencer_device

DrumSequencerDevice_Options := enum:
    Enable,
    Disable

DrumSequencerDevice := class(creative_device_output):

    @editable
    Target : drum_sequencer_device = drum_sequencer_device{}

    @editable
    Interaction : DrumSequencerDevice_Options = DrumSequencerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            DrumSequencerDevice_Options.Enable => Target.Enable(),
            DrumSequencerDevice_Options.Disable => Target.Disable()


# lfo_modulator_device

LfoModulatorDevice_Options := enum:
    Enable,
    Disable

LfoModulatorDevice := class(creative_device_output):

    @editable
    Target : lfo_modulator_device = lfo_modulator_device{}

    @editable
    Interaction : LfoModulatorDevice_Options = LfoModulatorDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            LfoModulatorDevice_Options.Enable => Target.Enable(),
            LfoModulatorDevice_Options.Disable => Target.Disable()


# distortion_effect_device

DistortionEffectDevice_Options := enum:
    Enable,
    Disable

DistortionEffectDevice := class(creative_device_output):

    @editable
    Target : distortion_effect_device = distortion_effect_device{}

    @editable
    Interaction : DistortionEffectDevice_Options = DistortionEffectDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            DistortionEffectDevice_Options.Enable => Target.Enable(),
            DistortionEffectDevice_Options.Disable => Target.Disable()


# song_sync_device

SongSyncDevice_Options := enum:
    Enable,
    Disable

SongSyncDevice := class(creative_device_output):

    @editable
    Target : song_sync_device = song_sync_device{}

    @editable
    Interaction : SongSyncDevice_Options = SongSyncDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            SongSyncDevice_Options.Enable => Target.Enable(),
            SongSyncDevice_Options.Disable => Target.Disable()


# note_trigger_device

NoteTriggerDevice_Options := enum:
    Enable,
    Disable

NoteTriggerDevice := class(creative_device_output):

    @editable
    Target : note_trigger_device = note_trigger_device{}

    @editable
    Interaction : NoteTriggerDevice_Options = NoteTriggerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            NoteTriggerDevice_Options.Enable => Target.Enable(),
            NoteTriggerDevice_Options.Disable => Target.Disable()


# step_modulator_device

StepModulatorDevice_Options := enum:
    Enable,
    Disable

StepModulatorDevice := class(creative_device_output):

    @editable
    Target : step_modulator_device = step_modulator_device{}

    @editable
    Interaction : StepModulatorDevice_Options = StepModulatorDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            StepModulatorDevice_Options.Enable => Target.Enable(),
            StepModulatorDevice_Options.Disable => Target.Disable()


# value_setter_device

ValueSetterDevice_Options := enum:
    Enable,
    Disable

ValueSetterDevice := class(creative_device_output):

    @editable
    Target : value_setter_device = value_setter_device{}

    @editable
    Interaction : ValueSetterDevice_Options = ValueSetterDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ValueSetterDevice_Options.Enable => Target.Enable(),
            ValueSetterDevice_Options.Disable => Target.Disable()


# instrument_player_device

InstrumentPlayerDevice_Options := enum:
    Enable,
    Disable

InstrumentPlayerDevice := class(creative_device_output):

    @editable
    Target : instrument_player_device = instrument_player_device{}

    @editable
    Interaction : InstrumentPlayerDevice_Options = InstrumentPlayerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            InstrumentPlayerDevice_Options.Enable => Target.Enable(),
            InstrumentPlayerDevice_Options.Disable => Target.Disable()


# omega_synthesizer_device

OmegaSynthesizerDevice_Options := enum:
    Enable,
    Disable

OmegaSynthesizerDevice := class(creative_device_output):

    @editable
    Target : omega_synthesizer_device = omega_synthesizer_device{}

    @editable
    Interaction : OmegaSynthesizerDevice_Options = OmegaSynthesizerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            OmegaSynthesizerDevice_Options.Enable => Target.Enable(),
            OmegaSynthesizerDevice_Options.Disable => Target.Disable()


# drum_player_device

DrumPlayerDevice_Options := enum:
    Enable,
    Disable

DrumPlayerDevice := class(creative_device_output):

    @editable
    Target : drum_player_device = drum_player_device{}

    @editable
    Interaction : DrumPlayerDevice_Options = DrumPlayerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            DrumPlayerDevice_Options.Enable => Target.Enable(),
            DrumPlayerDevice_Options.Disable => Target.Disable()


# echo_effect_device

EchoEffectDevice_Options := enum:
    Enable,
    Disable

EchoEffectDevice := class(creative_device_output):

    @editable
    Target : echo_effect_device = echo_effect_device{}

    @editable
    Interaction : EchoEffectDevice_Options = EchoEffectDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            EchoEffectDevice_Options.Enable => Target.Enable(),
            EchoEffectDevice_Options.Disable => Target.Disable()


# note_progressor_device

NoteProgressorDevice_Options := enum:
    Enable,
    Disable

NoteProgressorDevice := class(creative_device_output):

    @editable
    Target : note_progressor_device = note_progressor_device{}

    @editable
    Interaction : NoteProgressorDevice_Options = NoteProgressorDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            NoteProgressorDevice_Options.Enable => Target.Enable(),
            NoteProgressorDevice_Options.Disable => Target.Disable()


# speaker_device

SpeakerDevice_Options := enum:
    Enable,
    Disable

SpeakerDevice := class(creative_device_output):

    @editable
    Target : speaker_device = speaker_device{}

    @editable
    Interaction : SpeakerDevice_Options = SpeakerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            SpeakerDevice_Options.Enable => Target.Enable(),
            SpeakerDevice_Options.Disable => Target.Disable()


# music_manager_device

MusicManagerDevice_Options := enum:
    Enable,
    Disable

MusicManagerDevice := class(creative_device_output):

    @editable
    Target : music_manager_device = music_manager_device{}

    @editable
    Interaction : MusicManagerDevice_Options = MusicManagerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            MusicManagerDevice_Options.Enable => Target.Enable(),
            MusicManagerDevice_Options.Disable => Target.Disable()


# note_sequencer_device

NoteSequencerDevice_Options := enum:
    Enable,
    Disable

NoteSequencerDevice := class(creative_device_output):

    @editable
    Target : note_sequencer_device = note_sequencer_device{}

    @editable
    Interaction : NoteSequencerDevice_Options = NoteSequencerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            NoteSequencerDevice_Options.Enable => Target.Enable(),
            NoteSequencerDevice_Options.Disable => Target.Disable()


# cable_splitter_device

CableSplitterDevice_Options := enum:
    Enable,
    Disable

CableSplitterDevice := class(creative_device_output):

    @editable
    Target : cable_splitter_device = cable_splitter_device{}

    @editable
    Interaction : CableSplitterDevice_Options = CableSplitterDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            CableSplitterDevice_Options.Enable => Target.Enable(),
            CableSplitterDevice_Options.Disable => Target.Disable()


# advanced_storm_controller_device

AdvancedStormControllerDevice_Options := enum:
    GenerateStorm,
    DestroyStorm

AdvancedStormControllerDevice := class(creative_device_output):

    @editable
    Target : advanced_storm_controller_device = advanced_storm_controller_device{}

    @editable
    Interaction : AdvancedStormControllerDevice_Options = AdvancedStormControllerDevice_Options.GenerateStorm

    Main<override>():void=
        case(Interaction):
            AdvancedStormControllerDevice_Options.GenerateStorm => Target.GenerateStorm(),
            AdvancedStormControllerDevice_Options.DestroyStorm => Target.DestroyStorm()


# air_vent_device

AirVentDevice_Options := enum:
    Enable,
    Disable,
    Activate

AirVentDevice := class(creative_device_output):

    @editable
    Target : air_vent_device = air_vent_device{}

    @editable
    Interaction : AirVentDevice_Options = AirVentDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            AirVentDevice_Options.Enable => Target.Enable(),
            AirVentDevice_Options.Disable => Target.Disable(),
            AirVentDevice_Options.Activate => Target.Activate()


# attribute_evaluator_device

AttributeEvaluatorDevice_Options := enum:
    Enable,
    Disable,
    Reset

AttributeEvaluatorDevice := class(creative_device_output):

    @editable
    Target : attribute_evaluator_device = attribute_evaluator_device{}

    @editable
    Interaction : AttributeEvaluatorDevice_Options = AttributeEvaluatorDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            AttributeEvaluatorDevice_Options.Enable => Target.Enable(),
            AttributeEvaluatorDevice_Options.Disable => Target.Disable(),
            AttributeEvaluatorDevice_Options.Reset => Target.Reset()


# ball_spawner_device

BallSpawnerDevice_Options := enum:
    ShowHUD,
    HideHUD

BallSpawnerDevice := class(creative_device_output):

    @editable
    Target : ball_spawner_device = ball_spawner_device{}

    @editable
    Interaction : BallSpawnerDevice_Options = BallSpawnerDevice_Options.ShowHUD

    Main<override>():void=
        case(Interaction):
            BallSpawnerDevice_Options.ShowHUD => Target.ShowHUD(),
            BallSpawnerDevice_Options.HideHUD => Target.HideHUD()


# basic_storm_controller_device

BasicStormControllerDevice_Options := enum:
    GenerateStorm,
    DestroyStorm

BasicStormControllerDevice := class(creative_device_output):

    @editable
    Target : basic_storm_controller_device = basic_storm_controller_device{}

    @editable
    Interaction : BasicStormControllerDevice_Options = BasicStormControllerDevice_Options.GenerateStorm

    Main<override>():void=
        case(Interaction):
            BasicStormControllerDevice_Options.GenerateStorm => Target.GenerateStorm(),
            BasicStormControllerDevice_Options.DestroyStorm => Target.DestroyStorm()


# beacon_device

BeaconDevice_Options := enum:
    Enable,
    Disable,
    RemoveAllFromShowList

BeaconDevice := class(creative_device_output):

    @editable
    Target : beacon_device = beacon_device{}

    @editable
    Interaction : BeaconDevice_Options = BeaconDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            BeaconDevice_Options.Enable => Target.Enable(),
            BeaconDevice_Options.Disable => Target.Disable(),
            BeaconDevice_Options.RemoveAllFromShowList => Target.RemoveAllFromShowList()


# billboard_device

BillboardDevice_Options := enum:
    ShowText,
    HideText,
    UpdateDisplay

BillboardDevice := class(creative_device_output):

    @editable
    Target : billboard_device = billboard_device{}

    @editable
    Interaction : BillboardDevice_Options = BillboardDevice_Options.ShowText

    Main<override>():void=
        case(Interaction):
            BillboardDevice_Options.ShowText => Target.ShowText(),
            BillboardDevice_Options.HideText => Target.HideText(),
            BillboardDevice_Options.UpdateDisplay => Target.UpdateDisplay()


# button_device

ButtonDevice_Options := enum:
    Enable,
    Disable

ButtonDevice := class(creative_device_output):

    @editable
    Target : button_device = button_device{}

    @editable
    Interaction : ButtonDevice_Options = ButtonDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ButtonDevice_Options.Enable => Target.Enable(),
            ButtonDevice_Options.Disable => Target.Disable()


# capture_area_device

CaptureAreaDevice_Options := enum:
    Enable,
    Disable,
    ToggleEnabled,
    AllowCapture,
    DisallowCapture,
    ToggleCaptureAllowed,
    Reset,
    Neutralize,
    ActivateObjectivePulse,
    DeactivateObjectivePulse

CaptureAreaDevice := class(creative_device_output):

    @editable
    Target : capture_area_device = capture_area_device{}

    @editable
    Interaction : CaptureAreaDevice_Options = CaptureAreaDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            CaptureAreaDevice_Options.Enable => Target.Enable(),
            CaptureAreaDevice_Options.Disable => Target.Disable(),
            CaptureAreaDevice_Options.ToggleEnabled => Target.ToggleEnabled(),
            CaptureAreaDevice_Options.AllowCapture => Target.AllowCapture(),
            CaptureAreaDevice_Options.DisallowCapture => Target.DisallowCapture(),
            CaptureAreaDevice_Options.ToggleCaptureAllowed => Target.ToggleCaptureAllowed(),
            CaptureAreaDevice_Options.Reset => Target.Reset(),
            CaptureAreaDevice_Options.Neutralize => Target.Neutralize(),
            CaptureAreaDevice_Options.ActivateObjectivePulse => Target.ActivateObjectivePulse(),
            CaptureAreaDevice_Options.DeactivateObjectivePulse => Target.DeactivateObjectivePulse()


# capture_item_spawner_device

CaptureItemSpawnerDevice_Options := enum:
    Enable,
    Disable

CaptureItemSpawnerDevice := class(creative_device_output):

    @editable
    Target : capture_item_spawner_device = capture_item_spawner_device{}

    @editable
    Interaction : CaptureItemSpawnerDevice_Options = CaptureItemSpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            CaptureItemSpawnerDevice_Options.Enable => Target.Enable(),
            CaptureItemSpawnerDevice_Options.Disable => Target.Disable()


# class_and_team_selector_device

ClassAndTeamSelectorDevice_Options := enum:
    Enable,
    Disable

ClassAndTeamSelectorDevice := class(creative_device_output):

    @editable
    Target : class_and_team_selector_device = class_and_team_selector_device{}

    @editable
    Interaction : ClassAndTeamSelectorDevice_Options = ClassAndTeamSelectorDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ClassAndTeamSelectorDevice_Options.Enable => Target.Enable(),
            ClassAndTeamSelectorDevice_Options.Disable => Target.Disable()


# collectible_object_device

CollectibleObjectDevice_Options := enum:
    Show,
    Hide,
    RespawnForAll

CollectibleObjectDevice := class(creative_device_output):

    @editable
    Target : collectible_object_device = collectible_object_device{}

    @editable
    Interaction : CollectibleObjectDevice_Options = CollectibleObjectDevice_Options.Show

    Main<override>():void=
        case(Interaction):
            CollectibleObjectDevice_Options.Show => Target.Show(),
            CollectibleObjectDevice_Options.Hide => Target.Hide(),
            CollectibleObjectDevice_Options.RespawnForAll => Target.RespawnForAll()


# color_changing_tiles_device

ColorChangingTilesDevice_Options := enum:
    Enable,
    Disable,
    Show,
    Hide,
    Reset

ColorChangingTilesDevice := class(creative_device_output):

    @editable
    Target : color_changing_tiles_device = color_changing_tiles_device{}

    @editable
    Interaction : ColorChangingTilesDevice_Options = ColorChangingTilesDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ColorChangingTilesDevice_Options.Enable => Target.Enable(),
            ColorChangingTilesDevice_Options.Disable => Target.Disable(),
            ColorChangingTilesDevice_Options.Show => Target.Show(),
            ColorChangingTilesDevice_Options.Hide => Target.Hide(),
            ColorChangingTilesDevice_Options.Reset => Target.Reset()


# conditional_button_device

ConditionalButtonDevice_Options := enum:
    Enable,
    Disable,
    Reset

ConditionalButtonDevice := class(creative_device_output):

    @editable
    Target : conditional_button_device = conditional_button_device{}

    @editable
    Interaction : ConditionalButtonDevice_Options = ConditionalButtonDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ConditionalButtonDevice_Options.Enable => Target.Enable(),
            ConditionalButtonDevice_Options.Disable => Target.Disable(),
            ConditionalButtonDevice_Options.Reset => Target.Reset()


# damage_amplifier_powerup_device

DamageAmplifierPowerupDevice_Options := enum:
    Spawn,
    Despawn,
    Pickup

DamageAmplifierPowerupDevice := class(creative_device_output):

    @editable
    Target : damage_amplifier_powerup_device = damage_amplifier_powerup_device{}

    @editable
    Interaction : DamageAmplifierPowerupDevice_Options = DamageAmplifierPowerupDevice_Options.Spawn

    Main<override>():void=
        case(Interaction):
            DamageAmplifierPowerupDevice_Options.Spawn => Target.Spawn(),
            DamageAmplifierPowerupDevice_Options.Despawn => Target.Despawn(),
            DamageAmplifierPowerupDevice_Options.Pickup => Target.Pickup()


# elimination_manager_device

EliminationManagerDevice_Options := enum:
    Enable,
    Disable

EliminationManagerDevice := class(creative_device_output):

    @editable
    Target : elimination_manager_device = elimination_manager_device{}

    @editable
    Interaction : EliminationManagerDevice_Options = EliminationManagerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            EliminationManagerDevice_Options.Enable => Target.Enable(),
            EliminationManagerDevice_Options.Disable => Target.Disable()


# explosive_device

ExplosiveDevice_Options := enum:
    Show,
    Hide,
    Reset

ExplosiveDevice := class(creative_device_output):

    @editable
    Target : explosive_device = explosive_device{}

    @editable
    Interaction : ExplosiveDevice_Options = ExplosiveDevice_Options.Show

    Main<override>():void=
        case(Interaction):
            ExplosiveDevice_Options.Show => Target.Show(),
            ExplosiveDevice_Options.Hide => Target.Hide(),
            ExplosiveDevice_Options.Reset => Target.Reset()


# fuel_pump_device

FuelPumpDevice_Options := enum:
    Enable,
    Disable,
    Reset

FuelPumpDevice := class(creative_device_output):

    @editable
    Target : fuel_pump_device = fuel_pump_device{}

    @editable
    Interaction : FuelPumpDevice_Options = FuelPumpDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            FuelPumpDevice_Options.Enable => Target.Enable(),
            FuelPumpDevice_Options.Disable => Target.Disable(),
            FuelPumpDevice_Options.Reset => Target.Reset()


# grind_powerup_device

GrindPowerupDevice_Options := enum:
    Spawn,
    Despawn,
    Pickup

GrindPowerupDevice := class(creative_device_output):

    @editable
    Target : grind_powerup_device = grind_powerup_device{}

    @editable
    Interaction : GrindPowerupDevice_Options = GrindPowerupDevice_Options.Spawn

    Main<override>():void=
        case(Interaction):
            GrindPowerupDevice_Options.Spawn => Target.Spawn(),
            GrindPowerupDevice_Options.Despawn => Target.Despawn(),
            GrindPowerupDevice_Options.Pickup => Target.Pickup()


# hud_message_device

HudMessageDevice_Options := enum:
    Show,
    Hide,
    ClearAllMessages

HudMessageDevice := class(creative_device_output):

    @editable
    Target : hud_message_device = hud_message_device{}

    @editable
    Interaction : HudMessageDevice_Options = HudMessageDevice_Options.Show

    Main<override>():void=
        case(Interaction):
            HudMessageDevice_Options.Show => Target.Show(),
            HudMessageDevice_Options.Hide => Target.Hide(),
            HudMessageDevice_Options.ClearAllMessages => Target.ClearAllMessages()


# item_granter_device

ItemGranterDevice_Options := enum:
    Enable,
    Disable,
    GrantItemToAll,
    RestockItems

ItemGranterDevice := class(creative_device_output):

    @editable
    Target : item_granter_device = item_granter_device{}

    @editable
    Interaction : ItemGranterDevice_Options = ItemGranterDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ItemGranterDevice_Options.Enable => Target.Enable(),
            ItemGranterDevice_Options.Disable => Target.Disable(),
            ItemGranterDevice_Options.GrantItemToAll => Target.GrantItemToAll(),
            ItemGranterDevice_Options.RestockItems => Target.RestockItems()


# item_spawner_device

ItemSpawnerDevice_Options := enum:
    Enable,
    Disable,
    CycleToNextItem,
    SpawnItem

ItemSpawnerDevice := class(creative_device_output):

    @editable
    Target : item_spawner_device = item_spawner_device{}

    @editable
    Interaction : ItemSpawnerDevice_Options = ItemSpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ItemSpawnerDevice_Options.Enable => Target.Enable(),
            ItemSpawnerDevice_Options.Disable => Target.Disable(),
            ItemSpawnerDevice_Options.CycleToNextItem => Target.CycleToNextItem(),
            ItemSpawnerDevice_Options.SpawnItem => Target.SpawnItem()


# map_indicator_device

MapIndicatorDevice_Options := enum:
    Enable,
    Disable

MapIndicatorDevice := class(creative_device_output):

    @editable
    Target : map_indicator_device = map_indicator_device{}

    @editable
    Interaction : MapIndicatorDevice_Options = MapIndicatorDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            MapIndicatorDevice_Options.Enable => Target.Enable(),
            MapIndicatorDevice_Options.Disable => Target.Disable()


# matchmaking_portal_device

MatchmakingPortalDevice_Options := enum:
    Enable,
    Disable

MatchmakingPortalDevice := class(creative_device_output):

    @editable
    Target : matchmaking_portal_device = matchmaking_portal_device{}

    @editable
    Interaction : MatchmakingPortalDevice_Options = MatchmakingPortalDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            MatchmakingPortalDevice_Options.Enable => Target.Enable(),
            MatchmakingPortalDevice_Options.Disable => Target.Disable()


# movement_modulator_device

MovementModulatorDevice_Options := enum:
    Enable,
    Disable

MovementModulatorDevice := class(creative_device_output):

    @editable
    Target : movement_modulator_device = movement_modulator_device{}

    @editable
    Interaction : MovementModulatorDevice_Options = MovementModulatorDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            MovementModulatorDevice_Options.Enable => Target.Enable(),
            MovementModulatorDevice_Options.Disable => Target.Disable()


# objective_device

ObjectiveDevice_Options := enum:
    Show,
    Hide

ObjectiveDevice := class(creative_device_output):

    @editable
    Target : objective_device = objective_device{}

    @editable
    Interaction : ObjectiveDevice_Options = ObjectiveDevice_Options.Show

    Main<override>():void=
        case(Interaction):
            ObjectiveDevice_Options.Show => Target.Show(),
            ObjectiveDevice_Options.Hide => Target.Hide()


# perception_trigger_device

PerceptionTriggerDevice_Options := enum:
    Enable,
    Disable,
    Reset

PerceptionTriggerDevice := class(creative_device_output):

    @editable
    Target : perception_trigger_device = perception_trigger_device{}

    @editable
    Interaction : PerceptionTriggerDevice_Options = PerceptionTriggerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PerceptionTriggerDevice_Options.Enable => Target.Enable(),
            PerceptionTriggerDevice_Options.Disable => Target.Disable(),
            PerceptionTriggerDevice_Options.Reset => Target.Reset()


# pinball_bumper_device

PinballBumperDevice_Options := enum:
    Enable,
    Disable

PinballBumperDevice := class(creative_device_output):

    @editable
    Target : pinball_bumper_device = pinball_bumper_device{}

    @editable
    Interaction : PinballBumperDevice_Options = PinballBumperDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PinballBumperDevice_Options.Enable => Target.Enable(),
            PinballBumperDevice_Options.Disable => Target.Disable()


# pinball_flipper_device

PinballFlipperDevice_Options := enum:
    Enable,
    Disable

PinballFlipperDevice := class(creative_device_output):

    @editable
    Target : pinball_flipper_device = pinball_flipper_device{}

    @editable
    Interaction : PinballFlipperDevice_Options = PinballFlipperDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PinballFlipperDevice_Options.Enable => Target.Enable(),
            PinballFlipperDevice_Options.Disable => Target.Disable()


# prop_o_matic_manager_device

PropOMaticManagerDevice_Options := enum:
    PingPlayerProps

PropOMaticManagerDevice := class(creative_device_output):

    @editable
    Target : prop_o_matic_manager_device = prop_o_matic_manager_device{}

    @editable
    Interaction : PropOMaticManagerDevice_Options = PropOMaticManagerDevice_Options.PingPlayerProps

    Main<override>():void=
        case(Interaction):
            PropOMaticManagerDevice_Options.PingPlayerProps => Target.PingPlayerProps()


# pulse_trigger_device

PulseTriggerDevice_Options := enum:
    Enable,
    Disable,
    Begin,
    End,
    ResumeSequence,
    ResumePulse

PulseTriggerDevice := class(creative_device_output):

    @editable
    Target : pulse_trigger_device = pulse_trigger_device{}

    @editable
    Interaction : PulseTriggerDevice_Options = PulseTriggerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PulseTriggerDevice_Options.Enable => Target.Enable(),
            PulseTriggerDevice_Options.Disable => Target.Disable(),
            PulseTriggerDevice_Options.Begin => Target.Begin(),
            PulseTriggerDevice_Options.End => Target.End(),
            PulseTriggerDevice_Options.ResumeSequence => Target.ResumeSequence(),
            PulseTriggerDevice_Options.ResumePulse => Target.ResumePulse()


# radio_device

RadioDevice_Options := enum:
    Play,
    Stop,
    UnregisterAll

RadioDevice := class(creative_device_output):

    @editable
    Target : radio_device = radio_device{}

    @editable
    Interaction : RadioDevice_Options = RadioDevice_Options.Play

    Main<override>():void=
        case(Interaction):
            RadioDevice_Options.Play => Target.Play(),
            RadioDevice_Options.Stop => Target.Stop(),
            RadioDevice_Options.UnregisterAll => Target.UnregisterAll()


# rng_device

RngDevice_Options := enum:
    Enable,
    Disable,
    Activate,
    Cancel

RngDevice := class(creative_device_output):

    @editable
    Target : rng_device = rng_device{}

    @editable
    Interaction : RngDevice_Options = RngDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            RngDevice_Options.Enable => Target.Enable(),
            RngDevice_Options.Disable => Target.Disable(),
            RngDevice_Options.Activate => Target.Activate(),
            RngDevice_Options.Cancel => Target.Cancel()


# round_settings_device

RoundSettingsDevice_Options := enum:
    Enable,
    Disable,
    EnableMatchmaking,
    DisableMatchmaking,
    ToggleMatchmaking,
    DisableEndRoundConditions

RoundSettingsDevice := class(creative_device_output):

    @editable
    Target : round_settings_device = round_settings_device{}

    @editable
    Interaction : RoundSettingsDevice_Options = RoundSettingsDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            RoundSettingsDevice_Options.Enable => Target.Enable(),
            RoundSettingsDevice_Options.Disable => Target.Disable(),
            RoundSettingsDevice_Options.EnableMatchmaking => Target.EnableMatchmaking(),
            RoundSettingsDevice_Options.DisableMatchmaking => Target.DisableMatchmaking(),
            RoundSettingsDevice_Options.ToggleMatchmaking => Target.ToggleMatchmaking(),
            RoundSettingsDevice_Options.DisableEndRoundConditions => Target.DisableEndRoundConditions()


# score_manager_device

ScoreManagerDevice_Options := enum:
    Enable,
    Disable,
    Reset,
    Activate,
    Increment,
    Decrement

ScoreManagerDevice := class(creative_device_output):

    @editable
    Target : score_manager_device = score_manager_device{}

    @editable
    Interaction : ScoreManagerDevice_Options = ScoreManagerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ScoreManagerDevice_Options.Enable => Target.Enable(),
            ScoreManagerDevice_Options.Disable => Target.Disable(),
            ScoreManagerDevice_Options.Reset => Target.Reset(),
            ScoreManagerDevice_Options.Activate => Target.Activate(),
            ScoreManagerDevice_Options.Increment => Target.Increment(),
            ScoreManagerDevice_Options.Decrement => Target.Decrement()


# shooting_range_target_device

ShootingRangeTargetDevice_Options := enum:
    Enable,
    Disable,
    Reset

ShootingRangeTargetDevice := class(creative_device_output):

    @editable
    Target : shooting_range_target_device = shooting_range_target_device{}

    @editable
    Interaction : ShootingRangeTargetDevice_Options = ShootingRangeTargetDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ShootingRangeTargetDevice_Options.Enable => Target.Enable(),
            ShootingRangeTargetDevice_Options.Disable => Target.Disable(),
            ShootingRangeTargetDevice_Options.Reset => Target.Reset()


# shooting_range_target_track_device

ShootingRangeTargetTrackDevice_Options := enum:
    Enable,
    Disable,
    Reset,
    EnableTrackMovement,
    DisableTrackMovement,
    ActivateTrack,
    DeactivateTrack,
    MoveToEnd,
    MoveToStart

ShootingRangeTargetTrackDevice := class(creative_device_output):

    @editable
    Target : shooting_range_target_track_device = shooting_range_target_track_device{}

    @editable
    Interaction : ShootingRangeTargetTrackDevice_Options = ShootingRangeTargetTrackDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ShootingRangeTargetTrackDevice_Options.Enable => Target.Enable(),
            ShootingRangeTargetTrackDevice_Options.Disable => Target.Disable(),
            ShootingRangeTargetTrackDevice_Options.Reset => Target.Reset(),
            ShootingRangeTargetTrackDevice_Options.EnableTrackMovement => Target.EnableTrackMovement(),
            ShootingRangeTargetTrackDevice_Options.DisableTrackMovement => Target.DisableTrackMovement(),
            ShootingRangeTargetTrackDevice_Options.ActivateTrack => Target.ActivateTrack(),
            ShootingRangeTargetTrackDevice_Options.DeactivateTrack => Target.DeactivateTrack(),
            ShootingRangeTargetTrackDevice_Options.MoveToEnd => Target.MoveToEnd(),
            ShootingRangeTargetTrackDevice_Options.MoveToStart => Target.MoveToStart()


# team_settings_and_inventory_device

TeamSettingsAndInventoryDevice_Options := enum:
    EndRound,
    RemoveTemporaryMembersFromTeam

TeamSettingsAndInventoryDevice := class(creative_device_output):

    @editable
    Target : team_settings_and_inventory_device = team_settings_and_inventory_device{}

    @editable
    Interaction : TeamSettingsAndInventoryDevice_Options = TeamSettingsAndInventoryDevice_Options.EndRound

    Main<override>():void=
        case(Interaction):
            TeamSettingsAndInventoryDevice_Options.EndRound => Target.EndRound(),
            TeamSettingsAndInventoryDevice_Options.RemoveTemporaryMembersFromTeam => Target.RemoveTemporaryMembersFromTeam()


# teleporter_device

TeleporterDevice_Options := enum:
    Enable,
    Disable,
    ActivateLinkToTarget,
    DeactivateLinkToTarget,
    ResetLinkToTarget

TeleporterDevice := class(creative_device_output):

    @editable
    Target : teleporter_device = teleporter_device{}

    @editable
    Interaction : TeleporterDevice_Options = TeleporterDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            TeleporterDevice_Options.Enable => Target.Enable(),
            TeleporterDevice_Options.Disable => Target.Disable(),
            TeleporterDevice_Options.ActivateLinkToTarget => Target.ActivateLinkToTarget(),
            TeleporterDevice_Options.DeactivateLinkToTarget => Target.DeactivateLinkToTarget(),
            TeleporterDevice_Options.ResetLinkToTarget => Target.ResetLinkToTarget()


# timed_objective_device

TimedObjectiveDevice_Options := enum:
    Show,
    Hide

TimedObjectiveDevice := class(creative_device_output):

    @editable
    Target : timed_objective_device = timed_objective_device{}

    @editable
    Interaction : TimedObjectiveDevice_Options = TimedObjectiveDevice_Options.Show

    Main<override>():void=
        case(Interaction):
            TimedObjectiveDevice_Options.Show => Target.Show(),
            TimedObjectiveDevice_Options.Hide => Target.Hide()


# timer_device

TimerDevice_Options := enum:
    Enable,
    Disable,
    Reset,
    ResetForAll,
    Pause,
    Resume,
    Complete,
    StartForAll,
    PauseForAll,
    ResumeForAll,
    CompleteForAll,
    ClearPersistenceDataForAll,
    SetLapTimeForAll

TimerDevice := class(creative_device_output):

    @editable
    Target : timer_device = timer_device{}

    @editable
    Interaction : TimerDevice_Options = TimerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            TimerDevice_Options.Enable => Target.Enable(),
            TimerDevice_Options.Disable => Target.Disable(),
            TimerDevice_Options.Reset => Target.Reset(),
            TimerDevice_Options.ResetForAll => Target.ResetForAll(),
            TimerDevice_Options.Pause => Target.Pause(),
            TimerDevice_Options.Resume => Target.Resume(),
            TimerDevice_Options.Complete => Target.Complete(),
            TimerDevice_Options.StartForAll => Target.StartForAll(),
            TimerDevice_Options.PauseForAll => Target.PauseForAll(),
            TimerDevice_Options.ResumeForAll => Target.ResumeForAll(),
            TimerDevice_Options.CompleteForAll => Target.CompleteForAll(),
            TimerDevice_Options.ClearPersistenceDataForAll => Target.ClearPersistenceDataForAll(),
            TimerDevice_Options.SetLapTimeForAll => Target.SetLapTimeForAll()


# tracker_device

TrackerDevice_Options := enum:
    AssignToAll,
    RemoveFromAll,
    LoadForAll

TrackerDevice := class(creative_device_output):

    @editable
    Target : tracker_device = tracker_device{}

    @editable
    Interaction : TrackerDevice_Options = TrackerDevice_Options.AssignToAll

    Main<override>():void=
        case(Interaction):
            TrackerDevice_Options.AssignToAll => Target.AssignToAll(),
            TrackerDevice_Options.RemoveFromAll => Target.RemoveFromAll(),
            TrackerDevice_Options.LoadForAll => Target.LoadForAll()


# trick_tile_device

TrickTileDevice_Options := enum:
    Enable,
    Disable,
    ToggleEnabled,
    Reset,
    EnableAgentContactTrigger,
    DisableAgentContactTrigger,
    ToggleAgentContactTrigger

TrickTileDevice := class(creative_device_output):

    @editable
    Target : trick_tile_device = trick_tile_device{}

    @editable
    Interaction : TrickTileDevice_Options = TrickTileDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            TrickTileDevice_Options.Enable => Target.Enable(),
            TrickTileDevice_Options.Disable => Target.Disable(),
            TrickTileDevice_Options.ToggleEnabled => Target.ToggleEnabled(),
            TrickTileDevice_Options.Reset => Target.Reset(),
            TrickTileDevice_Options.EnableAgentContactTrigger => Target.EnableAgentContactTrigger(),
            TrickTileDevice_Options.DisableAgentContactTrigger => Target.DisableAgentContactTrigger(),
            TrickTileDevice_Options.ToggleAgentContactTrigger => Target.ToggleAgentContactTrigger()


# trigger_device

TriggerDevice_Options := enum:
    Enable,
    Disable,
    Reset

TriggerDevice := class(creative_device_output):

    @editable
    Target : trigger_device = trigger_device{}

    @editable
    Interaction : TriggerDevice_Options = TriggerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            TriggerDevice_Options.Enable => Target.Enable(),
            TriggerDevice_Options.Disable => Target.Disable(),
            TriggerDevice_Options.Reset => Target.Reset()


# vending_machine_device

VendingMachineDevice_Options := enum:
    Enable,
    Disable,
    CycleToNextItem,
    SpawnItem

VendingMachineDevice := class(creative_device_output):

    @editable
    Target : vending_machine_device = vending_machine_device{}

    @editable
    Interaction : VendingMachineDevice_Options = VendingMachineDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VendingMachineDevice_Options.Enable => Target.Enable(),
            VendingMachineDevice_Options.Disable => Target.Disable(),
            VendingMachineDevice_Options.CycleToNextItem => Target.CycleToNextItem(),
            VendingMachineDevice_Options.SpawnItem => Target.SpawnItem()


# visual_effect_powerup_device

VisualEffectPowerupDevice_Options := enum:
    Spawn,
    Despawn,
    Pickup

VisualEffectPowerupDevice := class(creative_device_output):

    @editable
    Target : visual_effect_powerup_device = visual_effect_powerup_device{}

    @editable
    Interaction : VisualEffectPowerupDevice_Options = VisualEffectPowerupDevice_Options.Spawn

    Main<override>():void=
        case(Interaction):
            VisualEffectPowerupDevice_Options.Spawn => Target.Spawn(),
            VisualEffectPowerupDevice_Options.Despawn => Target.Despawn(),
            VisualEffectPowerupDevice_Options.Pickup => Target.Pickup()


# character_device

CharacterDevice_Options := enum:
    Enable,
    Disable,
    Show,
    Hide,
    PlayEmote

CharacterDevice := class(creative_device_output):

    @editable
    Target : character_device = character_device{}

    @editable
    Interaction : CharacterDevice_Options = CharacterDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            CharacterDevice_Options.Enable => Target.Enable(),
            CharacterDevice_Options.Disable => Target.Disable(),
            CharacterDevice_Options.Show => Target.Show(),
            CharacterDevice_Options.Hide => Target.Hide(),
            CharacterDevice_Options.PlayEmote => Target.PlayEmote()


# item_shop_device

ItemShopDevice_Options := enum:
    Enable,
    Disable

ItemShopDevice := class(creative_device_output):

    @editable
    Target : item_shop_device = item_shop_device{}

    @editable
    Interaction : ItemShopDevice_Options = ItemShopDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ItemShopDevice_Options.Enable => Target.Enable(),
            ItemShopDevice_Options.Disable => Target.Disable()


# player_movement_settings_device

PlayerMovementSettingsDevice_Options := enum:
    Enable,
    Disable,
    AddToAll,
    RemoveFromAll

PlayerMovementSettingsDevice := class(creative_device_output):

    @editable
    Target : player_movement_settings_device = player_movement_settings_device{}

    @editable
    Interaction : PlayerMovementSettingsDevice_Options = PlayerMovementSettingsDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PlayerMovementSettingsDevice_Options.Enable => Target.Enable(),
            PlayerMovementSettingsDevice_Options.Disable => Target.Disable(),
            PlayerMovementSettingsDevice_Options.AddToAll => Target.AddToAll(),
            PlayerMovementSettingsDevice_Options.RemoveFromAll => Target.RemoveFromAll()


# class_selector_ui_device

ClassSelectorUiDevice_Options := enum:
    Enable,
    Disable

ClassSelectorUiDevice := class(creative_device_output):

    @editable
    Target : class_selector_ui_device = class_selector_ui_device{}

    @editable
    Interaction : ClassSelectorUiDevice_Options = ClassSelectorUiDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ClassSelectorUiDevice_Options.Enable => Target.Enable(),
            ClassSelectorUiDevice_Options.Disable => Target.Disable()


# health_powerup_device

HealthPowerupDevice_Options := enum:
    Spawn,
    Despawn,
    Pickup

HealthPowerupDevice := class(creative_device_output):

    @editable
    Target : health_powerup_device = health_powerup_device{}

    @editable
    Interaction : HealthPowerupDevice_Options = HealthPowerupDevice_Options.Spawn

    Main<override>():void=
        case(Interaction):
            HealthPowerupDevice_Options.Spawn => Target.Spawn(),
            HealthPowerupDevice_Options.Despawn => Target.Despawn(),
            HealthPowerupDevice_Options.Pickup => Target.Pickup()


# popup_dialog_device

PopupDialogDevice_Options := enum:
    Enable,
    Disable,
    Hide

PopupDialogDevice := class(creative_device_output):

    @editable
    Target : popup_dialog_device = popup_dialog_device{}

    @editable
    Interaction : PopupDialogDevice_Options = PopupDialogDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PopupDialogDevice_Options.Enable => Target.Enable(),
            PopupDialogDevice_Options.Disable => Target.Disable(),
            PopupDialogDevice_Options.Hide => Target.Hide()


# physics_boulder_device

PhysicsBoulderDevice_Options := enum:
    Enable,
    Disable,
    SpawnObject,
    DestroyAllSpawnedObjects,
    DestroyBase,
    ReleaseRollingBoulder,
    DestroyRollingBoulder

PhysicsBoulderDevice := class(creative_device_output):

    @editable
    Target : physics_boulder_device = physics_boulder_device{}

    @editable
    Interaction : PhysicsBoulderDevice_Options = PhysicsBoulderDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PhysicsBoulderDevice_Options.Enable => Target.Enable(),
            PhysicsBoulderDevice_Options.Disable => Target.Disable(),
            PhysicsBoulderDevice_Options.SpawnObject => Target.SpawnObject(),
            PhysicsBoulderDevice_Options.DestroyAllSpawnedObjects => Target.DestroyAllSpawnedObjects(),
            PhysicsBoulderDevice_Options.DestroyBase => Target.DestroyBase(),
            PhysicsBoulderDevice_Options.ReleaseRollingBoulder => Target.ReleaseRollingBoulder(),
            PhysicsBoulderDevice_Options.DestroyRollingBoulder => Target.DestroyRollingBoulder()


# physics_tree_device

PhysicsTreeDevice_Options := enum:
    Enable,
    Disable,
    SpawnObject,
    DestroyAllSpawnedObjects,
    ReleaseLog,
    DestroyLog,
    DestroyStump

PhysicsTreeDevice := class(creative_device_output):

    @editable
    Target : physics_tree_device = physics_tree_device{}

    @editable
    Interaction : PhysicsTreeDevice_Options = PhysicsTreeDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            PhysicsTreeDevice_Options.Enable => Target.Enable(),
            PhysicsTreeDevice_Options.Disable => Target.Disable(),
            PhysicsTreeDevice_Options.SpawnObject => Target.SpawnObject(),
            PhysicsTreeDevice_Options.DestroyAllSpawnedObjects => Target.DestroyAllSpawnedObjects(),
            PhysicsTreeDevice_Options.ReleaseLog => Target.ReleaseLog(),
            PhysicsTreeDevice_Options.DestroyLog => Target.DestroyLog(),
            PhysicsTreeDevice_Options.DestroyStump => Target.DestroyStump()


# stat_powerup_device

StatPowerupDevice_Options := enum:
    Spawn,
    Despawn,
    Pickup

StatPowerupDevice := class(creative_device_output):

    @editable
    Target : stat_powerup_device = stat_powerup_device{}

    @editable
    Interaction : StatPowerupDevice_Options = StatPowerupDevice_Options.Spawn

    Main<override>():void=
        case(Interaction):
            StatPowerupDevice_Options.Spawn => Target.Spawn(),
            StatPowerupDevice_Options.Despawn => Target.Despawn(),
            StatPowerupDevice_Options.Pickup => Target.Pickup()


# water_device

WaterDevice_Options := enum:
    Enable,
    Disable,
    Reset,
    BeginVerticalEmptying,
    BeginVerticalFilling,
    StopVerticalMovement,
    ResumeVerticalMovement

WaterDevice := class(creative_device_output):

    @editable
    Target : water_device = water_device{}

    @editable
    Interaction : WaterDevice_Options = WaterDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            WaterDevice_Options.Enable => Target.Enable(),
            WaterDevice_Options.Disable => Target.Disable(),
            WaterDevice_Options.Reset => Target.Reset(),
            WaterDevice_Options.BeginVerticalEmptying => Target.BeginVerticalEmptying(),
            WaterDevice_Options.BeginVerticalFilling => Target.BeginVerticalFilling(),
            WaterDevice_Options.StopVerticalMovement => Target.StopVerticalMovement(),
            WaterDevice_Options.ResumeVerticalMovement => Target.ResumeVerticalMovement()


# chair_device

ChairDevice_Options := enum:
    Enable,
    Disable,
    EnableExit,
    DisableExit,
    Eject

ChairDevice := class(creative_device_output):

    @editable
    Target : chair_device = chair_device{}

    @editable
    Interaction : ChairDevice_Options = ChairDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ChairDevice_Options.Enable => Target.Enable(),
            ChairDevice_Options.Disable => Target.Disable(),
            ChairDevice_Options.EnableExit => Target.EnableExit(),
            ChairDevice_Options.DisableExit => Target.DisableExit(),
            ChairDevice_Options.Eject => Target.Eject()


# vehicle_mod_box_spawner_device

VehicleModBoxSpawnerDevice_Options := enum:
    Enable,
    Disable,
    SpawnBox,
    DespawnBox,
    StartSpawnTimer,
    SpawnLastChosenMod,
    CycleToPreviousValidIndex,
    CycleToNextValidIndex,
    ResetModBoxName,
    ResetPlayerTooltip

VehicleModBoxSpawnerDevice := class(creative_device_output):

    @editable
    Target : vehicle_mod_box_spawner_device = vehicle_mod_box_spawner_device{}

    @editable
    Interaction : VehicleModBoxSpawnerDevice_Options = VehicleModBoxSpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleModBoxSpawnerDevice_Options.Enable => Target.Enable(),
            VehicleModBoxSpawnerDevice_Options.Disable => Target.Disable(),
            VehicleModBoxSpawnerDevice_Options.SpawnBox => Target.SpawnBox(),
            VehicleModBoxSpawnerDevice_Options.DespawnBox => Target.DespawnBox(),
            VehicleModBoxSpawnerDevice_Options.StartSpawnTimer => Target.StartSpawnTimer(),
            VehicleModBoxSpawnerDevice_Options.SpawnLastChosenMod => Target.SpawnLastChosenMod(),
            VehicleModBoxSpawnerDevice_Options.CycleToPreviousValidIndex => Target.CycleToPreviousValidIndex(),
            VehicleModBoxSpawnerDevice_Options.CycleToNextValidIndex => Target.CycleToNextValidIndex(),
            VehicleModBoxSpawnerDevice_Options.ResetModBoxName => Target.ResetModBoxName(),
            VehicleModBoxSpawnerDevice_Options.ResetPlayerTooltip => Target.ResetPlayerTooltip()


# vehicle_spawner_atk_device

VehicleSpawnerAtkDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerAtkDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_atk_device = vehicle_spawner_atk_device{}

    @editable
    Interaction : VehicleSpawnerAtkDevice_Options = VehicleSpawnerAtkDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerAtkDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerAtkDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerAtkDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerAtkDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_baller_device

VehicleSpawnerBallerDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle,
    RefillEnergy

VehicleSpawnerBallerDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_baller_device = vehicle_spawner_baller_device{}

    @editable
    Interaction : VehicleSpawnerBallerDevice_Options = VehicleSpawnerBallerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerBallerDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerBallerDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerBallerDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerBallerDevice_Options.RespawnVehicle => Target.RespawnVehicle(),
            VehicleSpawnerBallerDevice_Options.RefillEnergy => Target.RefillEnergy()


# vehicle_spawner_pickup_truck_device

VehicleSpawnerPickupTruckDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerPickupTruckDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_pickup_truck_device = vehicle_spawner_pickup_truck_device{}

    @editable
    Interaction : VehicleSpawnerPickupTruckDevice_Options = VehicleSpawnerPickupTruckDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerPickupTruckDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerPickupTruckDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerPickupTruckDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerPickupTruckDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_biplane_device

VehicleSpawnerBiplaneDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerBiplaneDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_biplane_device = vehicle_spawner_biplane_device{}

    @editable
    Interaction : VehicleSpawnerBiplaneDevice_Options = VehicleSpawnerBiplaneDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerBiplaneDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerBiplaneDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerBiplaneDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerBiplaneDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_boat_device

VehicleSpawnerBoatDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerBoatDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_boat_device = vehicle_spawner_boat_device{}

    @editable
    Interaction : VehicleSpawnerBoatDevice_Options = VehicleSpawnerBoatDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerBoatDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerBoatDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerBoatDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerBoatDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_cannon_device

VehicleSpawnerCannonDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerCannonDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_cannon_device = vehicle_spawner_cannon_device{}

    @editable
    Interaction : VehicleSpawnerCannonDevice_Options = VehicleSpawnerCannonDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerCannonDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerCannonDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerCannonDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerCannonDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_driftboard_device

VehicleSpawnerDriftboardDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerDriftboardDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_driftboard_device = vehicle_spawner_driftboard_device{}

    @editable
    Interaction : VehicleSpawnerDriftboardDevice_Options = VehicleSpawnerDriftboardDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerDriftboardDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerDriftboardDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerDriftboardDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerDriftboardDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_big_rig_device

VehicleSpawnerBigRigDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerBigRigDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_big_rig_device = vehicle_spawner_big_rig_device{}

    @editable
    Interaction : VehicleSpawnerBigRigDevice_Options = VehicleSpawnerBigRigDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerBigRigDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerBigRigDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerBigRigDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerBigRigDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_sedan_device

VehicleSpawnerSedanDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerSedanDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_sedan_device = vehicle_spawner_sedan_device{}

    @editable
    Interaction : VehicleSpawnerSedanDevice_Options = VehicleSpawnerSedanDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerSedanDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerSedanDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerSedanDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerSedanDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_quadcrasher_device

VehicleSpawnerQuadcrasherDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerQuadcrasherDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_quadcrasher_device = vehicle_spawner_quadcrasher_device{}

    @editable
    Interaction : VehicleSpawnerQuadcrasherDevice_Options = VehicleSpawnerQuadcrasherDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerQuadcrasherDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerQuadcrasherDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerQuadcrasherDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerQuadcrasherDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_shopping_cart_device

VehicleSpawnerShoppingCartDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerShoppingCartDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_shopping_cart_device = vehicle_spawner_shopping_cart_device{}

    @editable
    Interaction : VehicleSpawnerShoppingCartDevice_Options = VehicleSpawnerShoppingCartDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerShoppingCartDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerShoppingCartDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerShoppingCartDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerShoppingCartDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_surfboard_device

VehicleSpawnerSurfboardDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerSurfboardDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_surfboard_device = vehicle_spawner_surfboard_device{}

    @editable
    Interaction : VehicleSpawnerSurfboardDevice_Options = VehicleSpawnerSurfboardDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerSurfboardDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerSurfboardDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerSurfboardDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerSurfboardDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_taxi_device

VehicleSpawnerTaxiDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerTaxiDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_taxi_device = vehicle_spawner_taxi_device{}

    @editable
    Interaction : VehicleSpawnerTaxiDevice_Options = VehicleSpawnerTaxiDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerTaxiDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerTaxiDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerTaxiDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerTaxiDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_sports_car_device

VehicleSpawnerSportsCarDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerSportsCarDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_sports_car_device = vehicle_spawner_sports_car_device{}

    @editable
    Interaction : VehicleSpawnerSportsCarDevice_Options = VehicleSpawnerSportsCarDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerSportsCarDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerSportsCarDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerSportsCarDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerSportsCarDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# conversation_device

ConversationDevice_Options := enum:
    Enable,
    Disable,
    EndConversationForAll

ConversationDevice := class(creative_device_output):

    @editable
    Target : conversation_device = conversation_device{}

    @editable
    Interaction : ConversationDevice_Options = ConversationDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ConversationDevice_Options.Enable => Target.Enable(),
            ConversationDevice_Options.Disable => Target.Disable(),
            ConversationDevice_Options.EndConversationForAll => Target.EndConversationForAll()


# roly_poly_spawner_device

RolyPolySpawnerDevice_Options := enum:
    Enable,
    Disable,
    Spawn,
    Dismiss

RolyPolySpawnerDevice := class(creative_device_output):

    @editable
    Target : roly_poly_spawner_device = roly_poly_spawner_device{}

    @editable
    Interaction : RolyPolySpawnerDevice_Options = RolyPolySpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            RolyPolySpawnerDevice_Options.Enable => Target.Enable(),
            RolyPolySpawnerDevice_Options.Disable => Target.Disable(),
            RolyPolySpawnerDevice_Options.Spawn => Target.Spawn(),
            RolyPolySpawnerDevice_Options.Dismiss => Target.Dismiss()


# nitro_hoop_device

NitroHoopDevice_Options := enum:
    Disable,
    AllowCooldown,
    DisallowCooldown

NitroHoopDevice := class(creative_device_output):

    @editable
    Target : nitro_hoop_device = nitro_hoop_device{}

    @editable
    Interaction : NitroHoopDevice_Options = NitroHoopDevice_Options.Disable

    Main<override>():void=
        case(Interaction):
            NitroHoopDevice_Options.Disable => Target.Disable(),
            NitroHoopDevice_Options.AllowCooldown => Target.AllowCooldown(),
            NitroHoopDevice_Options.DisallowCooldown => Target.DisallowCooldown()


# vehicle_spawner_octane_device

VehicleSpawnerOctaneDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerOctaneDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_octane_device = vehicle_spawner_octane_device{}

    @editable
    Interaction : VehicleSpawnerOctaneDevice_Options = VehicleSpawnerOctaneDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerOctaneDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerOctaneDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerOctaneDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerOctaneDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_hammerhead_choppa_device

VehicleSpawnerHammerheadChoppaDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerHammerheadChoppaDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_hammerhead_choppa_device = vehicle_spawner_hammerhead_choppa_device{}

    @editable
    Interaction : VehicleSpawnerHammerheadChoppaDevice_Options = VehicleSpawnerHammerheadChoppaDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerHammerheadChoppaDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerHammerheadChoppaDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerHammerheadChoppaDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerHammerheadChoppaDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_armored_battle_bus_device

VehicleSpawnerArmoredBattleBusDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerArmoredBattleBusDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_armored_battle_bus_device = vehicle_spawner_armored_battle_bus_device{}

    @editable
    Interaction : VehicleSpawnerArmoredBattleBusDevice_Options = VehicleSpawnerArmoredBattleBusDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerArmoredBattleBusDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerArmoredBattleBusDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerArmoredBattleBusDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerArmoredBattleBusDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_dirtbike_device

VehicleSpawnerDirtbikeDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerDirtbikeDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_dirtbike_device = vehicle_spawner_dirtbike_device{}

    @editable
    Interaction : VehicleSpawnerDirtbikeDevice_Options = VehicleSpawnerDirtbikeDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerDirtbikeDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerDirtbikeDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerDirtbikeDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerDirtbikeDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_helicopter_device

VehicleSpawnerHelicopterDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerHelicopterDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_helicopter_device = vehicle_spawner_helicopter_device{}

    @editable
    Interaction : VehicleSpawnerHelicopterDevice_Options = VehicleSpawnerHelicopterDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerHelicopterDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerHelicopterDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerHelicopterDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerHelicopterDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_heavy_turret_device

VehicleSpawnerHeavyTurretDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerHeavyTurretDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_heavy_turret_device = vehicle_spawner_heavy_turret_device{}

    @editable
    Interaction : VehicleSpawnerHeavyTurretDevice_Options = VehicleSpawnerHeavyTurretDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerHeavyTurretDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerHeavyTurretDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerHeavyTurretDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerHeavyTurretDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_ufo_device

VehicleSpawnerUfoDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerUfoDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_ufo_device = vehicle_spawner_ufo_device{}

    @editable
    Interaction : VehicleSpawnerUfoDevice_Options = VehicleSpawnerUfoDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerUfoDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerUfoDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerUfoDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerUfoDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_siege_cannon_device

VehicleSpawnerSiegeCannonDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerSiegeCannonDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_siege_cannon_device = vehicle_spawner_siege_cannon_device{}

    @editable
    Interaction : VehicleSpawnerSiegeCannonDevice_Options = VehicleSpawnerSiegeCannonDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerSiegeCannonDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerSiegeCannonDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerSiegeCannonDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerSiegeCannonDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_nitro_drifter_sedan_device

VehicleSpawnerNitroDrifterSedanDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerNitroDrifterSedanDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_nitro_drifter_sedan_device = vehicle_spawner_nitro_drifter_sedan_device{}

    @editable
    Interaction : VehicleSpawnerNitroDrifterSedanDevice_Options = VehicleSpawnerNitroDrifterSedanDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerNitroDrifterSedanDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerNitroDrifterSedanDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerNitroDrifterSedanDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerNitroDrifterSedanDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_sportbike_device

VehicleSpawnerSportbikeDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerSportbikeDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_sportbike_device = vehicle_spawner_sportbike_device{}

    @editable
    Interaction : VehicleSpawnerSportbikeDevice_Options = VehicleSpawnerSportbikeDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerSportbikeDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerSportbikeDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerSportbikeDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerSportbikeDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_valet_suv_device

VehicleSpawnerValetSuvDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerValetSuvDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_valet_suv_device = vehicle_spawner_valet_suv_device{}

    @editable
    Interaction : VehicleSpawnerValetSuvDevice_Options = VehicleSpawnerValetSuvDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerValetSuvDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerValetSuvDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerValetSuvDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerValetSuvDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# vehicle_spawner_tank_device

VehicleSpawnerTankDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerTankDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_tank_device = vehicle_spawner_tank_device{}

    @editable
    Interaction : VehicleSpawnerTankDevice_Options = VehicleSpawnerTankDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerTankDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerTankDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerTankDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerTankDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# earth_sprite_device

EarthSpriteDevice_Options := enum:
    Enable,
    Disable,
    EnableItemGranting,
    DisableItemGranting,
    Hide,
    Show

EarthSpriteDevice := class(creative_device_output):

    @editable
    Target : earth_sprite_device = earth_sprite_device{}

    @editable
    Interaction : EarthSpriteDevice_Options = EarthSpriteDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            EarthSpriteDevice_Options.Enable => Target.Enable(),
            EarthSpriteDevice_Options.Disable => Target.Disable(),
            EarthSpriteDevice_Options.EnableItemGranting => Target.EnableItemGranting(),
            EarthSpriteDevice_Options.DisableItemGranting => Target.DisableItemGranting(),
            EarthSpriteDevice_Options.Hide => Target.Hide(),
            EarthSpriteDevice_Options.Show => Target.Show()


# guard_spawner_device

GuardSpawnerDevice_Options := enum:
    Enable,
    Disable,
    Reset,
    Despawn,
    DismissAllHiredGuards,
    SetGuardsHireable,
    SetGuardsNotHireable

GuardSpawnerDevice := class(creative_device_output):

    @editable
    Target : guard_spawner_device = guard_spawner_device{}

    @editable
    Interaction : GuardSpawnerDevice_Options = GuardSpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            GuardSpawnerDevice_Options.Enable => Target.Enable(),
            GuardSpawnerDevice_Options.Disable => Target.Disable(),
            GuardSpawnerDevice_Options.Reset => Target.Reset(),
            GuardSpawnerDevice_Options.Despawn => Target.Despawn(),
            GuardSpawnerDevice_Options.DismissAllHiredGuards => Target.DismissAllHiredGuards(),
            GuardSpawnerDevice_Options.SetGuardsHireable => Target.SetGuardsHireable(),
            GuardSpawnerDevice_Options.SetGuardsNotHireable => Target.SetGuardsNotHireable()


# nitro_barrel_spawner_device

NitroBarrelSpawnerDevice_Options := enum:
    Enable,
    Disable,
    AllowRespawn,
    DisallowRespawn

NitroBarrelSpawnerDevice := class(creative_device_output):

    @editable
    Target : nitro_barrel_spawner_device = nitro_barrel_spawner_device{}

    @editable
    Interaction : NitroBarrelSpawnerDevice_Options = NitroBarrelSpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            NitroBarrelSpawnerDevice_Options.Enable => Target.Enable(),
            NitroBarrelSpawnerDevice_Options.Disable => Target.Disable(),
            NitroBarrelSpawnerDevice_Options.AllowRespawn => Target.AllowRespawn(),
            NitroBarrelSpawnerDevice_Options.DisallowRespawn => Target.DisallowRespawn()


# vehicle_spawner_getaway_device

VehicleSpawnerGetawayDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerGetawayDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_getaway_device = vehicle_spawner_getaway_device{}

    @editable
    Interaction : VehicleSpawnerGetawayDevice_Options = VehicleSpawnerGetawayDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerGetawayDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerGetawayDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerGetawayDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerGetawayDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# wilds_plant_device

WildsPlantDevice_Options := enum:
    Enable,
    Disable

WildsPlantDevice := class(creative_device_output):

    @editable
    Target : wilds_plant_device = wilds_plant_device{}

    @editable
    Interaction : WildsPlantDevice_Options = WildsPlantDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            WildsPlantDevice_Options.Enable => Target.Enable(),
            WildsPlantDevice_Options.Disable => Target.Disable()


# grind_rail_device

GrindRailDevice_Options := enum:
    Enable,
    Disable,
    Hide,
    Show

GrindRailDevice := class(creative_device_output):

    @editable
    Target : grind_rail_device = grind_rail_device{}

    @editable
    Interaction : GrindRailDevice_Options = GrindRailDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            GrindRailDevice_Options.Enable => Target.Enable(),
            GrindRailDevice_Options.Disable => Target.Disable(),
            GrindRailDevice_Options.Hide => Target.Hide(),
            GrindRailDevice_Options.Show => Target.Show()


# vine_rail_device

VineRailDevice_Options := enum:
    Enable,
    Disable,
    Hide,
    Show

VineRailDevice := class(creative_device_output):

    @editable
    Target : vine_rail_device = vine_rail_device{}

    @editable
    Interaction : VineRailDevice_Options = VineRailDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VineRailDevice_Options.Enable => Target.Enable(),
            VineRailDevice_Options.Disable => Target.Disable(),
            VineRailDevice_Options.Hide => Target.Hide(),
            VineRailDevice_Options.Show => Target.Show()


# rift_point_volume_device

RiftPointVolumeDevice_Options := enum:
    Enable,
    Disable

RiftPointVolumeDevice := class(creative_device_output):

    @editable
    Target : rift_point_volume_device = rift_point_volume_device{}

    @editable
    Interaction : RiftPointVolumeDevice_Options = RiftPointVolumeDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            RiftPointVolumeDevice_Options.Enable => Target.Enable(),
            RiftPointVolumeDevice_Options.Disable => Target.Disable()


# vehicle_spawner_drivable_reboot_van_device

VehicleSpawnerDrivableRebootVanDevice_Options := enum:
    EnableReboot,
    DisableReboot,
    EnableRevive,
    DisableRevive

VehicleSpawnerDrivableRebootVanDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_drivable_reboot_van_device = vehicle_spawner_drivable_reboot_van_device{}

    @editable
    Interaction : VehicleSpawnerDrivableRebootVanDevice_Options = VehicleSpawnerDrivableRebootVanDevice_Options.EnableReboot

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerDrivableRebootVanDevice_Options.EnableReboot => Target.EnableReboot(),
            VehicleSpawnerDrivableRebootVanDevice_Options.DisableReboot => Target.DisableReboot(),
            VehicleSpawnerDrivableRebootVanDevice_Options.EnableRevive => Target.EnableRevive(),
            VehicleSpawnerDrivableRebootVanDevice_Options.DisableRevive => Target.DisableRevive()


# down_but_not_out_device

DownButNotOutDevice_Options := enum:
    Enable,
    Disable

DownButNotOutDevice := class(creative_device_output):

    @editable
    Target : down_but_not_out_device = down_but_not_out_device{}

    @editable
    Interaction : DownButNotOutDevice_Options = DownButNotOutDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            DownButNotOutDevice_Options.Enable => Target.Enable(),
            DownButNotOutDevice_Options.Disable => Target.Disable()


# vehicle_spawner_war_bus_device

VehicleSpawnerWarBusDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerWarBusDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_war_bus_device = vehicle_spawner_war_bus_device{}

    @editable
    Interaction : VehicleSpawnerWarBusDevice_Options = VehicleSpawnerWarBusDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerWarBusDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerWarBusDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerWarBusDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerWarBusDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# healing_cactus_device

HealingCactusDevice_Options := enum:
    Enable,
    Disable

HealingCactusDevice := class(creative_device_output):

    @editable
    Target : healing_cactus_device = healing_cactus_device{}

    @editable
    Interaction : HealingCactusDevice_Options = HealingCactusDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            HealingCactusDevice_Options.Enable => Target.Enable(),
            HealingCactusDevice_Options.Disable => Target.Disable()


# scout_spire_device

ScoutSpireDevice_Options := enum:
    Enable,
    Disable,
    Spawn,
    Destroy,
    Reset,
    Despawn

ScoutSpireDevice := class(creative_device_output):

    @editable
    Target : scout_spire_device = scout_spire_device{}

    @editable
    Interaction : ScoutSpireDevice_Options = ScoutSpireDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            ScoutSpireDevice_Options.Enable => Target.Enable(),
            ScoutSpireDevice_Options.Disable => Target.Disable(),
            ScoutSpireDevice_Options.Spawn => Target.Spawn(),
            ScoutSpireDevice_Options.Destroy => Target.Destroy(),
            ScoutSpireDevice_Options.Reset => Target.Reset(),
            ScoutSpireDevice_Options.Despawn => Target.Despawn()


# npc_spawner_device

NpcSpawnerDevice_Options := enum:
    Enable,
    Disable,
    Reset

NpcSpawnerDevice := class(creative_device_output):

    @editable
    Target : npc_spawner_device = npc_spawner_device{}

    @editable
    Interaction : NpcSpawnerDevice_Options = NpcSpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            NpcSpawnerDevice_Options.Enable => Target.Enable(),
            NpcSpawnerDevice_Options.Disable => Target.Disable(),
            NpcSpawnerDevice_Options.Reset => Target.Reset()


# bank_vault_device

BankVaultDevice_Options := enum:
    Enable,
    Disable,
    ForceOpen,
    PauseSequence,
    Reset,
    DestroyActiveWeakpoint,
    RestoreActiveWeakpoint

BankVaultDevice := class(creative_device_output):

    @editable
    Target : bank_vault_device = bank_vault_device{}

    @editable
    Interaction : BankVaultDevice_Options = BankVaultDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            BankVaultDevice_Options.Enable => Target.Enable(),
            BankVaultDevice_Options.Disable => Target.Disable(),
            BankVaultDevice_Options.ForceOpen => Target.ForceOpen(),
            BankVaultDevice_Options.PauseSequence => Target.PauseSequence(),
            BankVaultDevice_Options.Reset => Target.Reset(),
            BankVaultDevice_Options.DestroyActiveWeakpoint => Target.DestroyActiveWeakpoint(),
            BankVaultDevice_Options.RestoreActiveWeakpoint => Target.RestoreActiveWeakpoint()


# overlord_spire_device

OverlordSpireDevice_Options := enum:
    Enable,
    Disable,
    Spawn,
    Destroy,
    Reset,
    ClearTarget,
    ShowClouds,
    HideClouds

OverlordSpireDevice := class(creative_device_output):

    @editable
    Target : overlord_spire_device = overlord_spire_device{}

    @editable
    Interaction : OverlordSpireDevice_Options = OverlordSpireDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            OverlordSpireDevice_Options.Enable => Target.Enable(),
            OverlordSpireDevice_Options.Disable => Target.Disable(),
            OverlordSpireDevice_Options.Spawn => Target.Spawn(),
            OverlordSpireDevice_Options.Destroy => Target.Destroy(),
            OverlordSpireDevice_Options.Reset => Target.Reset(),
            OverlordSpireDevice_Options.ClearTarget => Target.ClearTarget(),
            OverlordSpireDevice_Options.ShowClouds => Target.ShowClouds(),
            OverlordSpireDevice_Options.HideClouds => Target.HideClouds()


# wildlife_spawner_device

WildlifeSpawnerDevice_Options := enum:
    Enable,
    Disable,
    Reset,
    UntameAll,
    DismountAll,
    RestoreEnergyForAll,
    ConsumeEnergyForAll

WildlifeSpawnerDevice := class(creative_device_output):

    @editable
    Target : wildlife_spawner_device = wildlife_spawner_device{}

    @editable
    Interaction : WildlifeSpawnerDevice_Options = WildlifeSpawnerDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            WildlifeSpawnerDevice_Options.Enable => Target.Enable(),
            WildlifeSpawnerDevice_Options.Disable => Target.Disable(),
            WildlifeSpawnerDevice_Options.Reset => Target.Reset(),
            WildlifeSpawnerDevice_Options.UntameAll => Target.UntameAll(),
            WildlifeSpawnerDevice_Options.DismountAll => Target.DismountAll(),
            WildlifeSpawnerDevice_Options.RestoreEnergyForAll => Target.RestoreEnergyForAll(),
            WildlifeSpawnerDevice_Options.ConsumeEnergyForAll => Target.ConsumeEnergyForAll()


# vehicle_spawner_armored_transport_device

VehicleSpawnerArmoredTransportDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerArmoredTransportDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_armored_transport_device = vehicle_spawner_armored_transport_device{}

    @editable
    Interaction : VehicleSpawnerArmoredTransportDevice_Options = VehicleSpawnerArmoredTransportDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerArmoredTransportDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerArmoredTransportDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerArmoredTransportDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerArmoredTransportDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# cinematic_sequence_device

CinematicSequenceDevice_Options := enum:
    Play,
    PlayReverse,
    GoToEndAndStop,
    Pause,
    TogglePause

CinematicSequenceDevice := class(creative_device_output):

    @editable
    Target : cinematic_sequence_device = cinematic_sequence_device{}

    @editable
    Interaction : CinematicSequenceDevice_Options = CinematicSequenceDevice_Options.Play

    Main<override>():void=
        case(Interaction):
            CinematicSequenceDevice_Options.Play => Target.Play(),
            CinematicSequenceDevice_Options.PlayReverse => Target.PlayReverse(),
            CinematicSequenceDevice_Options.GoToEndAndStop => Target.GoToEndAndStop(),
            CinematicSequenceDevice_Options.Pause => Target.Pause(),
            CinematicSequenceDevice_Options.TogglePause => Target.TogglePause()


# vehicle_spawner_rocketracing_device

VehicleSpawnerRocketracingDevice_Options := enum:
    Enable,
    Disable,
    DestroyVehicle,
    RespawnVehicle

VehicleSpawnerRocketracingDevice := class(creative_device_output):

    @editable
    Target : vehicle_spawner_rocketracing_device = vehicle_spawner_rocketracing_device{}

    @editable
    Interaction : VehicleSpawnerRocketracingDevice_Options = VehicleSpawnerRocketracingDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            VehicleSpawnerRocketracingDevice_Options.Enable => Target.Enable(),
            VehicleSpawnerRocketracingDevice_Options.Disable => Target.Disable(),
            VehicleSpawnerRocketracingDevice_Options.DestroyVehicle => Target.DestroyVehicle(),
            VehicleSpawnerRocketracingDevice_Options.RespawnVehicle => Target.RespawnVehicle()


# hive_stash_device

HiveStashDevice_Options := enum:
    Enable,
    Disable,
    ClearSpawnerLink,
    Reset

HiveStashDevice := class(creative_device_output):

    @editable
    Target : hive_stash_device = hive_stash_device{}

    @editable
    Interaction : HiveStashDevice_Options = HiveStashDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            HiveStashDevice_Options.Enable => Target.Enable(),
            HiveStashDevice_Options.Disable => Target.Disable(),
            HiveStashDevice_Options.ClearSpawnerLink => Target.ClearSpawnerLink(),
            HiveStashDevice_Options.Reset => Target.Reset()


# supply_drop_spawner_device

SupplyDropSpawnerDevice_Options := enum:
    Spawn,
    DestroyBalloon,
    Lock,
    Unlock,
    DestroySpawnedDrops

SupplyDropSpawnerDevice := class(creative_device_output):

    @editable
    Target : supply_drop_spawner_device = supply_drop_spawner_device{}

    @editable
    Interaction : SupplyDropSpawnerDevice_Options = SupplyDropSpawnerDevice_Options.Spawn

    Main<override>():void=
        case(Interaction):
            SupplyDropSpawnerDevice_Options.Spawn => Target.Spawn(),
            SupplyDropSpawnerDevice_Options.DestroyBalloon => Target.DestroyBalloon(),
            SupplyDropSpawnerDevice_Options.Lock => Target.Lock(),
            SupplyDropSpawnerDevice_Options.Unlock => Target.Unlock(),
            SupplyDropSpawnerDevice_Options.DestroySpawnedDrops => Target.DestroySpawnedDrops()


# hero_chest_device

HeroChestDevice_Options := enum:
    Enable,
    Disable,
    LockForAll,
    UnlockForAll,
    Reset

HeroChestDevice := class(creative_device_output):

    @editable
    Target : hero_chest_device = hero_chest_device{}

    @editable
    Interaction : HeroChestDevice_Options = HeroChestDevice_Options.Enable

    Main<override>():void=
        case(Interaction):
            HeroChestDevice_Options.Enable => Target.Enable(),
            HeroChestDevice_Options.Disable => Target.Disable(),
            HeroChestDevice_Options.LockForAll => Target.LockForAll(),
            HeroChestDevice_Options.UnlockForAll => Target.UnlockForAll(),
            HeroChestDevice_Options.Reset => Target.Reset()