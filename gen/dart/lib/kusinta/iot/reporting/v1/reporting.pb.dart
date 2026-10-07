// This is a generated file - do not edit.
//
// Generated from kusinta/iot/reporting/v1/reporting.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $1;
import '../../common/v1/types.pbenum.dart' as $2;
import '../../identity/v1/identity.pb.dart' as $0;
import 'reporting.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'reporting.pbenum.dart';

/// One part of a full set: a concern's whole current state, sent on every new stream as above.
/// A large set may span several requests, each carrying the same snapshot_id.
///
/// The api-server applies a snapshot only once it holds every part of it: parts 0 to the one
/// marked last, all with one snapshot_id, on one stream. Then, and only then, it drops what
/// the snapshot does not name — closing open problems that are absent, forgetting reach and
/// spaces that are absent. A snapshot belongs to its stream: a part with another snapshot_id,
/// or any request on a newer stream, discards a snapshot in progress. A snapshot not
/// completed is never applied, and the next stream sends its own.
///
/// While a snapshot of a concern is in progress, the gateway sends that concern nothing but
/// the snapshot's parts; whatever it queued meanwhile follows the last part. A change sent
/// between parts could be missing from a snapshot built before it, and completing the snapshot
/// would then undo it. A request without a snapshot part that arrives while one is in progress
/// is not applied: the answer's applied_seq does not cover it.
///
/// A part other than the last is held, not applied, but its seq counts as applied: the gateway
/// sends the next. The snapshot applies with its last part.
class SnapshotPart extends $pb.GeneratedMessage {
  factory SnapshotPart({
    $core.String? snapshotId,
    $core.int? part,
    $core.bool? last,
  }) {
    final result = create();
    if (snapshotId != null) result.snapshotId = snapshotId;
    if (part != null) result.part = part;
    if (last != null) result.last = last;
    return result;
  }

  SnapshotPart._();

  factory SnapshotPart.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SnapshotPart.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SnapshotPart',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'snapshotId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'part', $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'last')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SnapshotPart clone() => SnapshotPart()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SnapshotPart copyWith(void Function(SnapshotPart) updates) =>
      super.copyWith((message) => updates(message as SnapshotPart))
          as SnapshotPart;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SnapshotPart create() => SnapshotPart._();
  @$core.override
  SnapshotPart createEmptyInstance() => create();
  static $pb.PbList<SnapshotPart> createRepeated() =>
      $pb.PbList<SnapshotPart>();
  @$core.pragma('dart2js:noInline')
  static SnapshotPart getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SnapshotPart>(create);
  static SnapshotPart? _defaultInstance;

  /// Minted by the gateway, opaque, unique per snapshot.
  @$pb.TagNumber(1)
  $core.String get snapshotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set snapshotId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSnapshotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSnapshotId() => $_clearField(1);

  /// This part's place in the snapshot, from 0.
  @$pb.TagNumber(2)
  $core.int get part => $_getIZ(1);
  @$pb.TagNumber(2)
  set part($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPart() => $_has(1);
  @$pb.TagNumber(2)
  void clearPart() => $_clearField(2);

  /// Set on the final part. The snapshot has part + 1 parts.
  @$pb.TagNumber(3)
  $core.bool get last => $_getBF(2);
  @$pb.TagNumber(3)
  set last($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLast() => $_has(2);
  @$pb.TagNumber(3)
  void clearLast() => $_clearField(3);
}

enum ProblemSubject_Subject { deviceId, connectorId, roomId, gateway, notSet }

/// The thing a problem is about.
class ProblemSubject extends $pb.GeneratedMessage {
  factory ProblemSubject({
    $0.DeviceId? deviceId,
    $0.ConnectorId? connectorId,
    $0.SpaceId? roomId,
    $core.bool? gateway,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (connectorId != null) result.connectorId = connectorId;
    if (roomId != null) result.roomId = roomId;
    if (gateway != null) result.gateway = gateway;
    return result;
  }

  ProblemSubject._();

  factory ProblemSubject.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProblemSubject.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ProblemSubject_Subject>
      _ProblemSubject_SubjectByTag = {
    1: ProblemSubject_Subject.deviceId,
    2: ProblemSubject_Subject.connectorId,
    3: ProblemSubject_Subject.roomId,
    4: ProblemSubject_Subject.gateway,
    0: ProblemSubject_Subject.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProblemSubject',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOM<$0.ConnectorId>(2, _omitFieldNames ? '' : 'connectorId',
        subBuilder: $0.ConnectorId.create)
    ..aOM<$0.SpaceId>(3, _omitFieldNames ? '' : 'roomId',
        subBuilder: $0.SpaceId.create)
    ..aOB(4, _omitFieldNames ? '' : 'gateway')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProblemSubject clone() => ProblemSubject()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProblemSubject copyWith(void Function(ProblemSubject) updates) =>
      super.copyWith((message) => updates(message as ProblemSubject))
          as ProblemSubject;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProblemSubject create() => ProblemSubject._();
  @$core.override
  ProblemSubject createEmptyInstance() => create();
  static $pb.PbList<ProblemSubject> createRepeated() =>
      $pb.PbList<ProblemSubject>();
  @$core.pragma('dart2js:noInline')
  static ProblemSubject getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProblemSubject>(create);
  static ProblemSubject? _defaultInstance;

  ProblemSubject_Subject whichSubject() =>
      _ProblemSubject_SubjectByTag[$_whichOneof(0)]!;
  void clearSubject() => $_clearField($_whichOneof(0));

  /// DEVICE_OFFLINE, BATTERY_*, DEVICE_ERROR, DEVICE_TAMPER.
  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);

  /// CONNECTOR_OFFLINE, CONNECTOR_ERROR.
  @$pb.TagNumber(2)
  $0.ConnectorId get connectorId => $_getN(1);
  @$pb.TagNumber(2)
  set connectorId($0.ConnectorId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasConnectorId() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectorId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ConnectorId ensureConnectorId() => $_ensure(1);

  /// WINDOW_OPEN: the room.
  @$pb.TagNumber(3)
  $0.SpaceId get roomId => $_getN(2);
  @$pb.TagNumber(3)
  set roomId($0.SpaceId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRoomId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoomId() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.SpaceId ensureRoomId() => $_ensure(2);

  /// UNFILED_DEVICES: the gateway itself.
  @$pb.TagNumber(4)
  $core.bool get gateway => $_getBF(3);
  @$pb.TagNumber(4)
  set gateway($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGateway() => $_has(3);
  @$pb.TagNumber(4)
  void clearGateway() => $_clearField(4);
}

/// A problem as it stands while open.
///
/// For a device in a home (an apartment, or a room in one), a problem carries only what a
/// ServiceStatus would give service staff of it, at the same precision:
///   * opened_at is the quarter hour the gateway's evaluated status changed, never the time
///     of a device report;
///   * battery_percent is rounded up to a multiple of ten, as ServiceStatus.battery_percent is;
///   * the only device faults reported are DEVICE_ERROR and DEVICE_TAMPER.
/// A device a resident owns raises no problem at all: it is theirs, and building staff are not
/// told of it.
///
/// When a transition for a device in a home is sent matters as much as what it carries: the
/// gateway evaluates such a device's problems only at quarter hours, so a condition that comes
/// and goes between two of them — a connector outage included — changes nothing, and it sends a
/// transition only at that evaluation, as ServiceStatus changes are pushed,
/// never on the device report that prompted it. That holds for every transition of such a
/// device, a clear for its removal or for its connector going offline included: each is sent,
/// and stamped, at the next quarter hour.
class Problem extends $pb.GeneratedMessage {
  factory Problem({
    ProblemKind? kind,
    ProblemSubject? subject,
    $0.SpaceId? spaceId,
    $1.Timestamp? openedAt,
    $core.int? batteryPercent,
    $core.int? deviceCount,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (subject != null) result.subject = subject;
    if (spaceId != null) result.spaceId = spaceId;
    if (openedAt != null) result.openedAt = openedAt;
    if (batteryPercent != null) result.batteryPercent = batteryPercent;
    if (deviceCount != null) result.deviceCount = deviceCount;
    return result;
  }

  Problem._();

  factory Problem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Problem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Problem',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..e<ProblemKind>(2, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: ProblemKind.PROBLEM_KIND_UNSPECIFIED,
        valueOf: ProblemKind.valueOf,
        enumValues: ProblemKind.values)
    ..aOM<ProblemSubject>(3, _omitFieldNames ? '' : 'subject',
        subBuilder: ProblemSubject.create)
    ..aOM<$0.SpaceId>(4, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'openedAt',
        subBuilder: $1.Timestamp.create)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'batteryPercent', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'deviceCount', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Problem clone() => Problem()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Problem copyWith(void Function(Problem) updates) =>
      super.copyWith((message) => updates(message as Problem)) as Problem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Problem create() => Problem._();
  @$core.override
  Problem createEmptyInstance() => create();
  static $pb.PbList<Problem> createRepeated() => $pb.PbList<Problem>();
  @$core.pragma('dart2js:noInline')
  static Problem getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Problem>(create);
  static Problem? _defaultInstance;

  @$pb.TagNumber(2)
  ProblemKind get kind => $_getN(0);
  @$pb.TagNumber(2)
  set kind(ProblemKind value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  @$pb.TagNumber(3)
  ProblemSubject get subject => $_getN(1);
  @$pb.TagNumber(3)
  set subject(ProblemSubject value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSubject() => $_has(1);
  @$pb.TagNumber(3)
  void clearSubject() => $_clearField(3);
  @$pb.TagNumber(3)
  ProblemSubject ensureSubject() => $_ensure(1);

  /// The space a device subject is filed in. A device filed in several spaces, any of them in a
  /// home (an apartment or a room in one), counts as in a home, as access.v1 has it, and reports
  /// the deepest space it is filed in within any home, the lowest id between equals. Otherwise
  /// the deepest it is filed in, the lowest id between equals. Unset for any other subject (a
  /// room is its own place) and for a device filed nowhere.
  @$pb.TagNumber(4)
  $0.SpaceId get spaceId => $_getN(2);
  @$pb.TagNumber(4)
  set spaceId($0.SpaceId value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSpaceId() => $_has(2);
  @$pb.TagNumber(4)
  void clearSpaceId() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.SpaceId ensureSpaceId() => $_ensure(2);

  /// When the problem opened. For a device in a home, the quarter hour; see above.
  ///
  /// A problem's space is space_id for a device subject and room_id for a room subject; a
  /// connector or the gateway has none.
  ///
  /// Of any problem with a space, the api-server shows a member only what falls within their
  /// unbroken reach to that space, from the since the gateway gives for it (see ReachedSpace),
  /// or for the administrator from when their administration began (see ServiceReach):
  /// a problem that closed at or before then is not shown to them at all, and an opened_at
  /// before then shows as then. Applied whether or not the space is in a home now, since a
  /// space may have been one while the problem was open. The gateway likewise never shows
  /// service staff a status from before they could see the device. A problem whose space the
  /// api-server does not hold is shown only to the gateway's administrator (see ServiceReach),
  /// its times as of when that administration began.
  @$pb.TagNumber(5)
  $1.Timestamp get openedAt => $_getN(3);
  @$pb.TagNumber(5)
  set openedAt($1.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasOpenedAt() => $_has(3);
  @$pb.TagNumber(5)
  void clearOpenedAt() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureOpenedAt() => $_ensure(3);

  /// BATTERY_*: remaining charge, rounded up to a multiple of ten. Absent when the device
  /// reports none.
  @$pb.TagNumber(6)
  $core.int get batteryPercent => $_getIZ(4);
  @$pb.TagNumber(6)
  set batteryPercent($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(6)
  $core.bool hasBatteryPercent() => $_has(4);
  @$pb.TagNumber(6)
  void clearBatteryPercent() => $_clearField(6);

  /// UNFILED_DEVICES: how many devices are filed nowhere.
  @$pb.TagNumber(7)
  $core.int get deviceCount => $_getIZ(5);
  @$pb.TagNumber(7)
  set deviceCount($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(7)
  $core.bool hasDeviceCount() => $_has(5);
  @$pb.TagNumber(7)
  void clearDeviceCount() => $_clearField(7);
}

/// A problem closing.
class ProblemCleared extends $pb.GeneratedMessage {
  factory ProblemCleared({
    $1.Timestamp? clearedAt,
    ClearReason? reason,
  }) {
    final result = create();
    if (clearedAt != null) result.clearedAt = clearedAt;
    if (reason != null) result.reason = reason;
    return result;
  }

  ProblemCleared._();

  factory ProblemCleared.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProblemCleared.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProblemCleared',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..aOM<$1.Timestamp>(1, _omitFieldNames ? '' : 'clearedAt',
        subBuilder: $1.Timestamp.create)
    ..e<ClearReason>(2, _omitFieldNames ? '' : 'reason', $pb.PbFieldType.OE,
        defaultOrMaker: ClearReason.CLEAR_REASON_UNSPECIFIED,
        valueOf: ClearReason.valueOf,
        enumValues: ClearReason.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProblemCleared clone() => ProblemCleared()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProblemCleared copyWith(void Function(ProblemCleared) updates) =>
      super.copyWith((message) => updates(message as ProblemCleared))
          as ProblemCleared;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProblemCleared create() => ProblemCleared._();
  @$core.override
  ProblemCleared createEmptyInstance() => create();
  static $pb.PbList<ProblemCleared> createRepeated() =>
      $pb.PbList<ProblemCleared>();
  @$core.pragma('dart2js:noInline')
  static ProblemCleared getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProblemCleared>(create);
  static ProblemCleared? _defaultInstance;

  /// When it closed. For a device in a home, the quarter hour the evaluated status changed,
  /// as for opened_at; never the time of a device report.
  @$pb.TagNumber(1)
  $1.Timestamp get clearedAt => $_getN(0);
  @$pb.TagNumber(1)
  set clearedAt($1.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasClearedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearClearedAt() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Timestamp ensureClearedAt() => $_ensure(0);

  @$pb.TagNumber(2)
  ClearReason get reason => $_getN(1);
  @$pb.TagNumber(2)
  set reason(ClearReason value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);
}

enum ProblemTransition_Change { open, cleared, notSet }

/// One change to one problem.
///
/// (problem_id, seq) is the idempotency key. seq counts the transitions of one problem from 1:
/// its opening is 1, and each later change one more. Outside a snapshot, the api-server
/// applies a transition only if its seq is above the highest it holds for that problem; any
/// other — a repeat, or a retry overtaken by a later change — is acknowledged as a duplicate
/// and not applied, so a late update cannot reopen a problem since cleared. Seqs of one
/// problem need not arrive without gaps: each transition carries the problem's whole state.
///
/// A snapshot is authoritative: each problem it names takes the snapshot's state and seq,
/// whatever the api-server held. A transition in it acknowledged REJECTED does not count as
/// naming its problem. A problem it does not name, the api-server closes as of the snapshot,
/// with no reason given (CLEAR_REASON_UNSPECIFIED), at the quarter hour the snapshot completed,
/// rounded down whatever the subject (the api-server may not yet know where it is), and never
/// earlier than the problem's opened_at. Its highest seq stays as held, so only a later
/// transition of it applies.
class ProblemTransition extends $pb.GeneratedMessage {
  factory ProblemTransition({
    $core.String? problemId,
    $fixnum.Int64? seq,
    Problem? open,
    ProblemCleared? cleared,
  }) {
    final result = create();
    if (problemId != null) result.problemId = problemId;
    if (seq != null) result.seq = seq;
    if (open != null) result.open = open;
    if (cleared != null) result.cleared = cleared;
    return result;
  }

  ProblemTransition._();

  factory ProblemTransition.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProblemTransition.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ProblemTransition_Change>
      _ProblemTransition_ChangeByTag = {
    3: ProblemTransition_Change.open,
    4: ProblemTransition_Change.cleared,
    0: ProblemTransition_Change.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProblemTransition',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aOS(1, _omitFieldNames ? '' : 'problemId')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'seq', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<Problem>(3, _omitFieldNames ? '' : 'open', subBuilder: Problem.create)
    ..aOM<ProblemCleared>(4, _omitFieldNames ? '' : 'cleared',
        subBuilder: ProblemCleared.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProblemTransition clone() => ProblemTransition()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProblemTransition copyWith(void Function(ProblemTransition) updates) =>
      super.copyWith((message) => updates(message as ProblemTransition))
          as ProblemTransition;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProblemTransition create() => ProblemTransition._();
  @$core.override
  ProblemTransition createEmptyInstance() => create();
  static $pb.PbList<ProblemTransition> createRepeated() =>
      $pb.PbList<ProblemTransition>();
  @$core.pragma('dart2js:noInline')
  static ProblemTransition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProblemTransition>(create);
  static ProblemTransition? _defaultInstance;

  ProblemTransition_Change whichChange() =>
      _ProblemTransition_ChangeByTag[$_whichOneof(0)]!;
  void clearChange() => $_clearField($_whichOneof(0));

  /// Minted by the gateway for one open period of one (subject, kind), stable across gateway
  /// restarts. A problem that clears and opens again is a new problem with a new id.
  ///
  /// A UUIDv4: opaque, and never time-ordered. An id that sorted by time (a ULID, a UUIDv7)
  /// would carry the moment a problem opened, which the quarter-hour rule withholds.
  @$pb.TagNumber(1)
  $core.String get problemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set problemId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProblemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProblemId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get seq => $_getI64(1);
  @$pb.TagNumber(2)
  set seq($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSeq() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeq() => $_clearField(2);

  /// The problem opened, or something it carries changed while open (a battery level, a
  /// device count, the space it is filed in). Carries the whole problem, not a delta: the
  /// same problem_id, the next seq and the original opened_at.
  @$pb.TagNumber(3)
  Problem get open => $_getN(2);
  @$pb.TagNumber(3)
  set open(Problem value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOpen() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpen() => $_clearField(3);
  @$pb.TagNumber(3)
  Problem ensureOpen() => $_ensure(2);

  @$pb.TagNumber(4)
  ProblemCleared get cleared => $_getN(3);
  @$pb.TagNumber(4)
  set cleared(ProblemCleared value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCleared() => $_has(3);
  @$pb.TagNumber(4)
  void clearCleared() => $_clearField(4);
  @$pb.TagNumber(4)
  ProblemCleared ensureCleared() => $_ensure(3);
}

class ReportProblemsRequest extends $pb.GeneratedMessage {
  factory ReportProblemsRequest({
    $core.Iterable<ProblemTransition>? transitions,
    SnapshotPart? snapshot,
    $core.String? streamId,
    $fixnum.Int64? seq,
    $core.Iterable<$core.String>? previousStreamIds,
  }) {
    final result = create();
    if (transitions != null) result.transitions.addAll(transitions);
    if (snapshot != null) result.snapshot = snapshot;
    if (streamId != null) result.streamId = streamId;
    if (seq != null) result.seq = seq;
    if (previousStreamIds != null)
      result.previousStreamIds.addAll(previousStreamIds);
    return result;
  }

  ReportProblemsRequest._();

  factory ReportProblemsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportProblemsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportProblemsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..pc<ProblemTransition>(
        1, _omitFieldNames ? '' : 'transitions', $pb.PbFieldType.PM,
        subBuilder: ProblemTransition.create)
    ..aOM<SnapshotPart>(2, _omitFieldNames ? '' : 'snapshot',
        subBuilder: SnapshotPart.create)
    ..aOS(3, _omitFieldNames ? '' : 'streamId')
    ..a<$fixnum.Int64>(4, _omitFieldNames ? '' : 'seq', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pPS(5, _omitFieldNames ? '' : 'previousStreamIds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportProblemsRequest clone() =>
      ReportProblemsRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportProblemsRequest copyWith(
          void Function(ReportProblemsRequest) updates) =>
      super.copyWith((message) => updates(message as ReportProblemsRequest))
          as ReportProblemsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportProblemsRequest create() => ReportProblemsRequest._();
  @$core.override
  ReportProblemsRequest createEmptyInstance() => create();
  static $pb.PbList<ReportProblemsRequest> createRepeated() =>
      $pb.PbList<ReportProblemsRequest>();
  @$core.pragma('dart2js:noInline')
  static ReportProblemsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportProblemsRequest>(create);
  static ReportProblemsRequest? _defaultInstance;

  /// Applied in order.
  @$pb.TagNumber(1)
  $pb.PbList<ProblemTransition> get transitions => $_getList(0);

  /// Set when this request is part of a snapshot of every open problem. Its transitions are
  /// then each problem's latest open state, and the api-server, once it holds the whole
  /// snapshot, closes every open problem the snapshot does not name.
  @$pb.TagNumber(2)
  SnapshotPart get snapshot => $_getN(1);
  @$pb.TagNumber(2)
  set snapshot(SnapshotPart value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSnapshot() => $_has(1);
  @$pb.TagNumber(2)
  void clearSnapshot() => $_clearField(2);
  @$pb.TagNumber(2)
  SnapshotPart ensureSnapshot() => $_ensure(1);

  /// This concern's stream and the request's place on it; see SnapshotPart.
  @$pb.TagNumber(3)
  $core.String get streamId => $_getSZ(2);
  @$pb.TagNumber(3)
  set streamId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStreamId() => $_has(2);
  @$pb.TagNumber(3)
  void clearStreamId() => $_clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get seq => $_getI64(3);
  @$pb.TagNumber(4)
  set seq($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSeq() => $_has(3);
  @$pb.TagNumber(4)
  void clearSeq() => $_clearField(4);

  /// The streams this one replaced; see SnapshotPart. Empty on the gateway's first.
  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get previousStreamIds => $_getList(4);
}

class TransitionAck extends $pb.GeneratedMessage {
  factory TransitionAck({
    $core.String? problemId,
    $fixnum.Int64? seq,
    AckStatus? status,
  }) {
    final result = create();
    if (problemId != null) result.problemId = problemId;
    if (seq != null) result.seq = seq;
    if (status != null) result.status = status;
    return result;
  }

  TransitionAck._();

  factory TransitionAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransitionAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransitionAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'problemId')
    ..a<$fixnum.Int64>(2, _omitFieldNames ? '' : 'seq', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<AckStatus>(3, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE,
        defaultOrMaker: AckStatus.ACK_STATUS_UNSPECIFIED,
        valueOf: AckStatus.valueOf,
        enumValues: AckStatus.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransitionAck clone() => TransitionAck()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransitionAck copyWith(void Function(TransitionAck) updates) =>
      super.copyWith((message) => updates(message as TransitionAck))
          as TransitionAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransitionAck create() => TransitionAck._();
  @$core.override
  TransitionAck createEmptyInstance() => create();
  static $pb.PbList<TransitionAck> createRepeated() =>
      $pb.PbList<TransitionAck>();
  @$core.pragma('dart2js:noInline')
  static TransitionAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransitionAck>(create);
  static TransitionAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get problemId => $_getSZ(0);
  @$pb.TagNumber(1)
  set problemId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProblemId() => $_has(0);
  @$pb.TagNumber(1)
  void clearProblemId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get seq => $_getI64(1);
  @$pb.TagNumber(2)
  set seq($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSeq() => $_has(1);
  @$pb.TagNumber(2)
  void clearSeq() => $_clearField(2);

  @$pb.TagNumber(3)
  AckStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(AckStatus value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);
}

class ReportProblemsResponse extends $pb.GeneratedMessage {
  factory ReportProblemsResponse({
    $core.Iterable<TransitionAck>? acks,
    $core.bool? resyncRequired,
    $fixnum.Int64? appliedSeq,
  }) {
    final result = create();
    if (acks != null) result.acks.addAll(acks);
    if (resyncRequired != null) result.resyncRequired = resyncRequired;
    if (appliedSeq != null) result.appliedSeq = appliedSeq;
    return result;
  }

  ReportProblemsResponse._();

  factory ReportProblemsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportProblemsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportProblemsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..pc<TransitionAck>(1, _omitFieldNames ? '' : 'acks', $pb.PbFieldType.PM,
        subBuilder: TransitionAck.create)
    ..aOB(2, _omitFieldNames ? '' : 'resyncRequired')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'appliedSeq', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportProblemsResponse clone() =>
      ReportProblemsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportProblemsResponse copyWith(
          void Function(ReportProblemsResponse) updates) =>
      super.copyWith((message) => updates(message as ReportProblemsResponse))
          as ReportProblemsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportProblemsResponse create() => ReportProblemsResponse._();
  @$core.override
  ReportProblemsResponse createEmptyInstance() => create();
  static $pb.PbList<ReportProblemsResponse> createRepeated() =>
      $pb.PbList<ReportProblemsResponse>();
  @$core.pragma('dart2js:noInline')
  static ReportProblemsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportProblemsResponse>(create);
  static ReportProblemsResponse? _defaultInstance;

  /// One per transition of a request the api-server took in order, named by its key.
  @$pb.TagNumber(1)
  $pb.PbList<TransitionAck> get acks => $_getList(0);

  /// The gateway must connect afresh; see SnapshotPart.
  @$pb.TagNumber(2)
  $core.bool get resyncRequired => $_getBF(1);
  @$pb.TagNumber(2)
  set resyncRequired($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasResyncRequired() => $_has(1);
  @$pb.TagNumber(2)
  void clearResyncRequired() => $_clearField(2);

  /// As ReportServiceReachResponse.applied_seq: whether the request was taken at all. A request
  /// above it was not, carries no acks, and is sent again.
  @$pb.TagNumber(3)
  $fixnum.Int64 get appliedSeq => $_getI64(2);
  @$pb.TagNumber(3)
  set appliedSeq($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAppliedSeq() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppliedSeq() => $_clearField(3);
}

/// Which spaces one member of service staff reaches on this gateway: whom the api-server may
/// show a problem to, by where the problem is.
///
/// Sent for every member who stands to some space as service (access.v1.MembershipRelation),
/// from their memberships alone. Never for a resident: where people live stays on the gateway.
/// A member's own home is not left out of their reach, since a gap would show where they live.
/// A user who is no longer service anywhere on the gateway is named in removed_user_ids.
///
/// The administration of the gateway is not reported here; the administrator's own service
/// memberships, if any, are, like anyone's. The api-server records who administers a gateway
/// itself, and from when, and gives the administrator every space the gateway serves
/// from that moment, applying a change of administrator at once. A problem with no space the
/// api-server holds — a device filed nowhere, a space not yet held or since removed — is shown
/// only to the administrator. A problem about a connector or the gateway itself concerns no
/// one's home, and is shown to the administrator and every member with any reach.
class ServiceReach extends $pb.GeneratedMessage {
  factory ServiceReach({
    $0.UserId? userId,
    $core.Iterable<ReachedSpace>? spaces,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (spaces != null) result.spaces.addAll(spaces);
    return result;
  }

  ServiceReach._();

  factory ServiceReach.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServiceReach.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServiceReach',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..pc<ReachedSpace>(3, _omitFieldNames ? '' : 'spaces', $pb.PbFieldType.PM,
        subBuilder: ReachedSpace.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceReach clone() => ServiceReach()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceReach copyWith(void Function(ServiceReach) updates) =>
      super.copyWith((message) => updates(message as ServiceReach))
          as ServiceReach;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceReach create() => ServiceReach._();
  @$core.override
  ServiceReach createEmptyInstance() => create();
  static $pb.PbList<ServiceReach> createRepeated() =>
      $pb.PbList<ServiceReach>();
  @$core.pragma('dart2js:noInline')
  static ServiceReach getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServiceReach>(create);
  static ServiceReach? _defaultInstance;

  /// As the token issuer mints it: the sub of the member's token.
  @$pb.TagNumber(1)
  $0.UserId get userId => $_getN(0);
  @$pb.TagNumber(1)
  set userId($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureUserId() => $_ensure(0);

  /// Every space the member reaches, the spaces beneath a reached space included. Replaces
  /// whatever the api-server held for this member on this gateway, so one member's reach is
  /// never split across requests or snapshot parts.
  @$pb.TagNumber(3)
  $pb.PbList<ReachedSpace> get spaces => $_getList(1);
}

/// One space a member reaches, and since when.
class ReachedSpace extends $pb.GeneratedMessage {
  factory ReachedSpace({
    $0.SpaceId? spaceId,
    $1.Timestamp? since,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (since != null) result.since = since;
    return result;
  }

  ReachedSpace._();

  factory ReachedSpace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReachedSpace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReachedSpace',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'since',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReachedSpace clone() => ReachedSpace()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReachedSpace copyWith(void Function(ReachedSpace) updates) =>
      super.copyWith((message) => updates(message as ReachedSpace))
          as ReachedSpace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReachedSpace create() => ReachedSpace._();
  @$core.override
  ReachedSpace createEmptyInstance() => create();
  static $pb.PbList<ReachedSpace> createRepeated() =>
      $pb.PbList<ReachedSpace>();
  @$core.pragma('dart2js:noInline')
  static ReachedSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReachedSpace>(create);
  static ReachedSpace? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get spaceId => $_getN(0);
  @$pb.TagNumber(1)
  set spaceId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureSpaceId() => $_ensure(0);

  /// The quarter hour, rounded up, from which the member's reach to this space has been
  /// unbroken, as the gateway counts it. Given by the gateway, which saw any break, rather than
  /// inferred by the api-server from when reports arrived: a snapshot replaces what was queued,
  /// and would hide a break the gateway saw while offline.
  @$pb.TagNumber(2)
  $1.Timestamp get since => $_getN(1);
  @$pb.TagNumber(2)
  set since($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSince() => $_has(1);
  @$pb.TagNumber(2)
  void clearSince() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureSince() => $_ensure(1);
}

class ReportServiceReachRequest extends $pb.GeneratedMessage {
  factory ReportServiceReachRequest({
    $fixnum.Int64? seq,
    $core.Iterable<ServiceReach>? reach,
    $core.Iterable<$0.UserId>? removedUserIds,
    SnapshotPart? snapshot,
    $core.String? streamId,
    $core.Iterable<$core.String>? previousStreamIds,
  }) {
    final result = create();
    if (seq != null) result.seq = seq;
    if (reach != null) result.reach.addAll(reach);
    if (removedUserIds != null) result.removedUserIds.addAll(removedUserIds);
    if (snapshot != null) result.snapshot = snapshot;
    if (streamId != null) result.streamId = streamId;
    if (previousStreamIds != null)
      result.previousStreamIds.addAll(previousStreamIds);
    return result;
  }

  ReportServiceReachRequest._();

  factory ReportServiceReachRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportServiceReachRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportServiceReachRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'seq', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<ServiceReach>(2, _omitFieldNames ? '' : 'reach', $pb.PbFieldType.PM,
        subBuilder: ServiceReach.create)
    ..pc<$0.UserId>(
        3, _omitFieldNames ? '' : 'removedUserIds', $pb.PbFieldType.PM,
        subBuilder: $0.UserId.create)
    ..aOM<SnapshotPart>(4, _omitFieldNames ? '' : 'snapshot',
        subBuilder: SnapshotPart.create)
    ..aOS(5, _omitFieldNames ? '' : 'streamId')
    ..pPS(6, _omitFieldNames ? '' : 'previousStreamIds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportServiceReachRequest clone() =>
      ReportServiceReachRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportServiceReachRequest copyWith(
          void Function(ReportServiceReachRequest) updates) =>
      super.copyWith((message) => updates(message as ReportServiceReachRequest))
          as ReportServiceReachRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportServiceReachRequest create() => ReportServiceReachRequest._();
  @$core.override
  ReportServiceReachRequest createEmptyInstance() => create();
  static $pb.PbList<ReportServiceReachRequest> createRepeated() =>
      $pb.PbList<ReportServiceReachRequest>();
  @$core.pragma('dart2js:noInline')
  static ReportServiceReachRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportServiceReachRequest>(create);
  static ReportServiceReachRequest? _defaultInstance;

  /// The request's place on stream_id; see SnapshotPart. Applied in order, exactly once, so a
  /// late retry cannot restore reach since taken away.
  @$pb.TagNumber(1)
  $fixnum.Int64 get seq => $_getI64(0);
  @$pb.TagNumber(1)
  set seq($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSeq() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeq() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<ServiceReach> get reach => $_getList(1);

  /// Members who reach nothing on this gateway as service any more. A member named here and in
  /// reach is removed.
  @$pb.TagNumber(3)
  $pb.PbList<$0.UserId> get removedUserIds => $_getList(2);

  /// Set when this request is part of a snapshot of every member's reach; members absent from
  /// a whole snapshot reach nothing.
  @$pb.TagNumber(4)
  SnapshotPart get snapshot => $_getN(3);
  @$pb.TagNumber(4)
  set snapshot(SnapshotPart value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSnapshot() => $_has(3);
  @$pb.TagNumber(4)
  void clearSnapshot() => $_clearField(4);
  @$pb.TagNumber(4)
  SnapshotPart ensureSnapshot() => $_ensure(3);

  /// This concern's stream; see SnapshotPart.
  @$pb.TagNumber(5)
  $core.String get streamId => $_getSZ(4);
  @$pb.TagNumber(5)
  set streamId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStreamId() => $_has(4);
  @$pb.TagNumber(5)
  void clearStreamId() => $_clearField(5);

  /// The streams this one replaced; see SnapshotPart. Empty on the gateway's first.
  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get previousStreamIds => $_getList(5);
}

class ReportServiceReachResponse extends $pb.GeneratedMessage {
  factory ReportServiceReachResponse({
    $fixnum.Int64? appliedSeq,
    $core.bool? resyncRequired,
  }) {
    final result = create();
    if (appliedSeq != null) result.appliedSeq = appliedSeq;
    if (resyncRequired != null) result.resyncRequired = resyncRequired;
    return result;
  }

  ReportServiceReachResponse._();

  factory ReportServiceReachResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportServiceReachResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportServiceReachResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'appliedSeq', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(2, _omitFieldNames ? '' : 'resyncRequired')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportServiceReachResponse clone() =>
      ReportServiceReachResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportServiceReachResponse copyWith(
          void Function(ReportServiceReachResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ReportServiceReachResponse))
          as ReportServiceReachResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportServiceReachResponse create() => ReportServiceReachResponse._();
  @$core.override
  ReportServiceReachResponse createEmptyInstance() => create();
  static $pb.PbList<ReportServiceReachResponse> createRepeated() =>
      $pb.PbList<ReportServiceReachResponse>();
  @$core.pragma('dart2js:noInline')
  static ReportServiceReachResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportServiceReachResponse>(create);
  static ReportServiceReachResponse? _defaultInstance;

  /// The seq the api-server has applied up to on the request's stream, a held snapshot part
  /// counting as applied. The gateway does not send any request up to it again; one above it
  /// was not applied, and is sent again.
  @$pb.TagNumber(1)
  $fixnum.Int64 get appliedSeq => $_getI64(0);
  @$pb.TagNumber(1)
  set appliedSeq($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAppliedSeq() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppliedSeq() => $_clearField(1);

  /// The gateway must connect afresh; see SnapshotPart.
  @$pb.TagNumber(2)
  $core.bool get resyncRequired => $_getBF(1);
  @$pb.TagNumber(2)
  set resyncRequired($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasResyncRequired() => $_has(1);
  @$pb.TagNumber(2)
  void clearResyncRequired() => $_clearField(2);
}

/// A space this gateway serves, enough for the api-server to say which spaces an offline
/// gateway affects and to name where a problem is. The fields of space.v1.Space it needs and
/// no more: who is filed on a space, and which devices are in it, stay on the gateway.
///
/// name is the space's name as filed. Building staff see it in the app already, but the name
/// of a home may carry personal data ("Apt 101 – Andersson"), so it is stored by the api-server
/// as personal data: something an operator's data protection assessment covers.
class ServedSpace extends $pb.GeneratedMessage {
  factory ServedSpace({
    $0.SpaceId? spaceId,
    $2.SpaceType? spaceType,
    $core.String? name,
    $0.SpaceId? parentSpaceId,
    $core.int? floor,
    $core.String? timeZone,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (spaceType != null) result.spaceType = spaceType;
    if (name != null) result.name = name;
    if (parentSpaceId != null) result.parentSpaceId = parentSpaceId;
    if (floor != null) result.floor = floor;
    if (timeZone != null) result.timeZone = timeZone;
    return result;
  }

  ServedSpace._();

  factory ServedSpace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServedSpace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServedSpace',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..e<$2.SpaceType>(2, _omitFieldNames ? '' : 'spaceType', $pb.PbFieldType.OE,
        defaultOrMaker: $2.SpaceType.SPACE_TYPE_UNSPECIFIED,
        valueOf: $2.SpaceType.valueOf,
        enumValues: $2.SpaceType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOM<$0.SpaceId>(4, _omitFieldNames ? '' : 'parentSpaceId',
        subBuilder: $0.SpaceId.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'floor', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'timeZone')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServedSpace clone() => ServedSpace()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServedSpace copyWith(void Function(ServedSpace) updates) =>
      super.copyWith((message) => updates(message as ServedSpace))
          as ServedSpace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServedSpace create() => ServedSpace._();
  @$core.override
  ServedSpace createEmptyInstance() => create();
  static $pb.PbList<ServedSpace> createRepeated() => $pb.PbList<ServedSpace>();
  @$core.pragma('dart2js:noInline')
  static ServedSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServedSpace>(create);
  static ServedSpace? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get spaceId => $_getN(0);
  @$pb.TagNumber(1)
  set spaceId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureSpaceId() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.SpaceType get spaceType => $_getN(1);
  @$pb.TagNumber(2)
  set spaceType($2.SpaceType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpaceType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  /// Unset for a top-level space.
  @$pb.TagNumber(4)
  $0.SpaceId get parentSpaceId => $_getN(3);
  @$pb.TagNumber(4)
  set parentSpaceId($0.SpaceId value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasParentSpaceId() => $_has(3);
  @$pb.TagNumber(4)
  void clearParentSpaceId() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.SpaceId ensureParentSpaceId() => $_ensure(3);

  /// As Space.floor: meaningful for a floor.
  @$pb.TagNumber(5)
  $core.int get floor => $_getIZ(4);
  @$pb.TagNumber(5)
  set floor($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFloor() => $_has(4);
  @$pb.TagNumber(5)
  void clearFloor() => $_clearField(5);

  /// The building's IANA time zone, as Space.time_zone: set on the building, so a time the
  /// api-server holds can be shown on the building's clock without a session to the gateway.
  @$pb.TagNumber(6)
  $core.String get timeZone => $_getSZ(5);
  @$pb.TagNumber(6)
  set timeZone($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTimeZone() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimeZone() => $_clearField(6);
}

class ReportServedSpacesRequest extends $pb.GeneratedMessage {
  factory ReportServedSpacesRequest({
    $fixnum.Int64? seq,
    $core.Iterable<ServedSpace>? spaces,
    $core.Iterable<$0.SpaceId>? removedSpaceIds,
    SnapshotPart? snapshot,
    $core.String? streamId,
    $core.Iterable<$core.String>? previousStreamIds,
  }) {
    final result = create();
    if (seq != null) result.seq = seq;
    if (spaces != null) result.spaces.addAll(spaces);
    if (removedSpaceIds != null) result.removedSpaceIds.addAll(removedSpaceIds);
    if (snapshot != null) result.snapshot = snapshot;
    if (streamId != null) result.streamId = streamId;
    if (previousStreamIds != null)
      result.previousStreamIds.addAll(previousStreamIds);
    return result;
  }

  ReportServedSpacesRequest._();

  factory ReportServedSpacesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportServedSpacesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportServedSpacesRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'seq', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<ServedSpace>(2, _omitFieldNames ? '' : 'spaces', $pb.PbFieldType.PM,
        subBuilder: ServedSpace.create)
    ..pc<$0.SpaceId>(
        3, _omitFieldNames ? '' : 'removedSpaceIds', $pb.PbFieldType.PM,
        subBuilder: $0.SpaceId.create)
    ..aOM<SnapshotPart>(4, _omitFieldNames ? '' : 'snapshot',
        subBuilder: SnapshotPart.create)
    ..aOS(5, _omitFieldNames ? '' : 'streamId')
    ..pPS(6, _omitFieldNames ? '' : 'previousStreamIds')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportServedSpacesRequest clone() =>
      ReportServedSpacesRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportServedSpacesRequest copyWith(
          void Function(ReportServedSpacesRequest) updates) =>
      super.copyWith((message) => updates(message as ReportServedSpacesRequest))
          as ReportServedSpacesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportServedSpacesRequest create() => ReportServedSpacesRequest._();
  @$core.override
  ReportServedSpacesRequest createEmptyInstance() => create();
  static $pb.PbList<ReportServedSpacesRequest> createRepeated() =>
      $pb.PbList<ReportServedSpacesRequest>();
  @$core.pragma('dart2js:noInline')
  static ReportServedSpacesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportServedSpacesRequest>(create);
  static ReportServedSpacesRequest? _defaultInstance;

  /// As ReportServiceReachRequest.seq, on this concern's own stream.
  @$pb.TagNumber(1)
  $fixnum.Int64 get seq => $_getI64(0);
  @$pb.TagNumber(1)
  set seq($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSeq() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeq() => $_clearField(1);

  /// Added or changed. Each replaces what the api-server held for that space.
  @$pb.TagNumber(2)
  $pb.PbList<ServedSpace> get spaces => $_getList(1);

  /// No longer served: deleted, or moved off this gateway. A space named here and in spaces is
  /// removed.
  @$pb.TagNumber(3)
  $pb.PbList<$0.SpaceId> get removedSpaceIds => $_getList(2);

  /// Set when this request is part of a snapshot of every served space; spaces absent from a
  /// whole snapshot are no longer served.
  @$pb.TagNumber(4)
  SnapshotPart get snapshot => $_getN(3);
  @$pb.TagNumber(4)
  set snapshot(SnapshotPart value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSnapshot() => $_has(3);
  @$pb.TagNumber(4)
  void clearSnapshot() => $_clearField(4);
  @$pb.TagNumber(4)
  SnapshotPart ensureSnapshot() => $_ensure(3);

  /// This concern's stream; see SnapshotPart.
  @$pb.TagNumber(5)
  $core.String get streamId => $_getSZ(4);
  @$pb.TagNumber(5)
  set streamId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStreamId() => $_has(4);
  @$pb.TagNumber(5)
  void clearStreamId() => $_clearField(5);

  /// The streams this one replaced; see SnapshotPart. Empty on the gateway's first.
  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get previousStreamIds => $_getList(5);
}

class ReportServedSpacesResponse extends $pb.GeneratedMessage {
  factory ReportServedSpacesResponse({
    $fixnum.Int64? appliedSeq,
    $core.bool? resyncRequired,
  }) {
    final result = create();
    if (appliedSeq != null) result.appliedSeq = appliedSeq;
    if (resyncRequired != null) result.resyncRequired = resyncRequired;
    return result;
  }

  ReportServedSpacesResponse._();

  factory ReportServedSpacesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReportServedSpacesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReportServedSpacesResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.reporting.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'appliedSeq', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(2, _omitFieldNames ? '' : 'resyncRequired')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportServedSpacesResponse clone() =>
      ReportServedSpacesResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReportServedSpacesResponse copyWith(
          void Function(ReportServedSpacesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ReportServedSpacesResponse))
          as ReportServedSpacesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReportServedSpacesResponse create() => ReportServedSpacesResponse._();
  @$core.override
  ReportServedSpacesResponse createEmptyInstance() => create();
  static $pb.PbList<ReportServedSpacesResponse> createRepeated() =>
      $pb.PbList<ReportServedSpacesResponse>();
  @$core.pragma('dart2js:noInline')
  static ReportServedSpacesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReportServedSpacesResponse>(create);
  static ReportServedSpacesResponse? _defaultInstance;

  /// As ReportServiceReachResponse.applied_seq.
  @$pb.TagNumber(1)
  $fixnum.Int64 get appliedSeq => $_getI64(0);
  @$pb.TagNumber(1)
  set appliedSeq($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAppliedSeq() => $_has(0);
  @$pb.TagNumber(1)
  void clearAppliedSeq() => $_clearField(1);

  /// As ReportServiceReachResponse.resync_required.
  @$pb.TagNumber(2)
  $core.bool get resyncRequired => $_getBF(1);
  @$pb.TagNumber(2)
  set resyncRequired($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasResyncRequired() => $_has(1);
  @$pb.TagNumber(2)
  void clearResyncRequired() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
