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
import '../../device/v1/property_update.pb.dart' as $3;
import '../../identity/v1/identity.pb.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Full device state sent to the app on initial WebRTC connection.
class DeviceStateSnapshot extends $pb.GeneratedMessage {
  factory DeviceStateSnapshot({
    $core.Iterable<$0.Device>? devices,
    $1.EffectivePermissions? permissions,
    $2.Timestamp? snapshottedAt,
  }) {
    final result = create();
    if (devices != null) result.devices.addAll(devices);
    if (permissions != null) result.permissions = permissions;
    if (snapshottedAt != null) result.snapshottedAt = snapshottedAt;
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
    $3.PropertyUpdate? update,
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
    ..aOM<$3.PropertyUpdate>(1, _omitFieldNames ? '' : 'update',
        subBuilder: $3.PropertyUpdate.create)
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
  $3.PropertyUpdate get update => $_getN(0);
  @$pb.TagNumber(1)
  set update($3.PropertyUpdate value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUpdate() => $_has(0);
  @$pb.TagNumber(1)
  void clearUpdate() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.PropertyUpdate ensureUpdate() => $_ensure(0);

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
/// per device.
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
///
/// A connector disconnecting is NOT a removal: an ordinary reconnect wipes the
/// device→connector route while every device still exists, and treating that as a
/// removal makes the whole UI flap. Unreachability is a separate signal — read
/// device.v1.Device.last_seen for that.
class DeviceRemoved extends $pb.GeneratedMessage {
  factory DeviceRemoved({
    $4.DeviceId? deviceId,
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
    ..aOM<$4.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $4.DeviceId.create)
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
  $4.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($4.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.DeviceId ensureDeviceId() => $_ensure(0);

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
