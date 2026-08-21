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

  /// Matter's EventNumber: monotonically increasing per node, and the reason an event log
  /// can be resumed rather than merely replayed. A consumer that sees a gap knows it missed
  /// something and can say so — the one guarantee a PropertyUpdate stream cannot give.
  ///
  /// Monotonic within one device. Do NOT compare across devices; they are unrelated
  /// sequences.
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
