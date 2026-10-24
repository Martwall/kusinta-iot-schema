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
import '../../access/v1/roles.pbenum.dart' as $2;
import '../../identity/v1/identity.pb.dart' as $1;
import 'climate.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'climate.pbenum.dart';

enum TargetChange_By { user, device, moveIn, notSet }

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
    $core.bool? moveIn,
  }) {
    final result = create();
    if (at != null) result.at = at;
    if (user != null) result.user = user;
    if (device != null) result.device = device;
    if (moveIn != null) result.moveIn = moveIn;
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
    4: TargetChange_By.moveIn,
    0: TargetChange_By.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TargetChange',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'at',
        subBuilder: $0.Timestamp.create)
    ..aOM<$1.UserId>(2, _omitFieldNames ? '' : 'user',
        subBuilder: $1.UserId.create)
    ..aOM<$1.DeviceId>(3, _omitFieldNames ? '' : 'device',
        subBuilder: $1.DeviceId.create)
    ..aOB(4, _omitFieldNames ? '' : 'moveIn')
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

  /// Set by the gateway when the home gained a resident, from the room's outer move-in target
  /// (OuterRoomLimits.move_in_target; webrtc.v1 household.proto, MOVE-IN). Only true is sent.
  @$pb.TagNumber(4)
  $core.bool get moveIn => $_getBF(3);
  @$pb.TagNumber(4)
  set moveIn($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMoveIn() => $_has(3);
  @$pb.TagNumber(4)
  void clearMoveIn() => $_clearField(4);
}

/// The climate of one room.
///
/// Apply as an upsert keyed on space_id: the same room is sent again whenever any of it
/// that the recipient is sent moves (see state_withheld).
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
    $core.bool? stateWithheld,
    $core.Iterable<ClimateExplanation>? explanations,
    $0.Timestamp? targetHeldUntil,
    RoomPlanning? planning,
    $core.int? comfortBandLowCentidegrees,
    $core.int? comfortBandHighCentidegrees,
    OuterRoomLimits? outerLimits,
    InnerRoomLimits? innerLimits,
    OuterLimitClamp? outerLimitClamp,
    OuterLimitsCoverage? outerLimitsCoverage,
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
    if (stateWithheld != null) result.stateWithheld = stateWithheld;
    if (explanations != null) result.explanations.addAll(explanations);
    if (targetHeldUntil != null) result.targetHeldUntil = targetHeldUntil;
    if (planning != null) result.planning = planning;
    if (comfortBandLowCentidegrees != null)
      result.comfortBandLowCentidegrees = comfortBandLowCentidegrees;
    if (comfortBandHighCentidegrees != null)
      result.comfortBandHighCentidegrees = comfortBandHighCentidegrees;
    if (outerLimits != null) result.outerLimits = outerLimits;
    if (innerLimits != null) result.innerLimits = innerLimits;
    if (outerLimitClamp != null) result.outerLimitClamp = outerLimitClamp;
    if (outerLimitsCoverage != null)
      result.outerLimitsCoverage = outerLimitsCoverage;
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
    ..aOB(15, _omitFieldNames ? '' : 'stateWithheld')
    ..pc<ClimateExplanation>(
        16, _omitFieldNames ? '' : 'explanations', $pb.PbFieldType.PM,
        subBuilder: ClimateExplanation.create)
    ..aOM<$0.Timestamp>(17, _omitFieldNames ? '' : 'targetHeldUntil',
        subBuilder: $0.Timestamp.create)
    ..e<RoomPlanning>(18, _omitFieldNames ? '' : 'planning', $pb.PbFieldType.OE,
        defaultOrMaker: RoomPlanning.ROOM_PLANNING_UNSPECIFIED,
        valueOf: RoomPlanning.valueOf,
        enumValues: RoomPlanning.values)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'comfortBandLowCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(20, _omitFieldNames ? '' : 'comfortBandHighCentidegrees',
        $pb.PbFieldType.OS3)
    ..aOM<OuterRoomLimits>(21, _omitFieldNames ? '' : 'outerLimits',
        subBuilder: OuterRoomLimits.create)
    ..aOM<InnerRoomLimits>(22, _omitFieldNames ? '' : 'innerLimits',
        subBuilder: InnerRoomLimits.create)
    ..aOM<OuterLimitClamp>(23, _omitFieldNames ? '' : 'outerLimitClamp',
        subBuilder: OuterLimitClamp.create)
    ..e<OuterLimitsCoverage>(
        24, _omitFieldNames ? '' : 'outerLimitsCoverage', $pb.PbFieldType.OE,
        defaultOrMaker: OuterLimitsCoverage.OUTER_LIMITS_COVERAGE_UNSPECIFIED,
        valueOf: OuterLimitsCoverage.valueOf,
        enumValues: OuterLimitsCoverage.values)
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
  /// one. Always within the inner limits where those are set (inner_limits). The outer limits
  /// bind outputs, not the room, and do not clamp it (OuterRoomLimits): where they hold the
  /// outputs they bind elsewhere, effective_target_centidegrees and outer_limit_clamp say so.
  ///
  /// Rollout note: an app that predates outer_limits reads min_centidegrees and
  /// max_centidegrees as bounds on this field, and may be sent a target outside them.
  @$pb.TagNumber(2)
  $core.int get targetCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set targetCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTargetCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetCentidegrees() => $_clearField(2);

  /// Who or what set target_centidegrees. Unset while the target is, and when it is withheld
  /// from the recipient: from service in a home, and from anyone when it dates from before
  /// their current residency in the home, or from a home they did not live in at the time
  /// (see access.v1.MembershipRelation).
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
  /// overrides_mode) — or the vacancy setback holds it (webrtc.v1 household.proto, VACANCY), or
  /// an outer bound clamps it (outer_limit_clamp). Where the outer limits bind some of the
  /// room's outputs and not others, what those they bind are held at. Unset while nothing is
  /// being held.
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

  /// The outer limits' minimum and maximum, in centidegrees: always outer_limits.min and
  /// .max, which add who set each and when. They bind the outputs OuterRoomLimits says, and
  /// nothing else. Where the gateway writes them into a device's own setpoint limits (Matter
  /// Min/MaxHeatSetpointLimit), so that a knob stops at them, it writes them only to devices
  /// they bind.
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
  /// In a home, sensors its residents own come first, in the order they were filed, and then
  /// the building's; outside homes a room measures with the building's sensors only. The
  /// building's are by default every building temperature sensor filed in the room, in the
  /// order it was filed, so a sensor filed later joins at the end without anyone configuring
  /// anything; an owner can set their order explicitly (see sensors_configured). Empty: the
  /// room has no temperature sensor, and its valves regulate on their own probes
  /// (NO_SENSOR).
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
  /// devices, as a room in an apartment should until its residents decide otherwise; when a
  /// home loses its last resident, its rooms' locks are cleared, and so are those set while it
  /// stood empty when it gains one (webrtc.v1 household.proto, EMPTY HOME). Elsewhere locking
  /// is the owner's choice.
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

  /// Whether the building's part of sensor_ids is an order an owner chose, rather than the
  /// default of filing order. A building sensor filed into a room with a chosen order is
  /// not added to it; a resident's own always is. A sensor that becomes the building's in a
  /// room — released by its owner — counts as filed there at that moment.
  @$pb.TagNumber(14)
  $core.bool get sensorsConfigured => $_getBF(13);
  @$pb.TagNumber(14)
  set sensorsConfigured($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasSensorsConfigured() => $_has(13);
  @$pb.TagNumber(14)
  void clearSensorsConfigured() => $_clearField(14);

  /// Set when the recipient reaches this room only as service (see
  /// access.v1.MembershipRelation): the room is in someone's home, and what describes the
  /// people in it is WITHHELD — target_centidegrees, target_change,
  /// effective_target_centidegrees, overrides_mode, mode_space_id, measured_centidegrees,
  /// measured_by, condition, lock_device_controls, inner_limits, outer_limit_clamp and
  /// outer_limits_coverage are all left unset, and sensor_ids leaves out sensors a resident
  /// owns.
  ///
  /// Unset because withheld, not because unknown: an app must not render them as NO_TARGET or
  /// a lost sensor. A withheld room is sent again only when something that IS sent changes,
  /// so that the timing of an update does not give away what was withheld. Its outer limits
  /// and the sensors service may see are still sent, since setting a room up is service work.
  /// Its climate over time is available to service only as an ApartmentClimateSummary.
  ///
  /// explanations, target_held_until, planning and the comfort band are withheld in the
  /// same way.
  @$pb.TagNumber(15)
  $core.bool get stateWithheld => $_getBF(14);
  @$pb.TagNumber(15)
  set stateWithheld($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasStateWithheld() => $_has(14);
  @$pb.TagNumber(15)
  void clearStateWithheld() => $_clearField(15);

  /// Why the room is being held where it is, when that differs from simply holding its
  /// target: a plan heating ahead of an expensive hour, the heat source busy with hot water,
  /// a floor zone held back. Most significant first. An app that shows one shows the first
  /// it can show: a kind and subject it knows, a pair that kind lists, and not past its
  /// ends_at. Empty: nothing beyond the target and condition needs explaining.
  ///
  /// A window, a lost sensor and the rest of RoomClimateCondition are told by condition and
  /// never repeated here; a target a person set is told by target_change and
  /// target_held_until; whether the room is planned for at all is told by planning — one
  /// fact, one place.
  ///
  /// Sent with the room, so a replaced room replaces its list: an explanation absent from
  /// the latest RoomClimate no longer holds.
  @$pb.TagNumber(16)
  $pb.PbList<ClimateExplanation> get explanations => $_getList(15);

  /// When a target a person set will next be moved by the gateway on its own — a schedule
  /// step, a plan taking over again. Unset: it holds until somebody changes it. Told so that
  /// a person is not surprised when their change ends. Unset whenever target_change is
  /// withheld from the recipient, for the same reasons: it describes the same change.
  @$pb.TagNumber(17)
  $0.Timestamp get targetHeldUntil => $_getN(16);
  @$pb.TagNumber(17)
  set targetHeldUntil($0.Timestamp value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasTargetHeldUntil() => $_has(16);
  @$pb.TagNumber(17)
  void clearTargetHeldUntil() => $_clearField(17);
  @$pb.TagNumber(17)
  $0.Timestamp ensureTargetHeldUntil() => $_ensure(16);

  /// Whether a plan steers the room. See RoomPlanning.
  @$pb.TagNumber(18)
  RoomPlanning get planning => $_getN(17);
  @$pb.TagNumber(18)
  set planning(RoomPlanning value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasPlanning() => $_has(17);
  @$pb.TagNumber(18)
  void clearPlanning() => $_clearField(18);

  /// The comfort band in force, in centidegrees: the lowest and highest a plan may hold the
  /// room at while it heats ahead, coasts or saves on dear energy. Both set or neither, low
  /// no higher than high, and within [min_centidegrees, max_centidegrees] and the inner limits
  /// where those are set. Absent: no band, and a plan holds the room at its target — never 0 °C.
  @$pb.TagNumber(19)
  $core.int get comfortBandLowCentidegrees => $_getIZ(18);
  @$pb.TagNumber(19)
  set comfortBandLowCentidegrees($core.int value) =>
      $_setSignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasComfortBandLowCentidegrees() => $_has(18);
  @$pb.TagNumber(19)
  void clearComfortBandLowCentidegrees() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.int get comfortBandHighCentidegrees => $_getIZ(19);
  @$pb.TagNumber(20)
  set comfortBandHighCentidegrees($core.int value) =>
      $_setSignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasComfortBandHighCentidegrees() => $_has(19);
  @$pb.TagNumber(20)
  void clearComfortBandHighCentidegrees() => $_clearField(20);

  /// The room's outer limits, each bound with who set it and when (OuterRoomLimits). Sent to
  /// whoever is sent the room, service included: they are the building's, and setting them is
  /// service work. Unset: the room has none.
  @$pb.TagNumber(21)
  OuterRoomLimits get outerLimits => $_getN(20);
  @$pb.TagNumber(21)
  set outerLimits(OuterRoomLimits value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasOuterLimits() => $_has(20);
  @$pb.TagNumber(21)
  void clearOuterLimits() => $_clearField(21);
  @$pb.TagNumber(21)
  OuterRoomLimits ensureOuterLimits() => $_ensure(20);

  /// The household's limits (InnerRoomLimits). Sent to the home's residents only, and never with
  /// state_withheld. Unset: none, or a room outside homes.
  @$pb.TagNumber(22)
  InnerRoomLimits get innerLimits => $_getN(21);
  @$pb.TagNumber(22)
  set innerLimits(InnerRoomLimits value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasInnerLimits() => $_has(21);
  @$pb.TagNumber(22)
  void clearInnerLimits() => $_clearField(22);
  @$pb.TagNumber(22)
  InnerRoomLimits ensureInnerLimits() => $_ensure(21);

  /// Set while an outer bound holds the outputs it binds away from where the room would be held
  /// without it — the household's target, its inner limits or its mode's setback — so the
  /// household is told which bound does it, and from outer_limits the role behind it and since
  /// when. Gone once nothing is clamped. Sent to the home's residents only.
  @$pb.TagNumber(23)
  OuterLimitClamp get outerLimitClamp => $_getN(22);
  @$pb.TagNumber(23)
  set outerLimitClamp(OuterLimitClamp value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasOuterLimitClamp() => $_has(22);
  @$pb.TagNumber(23)
  void clearOuterLimitClamp() => $_clearField(23);
  @$pb.TagNumber(23)
  OuterLimitClamp ensureOuterLimitClamp() => $_ensure(22);

  /// How many of the room's heating outputs the outer limits bind, so that an app shows the
  /// building's bounds where they apply and not where they do not. Sent to the home's residents
  /// only: to anyone else it would tell whether the room holds a device a resident owns.
  @$pb.TagNumber(24)
  OuterLimitsCoverage get outerLimitsCoverage => $_getN(23);
  @$pb.TagNumber(24)
  set outerLimitsCoverage(OuterLimitsCoverage value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasOuterLimitsCoverage() => $_has(23);
  @$pb.TagNumber(24)
  void clearOuterLimitsCoverage() => $_clearField(24);
}

/// One bound of a room's outer limits, with who set it and when. Shown to the household as the
/// role and the time, never a name: "building administrator, since …".
class OuterLimit extends $pb.GeneratedMessage {
  factory OuterLimit({
    $core.int? centidegrees,
    $2.Role? setByRole,
    $0.Timestamp? setAt,
  }) {
    final result = create();
    if (centidegrees != null) result.centidegrees = centidegrees;
    if (setByRole != null) result.setByRole = setByRole;
    if (setAt != null) result.setAt = setAt;
    return result;
  }

  OuterLimit._();

  factory OuterLimit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OuterLimit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OuterLimit',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'centidegrees', $pb.PbFieldType.OS3)
    ..e<$2.Role>(2, _omitFieldNames ? '' : 'setByRole', $pb.PbFieldType.OE,
        defaultOrMaker: $2.Role.ROLE_UNSPECIFIED,
        valueOf: $2.Role.valueOf,
        enumValues: $2.Role.values)
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'setAt',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OuterLimit clone() => OuterLimit()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OuterLimit copyWith(void Function(OuterLimit) updates) =>
      super.copyWith((message) => updates(message as OuterLimit)) as OuterLimit;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OuterLimit create() => OuterLimit._();
  @$core.override
  OuterLimit createEmptyInstance() => create();
  static $pb.PbList<OuterLimit> createRepeated() => $pb.PbList<OuterLimit>();
  @$core.pragma('dart2js:noInline')
  static OuterLimit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OuterLimit>(create);
  static OuterLimit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get centidegrees => $_getIZ(0);
  @$pb.TagNumber(1)
  set centidegrees($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCentidegrees() => $_has(0);
  @$pb.TagNumber(1)
  void clearCentidegrees() => $_clearField(1);

  /// The role its setter acted in: ROLE_PROPERTY_OWNER where they hold it, else
  /// ROLE_GATEWAY_ADMIN, else ROLE_TECHNICIAN for an installer under a commissioning grant
  /// (webrtc.v1.ConfigureRoomClimate).
  @$pb.TagNumber(2)
  $2.Role get setByRole => $_getN(1);
  @$pb.TagNumber(2)
  set setByRole($2.Role value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSetByRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearSetByRole() => $_clearField(2);

  /// When the bound was last given a new value. Always sent, also when it dates from before the
  /// recipient's residency: it records an act of the building's, and nothing of a household.
  @$pb.TagNumber(3)
  $0.Timestamp get setAt => $_getN(2);
  @$pb.TagNumber(3)
  set setAt($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSetAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureSetAt() => $_ensure(2);
}

/// A room's outer limits: the building's bounds on the heating it owns, set by the property
/// owner or a gateway administrator, or an installer under a commissioning grant covering the
/// room (webrtc.v1.ConfigureRoomClimate). Every bound is optional and moves alone: a building
/// where each home pays its own heating may set floors only.
///
/// WHAT THEY BIND. The asset owner decides whether they can bind a device, and the
/// organisation whether to use them. They bind an output only on one of the building's own
/// devices (common.v1.DeviceOwnershipType COMPANY) whose asset owner is the organisation, or
/// that has none recorded (common.v1.AssetOwner); never a household's asset, nor a device a
/// person owns outright. The clamp is applied per output, by its device's owner: in a room with
/// a valve the organisation owns and a heater a resident owns, the valve is held within the
/// outer limits and the heater at the room's target. So they bind outputs, never the room: the
/// room's target and its inner limits are the household's, are not rewritten when an outer bound
/// moves, and hold again at those outputs once it moves back out.
///
/// At an output they bind, what is held is the room's effective target, within its inner limits
/// (InnerRoomLimits), then clamped:
///   * to [min, max] while no mode sets the room back;
///   * to [AWAY FLOOR, max] while a mode (ClimateMode) sets it back, and held at the AWAY FLOOR
///     during the vacancy setback (webrtc.v1 household.proto, VACANCY).
/// Where an inner bound and an outer bound disagree, the outer one wins, so the household's
/// range at those outputs is always inside the building's. The AWAY FLOOR is away_min, or min
/// where away_min is unset: kept apart from min so that a household going away may set back
/// below its everyday floor but never below what the building needs — frost, damp, heat drawn
/// from neighbours. With neither set, a room has no away floor, and no vacancy setback.
///
/// Neither tier of comfort limits widens an installer's equipment-safety limits — a floor's
/// surface maximum, a supply cap (commissioning.v1) — which bind whatever these say.
///
/// They stay with the home: a household handover wipes the inner limits, never these
/// (webrtc.v1 household.proto, WIPE).
class OuterRoomLimits extends $pb.GeneratedMessage {
  factory OuterRoomLimits({
    OuterLimit? min,
    OuterLimit? max,
    OuterLimit? awayMin,
    OuterLimit? moveInTarget,
    $core.int? minAcceptedThresholdCentidegrees,
  }) {
    final result = create();
    if (min != null) result.min = min;
    if (max != null) result.max = max;
    if (awayMin != null) result.awayMin = awayMin;
    if (moveInTarget != null) result.moveInTarget = moveInTarget;
    if (minAcceptedThresholdCentidegrees != null)
      result.minAcceptedThresholdCentidegrees =
          minAcceptedThresholdCentidegrees;
    return result;
  }

  OuterRoomLimits._();

  factory OuterRoomLimits.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OuterRoomLimits.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OuterRoomLimits',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..aOM<OuterLimit>(1, _omitFieldNames ? '' : 'min',
        subBuilder: OuterLimit.create)
    ..aOM<OuterLimit>(2, _omitFieldNames ? '' : 'max',
        subBuilder: OuterLimit.create)
    ..aOM<OuterLimit>(3, _omitFieldNames ? '' : 'awayMin',
        subBuilder: OuterLimit.create)
    ..aOM<OuterLimit>(4, _omitFieldNames ? '' : 'moveInTarget',
        subBuilder: OuterLimit.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'minAcceptedThresholdCentidegrees',
        $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OuterRoomLimits clone() => OuterRoomLimits()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OuterRoomLimits copyWith(void Function(OuterRoomLimits) updates) =>
      super.copyWith((message) => updates(message as OuterRoomLimits))
          as OuterRoomLimits;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OuterRoomLimits create() => OuterRoomLimits._();
  @$core.override
  OuterRoomLimits createEmptyInstance() => create();
  static $pb.PbList<OuterRoomLimits> createRepeated() =>
      $pb.PbList<OuterRoomLimits>();
  @$core.pragma('dart2js:noInline')
  static OuterRoomLimits getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OuterRoomLimits>(create);
  static OuterRoomLimits? _defaultInstance;

  /// The normal minimum and maximum.
  @$pb.TagNumber(1)
  OuterLimit get min => $_getN(0);
  @$pb.TagNumber(1)
  set min(OuterLimit value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMin() => $_has(0);
  @$pb.TagNumber(1)
  void clearMin() => $_clearField(1);
  @$pb.TagNumber(1)
  OuterLimit ensureMin() => $_ensure(0);

  @$pb.TagNumber(2)
  OuterLimit get max => $_getN(1);
  @$pb.TagNumber(2)
  set max(OuterLimit value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearMax() => $_clearField(2);
  @$pb.TagNumber(2)
  OuterLimit ensureMax() => $_ensure(1);

  /// The floor under a setback; see AWAY FLOOR above.
  @$pb.TagNumber(3)
  OuterLimit get awayMin => $_getN(2);
  @$pb.TagNumber(3)
  set awayMin(OuterLimit value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAwayMin() => $_has(2);
  @$pb.TagNumber(3)
  void clearAwayMin() => $_clearField(3);
  @$pb.TagNumber(3)
  OuterLimit ensureAwayMin() => $_ensure(2);

  /// The target the room starts at when an empty home gains a resident, clamped to min and max
  /// (webrtc.v1 household.proto, MOVE-IN). A start, never a limit.
  @$pb.TagNumber(4)
  OuterLimit get moveInTarget => $_getN(3);
  @$pb.TagNumber(4)
  set moveInTarget(OuterLimit value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMoveInTarget() => $_has(3);
  @$pb.TagNumber(4)
  void clearMoveInTarget() => $_clearField(4);
  @$pb.TagNumber(4)
  OuterLimit ensureMoveInTarget() => $_ensure(3);

  /// Set while min was set below the gateway's public-health threshold: the threshold in force
  /// then, which min's setter explicitly accepted going below (ConfigureRoomClimate
  /// .accept_below_threshold). The acceptance is recorded with min's set_by_role and set_at.
  /// Unset while min is unset or was set at or above the threshold. A threshold changed later
  /// re-judges nothing already set.
  @$pb.TagNumber(5)
  $core.int get minAcceptedThresholdCentidegrees => $_getIZ(4);
  @$pb.TagNumber(5)
  set minAcceptedThresholdCentidegrees($core.int value) =>
      $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMinAcceptedThresholdCentidegrees() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinAcceptedThresholdCentidegrees() => $_clearField(5);
}

/// A room's inner limits: the household's own minimum and maximum, set by the home's household
/// admins (webrtc.v1.SetInnerRoomLimits). They clamp the room's target, from the app or a knob
/// alike, and setting them clamps the target already set. They apply to every output in the
/// room, a household's own devices included, and the outer limits clamp further the outputs they
/// bind (OuterRoomLimits). While a mode sets the room back the minimum, a household's everyday
/// floor, does not apply, and the maximum does. Household data: never told to anyone but the
/// home's residents, and wiped at a handover (webrtc.v1 household.proto, WIPE).
class InnerRoomLimits extends $pb.GeneratedMessage {
  factory InnerRoomLimits({
    $core.int? minCentidegrees,
    $core.int? maxCentidegrees,
  }) {
    final result = create();
    if (minCentidegrees != null) result.minCentidegrees = minCentidegrees;
    if (maxCentidegrees != null) result.maxCentidegrees = maxCentidegrees;
    return result;
  }

  InnerRoomLimits._();

  factory InnerRoomLimits.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InnerRoomLimits.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InnerRoomLimits',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'minCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'maxCentidegrees', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InnerRoomLimits clone() => InnerRoomLimits()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InnerRoomLimits copyWith(void Function(InnerRoomLimits) updates) =>
      super.copyWith((message) => updates(message as InnerRoomLimits))
          as InnerRoomLimits;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InnerRoomLimits create() => InnerRoomLimits._();
  @$core.override
  InnerRoomLimits createEmptyInstance() => create();
  static $pb.PbList<InnerRoomLimits> createRepeated() =>
      $pb.PbList<InnerRoomLimits>();
  @$core.pragma('dart2js:noInline')
  static InnerRoomLimits getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InnerRoomLimits>(create);
  static InnerRoomLimits? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get minCentidegrees => $_getIZ(0);
  @$pb.TagNumber(1)
  set minCentidegrees($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMinCentidegrees() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinCentidegrees() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxCentidegrees() => $_clearField(2);
}

/// An outer bound clamping a room (RoomClimate.outer_limit_clamp).
class OuterLimitClamp extends $pb.GeneratedMessage {
  factory OuterLimitClamp({
    OuterLimitKind? limit,
    $core.int? unclampedCentidegrees,
  }) {
    final result = create();
    if (limit != null) result.limit = limit;
    if (unclampedCentidegrees != null)
      result.unclampedCentidegrees = unclampedCentidegrees;
    return result;
  }

  OuterLimitClamp._();

  factory OuterLimitClamp.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OuterLimitClamp.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OuterLimitClamp',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..e<OuterLimitKind>(1, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OE,
        defaultOrMaker: OuterLimitKind.OUTER_LIMIT_KIND_UNSPECIFIED,
        valueOf: OuterLimitKind.valueOf,
        enumValues: OuterLimitKind.values)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'unclampedCentidegrees', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OuterLimitClamp clone() => OuterLimitClamp()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OuterLimitClamp copyWith(void Function(OuterLimitClamp) updates) =>
      super.copyWith((message) => updates(message as OuterLimitClamp))
          as OuterLimitClamp;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OuterLimitClamp create() => OuterLimitClamp._();
  @$core.override
  OuterLimitClamp createEmptyInstance() => create();
  static $pb.PbList<OuterLimitClamp> createRepeated() =>
      $pb.PbList<OuterLimitClamp>();
  @$core.pragma('dart2js:noInline')
  static OuterLimitClamp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OuterLimitClamp>(create);
  static OuterLimitClamp? _defaultInstance;

  /// Which bound. An app that does not know the value shows that the building's limits clamp the
  /// room, without naming one.
  @$pb.TagNumber(1)
  OuterLimitKind get limit => $_getN(0);
  @$pb.TagNumber(1)
  set limit(OuterLimitKind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearLimit() => $_clearField(1);

  /// Where the room would be held without it, in centidegrees: where outputs the outer limits do
  /// not bind are held. effective_target_centidegrees is where those they bind are.
  @$pb.TagNumber(2)
  $core.int get unclampedCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set unclampedCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUnclampedCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnclampedCentidegrees() => $_clearField(2);
}

/// One reason a room, or a part of its heating, is where it is.
class ClimateExplanation extends $pb.GeneratedMessage {
  factory ClimateExplanation({
    ClimateExplanationKind? kind,
    ClimateExplanationSubject? subject,
    $0.Timestamp? endsAt,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (subject != null) result.subject = subject;
    if (endsAt != null) result.endsAt = endsAt;
    return result;
  }

  ClimateExplanation._();

  factory ClimateExplanation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClimateExplanation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClimateExplanation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..e<ClimateExplanationKind>(
        1, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker:
            ClimateExplanationKind.CLIMATE_EXPLANATION_KIND_UNSPECIFIED,
        valueOf: ClimateExplanationKind.valueOf,
        enumValues: ClimateExplanationKind.values)
    ..e<ClimateExplanationSubject>(
        2, _omitFieldNames ? '' : 'subject', $pb.PbFieldType.OE,
        defaultOrMaker:
            ClimateExplanationSubject.CLIMATE_EXPLANATION_SUBJECT_UNSPECIFIED,
        valueOf: ClimateExplanationSubject.valueOf,
        enumValues: ClimateExplanationSubject.values)
    ..aOM<$0.Timestamp>(3, _omitFieldNames ? '' : 'endsAt',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClimateExplanation clone() => ClimateExplanation()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClimateExplanation copyWith(void Function(ClimateExplanation) updates) =>
      super.copyWith((message) => updates(message as ClimateExplanation))
          as ClimateExplanation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClimateExplanation create() => ClimateExplanation._();
  @$core.override
  ClimateExplanation createEmptyInstance() => create();
  static $pb.PbList<ClimateExplanation> createRepeated() =>
      $pb.PbList<ClimateExplanation>();
  @$core.pragma('dart2js:noInline')
  static ClimateExplanation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClimateExplanation>(create);
  static ClimateExplanation? _defaultInstance;

  @$pb.TagNumber(1)
  ClimateExplanationKind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(ClimateExplanationKind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  /// What the cause acts on. The gateway always sets it. An app shows nothing for an
  /// explanation whose subject is unspecified or unknown to it, rather than presenting it
  /// as the room's.
  @$pb.TagNumber(2)
  ClimateExplanationSubject get subject => $_getN(1);
  @$pb.TagNumber(2)
  set subject(ClimateExplanationSubject value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSubject() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubject() => $_clearField(2);

  /// When the explanation stops holding. Unset: while the room's latest RoomClimate carries
  /// it. An app MUST NOT show an explanation past its ends_at, also while it cannot reach
  /// the gateway, and while it cannot reach the gateway it shows none without an ends_at:
  /// an explanation that outlives its window is a claim about the room nobody is making any
  /// more. An explanation that holds because of a leased write ends no later than that
  /// lease, after which the output is back at its lapse value whatever the gateway does.
  @$pb.TagNumber(3)
  $0.Timestamp get endsAt => $_getN(2);
  @$pb.TagNumber(3)
  set endsAt($0.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEndsAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndsAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureEndsAt() => $_ensure(2);
}

/// A mode on a home ends when whoever switched it on stops being one of its residents: a new
/// tenant does not inherit the previous one's holiday. A mode on a room ends when the room
/// joins a home, whose rooms follow the apartment's mode alone. Any other mode — one switched on by
/// someone who is not one of its residents now: who never lived there, or a member still
/// recorded with no relation — ends when the
/// home gains a resident: when anyone other than its setter, not already its resident, is
/// assigned RESIDENT on the apartment, a member recorded with no relation included, or the
/// space becomes an apartment with RESIDENT members on it other than its setter. A mode's
/// setter recorded with no relation being assigned RESIDENT ends none of their own modes;
/// being assigned SERVICE or removed ends them.
///
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
    $0.Timestamp? warmFrom,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (kind != null) result.kind = kind;
    if (setbackCentidegrees != null)
      result.setbackCentidegrees = setbackCentidegrees;
    if (startsAt != null) result.startsAt = startsAt;
    if (endsAt != null) result.endsAt = endsAt;
    if (setBy != null) result.setBy = setBy;
    if (warmFrom != null) result.warmFrom = warmFrom;
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
    ..aOM<$0.Timestamp>(7, _omitFieldNames ? '' : 'warmFrom',
        subBuilder: $0.Timestamp.create)
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
  /// on — a mode with nothing to set back to is refused, not defaulted. Clamped by each room's
  /// inner maximum, and at the outputs a room's outer limits bind to its away floor and maximum
  /// (OuterRoomLimits), the away floor being what the building needs.
  @$pb.TagNumber(3)
  $core.int get setbackCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set setbackCentidegrees($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSetbackCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetbackCentidegrees() => $_clearField(3);

  /// HOLIDAY: when the setback begins and when the rooms are to be back at their own
  /// targets — warm by then, not starting to heat (see warm_from). AWAY: starts_at is when it
  /// was switched on; ends_at is unset. starts_at is unset when it dates from before the
  /// recipient's current residency in the home, or from a home they did not live in at the
  /// time; an ends_at ahead is always sent.
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

  /// Who switched it on. Unset when it is withheld from the recipient: from service in a
  /// home, and from anyone when it dates from before their current residency in the home, or
  /// from a home they did not live in at the time (see access.v1.MembershipRelation).
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

  /// Read-only: filled by the gateway, ignored if sent to it. The moment the setback ends
  /// ahead of ends_at, so that the rooms are warm by ends_at. Absent when there is no
  /// lead — an AWAY mode, or one the gateway has not computed.
  @$pb.TagNumber(7)
  $0.Timestamp get warmFrom => $_getN(6);
  @$pb.TagNumber(7)
  set warmFrom($0.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasWarmFrom() => $_has(6);
  @$pb.TagNumber(7)
  void clearWarmFrom() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.Timestamp ensureWarmFrom() => $_ensure(6);
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

/// One bucket of a room's history, of the length RoomHistory.resolution names. Every reading
/// is optional: absent means nothing was known for that bucket, never zero.
///
/// An hour is made of its quarter hours, each reading as stated beside it. A reading none of
/// the hour's quarter hours knew is absent in the hour too; a mean is taken over the quarter
/// hours that knew one, and a sum likewise, so an hour partly unknown sums only what was known.
class RoomHistorySample extends $pb.GeneratedMessage {
  factory RoomHistorySample({
    $0.Timestamp? at,
    $core.int? measuredCentidegrees,
    $core.int? targetCentidegrees,
    $core.int? effectiveTargetCentidegrees,
    $core.int? valveOpenPermille,
    $core.int? valveOpenSeconds,
    $core.int? floorHeatingSeconds,
  }) {
    final result = create();
    if (at != null) result.at = at;
    if (measuredCentidegrees != null)
      result.measuredCentidegrees = measuredCentidegrees;
    if (targetCentidegrees != null)
      result.targetCentidegrees = targetCentidegrees;
    if (effectiveTargetCentidegrees != null)
      result.effectiveTargetCentidegrees = effectiveTargetCentidegrees;
    if (valveOpenPermille != null) result.valveOpenPermille = valveOpenPermille;
    if (valveOpenSeconds != null) result.valveOpenSeconds = valveOpenSeconds;
    if (floorHeatingSeconds != null)
      result.floorHeatingSeconds = floorHeatingSeconds;
    return result;
  }

  RoomHistorySample._();

  factory RoomHistorySample.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RoomHistorySample.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RoomHistorySample',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'at',
        subBuilder: $0.Timestamp.create)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'measuredCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'targetCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'effectiveTargetCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'valveOpenPermille', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'valveOpenSeconds', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'floorHeatingSeconds', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomHistorySample clone() => RoomHistorySample()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomHistorySample copyWith(void Function(RoomHistorySample) updates) =>
      super.copyWith((message) => updates(message as RoomHistorySample))
          as RoomHistorySample;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomHistorySample create() => RoomHistorySample._();
  @$core.override
  RoomHistorySample createEmptyInstance() => create();
  static $pb.PbList<RoomHistorySample> createRepeated() =>
      $pb.PbList<RoomHistorySample>();
  @$core.pragma('dart2js:noInline')
  static RoomHistorySample getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RoomHistorySample>(create);
  static RoomHistorySample? _defaultInstance;

  /// The start of the bucket.
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

  /// The mean of the room's measured temperature over the bucket, in centidegrees. An hour:
  /// the mean of its quarter hours' means.
  @$pb.TagNumber(2)
  $core.int get measuredCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set measuredCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMeasuredCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearMeasuredCentidegrees() => $_clearField(2);

  /// RoomClimate.target_centidegrees and .effective_target_centidegrees as they were in
  /// force at the bucket's start, in centidegrees. An hour: its first quarter hour's, and so
  /// absent when that quarter hour did not know them, whatever the later ones knew.
  @$pb.TagNumber(3)
  $core.int get targetCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set targetCentidegrees($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetCentidegrees() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get effectiveTargetCentidegrees => $_getIZ(3);
  @$pb.TagNumber(4)
  set effectiveTargetCentidegrees($core.int value) =>
      $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEffectiveTargetCentidegrees() => $_has(3);
  @$pb.TagNumber(4)
  void clearEffectiveTargetCentidegrees() => $_clearField(4);

  /// The mean opening over the bucket across the room's valves that report one, in
  /// thousandths of fully open. Absent if none of them does. An hour: the mean of its quarter
  /// hours' means.
  @$pb.TagNumber(5)
  $core.int get valveOpenPermille => $_getIZ(4);
  @$pb.TagNumber(5)
  set valveOpenPermille($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasValveOpenPermille() => $_has(4);
  @$pb.TagNumber(5)
  void clearValveOpenPermille() => $_clearField(5);

  /// The seconds within the bucket during which any of the room's valves was open. An hour:
  /// the sum of its quarter hours', so up to 3600.
  @$pb.TagNumber(6)
  $core.int get valveOpenSeconds => $_getIZ(5);
  @$pb.TagNumber(6)
  set valveOpenSeconds($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasValveOpenSeconds() => $_has(5);
  @$pb.TagNumber(6)
  void clearValveOpenSeconds() => $_clearField(6);

  /// The seconds within the bucket during which any floor zone heating the room was heating
  /// (heating.v1.FloorZone), counted from the contact state the zone's output reports, read
  /// through its closed_value, not from what was commanded. Kept apart from the valve
  /// fields: a zone's duty and a valve's opening are different controls with different time
  /// scales. Absent where no floor zone heats the room. An hour: the sum of its quarter
  /// hours', as valve_open_seconds.
  @$pb.TagNumber(7)
  $core.int get floorHeatingSeconds => $_getIZ(6);
  @$pb.TagNumber(7)
  set floorHeatingSeconds($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFloorHeatingSeconds() => $_has(6);
  @$pb.TagNumber(7)
  void clearFloorHeatingSeconds() => $_clearField(7);
}

/// A room's history at one resolution, in reply to GetRoomHistory.
///
/// A bucket is given only once the gateway has made it, never before it ends, and only where
/// all of it lies within what the recipient may read. The covered range is over bucket starts,
/// as the request's range is: a bucket is within it when covered_from <= at < covered_to. A
/// bucket within it that is not among the samples is one for which nothing is known; of any
/// other bucket this answer says nothing, and an app MUST NOT show it as empty on its account.
class RoomHistory extends $pb.GeneratedMessage {
  factory RoomHistory({
    $1.SpaceId? roomId,
    $0.Timestamp? keptFrom,
    $core.Iterable<RoomHistorySample>? samples,
    RoomHistoryResolution? resolution,
    $0.Timestamp? coveredFrom,
    $0.Timestamp? coveredTo,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (keptFrom != null) result.keptFrom = keptFrom;
    if (samples != null) result.samples.addAll(samples);
    if (resolution != null) result.resolution = resolution;
    if (coveredFrom != null) result.coveredFrom = coveredFrom;
    if (coveredTo != null) result.coveredTo = coveredTo;
    return result;
  }

  RoomHistory._();

  factory RoomHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RoomHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RoomHistory',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..aOM<$1.SpaceId>(1, _omitFieldNames ? '' : 'roomId',
        subBuilder: $1.SpaceId.create)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'keptFrom',
        subBuilder: $0.Timestamp.create)
    ..pc<RoomHistorySample>(
        3, _omitFieldNames ? '' : 'samples', $pb.PbFieldType.PM,
        subBuilder: RoomHistorySample.create)
    ..e<RoomHistoryResolution>(
        4, _omitFieldNames ? '' : 'resolution', $pb.PbFieldType.OE,
        defaultOrMaker:
            RoomHistoryResolution.ROOM_HISTORY_RESOLUTION_UNSPECIFIED,
        valueOf: RoomHistoryResolution.valueOf,
        enumValues: RoomHistoryResolution.values)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'coveredFrom',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(6, _omitFieldNames ? '' : 'coveredTo',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomHistory clone() => RoomHistory()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomHistory copyWith(void Function(RoomHistory) updates) =>
      super.copyWith((message) => updates(message as RoomHistory))
          as RoomHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomHistory create() => RoomHistory._();
  @$core.override
  RoomHistory createEmptyInstance() => create();
  static $pb.PbList<RoomHistory> createRepeated() => $pb.PbList<RoomHistory>();
  @$core.pragma('dart2js:noInline')
  static RoomHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RoomHistory>(create);
  static RoomHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SpaceId get roomId => $_getN(0);
  @$pb.TagNumber(1)
  set roomId($1.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.SpaceId ensureRoomId() => $_ensure(0);

  /// The start of the earliest bucket the gateway still holds for this room at this resolution
  /// that the recipient may read. The request's from_time and to_time are clamped to
  /// [kept_from, now], so nothing before kept_from is ever returned. For a room in the
  /// recipient's own home it is no earlier than the start of their current residency, nor than
  /// when the room last joined their home; for any other room, no earlier than when it last
  /// left a home. How far back the room's history reaches for the recipient, whether or not
  /// this answer reaches that far. Always set: where nothing is held for the recipient at this
  /// resolution, it is no earlier than covered_to.
  @$pb.TagNumber(2)
  $0.Timestamp get keptFrom => $_getN(1);
  @$pb.TagNumber(2)
  set keptFrom($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKeptFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeptFrom() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureKeptFrom() => $_ensure(1);

  /// The buckets within [covered_from, covered_to), in order of `at`.
  @$pb.TagNumber(3)
  $pb.PbList<RoomHistorySample> get samples => $_getList(2);

  /// The length of the samples' buckets. An app labels and plots them by this, never by the
  /// resolution it asked for.
  @$pb.TagNumber(4)
  RoomHistoryResolution get resolution => $_getN(3);
  @$pb.TagNumber(4)
  set resolution(RoomHistoryResolution value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasResolution() => $_has(3);
  @$pb.TagNumber(4)
  void clearResolution() => $_clearField(4);

  /// The range this answer covers, [covered_from, covered_to). Both unset only in an answer
  /// from a gateway that predates them, which caps nothing: it covers the range asked, clamped.
  ///
  /// covered_to is the request's to_time as clamped, but never later than the start of the
  /// oldest bucket at this resolution the gateway has still to make — for an hour, possibly
  /// days after it ends — so no bucket within the range is made later. The time after it may be
  /// held at a finer resolution, and an app asks for it there.
  ///
  /// covered_from is the request's from_time as clamped, unless more than 768 samples fall
  /// between it and covered_to: then the answer is capped, keeping the newest 768, and
  /// covered_from is samples[0].at. Either way it is never later than covered_to, and an answer
  /// that covers nothing has the two equal.
  ///
  /// An answer is capped exactly when covered_from is later than kept_from and than the
  /// from_time asked for, if one was. The app asks for the next page with the same from_time,
  /// this answer's resolution, and to_time = covered_from, until an answer is not capped.
  @$pb.TagNumber(5)
  $0.Timestamp get coveredFrom => $_getN(4);
  @$pb.TagNumber(5)
  set coveredFrom($0.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCoveredFrom() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoveredFrom() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureCoveredFrom() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.Timestamp get coveredTo => $_getN(5);
  @$pb.TagNumber(6)
  set coveredTo($0.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCoveredTo() => $_has(5);
  @$pb.TagNumber(6)
  void clearCoveredTo() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.Timestamp ensureCoveredTo() => $_ensure(5);
}

/// An apartment's climate over one period.
///
/// Each room's mean is taken over the quarter hours of the period in which it was in this
/// apartment and had a value; coverage likewise counts only the quarter hours it was here,
/// and the apartment's mean is formed from the rooms' means as the summary's weighting says.
/// Every mean is optional: absent means nothing was known, never zero.
class ClimatePeriodMean extends $pb.GeneratedMessage {
  factory ClimatePeriodMean({
    $0.Timestamp? startsAt,
    $0.Timestamp? endsAt,
    $core.int? measuredCentidegrees,
    $core.int? targetCentidegrees,
    $core.int? measuredCoveragePermille,
    $core.int? targetCoveragePermille,
    $core.int? roomsMeasured,
    $core.int? rooms,
  }) {
    final result = create();
    if (startsAt != null) result.startsAt = startsAt;
    if (endsAt != null) result.endsAt = endsAt;
    if (measuredCentidegrees != null)
      result.measuredCentidegrees = measuredCentidegrees;
    if (targetCentidegrees != null)
      result.targetCentidegrees = targetCentidegrees;
    if (measuredCoveragePermille != null)
      result.measuredCoveragePermille = measuredCoveragePermille;
    if (targetCoveragePermille != null)
      result.targetCoveragePermille = targetCoveragePermille;
    if (roomsMeasured != null) result.roomsMeasured = roomsMeasured;
    if (rooms != null) result.rooms = rooms;
    return result;
  }

  ClimatePeriodMean._();

  factory ClimatePeriodMean.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClimatePeriodMean.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClimatePeriodMean',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'startsAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'endsAt',
        subBuilder: $0.Timestamp.create)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'measuredCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'targetCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'measuredCoveragePermille',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'targetCoveragePermille', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'roomsMeasured', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClimatePeriodMean clone() => ClimatePeriodMean()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClimatePeriodMean copyWith(void Function(ClimatePeriodMean) updates) =>
      super.copyWith((message) => updates(message as ClimatePeriodMean))
          as ClimatePeriodMean;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClimatePeriodMean create() => ClimatePeriodMean._();
  @$core.override
  ClimatePeriodMean createEmptyInstance() => create();
  static $pb.PbList<ClimatePeriodMean> createRepeated() =>
      $pb.PbList<ClimatePeriodMean>();
  @$core.pragma('dart2js:noInline')
  static ClimatePeriodMean getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClimatePeriodMean>(create);
  static ClimatePeriodMean? _defaultInstance;

  /// The period, half-open: starts_at <= t < ends_at.
  @$pb.TagNumber(1)
  $0.Timestamp get startsAt => $_getN(0);
  @$pb.TagNumber(1)
  set startsAt($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStartsAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartsAt() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureStartsAt() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Timestamp get endsAt => $_getN(1);
  @$pb.TagNumber(2)
  set endsAt($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEndsAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndsAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureEndsAt() => $_ensure(1);

  /// The mean measured temperature, in centidegrees, taken from the building's own sensors
  /// only: in each room, the first of its building sensors that was heard. A reading from a
  /// sensor a resident owns never enters it.
  @$pb.TagNumber(3)
  $core.int get measuredCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set measuredCentidegrees($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMeasuredCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearMeasuredCentidegrees() => $_clearField(3);

  /// The mean target, in centidegrees: RoomClimate.target_centidegrees — the temperature
  /// somebody asked for, not the effective target a mode set it back to, so that a
  /// setback is not reported as what the residents chose. The measured mean still falls
  /// while a home is set back; how much that reveals is governed by how long a period
  /// service may ask for (webrtc.v1.PrivacyDisclosure.climate_summary_period).
  @$pb.TagNumber(4)
  $core.int get targetCentidegrees => $_getIZ(3);
  @$pb.TagNumber(4)
  set targetCentidegrees($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTargetCentidegrees() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetCentidegrees() => $_clearField(4);

  /// How much of the period the means rest on, in thousandths: the quarter hours with a
  /// value, summed over the apartment's rooms, divided by the quarter hours each room was in
  /// the apartment during the period, summed likewise. A room with no sensor, or one that
  /// went quiet, lowers it — a mean with low coverage describes part of the apartment, or
  /// part of the period.
  @$pb.TagNumber(5)
  $core.int get measuredCoveragePermille => $_getIZ(4);
  @$pb.TagNumber(5)
  set measuredCoveragePermille($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMeasuredCoveragePermille() => $_has(4);
  @$pb.TagNumber(5)
  void clearMeasuredCoveragePermille() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get targetCoveragePermille => $_getIZ(5);
  @$pb.TagNumber(6)
  set targetCoveragePermille($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTargetCoveragePermille() => $_has(5);
  @$pb.TagNumber(6)
  void clearTargetCoveragePermille() => $_clearField(6);

  /// The rooms that contributed a measured value, of the rooms the apartment had at any time
  /// in the period.
  @$pb.TagNumber(7)
  $core.int get roomsMeasured => $_getIZ(6);
  @$pb.TagNumber(7)
  set roomsMeasured($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRoomsMeasured() => $_has(6);
  @$pb.TagNumber(7)
  void clearRoomsMeasured() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get rooms => $_getIZ(7);
  @$pb.TagNumber(8)
  set rooms($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRooms() => $_has(7);
  @$pb.TagNumber(8)
  void clearRooms() => $_clearField(8);
}

/// An apartment's climate as means over whole periods, in reply to
/// webrtc.v1.GetApartmentClimateSummary. What a party who does not live there may know of
/// how warm it is kept — see webrtc.v1.PrivacyDisclosure.
///
/// Only CLOSED periods are given. The period running now is never included, so that a
/// summary cannot be polled into a live reading.
class ApartmentClimateSummary extends $pb.GeneratedMessage {
  factory ApartmentClimateSummary({
    $1.SpaceId? apartmentId,
    ClimateSummaryPeriod? period,
    ClimateSummaryWeighting? weighting,
    $0.Timestamp? keptFrom,
    $core.Iterable<ClimatePeriodMean>? periods,
  }) {
    final result = create();
    if (apartmentId != null) result.apartmentId = apartmentId;
    if (period != null) result.period = period;
    if (weighting != null) result.weighting = weighting;
    if (keptFrom != null) result.keptFrom = keptFrom;
    if (periods != null) result.periods.addAll(periods);
    return result;
  }

  ApartmentClimateSummary._();

  factory ApartmentClimateSummary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApartmentClimateSummary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApartmentClimateSummary',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.climate.v1'),
      createEmptyInstance: create)
    ..aOM<$1.SpaceId>(1, _omitFieldNames ? '' : 'apartmentId',
        subBuilder: $1.SpaceId.create)
    ..e<ClimateSummaryPeriod>(
        2, _omitFieldNames ? '' : 'period', $pb.PbFieldType.OE,
        defaultOrMaker: ClimateSummaryPeriod.CLIMATE_SUMMARY_PERIOD_UNSPECIFIED,
        valueOf: ClimateSummaryPeriod.valueOf,
        enumValues: ClimateSummaryPeriod.values)
    ..e<ClimateSummaryWeighting>(
        3, _omitFieldNames ? '' : 'weighting', $pb.PbFieldType.OE,
        defaultOrMaker:
            ClimateSummaryWeighting.CLIMATE_SUMMARY_WEIGHTING_UNSPECIFIED,
        valueOf: ClimateSummaryWeighting.valueOf,
        enumValues: ClimateSummaryWeighting.values)
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'keptFrom',
        subBuilder: $0.Timestamp.create)
    ..pc<ClimatePeriodMean>(
        5, _omitFieldNames ? '' : 'periods', $pb.PbFieldType.PM,
        subBuilder: ClimatePeriodMean.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApartmentClimateSummary clone() =>
      ApartmentClimateSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApartmentClimateSummary copyWith(
          void Function(ApartmentClimateSummary) updates) =>
      super.copyWith((message) => updates(message as ApartmentClimateSummary))
          as ApartmentClimateSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApartmentClimateSummary create() => ApartmentClimateSummary._();
  @$core.override
  ApartmentClimateSummary createEmptyInstance() => create();
  static $pb.PbList<ApartmentClimateSummary> createRepeated() =>
      $pb.PbList<ApartmentClimateSummary>();
  @$core.pragma('dart2js:noInline')
  static ApartmentClimateSummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApartmentClimateSummary>(create);
  static ApartmentClimateSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $1.SpaceId get apartmentId => $_getN(0);
  @$pb.TagNumber(1)
  set apartmentId($1.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasApartmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearApartmentId() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.SpaceId ensureApartmentId() => $_ensure(0);

  @$pb.TagNumber(2)
  ClimateSummaryPeriod get period => $_getN(1);
  @$pb.TagNumber(2)
  set period(ClimateSummaryPeriod value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPeriod() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeriod() => $_clearField(2);

  @$pb.TagNumber(3)
  ClimateSummaryWeighting get weighting => $_getN(2);
  @$pb.TagNumber(3)
  set weighting(ClimateSummaryWeighting value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasWeighting() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeighting() => $_clearField(3);

  /// The start of the earliest period the gateway still holds that the recipient may be
  /// given: for a resident of this apartment, no earlier than their current residency; for
  /// anyone else, of the length disclosed now, and no earlier than the first such period
  /// after it was last changed (see webrtc.v1.PrivacyDisclosure.climate_summary_period).
  @$pb.TagNumber(4)
  $0.Timestamp get keptFrom => $_getN(3);
  @$pb.TagNumber(4)
  set keptFrom($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasKeptFrom() => $_has(3);
  @$pb.TagNumber(4)
  void clearKeptFrom() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureKeptFrom() => $_ensure(3);

  /// The periods within the requested range, in order of starts_at.
  @$pb.TagNumber(5)
  $pb.PbList<ClimatePeriodMean> get periods => $_getList(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
