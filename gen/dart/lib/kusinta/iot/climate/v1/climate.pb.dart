// This is a generated file - do not edit.
//
// Generated from kusinta/iot/climate/v1/climate.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $0;
import '../../identity/v1/identity.pb.dart' as $1;
import 'climate.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'climate.pbenum.dart';

enum TargetChange_By { user, device, notSet }

/// Who or what last set a room's target, and when.
///
/// Shown beside the target, because under "last change wins" a target that moved on its
/// own looks like a fault unless the reader can see that somebody turned a radiator by
/// hand ten minutes ago.
class TargetChange extends $pb.GeneratedMessage {
  factory TargetChange({
    $0.Timestamp? at,
    $1.UserId? user,
    $1.DeviceId? device,
  }) {
    final result = create();
    if (at != null) result.at = at;
    if (user != null) result.user = user;
    if (device != null) result.device = device;
    return result;
  }

  TargetChange._();

  factory TargetChange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TargetChange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TargetChange_By> _TargetChange_ByByTag = {
    2: TargetChange_By.user,
    3: TargetChange_By.device,
    0: TargetChange_By.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TargetChange',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'at',
        subBuilder: $0.Timestamp.create)
    ..aOM<$1.UserId>(2, _omitFieldNames ? '' : 'user',
        subBuilder: $1.UserId.create)
    ..aOM<$1.DeviceId>(3, _omitFieldNames ? '' : 'device',
        subBuilder: $1.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TargetChange clone() => TargetChange()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TargetChange copyWith(void Function(TargetChange) updates) =>
      super.copyWith((message) => updates(message as TargetChange))
          as TargetChange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TargetChange create() => TargetChange._();
  @$core.override
  TargetChange createEmptyInstance() => create();
  static $pb.PbList<TargetChange> createRepeated() =>
      $pb.PbList<TargetChange>();
  @$core.pragma('dart2js:noInline')
  static TargetChange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TargetChange>(create);
  static TargetChange? _defaultInstance;

  TargetChange_By whichBy() => _TargetChange_ByByTag[$_whichOneof(0)]!;
  void clearBy() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.Timestamp get at => $_getN(0);
  @$pb.TagNumber(1)
  set at($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearAt() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureAt() => $_ensure(0);

  /// Set in the app, by this user.
  @$pb.TagNumber(2)
  $1.UserId get user => $_getN(1);
  @$pb.TagNumber(2)
  set user($1.UserId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.UserId ensureUser() => $_ensure(1);

  /// Turned by hand at this device: a valve's knob or a wall thermostat's dial, as the
  /// device reported it (Matter Thermostat SetpointChangeSource = Manual). A change the
  /// device made on its own — window-open, frost protection, its own schedule — is never
  /// adopted and never appears here.
  @$pb.TagNumber(3)
  $1.DeviceId get device => $_getN(2);
  @$pb.TagNumber(3)
  set device($1.DeviceId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearDevice() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.DeviceId ensureDevice() => $_ensure(2);
}

/// The climate of one room.
///
/// Apply as an upsert keyed on space_id: the same room is sent again whenever any of this
/// moves.
class RoomClimate extends $pb.GeneratedMessage {
  factory RoomClimate({
    $1.SpaceId? spaceId,
    $core.int? targetCentidegrees,
    TargetChange? targetChange,
    $core.int? effectiveTargetCentidegrees,
    $core.bool? overridesMode,
    $core.int? minCentidegrees,
    $core.int? maxCentidegrees,
    $core.Iterable<$1.DeviceId>? sensorIds,
    $core.int? measuredCentidegrees,
    $1.DeviceId? measuredBy,
    RoomClimateCondition? condition,
    $core.bool? lockDeviceControls,
    $1.SpaceId? modeSpaceId,
    $core.bool? sensorsConfigured,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (targetCentidegrees != null)
      result.targetCentidegrees = targetCentidegrees;
    if (targetChange != null) result.targetChange = targetChange;
    if (effectiveTargetCentidegrees != null)
      result.effectiveTargetCentidegrees = effectiveTargetCentidegrees;
    if (overridesMode != null) result.overridesMode = overridesMode;
    if (minCentidegrees != null) result.minCentidegrees = minCentidegrees;
    if (maxCentidegrees != null) result.maxCentidegrees = maxCentidegrees;
    if (sensorIds != null) result.sensorIds.addAll(sensorIds);
    if (measuredCentidegrees != null)
      result.measuredCentidegrees = measuredCentidegrees;
    if (measuredBy != null) result.measuredBy = measuredBy;
    if (condition != null) result.condition = condition;
    if (lockDeviceControls != null)
      result.lockDeviceControls = lockDeviceControls;
    if (modeSpaceId != null) result.modeSpaceId = modeSpaceId;
    if (sensorsConfigured != null) result.sensorsConfigured = sensorsConfigured;
    return result;
  }

  RoomClimate._();

  factory RoomClimate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RoomClimate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RoomClimate',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..aOM<$1.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $1.SpaceId.create)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'targetCentidegrees', $pb.PbFieldType.OS3)
    ..aOM<TargetChange>(3, _omitFieldNames ? '' : 'targetChange',
        subBuilder: TargetChange.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'effectiveTargetCentidegrees',
        $pb.PbFieldType.OS3)
    ..aOB(5, _omitFieldNames ? '' : 'overridesMode')
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'minCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'maxCentidegrees', $pb.PbFieldType.OS3)
    ..pc<$1.DeviceId>(8, _omitFieldNames ? '' : 'sensorIds', $pb.PbFieldType.PM,
        subBuilder: $1.DeviceId.create)
    ..a<$core.int>(
        9, _omitFieldNames ? '' : 'measuredCentidegrees', $pb.PbFieldType.OS3)
    ..aOM<$1.DeviceId>(10, _omitFieldNames ? '' : 'measuredBy',
        subBuilder: $1.DeviceId.create)
    ..e<RoomClimateCondition>(
        11, _omitFieldNames ? '' : 'condition', $pb.PbFieldType.OE,
        defaultOrMaker: RoomClimateCondition.ROOM_CLIMATE_CONDITION_UNSPECIFIED,
        valueOf: RoomClimateCondition.valueOf,
        enumValues: RoomClimateCondition.values)
    ..aOB(12, _omitFieldNames ? '' : 'lockDeviceControls')
    ..aOM<$1.SpaceId>(13, _omitFieldNames ? '' : 'modeSpaceId',
        subBuilder: $1.SpaceId.create)
    ..aOB(14, _omitFieldNames ? '' : 'sensorsConfigured')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomClimate clone() => RoomClimate()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomClimate copyWith(void Function(RoomClimate) updates) =>
      super.copyWith((message) => updates(message as RoomClimate))
          as RoomClimate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomClimate create() => RoomClimate._();
  @$core.override
  RoomClimate createEmptyInstance() => create();
  static $pb.PbList<RoomClimate> createRepeated() => $pb.PbList<RoomClimate>();
  @$core.pragma('dart2js:noInline')
  static RoomClimate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RoomClimate>(create);
  static RoomClimate? _defaultInstance;

  /// A Space of SPACE_TYPE_ROOM.
  @$pb.TagNumber(1)
  $1.SpaceId get spaceId => $_getN(0);
  @$pb.TagNumber(1)
  set spaceId($1.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.SpaceId ensureSpaceId() => $_ensure(0);

  /// The temperature the room is to be held at, in centidegrees. Unset: nobody has set
  /// one. Always within [min_centidegrees, max_centidegrees] where those are set.
  @$pb.TagNumber(2)
  $core.int get targetCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set targetCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTargetCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetCentidegrees() => $_clearField(2);

  /// Who or what set target_centidegrees. Unset while the target is.
  @$pb.TagNumber(3)
  TargetChange get targetChange => $_getN(2);
  @$pb.TagNumber(3)
  set targetChange(TargetChange value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetChange() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetChange() => $_clearField(3);
  @$pb.TagNumber(3)
  TargetChange ensureTargetChange() => $_ensure(2);

  /// What the valves are actually being held at, in centidegrees. Equal to the target
  /// unless a ClimateMode on an enclosing space sets the room back — and then the room's
  /// own target again if somebody changed this room during the mode (see
  /// overrides_mode). Unset while nothing is being held.
  @$pb.TagNumber(4)
  $core.int get effectiveTargetCentidegrees => $_getIZ(3);
  @$pb.TagNumber(4)
  set effectiveTargetCentidegrees($core.int value) =>
      $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEffectiveTargetCentidegrees() => $_has(3);
  @$pb.TagNumber(4)
  void clearEffectiveTargetCentidegrees() => $_clearField(4);

  /// Set when somebody changed this room while a ClimateMode was on: the room keeps its
  /// own target until the mode ends, while the rest of the apartment stays set back.
  @$pb.TagNumber(5)
  $core.bool get overridesMode => $_getBF(4);
  @$pb.TagNumber(5)
  set overridesMode($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOverridesMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearOverridesMode() => $_clearField(5);

  /// The owner's limits, in centidegrees. The gateway writes them to every device in the
  /// room (Matter Min/MaxHeatSetpointLimit), so a knob stops at them physically, and
  /// clamps every target — from the app, a knob or a mode — to them. The minimum is also
  /// the floor under a mode's setback.
  @$pb.TagNumber(6)
  $core.int get minCentidegrees => $_getIZ(5);
  @$pb.TagNumber(6)
  set minCentidegrees($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMinCentidegrees() => $_has(5);
  @$pb.TagNumber(6)
  void clearMinCentidegrees() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get maxCentidegrees => $_getIZ(6);
  @$pb.TagNumber(7)
  set maxCentidegrees($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMaxCentidegrees() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxCentidegrees() => $_clearField(7);

  /// The sensors the room measures with, in order: the first is used, each later one
  /// takes over while those before it are quiet. Only devices filed in this room.
  ///
  /// By default every temperature sensor filed in the room, in the order it was filed, so
  /// a sensor filed later joins at the end without anyone configuring anything. An owner
  /// can set the order explicitly (see sensors_configured). Empty: the room has no
  /// temperature sensor, and its valves regulate on their own probes (NO_SENSOR).
  @$pb.TagNumber(8)
  $pb.PbList<$1.DeviceId> get sensorIds => $_getList(7);

  /// The reading steering the room now, in centidegrees, and which sensor it came from.
  /// measured_by unset while the valves are on their own probes.
  @$pb.TagNumber(9)
  $core.int get measuredCentidegrees => $_getIZ(8);
  @$pb.TagNumber(9)
  set measuredCentidegrees($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMeasuredCentidegrees() => $_has(8);
  @$pb.TagNumber(9)
  void clearMeasuredCentidegrees() => $_clearField(9);

  @$pb.TagNumber(10)
  $1.DeviceId get measuredBy => $_getN(9);
  @$pb.TagNumber(10)
  set measuredBy($1.DeviceId value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasMeasuredBy() => $_has(9);
  @$pb.TagNumber(10)
  void clearMeasuredBy() => $_clearField(10);
  @$pb.TagNumber(10)
  $1.DeviceId ensureMeasuredBy() => $_ensure(9);

  @$pb.TagNumber(11)
  RoomClimateCondition get condition => $_getN(10);
  @$pb.TagNumber(11)
  set condition(RoomClimateCondition value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasCondition() => $_has(10);
  @$pb.TagNumber(11)
  void clearCondition() => $_clearField(11);

  /// Whether the controls on this room's devices are locked. While unlocked, a change made
  /// by hand at a device becomes the room's target. Locked, the gateway sets the devices'
  /// own lock (Matter Thermostat User Interface Configuration KeypadLockout), so the
  /// refusal happens at the device rather than being undone later.
  ///
  /// Stated as the lock rather than as a permission so that the proto3 default — false,
  /// unlocked — is the intended default: a room nobody has configured takes changes at its
  /// devices, as a room in an apartment always should. Elsewhere locking is the owner's
  /// choice.
  @$pb.TagNumber(12)
  $core.bool get lockDeviceControls => $_getBF(11);
  @$pb.TagNumber(12)
  set lockDeviceControls($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasLockDeviceControls() => $_has(11);
  @$pb.TagNumber(12)
  void clearLockDeviceControls() => $_clearField(12);

  /// The space whose ClimateMode applies to this room, if one does — set back or,
  /// with overrides_mode, overridden. Unset when no mode applies.
  @$pb.TagNumber(13)
  $1.SpaceId get modeSpaceId => $_getN(12);
  @$pb.TagNumber(13)
  set modeSpaceId($1.SpaceId value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasModeSpaceId() => $_has(12);
  @$pb.TagNumber(13)
  void clearModeSpaceId() => $_clearField(13);
  @$pb.TagNumber(13)
  $1.SpaceId ensureModeSpaceId() => $_ensure(12);

  /// Whether sensor_ids is an order an owner chose, rather than the default of filing
  /// order. A sensor filed into a room with a chosen order is not added to it.
  @$pb.TagNumber(14)
  $core.bool get sensorsConfigured => $_getBF(13);
  @$pb.TagNumber(14)
  set sensorsConfigured($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasSensorsConfigured() => $_has(13);
  @$pb.TagNumber(14)
  void clearSensorsConfigured() => $_clearField(14);
}

/// A mode set on an apartment — or, for rooms that are not in one, on their floor or
/// common area. While it is on it sets back every room below that space, except that a
/// room inside an apartment follows only its apartment's mode: a mode on a floor does not
/// reach into the flats on it. Where more than one mode could apply, the nearest enclosing
/// space's wins. A room somebody changes during the mode keeps its own target
/// (RoomClimate.overrides_mode) until the mode ends.
class ClimateMode extends $pb.GeneratedMessage {
  factory ClimateMode({
    $1.SpaceId? spaceId,
    ClimateModeKind? kind,
    $core.int? setbackCentidegrees,
    $0.Timestamp? startsAt,
    $0.Timestamp? endsAt,
    $1.UserId? setBy,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (kind != null) result.kind = kind;
    if (setbackCentidegrees != null)
      result.setbackCentidegrees = setbackCentidegrees;
    if (startsAt != null) result.startsAt = startsAt;
    if (endsAt != null) result.endsAt = endsAt;
    if (setBy != null) result.setBy = setBy;
    return result;
  }

  ClimateMode._();

  factory ClimateMode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClimateMode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClimateMode',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..aOM<$1.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $1.SpaceId.create)
    ..e<ClimateModeKind>(2, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: ClimateModeKind.CLIMATE_MODE_KIND_UNSPECIFIED,
        valueOf: ClimateModeKind.valueOf,
        enumValues: ClimateModeKind.values)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'setbackCentidegrees', $pb.PbFieldType.OS3)
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'startsAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'endsAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$1.UserId>(6, _omitFieldNames ? '' : 'setBy',
        subBuilder: $1.UserId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClimateMode clone() => ClimateMode()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClimateMode copyWith(void Function(ClimateMode) updates) =>
      super.copyWith((message) => updates(message as ClimateMode))
          as ClimateMode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClimateMode create() => ClimateMode._();
  @$core.override
  ClimateMode createEmptyInstance() => create();
  static $pb.PbList<ClimateMode> createRepeated() => $pb.PbList<ClimateMode>();
  @$core.pragma('dart2js:noInline')
  static ClimateMode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClimateMode>(create);
  static ClimateMode? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SpaceId get spaceId => $_getN(0);
  @$pb.TagNumber(1)
  set spaceId($1.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.SpaceId ensureSpaceId() => $_ensure(0);

  @$pb.TagNumber(2)
  ClimateModeKind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind(ClimateModeKind value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  /// The temperature every room is set back to, in centidegrees. Required while a mode is
  /// on — a mode with nothing to set back to is refused, not defaulted. Clamped by each
  /// room's min_centidegrees, which is the frost floor.
  @$pb.TagNumber(3)
  $core.int get setbackCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set setbackCentidegrees($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSetbackCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetbackCentidegrees() => $_clearField(3);

  /// HOLIDAY: when the setback begins and when the rooms are to be back at their own
  /// targets. AWAY: starts_at is when it was switched on; ends_at is unset.
  @$pb.TagNumber(4)
  $0.Timestamp get startsAt => $_getN(3);
  @$pb.TagNumber(4)
  set startsAt($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStartsAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartsAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureStartsAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Timestamp get endsAt => $_getN(4);
  @$pb.TagNumber(5)
  set endsAt($0.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasEndsAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndsAt() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureEndsAt() => $_ensure(4);

  /// Who switched it on.
  @$pb.TagNumber(6)
  $1.UserId get setBy => $_getN(5);
  @$pb.TagNumber(6)
  set setBy($1.UserId value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSetBy() => $_has(5);
  @$pb.TagNumber(6)
  void clearSetBy() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.UserId ensureSetBy() => $_ensure(5);
}

/// Every room climate and mode a caller may see, in reply to a listing.
class RoomClimateList extends $pb.GeneratedMessage {
  factory RoomClimateList({
    $core.Iterable<RoomClimate>? rooms,
    $core.Iterable<ClimateMode>? modes,
  }) {
    final result = create();
    if (rooms != null) result.rooms.addAll(rooms);
    if (modes != null) result.modes.addAll(modes);
    return result;
  }

  RoomClimateList._();

  factory RoomClimateList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RoomClimateList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RoomClimateList',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..pc<RoomClimate>(1, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM,
        subBuilder: RoomClimate.create)
    ..pc<ClimateMode>(2, _omitFieldNames ? '' : 'modes', $pb.PbFieldType.PM,
        subBuilder: ClimateMode.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomClimateList clone() => RoomClimateList()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomClimateList copyWith(void Function(RoomClimateList) updates) =>
      super.copyWith((message) => updates(message as RoomClimateList))
          as RoomClimateList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomClimateList create() => RoomClimateList._();
  @$core.override
  RoomClimateList createEmptyInstance() => create();
  static $pb.PbList<RoomClimateList> createRepeated() =>
      $pb.PbList<RoomClimateList>();
  @$core.pragma('dart2js:noInline')
  static RoomClimateList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RoomClimateList>(create);
  static RoomClimateList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RoomClimate> get rooms => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<ClimateMode> get modes => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
