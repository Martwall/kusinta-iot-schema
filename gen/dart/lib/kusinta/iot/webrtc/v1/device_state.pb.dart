// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/device_state.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $2;

import '../../access/v1/acl.pb.dart' as $1;
import '../../device/v1/device.pb.dart' as $0;
import '../../device/v1/property_update.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Full device state sent to the Flutter app on initial WebRTC connection.
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
    ..pPM<$0.Device>(1, _omitFieldNames ? '' : 'devices',
        subBuilder: $0.Device.create)
    ..aOM<$1.EffectivePermissions>(2, _omitFieldNames ? '' : 'permissions',
        subBuilder: $1.EffectivePermissions.create)
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'snapshottedAt',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceStateSnapshot clone() => deepCopy();
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

/// Single property change event streamed to the Flutter app in real time.
class DevicePropertyEvent extends $pb.GeneratedMessage {
  factory DevicePropertyEvent({
    $3.PropertyUpdate? update,
    $2.Timestamp? gatewayProcessedAt,
  }) {
    final result = create();
    if (update != null) result.update = update;
    if (gatewayProcessedAt != null)
      result.gatewayProcessedAt = gatewayProcessedAt;
    return result;
  }

  DevicePropertyEvent._();

  factory DevicePropertyEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DevicePropertyEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DevicePropertyEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$3.PropertyUpdate>(1, _omitFieldNames ? '' : 'update',
        subBuilder: $3.PropertyUpdate.create)
    ..aOM<$2.Timestamp>(2, _omitFieldNames ? '' : 'gatewayProcessedAt',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DevicePropertyEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DevicePropertyEvent copyWith(void Function(DevicePropertyEvent) updates) =>
      super.copyWith((message) => updates(message as DevicePropertyEvent))
          as DevicePropertyEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DevicePropertyEvent create() => DevicePropertyEvent._();
  @$core.override
  DevicePropertyEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DevicePropertyEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DevicePropertyEvent>(create);
  static DevicePropertyEvent? _defaultInstance;

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

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
