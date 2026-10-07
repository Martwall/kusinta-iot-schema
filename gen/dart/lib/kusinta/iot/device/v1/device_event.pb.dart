// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/device_event.proto.

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
import '../../identity/v1/identity.pb.dart' as $0;
import 'cluster_state.pb.dart' as $2;
import 'device_event.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'device_event.pbenum.dart';

/// Something that HAPPENED on a device, as opposed to what a device currently IS.
///
/// PropertyUpdate answers "what is the lock's state now" — latest wins, order does not
/// matter, a missed one is corrected by the next. DeviceEvent answers "what happened to the
/// lock" — each is a distinct occurrence, order matters, and a missed one is gone unless it
/// is fetched by its number. Matter models both for the same reason, and neither substitutes
/// for the other: a lock's LockState attribute cannot say who unlocked it, with what
/// credential, at what time, and an event log cannot cheaply answer what the state is now.
///
/// This is the audit surface. In a building with several residents sharing a device, "the
/// door is unlocked" and "this credential unlocked the door at 14:02" are different
/// questions with different consumers.
///
/// Events do NOT feed Device.endpoints. A consumer must not merge an event into a properties
/// field or a ClusterState — an event's data is its own payload, not an attribute value, and
/// the attribute it relates to reports separately. The resolution rule in
/// property_update.proto has nothing to do with events.
class DeviceEvent extends $pb.GeneratedMessage {
  factory DeviceEvent({
    $0.DeviceId? deviceId,
    $core.int? endpointId,
    $core.int? clusterId,
    $core.int? eventId,
    $fixnum.Int64? eventNumber,
    $1.Timestamp? timestamp,
    EventPriority? priority,
    $2.AttributeValue? data,
    $fixnum.Int64? previousEventNumber,
    $core.bool? followsLoss,
    $core.String? numberingId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (endpointId != null) result.endpointId = endpointId;
    if (clusterId != null) result.clusterId = clusterId;
    if (eventId != null) result.eventId = eventId;
    if (eventNumber != null) result.eventNumber = eventNumber;
    if (timestamp != null) result.timestamp = timestamp;
    if (priority != null) result.priority = priority;
    if (data != null) result.data = data;
    if (previousEventNumber != null)
      result.previousEventNumber = previousEventNumber;
    if (followsLoss != null) result.followsLoss = followsLoss;
    if (numberingId != null) result.numberingId = numberingId;
    return result;
  }

  DeviceEvent._();

  factory DeviceEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'endpointId', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'clusterId', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'eventId', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'eventNumber', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'timestamp',
        subBuilder: $1.Timestamp.create)
    ..e<EventPriority>(7, _omitFieldNames ? '' : 'priority', $pb.PbFieldType.OE,
        defaultOrMaker: EventPriority.EVENT_PRIORITY_UNSPECIFIED,
        valueOf: EventPriority.valueOf,
        enumValues: EventPriority.values)
    ..aOM<$2.AttributeValue>(8, _omitFieldNames ? '' : 'data',
        subBuilder: $2.AttributeValue.create)
    ..a<$fixnum.Int64>(
        9, _omitFieldNames ? '' : 'previousEventNumber', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(10, _omitFieldNames ? '' : 'followsLoss')
    ..aOS(11, _omitFieldNames ? '' : 'numberingId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceEvent clone() => DeviceEvent()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceEvent copyWith(void Function(DeviceEvent) updates) =>
      super.copyWith((message) => updates(message as DeviceEvent))
          as DeviceEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceEvent create() => DeviceEvent._();
  @$core.override
  DeviceEvent createEmptyInstance() => create();
  static $pb.PbList<DeviceEvent> createRepeated() => $pb.PbList<DeviceEvent>();
  @$core.pragma('dart2js:noInline')
  static DeviceEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceEvent>(create);
  static DeviceEvent? _defaultInstance;

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

  /// Which endpoint emitted it, and which cluster defines it. Required, as for an update.
  @$pb.TagNumber(2)
  $core.int get endpointId => $_getIZ(1);
  @$pb.TagNumber(2)
  set endpointId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEndpointId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndpointId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get clusterId => $_getIZ(2);
  @$pb.TagNumber(3)
  set clusterId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasClusterId() => $_has(2);
  @$pb.TagNumber(3)
  void clearClusterId() => $_clearField(3);

  /// The Matter event ID within that cluster.
  @$pb.TagNumber(4)
  $core.int get eventId => $_getIZ(3);
  @$pb.TagNumber(4)
  set eventId($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEventId() => $_has(3);
  @$pb.TagNumber(4)
  void clearEventId() => $_clearField(4);

  /// The device's event number, as its connector numbers it — per device, where Matter's
  /// EventNumber is per node; a connector renumbers what a node gives it. It is the reason
  /// an event log can be resumed rather than merely replayed. A consumer that sees a gap
  /// knows it missed something and can say so — the one guarantee a PropertyUpdate stream
  /// cannot give. On the app leg a gap is judged by previous_event_number and follows_loss
  /// below, not by a skip in this number.
  ///
  /// Monotonic within one device, its connector and one numbering_id — a device that moves
  /// to another connector begins a new sequence — and consecutive as a connector delivers
  /// it: a connector numbers each device's events on its own, so a skip means events were
  /// lost — including ones the connector lost itself, whose numbers it skips. A number at or
  /// below one already received for the device from the same connector under the same
  /// numbering_id is that event again — a connector resends what it could not confirm,
  /// always the whole unconfirmed tail of what it sent, in order — and is dropped. Do NOT
  /// compare across devices; they are unrelated sequences.
  @$pb.TagNumber(5)
  $fixnum.Int64 get eventNumber => $_getI64(4);
  @$pb.TagNumber(5)
  set eventNumber($fixnum.Int64 value) => $_setInt64(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEventNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearEventNumber() => $_clearField(5);

  /// When the device says it happened, which is not when the gateway saw it. On a
  /// battery-powered device that wakes on a cycle, the two can differ by minutes.
  @$pb.TagNumber(6)
  $1.Timestamp get timestamp => $_getN(5);
  @$pb.TagNumber(6)
  set timestamp($1.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTimestamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimestamp() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureTimestamp() => $_ensure(5);

  @$pb.TagNumber(7)
  EventPriority get priority => $_getN(6);
  @$pb.TagNumber(7)
  set priority(EventPriority value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPriority() => $_has(6);
  @$pb.TagNumber(7)
  void clearPriority() => $_clearField(7);

  /// The event's own payload. Matter events carry a struct, so this is normally
  /// AttributeValue.struct_value keyed by context tag; a scalar-payload event uses a scalar
  /// case directly.
  @$pb.TagNumber(8)
  $2.AttributeValue get data => $_getN(7);
  @$pb.TagNumber(8)
  set data($2.AttributeValue value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasData() => $_has(7);
  @$pb.TagNumber(8)
  void clearData() => $_clearField(8);
  @$pb.TagNumber(8)
  $2.AttributeValue ensureData() => $_ensure(7);

  /// How a recipient tells events it was not sent from events that were lost. Filled by the
  /// gateway on the app leg; a connector leaves both unset.
  ///
  /// A recipient is not sent every event of a device: which ones it receives depends on its
  /// grant (access.v1.DeviceAcl.allowed_event_refs), so event_number skips wherever an event
  /// went to somebody else. A skip in event_number is therefore NOT a gap. A gap is:
  ///
  ///   * previous_event_number set, the recipient holding a last-received event_number for
  ///     this device under the same numbering_id (whether or not it kept the event), and
  ///     previous_event_number above it — its log misses events the gateway sent this user,
  ///     on another session or while it was away, or that were lost; one at or below it is
  ///     no gap; or
  ///   * follows_loss set on an event above the last number the recipient holds, or when it
  ///     holds none.
  ///
  /// Otherwise — previous_event_number unset, or the recipient holding no number for the
  /// device under that numbering_id — continuity is unknown, and only follows_loss claims a
  /// gap: the gateway knows events were lost, whatever the recipient holds.
  ///
  /// event_number counts a device's events over its life, so it tells anyone it reaches
  /// roughly how many events came before; that much the number discloses. And it is still
  /// the device's own, so a recipient granted only some of a device's events learns from it
  /// how many it was not sent: that much a partial grant of events discloses.
  ///
  /// previous_event_number never names an event from before the user's current residency in
  /// a home, nor from before their current, unbroken stretch of seeing the device — it is
  /// unset instead, and follows_loss then looks no further back either. Otherwise it is the
  /// event_number of the previous event of this device that this user was due — within the
  /// grant they held when it happened — whether or not any session of theirs was open to be
  /// sent it, so that events missed while away are a gap like any other. A number of the
  /// event's own numbering_id. Unset when the gateway has received no such event under that
  /// numbering since the gateway itself last started — the first event after a numbering
  /// restart included: continuity is then unknown. The gateway remembers nothing of a
  /// numbering across its own restart, so follows_loss too covers only what it received
  /// since, and a resend it can no longer recognise reaches the app: an app drops an event
  /// whose number is at or below the last it holds for the device under the same
  /// numbering_id.
  @$pb.TagNumber(9)
  $fixnum.Int64 get previousEventNumber => $_getI64(8);
  @$pb.TagNumber(9)
  set previousEventNumber($fixnum.Int64 value) => $_setInt64(8, value);
  @$pb.TagNumber(9)
  $core.bool hasPreviousEventNumber() => $_has(8);
  @$pb.TagNumber(9)
  void clearPreviousEventNumber() => $_clearField(9);

  /// Set when the gateway itself missed events of this device since previous_event_number —
  /// or, when that is unset, since the latest of the start of what the user may learn of the
  /// device, the start of the current numbering and the gateway's own last start — the
  /// sequence it receives from the device skipped. A restart of the numbering is not itself
  /// a loss; a connector shows what it lost by skipping numbers. What was lost is unknown,
  /// so it may have been an event this recipient would have been sent.
  @$pb.TagNumber(10)
  $core.bool get followsLoss => $_getBF(9);
  @$pb.TagNumber(10)
  set followsLoss($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFollowsLoss() => $_has(9);
  @$pb.TagNumber(10)
  void clearFollowsLoss() => $_clearField(10);

  /// Which numbering event_number belongs to. A connector changes it whenever it restarts a
  /// device's numbering — after losing its own count — so that a restart is never mistaken
  /// for a resend. The gateway then begins a new sequence for the device: the first event of
  /// it that each user is due carries previous_event_number unset, continuity unknown. A new
  /// value is one never used before for the device — a UUIDv4 is the expected form. Opaque;
  /// compare for equality only. Empty is a numbering like any other, for a connector whose
  /// count for a device never restarts; a connector that begins a device's sequence anew —
  /// having lost its count, or the device having come back to it — must give it a
  /// numbering_id never used for that device before. Every numbering starts at 1. On the app leg
  /// the gateway derives it from the connector's own id and the connector's numbering_id
  /// alone, so that it is the same across a gateway restart and changes whenever either
  /// does — a numbering restart, or a device moving to another connector.
  @$pb.TagNumber(11)
  $core.String get numberingId => $_getSZ(10);
  @$pb.TagNumber(11)
  set numberingId($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasNumberingId() => $_has(10);
  @$pb.TagNumber(11)
  void clearNumberingId() => $_clearField(11);
}

class DeviceEventBatch extends $pb.GeneratedMessage {
  factory DeviceEventBatch({
    $core.Iterable<DeviceEvent>? events,
    $1.Timestamp? receivedAt,
  }) {
    final result = create();
    if (events != null) result.events.addAll(events);
    if (receivedAt != null) result.receivedAt = receivedAt;
    return result;
  }

  DeviceEventBatch._();

  factory DeviceEventBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceEventBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceEventBatch',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..pc<DeviceEvent>(1, _omitFieldNames ? '' : 'events', $pb.PbFieldType.PM,
        subBuilder: DeviceEvent.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'receivedAt',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceEventBatch clone() => DeviceEventBatch()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceEventBatch copyWith(void Function(DeviceEventBatch) updates) =>
      super.copyWith((message) => updates(message as DeviceEventBatch))
          as DeviceEventBatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceEventBatch create() => DeviceEventBatch._();
  @$core.override
  DeviceEventBatch createEmptyInstance() => create();
  static $pb.PbList<DeviceEventBatch> createRepeated() =>
      $pb.PbList<DeviceEventBatch>();
  @$core.pragma('dart2js:noInline')
  static DeviceEventBatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceEventBatch>(create);
  static DeviceEventBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<DeviceEvent> get events => $_getList(0);

  /// When the gateway received these, as distinct from each event's own timestamp, which is
  /// when the device says it happened. The two differ by however long a sleeping device took
  /// to wake, and for an audit trail both matter: one is what occurred, the other is when
  /// anyone could have known.
  @$pb.TagNumber(2)
  $1.Timestamp get receivedAt => $_getN(1);
  @$pb.TagNumber(2)
  set receivedAt($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReceivedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceivedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureReceivedAt() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
