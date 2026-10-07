// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/device_state.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $2;
import '../../access/v1/acl.pb.dart' as $1;
import '../../device/v1/device.pb.dart' as $0;
import '../../device/v1/property_update.pb.dart' as $4;
import '../../identity/v1/identity.pb.dart' as $3;
import 'device_state.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'device_state.pbenum.dart';

/// Full device state sent to the app on initial WebRTC connection. Devices the recipient sees
/// as service are as they stood at the last quarter hour, less any since taken away, each
/// with its ServiceStatus.
class DeviceStateSnapshot extends $pb.GeneratedMessage {
  factory DeviceStateSnapshot({
    $core.Iterable<$0.Device>? devices,
    $1.EffectivePermissions? permissions,
    $2.Timestamp? snapshottedAt,
    $core.Iterable<ServiceStatus>? serviceStatuses,
  }) {
    final result = create();
    if (devices != null) result.devices.addAll(devices);
    if (permissions != null) result.permissions = permissions;
    if (snapshottedAt != null) result.snapshottedAt = snapshottedAt;
    if (serviceStatuses != null) result.serviceStatuses.addAll(serviceStatuses);
    return result;
  }

  DeviceStateSnapshot._();

  factory DeviceStateSnapshot.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceStateSnapshot.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceStateSnapshot',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..pc<$0.Device>(1, _omitFieldNames ? '' : 'devices', $pb.PbFieldType.PM,
        subBuilder: $0.Device.create)
    ..aOM<$1.EffectivePermissions>(2, _omitFieldNames ? '' : 'permissions',
        subBuilder: $1.EffectivePermissions.create)
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'snapshottedAt',
        subBuilder: $2.Timestamp.create)
    ..pc<ServiceStatus>(
        4, _omitFieldNames ? '' : 'serviceStatuses', $pb.PbFieldType.PM,
        subBuilder: ServiceStatus.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceStateSnapshot clone() => DeviceStateSnapshot()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceStateSnapshot copyWith(void Function(DeviceStateSnapshot) updates) =>
      super.copyWith((message) => updates(message as DeviceStateSnapshot))
          as DeviceStateSnapshot;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceStateSnapshot create() => DeviceStateSnapshot._();
  @$core.override
  DeviceStateSnapshot createEmptyInstance() => create();
  static $pb.PbList<DeviceStateSnapshot> createRepeated() =>
      $pb.PbList<DeviceStateSnapshot>();
  @$core.pragma('dart2js:noInline')
  static DeviceStateSnapshot getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceStateSnapshot>(create);
  static DeviceStateSnapshot? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.Device> get devices => $_getList(0);

  @$pb.TagNumber(2)
  $1.EffectivePermissions get permissions => $_getN(1);
  @$pb.TagNumber(2)
  set permissions($1.EffectivePermissions value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPermissions() => $_has(1);
  @$pb.TagNumber(2)
  void clearPermissions() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.EffectivePermissions ensurePermissions() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Timestamp get snapshottedAt => $_getN(2);
  @$pb.TagNumber(3)
  set snapshottedAt($2.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSnapshottedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearSnapshottedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureSnapshottedAt() => $_ensure(2);

  /// One for every device the recipient sees, as last evaluated (see ServiceStatus). A device
  /// the recipient began to see since the last quarter hour — or began to see as its
  /// resident — has none until the next.
  @$pb.TagNumber(4)
  $pb.PbList<ServiceStatus> get serviceStatuses => $_getList(3);
}

/// What keeps a device working, as the gateway judges it, and nothing that describes the
/// people around it. Sent for every device a recipient sees, so that an app reads a
/// device's problems from one place whatever its view. To a recipient whose
/// DeviceAcl.relation is SERVICE it is all they get of the device's state, beside its
/// description-only Device: they hold no action on
/// it and are sent no PropertyReport or DeviceEvent for it (see
/// access.v1.MembershipRelation).
///
/// Evaluated by the gateway at each quarter hour (:00, :15, :30, :45 UTC) from what it holds
/// then, and pushed in ServiceStatusChanged when it differs from what the recipient was last
/// sent. Between quarter hours nothing here changes, so polling learns nothing more. A
/// change still says the device was heard within that quarter hour, and nothing finer.
class ServiceStatus extends $pb.GeneratedMessage {
  factory ServiceStatus({
    $3.DeviceId? deviceId,
    $2.Timestamp? asOf,
    $core.bool? reachable,
    $2.Timestamp? unreachableSince,
    $core.int? batteryPercent,
    $core.bool? batteryLow,
    $core.bool? batteryReplacementNeeded,
    $core.int? radioQuality,
    $core.Iterable<ServiceFault>? faults,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (asOf != null) result.asOf = asOf;
    if (reachable != null) result.reachable = reachable;
    if (unreachableSince != null) result.unreachableSince = unreachableSince;
    if (batteryPercent != null) result.batteryPercent = batteryPercent;
    if (batteryLow != null) result.batteryLow = batteryLow;
    if (batteryReplacementNeeded != null)
      result.batteryReplacementNeeded = batteryReplacementNeeded;
    if (radioQuality != null) result.radioQuality = radioQuality;
    if (faults != null) result.faults.addAll(faults);
    return result;
  }

  ServiceStatus._();

  factory ServiceStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServiceStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServiceStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$3.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $3.DeviceId.create)
    ..aOM<$2.Timestamp>(2, _omitFieldNames ? '' : 'asOf',
        subBuilder: $2.Timestamp.create)
    ..aOB(3, _omitFieldNames ? '' : 'reachable')
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'unreachableSince',
        subBuilder: $2.Timestamp.create)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'batteryPercent', $pb.PbFieldType.OU3)
    ..aOB(6, _omitFieldNames ? '' : 'batteryLow')
    ..aOB(7, _omitFieldNames ? '' : 'batteryReplacementNeeded')
    ..a<$core.int>(
        8, _omitFieldNames ? '' : 'radioQuality', $pb.PbFieldType.OU3)
    ..pc<ServiceFault>(9, _omitFieldNames ? '' : 'faults', $pb.PbFieldType.KE,
        valueOf: ServiceFault.valueOf,
        enumValues: ServiceFault.values,
        defaultEnumValue: ServiceFault.SERVICE_FAULT_UNSPECIFIED)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceStatus clone() => ServiceStatus()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceStatus copyWith(void Function(ServiceStatus) updates) =>
      super.copyWith((message) => updates(message as ServiceStatus))
          as ServiceStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceStatus create() => ServiceStatus._();
  @$core.override
  ServiceStatus createEmptyInstance() => create();
  static $pb.PbList<ServiceStatus> createRepeated() =>
      $pb.PbList<ServiceStatus>();
  @$core.pragma('dart2js:noInline')
  static ServiceStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServiceStatus>(create);
  static ServiceStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $3.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($3.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.DeviceId ensureDeviceId() => $_ensure(0);

  /// Always set. The quarter hour at which the status took its current value, but never
  /// earlier than the start of the recipient's current, unbroken stretch of seeing the
  /// device, nor, for a resident, than their current residency — each start taken at the
  /// first quarter hour at or after it. When that start moves because the recipient becomes
  /// a resident, the app drops the status it held and is sent one again from the new start at
  /// the next quarter hour. These quarter hours, and the moment a device is
  /// taken away, are the only times service is given of a device in a home (see
  /// access.v1.MembershipRelation). Pushed and in a
  /// snapshot alike, so an unchanged status carries the same as_of however it arrived.
  @$pb.TagNumber(2)
  $2.Timestamp get asOf => $_getN(1);
  @$pb.TagNumber(2)
  set asOf($2.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAsOf() => $_has(1);
  @$pb.TagNumber(2)
  void clearAsOf() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureAsOf() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.bool get reachable => $_getBF(2);
  @$pb.TagNumber(3)
  set reachable($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReachable() => $_has(2);
  @$pb.TagNumber(3)
  void clearReachable() => $_clearField(3);

  /// While unreachable, the quarter hour at which the gateway found it so — not when it was
  /// last heard, which for a device that reports on change is when it was last used — and,
  /// like as_of, never earlier than those starts. Unset while reachable.
  @$pb.TagNumber(4)
  $2.Timestamp get unreachableSince => $_getN(3);
  @$pb.TagNumber(4)
  set unreachableSince($2.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasUnreachableSince() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnreachableSince() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureUnreachableSince() => $_ensure(3);

  /// Remaining charge, rounded up to a multiple of ten — 4 % is sent as 10, and 0 only when
  /// the device reports none left. Absent for a device that does not report one.
  @$pb.TagNumber(5)
  $core.int get batteryPercent => $_getIZ(4);
  @$pb.TagNumber(5)
  set batteryPercent($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBatteryPercent() => $_has(4);
  @$pb.TagNumber(5)
  void clearBatteryPercent() => $_clearField(5);

  /// battery_low: the device reports its charge low or critical (Matter Power Source
  /// BatChargeLevel, or a vendor's low-battery flag). battery_replacement_needed: it reports
  /// that its battery must be replaced. Each is set on its own report alone.
  @$pb.TagNumber(6)
  $core.bool get batteryLow => $_getBF(5);
  @$pb.TagNumber(6)
  set batteryLow($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBatteryLow() => $_has(5);
  @$pb.TagNumber(6)
  void clearBatteryLow() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get batteryReplacementNeeded => $_getBF(6);
  @$pb.TagNumber(7)
  set batteryReplacementNeeded($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBatteryReplacementNeeded() => $_has(6);
  @$pb.TagNumber(7)
  void clearBatteryReplacementNeeded() => $_clearField(7);

  /// A device.v1.RadioQuality number, travelling as a uint32 as every enum-valued reading
  /// does. Absent: the device does not report one.
  @$pb.TagNumber(8)
  $core.int get radioQuality => $_getIZ(7);
  @$pb.TagNumber(8)
  set radioQuality($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRadioQuality() => $_has(7);
  @$pb.TagNumber(8)
  void clearRadioQuality() => $_clearField(8);

  /// Faults the device reports now, each listed once. Empty: none. A fault can follow from
  /// what someone did — a casing opened — and service learns that within the quarter hour;
  /// that much fault reporting discloses.
  @$pb.TagNumber(9)
  $pb.PbList<ServiceFault> get faults => $_getList(8);
}

/// The service statuses that changed at a quarter hour, gateway → app. Apply each as an
/// upsert keyed on device_id. Sent for every device the recipient sees, without a
/// subscription: a service view holds no SUBSCRIBE, and needs none for this.
class ServiceStatusChanged extends $pb.GeneratedMessage {
  factory ServiceStatusChanged({
    $core.Iterable<ServiceStatus>? statuses,
  }) {
    final result = create();
    if (statuses != null) result.statuses.addAll(statuses);
    return result;
  }

  ServiceStatusChanged._();

  factory ServiceStatusChanged.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServiceStatusChanged.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServiceStatusChanged',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..pc<ServiceStatus>(
        1, _omitFieldNames ? '' : 'statuses', $pb.PbFieldType.PM,
        subBuilder: ServiceStatus.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceStatusChanged clone() =>
      ServiceStatusChanged()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceStatusChanged copyWith(void Function(ServiceStatusChanged) updates) =>
      super.copyWith((message) => updates(message as ServiceStatusChanged))
          as ServiceStatusChanged;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceStatusChanged create() => ServiceStatusChanged._();
  @$core.override
  ServiceStatusChanged createEmptyInstance() => create();
  static $pb.PbList<ServiceStatusChanged> createRepeated() =>
      $pb.PbList<ServiceStatusChanged>();
  @$core.pragma('dart2js:noInline')
  static ServiceStatusChanged getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServiceStatusChanged>(create);
  static ServiceStatusChanged? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ServiceStatus> get statuses => $_getList(0);
}

/// One attribute reading streamed to the app as it happens — Matter's Report Data Action,
/// for a single attribute.
///
/// Was DevicePropertyEvent. Renamed because it carries a device.v1.PropertyUpdate, which is
/// STATE, while device.v1.DeviceEvent carries a journal entry. Two messages with "Event" in
/// the name meaning opposite things is a trap, and this one was never the event: latest
/// wins, order does not matter, and a missed one is corrected by the next.
class PropertyReport extends $pb.GeneratedMessage {
  factory PropertyReport({
    $4.PropertyUpdate? update,
    $2.Timestamp? gatewayProcessedAt,
  }) {
    final result = create();
    if (update != null) result.update = update;
    if (gatewayProcessedAt != null)
      result.gatewayProcessedAt = gatewayProcessedAt;
    return result;
  }

  PropertyReport._();

  factory PropertyReport.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PropertyReport.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PropertyReport',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$4.PropertyUpdate>(1, _omitFieldNames ? '' : 'update',
        subBuilder: $4.PropertyUpdate.create)
    ..aOM<$2.Timestamp>(2, _omitFieldNames ? '' : 'gatewayProcessedAt',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyReport clone() => PropertyReport()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyReport copyWith(void Function(PropertyReport) updates) =>
      super.copyWith((message) => updates(message as PropertyReport))
          as PropertyReport;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyReport create() => PropertyReport._();
  @$core.override
  PropertyReport createEmptyInstance() => create();
  static $pb.PbList<PropertyReport> createRepeated() =>
      $pb.PbList<PropertyReport>();
  @$core.pragma('dart2js:noInline')
  static PropertyReport getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PropertyReport>(create);
  static PropertyReport? _defaultInstance;

  @$pb.TagNumber(1)
  $4.PropertyUpdate get update => $_getN(0);
  @$pb.TagNumber(1)
  set update($4.PropertyUpdate value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUpdate() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdate() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.PropertyUpdate ensureUpdate() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Timestamp get gatewayProcessedAt => $_getN(1);
  @$pb.TagNumber(2)
  set gatewayProcessedAt($2.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGatewayProcessedAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearGatewayProcessedAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureGatewayProcessedAt() => $_ensure(1);
}

/// A device appeared while the app was connected — the app leg's counterpart to
/// connector.v1.DeviceAnnouncement, which the gateway can currently only drop.
///
/// Carries the full Device, descriptor plus current typed properties, so the app can
/// render it without a follow-up read — the same payload DeviceStateSnapshot gives
/// per device. To a recipient who sees it as service, the Device carries its description
/// only, as in a snapshot, and is sent at the next quarter hour (see
/// access.v1.DeviceAcl.relation).
///
/// Apply as an upsert keyed on descriptor.device_id, never as an insert: a device can
/// be in the snapshot and then announced, or announced twice across a connector
/// reconnect.
///
/// Discovery, not interest. Being told a device exists does not subscribe the app to
/// it — that still takes AppMessage.subscribe. The gateway sends this only for devices
/// the user is entitled to see; an unfiltered announcement would be a device
/// enumeration channel.
class DeviceAdded extends $pb.GeneratedMessage {
  factory DeviceAdded({
    $0.Device? device,
  }) {
    final result = create();
    if (device != null) result.device = device;
    return result;
  }

  DeviceAdded._();

  factory DeviceAdded.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceAdded.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceAdded',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Device>(1, _omitFieldNames ? '' : 'device',
        subBuilder: $0.Device.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAdded clone() => DeviceAdded()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAdded copyWith(void Function(DeviceAdded) updates) =>
      super.copyWith((message) => updates(message as DeviceAdded))
          as DeviceAdded;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceAdded create() => DeviceAdded._();
  @$core.override
  DeviceAdded createEmptyInstance() => create();
  static $pb.PbList<DeviceAdded> createRepeated() => $pb.PbList<DeviceAdded>();
  @$core.pragma('dart2js:noInline')
  static DeviceAdded getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceAdded>(create);
  static DeviceAdded? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Device get device => $_getN(0);
  @$pb.TagNumber(1)
  set device($0.Device value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(1)
  void clearDevice() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Device ensureDevice() => $_ensure(0);
}

/// A device is gone, because its connector said so via connector.v1.DeviceRemoval.
/// To a recipient who sees it as service, sent at once, as the removal from their
/// permissions is (see LivePermissionUpdate) — if they were shown the device; otherwise not
/// at all.
///
/// A connector disconnecting is NOT a removal: an ordinary reconnect wipes the
/// device→connector route while every device still exists, and treating that as a
/// removal makes the whole UI flap. Unreachability is a separate signal — read
/// ServiceStatus.reachable for that, which every recipient gets; device.v1.Device.last_seen
/// may be unset.
class DeviceRemoved extends $pb.GeneratedMessage {
  factory DeviceRemoved({
    $3.DeviceId? deviceId,
    $core.String? reason,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (reason != null) result.reason = reason;
    return result;
  }

  DeviceRemoved._();

  factory DeviceRemoved.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceRemoved.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceRemoved',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$3.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $3.DeviceId.create)
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceRemoved clone() => DeviceRemoved()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceRemoved copyWith(void Function(DeviceRemoved) updates) =>
      super.copyWith((message) => updates(message as DeviceRemoved))
          as DeviceRemoved;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceRemoved create() => DeviceRemoved._();
  @$core.override
  DeviceRemoved createEmptyInstance() => create();
  static $pb.PbList<DeviceRemoved> createRepeated() =>
      $pb.PbList<DeviceRemoved>();
  @$core.pragma('dart2js:noInline')
  static DeviceRemoved getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceRemoved>(create);
  static DeviceRemoved? _defaultInstance;

  @$pb.TagNumber(1)
  $3.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($3.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.DeviceId ensureDeviceId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
