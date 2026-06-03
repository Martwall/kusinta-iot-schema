// This is a generated file - do not edit.
//
// Generated from kusinta/iot/connector/v1/connector.proto.

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

import '../../common/v1/types.pbenum.dart' as $5;
import '../../device/v1/descriptor.pb.dart' as $1;
import '../../device/v1/property_update.pb.dart' as $3;
import '../../identity/v1/identity.pb.dart' as $0;
import '../../webrtc/v1/command.pb.dart' as $4;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ConnectorInfo extends $pb.GeneratedMessage {
  factory ConnectorInfo({
    $0.ConnectorId? connectorId,
    $core.String? displayName,
    $core.String? version,
    $5.ConnectorTransport? transport,
    $core.String? endpoint,
    $core.Iterable<$core.int>? supportedDeviceTypeIds,
  }) {
    final result = create();
    if (connectorId != null) result.connectorId = connectorId;
    if (displayName != null) result.displayName = displayName;
    if (version != null) result.version = version;
    if (transport != null) result.transport = transport;
    if (endpoint != null) result.endpoint = endpoint;
    if (supportedDeviceTypeIds != null)
      result.supportedDeviceTypeIds.addAll(supportedDeviceTypeIds);
    return result;
  }

  ConnectorInfo._();

  factory ConnectorInfo.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConnectorInfo.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConnectorInfo',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$0.ConnectorId>(1, _omitFieldNames ? '' : 'connectorId',
        subBuilder: $0.ConnectorId.create)
    ..aOS(2, _omitFieldNames ? '' : 'displayName')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..aE<$5.ConnectorTransport>(4, _omitFieldNames ? '' : 'transport',
        enumValues: $5.ConnectorTransport.values)
    ..aOS(5, _omitFieldNames ? '' : 'endpoint')
    ..p<$core.int>(
        6, _omitFieldNames ? '' : 'supportedDeviceTypeIds', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorInfo clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorInfo copyWith(void Function(ConnectorInfo) updates) =>
      super.copyWith((message) => updates(message as ConnectorInfo))
          as ConnectorInfo;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectorInfo create() => ConnectorInfo._();
  @$core.override
  ConnectorInfo createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConnectorInfo getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConnectorInfo>(create);
  static ConnectorInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $0.ConnectorId get connectorId => $_getN(0);
  @$pb.TagNumber(1)
  set connectorId($0.ConnectorId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConnectorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectorId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ConnectorId ensureConnectorId() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => $_clearField(3);

  @$pb.TagNumber(4)
  $5.ConnectorTransport get transport => $_getN(3);
  @$pb.TagNumber(4)
  set transport($5.ConnectorTransport value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTransport() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransport() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get endpoint => $_getSZ(4);
  @$pb.TagNumber(5)
  set endpoint($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEndpoint() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndpoint() => $_clearField(5);

  @$pb.TagNumber(6)
  $pb.PbList<$core.int> get supportedDeviceTypeIds => $_getList(5);
}

class ConnectorHandshake extends $pb.GeneratedMessage {
  factory ConnectorHandshake({
    ConnectorInfo? info,
    $core.Iterable<$1.DeviceDescriptor>? knownDevices,
  }) {
    final result = create();
    if (info != null) result.info = info;
    if (knownDevices != null) result.knownDevices.addAll(knownDevices);
    return result;
  }

  ConnectorHandshake._();

  factory ConnectorHandshake.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConnectorHandshake.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConnectorHandshake',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<ConnectorInfo>(1, _omitFieldNames ? '' : 'info',
        subBuilder: ConnectorInfo.create)
    ..pPM<$1.DeviceDescriptor>(2, _omitFieldNames ? '' : 'knownDevices',
        subBuilder: $1.DeviceDescriptor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorHandshake clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorHandshake copyWith(void Function(ConnectorHandshake) updates) =>
      super.copyWith((message) => updates(message as ConnectorHandshake))
          as ConnectorHandshake;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectorHandshake create() => ConnectorHandshake._();
  @$core.override
  ConnectorHandshake createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConnectorHandshake getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConnectorHandshake>(create);
  static ConnectorHandshake? _defaultInstance;

  @$pb.TagNumber(1)
  ConnectorInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(ConnectorInfo value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => $_clearField(1);
  @$pb.TagNumber(1)
  ConnectorInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<$1.DeviceDescriptor> get knownDevices => $_getList(1);
}

class HandshakeAck extends $pb.GeneratedMessage {
  factory HandshakeAck({
    $core.bool? accepted,
    $core.String? reason,
    $0.GatewayId? gatewayId,
  }) {
    final result = create();
    if (accepted != null) result.accepted = accepted;
    if (reason != null) result.reason = reason;
    if (gatewayId != null) result.gatewayId = gatewayId;
    return result;
  }

  HandshakeAck._();

  factory HandshakeAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HandshakeAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HandshakeAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'accepted')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..aOM<$0.GatewayId>(3, _omitFieldNames ? '' : 'gatewayId',
        subBuilder: $0.GatewayId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HandshakeAck clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HandshakeAck copyWith(void Function(HandshakeAck) updates) =>
      super.copyWith((message) => updates(message as HandshakeAck))
          as HandshakeAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HandshakeAck create() => HandshakeAck._();
  @$core.override
  HandshakeAck createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HandshakeAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HandshakeAck>(create);
  static HandshakeAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get accepted => $_getBF(0);
  @$pb.TagNumber(1)
  set accepted($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccepted() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccepted() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.GatewayId get gatewayId => $_getN(2);
  @$pb.TagNumber(3)
  set gatewayId($0.GatewayId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGatewayId() => $_has(2);
  @$pb.TagNumber(3)
  void clearGatewayId() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.GatewayId ensureGatewayId() => $_ensure(2);
}

class DeviceAnnouncement extends $pb.GeneratedMessage {
  factory DeviceAnnouncement({
    $1.DeviceDescriptor? descriptor,
  }) {
    final result = create();
    if (descriptor != null) result.descriptor = descriptor;
    return result;
  }

  DeviceAnnouncement._();

  factory DeviceAnnouncement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceAnnouncement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceAnnouncement',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$1.DeviceDescriptor>(1, _omitFieldNames ? '' : 'descriptor',
        subBuilder: $1.DeviceDescriptor.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAnnouncement clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAnnouncement copyWith(void Function(DeviceAnnouncement) updates) =>
      super.copyWith((message) => updates(message as DeviceAnnouncement))
          as DeviceAnnouncement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceAnnouncement create() => DeviceAnnouncement._();
  @$core.override
  DeviceAnnouncement createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceAnnouncement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceAnnouncement>(create);
  static DeviceAnnouncement? _defaultInstance;

  @$pb.TagNumber(1)
  $1.DeviceDescriptor get descriptor => $_getN(0);
  @$pb.TagNumber(1)
  set descriptor($1.DeviceDescriptor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDescriptor() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescriptor() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.DeviceDescriptor ensureDescriptor() => $_ensure(0);
}

class DeviceRemoval extends $pb.GeneratedMessage {
  factory DeviceRemoval({
    $0.DeviceId? deviceId,
    $core.String? reason,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (reason != null) result.reason = reason;
    return result;
  }

  DeviceRemoval._();

  factory DeviceRemoval.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceRemoval.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceRemoval',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceRemoval clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceRemoval copyWith(void Function(DeviceRemoval) updates) =>
      super.copyWith((message) => updates(message as DeviceRemoval))
          as DeviceRemoval;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceRemoval create() => DeviceRemoval._();
  @$core.override
  DeviceRemoval createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceRemoval getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceRemoval>(create);
  static DeviceRemoval? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => $_clearField(2);
}

class HeartBeat extends $pb.GeneratedMessage {
  factory HeartBeat() => create();

  HeartBeat._();

  factory HeartBeat.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeartBeat.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeartBeat',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartBeat clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartBeat copyWith(void Function(HeartBeat) updates) =>
      super.copyWith((message) => updates(message as HeartBeat)) as HeartBeat;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeartBeat create() => HeartBeat._();
  @$core.override
  HeartBeat createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HeartBeat getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeartBeat>(create);
  static HeartBeat? _defaultInstance;
}

class SubscribeDevice extends $pb.GeneratedMessage {
  factory SubscribeDevice({
    $0.DeviceId? deviceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    return result;
  }

  SubscribeDevice._();

  factory SubscribeDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SubscribeDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SubscribeDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubscribeDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubscribeDevice copyWith(void Function(SubscribeDevice) updates) =>
      super.copyWith((message) => updates(message as SubscribeDevice))
          as SubscribeDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscribeDevice create() => SubscribeDevice._();
  @$core.override
  SubscribeDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SubscribeDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubscribeDevice>(create);
  static SubscribeDevice? _defaultInstance;

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
}

class UnsubscribeDevice extends $pb.GeneratedMessage {
  factory UnsubscribeDevice({
    $0.DeviceId? deviceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    return result;
  }

  UnsubscribeDevice._();

  factory UnsubscribeDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UnsubscribeDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UnsubscribeDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnsubscribeDevice clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnsubscribeDevice copyWith(void Function(UnsubscribeDevice) updates) =>
      super.copyWith((message) => updates(message as UnsubscribeDevice))
          as UnsubscribeDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnsubscribeDevice create() => UnsubscribeDevice._();
  @$core.override
  UnsubscribeDevice createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static UnsubscribeDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnsubscribeDevice>(create);
  static UnsubscribeDevice? _defaultInstance;

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
}

class GatewayError extends $pb.GeneratedMessage {
  factory GatewayError({
    $core.String? code,
    $core.String? message,
    $core.String? commandId,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    if (commandId != null) result.commandId = commandId;
    return result;
  }

  GatewayError._();

  factory GatewayError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GatewayError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayError',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'commandId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayError copyWith(void Function(GatewayError) updates) =>
      super.copyWith((message) => updates(message as GatewayError))
          as GatewayError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GatewayError create() => GatewayError._();
  @$core.override
  GatewayError createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GatewayError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GatewayError>(create);
  static GatewayError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get commandId => $_getSZ(2);
  @$pb.TagNumber(3)
  set commandId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCommandId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommandId() => $_clearField(3);
}

class CommandResult extends $pb.GeneratedMessage {
  factory CommandResult({
    $core.String? commandId,
    $core.bool? success,
    GatewayError? error,
    $2.Timestamp? completedAt,
  }) {
    final result = create();
    if (commandId != null) result.commandId = commandId;
    if (success != null) result.success = success;
    if (error != null) result.error = error;
    if (completedAt != null) result.completedAt = completedAt;
    return result;
  }

  CommandResult._();

  factory CommandResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommandResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommandResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'commandId')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOM<GatewayError>(3, _omitFieldNames ? '' : 'error',
        subBuilder: GatewayError.create)
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'completedAt',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandResult clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandResult copyWith(void Function(CommandResult) updates) =>
      super.copyWith((message) => updates(message as CommandResult))
          as CommandResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommandResult create() => CommandResult._();
  @$core.override
  CommandResult createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CommandResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommandResult>(create);
  static CommandResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commandId => $_getSZ(0);
  @$pb.TagNumber(1)
  set commandId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCommandId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommandId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => $_clearField(2);

  @$pb.TagNumber(3)
  GatewayError get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(GatewayError value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => $_clearField(3);
  @$pb.TagNumber(3)
  GatewayError ensureError() => $_ensure(2);

  @$pb.TagNumber(4)
  $2.Timestamp get completedAt => $_getN(3);
  @$pb.TagNumber(4)
  set completedAt($2.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCompletedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCompletedAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureCompletedAt() => $_ensure(3);
}

enum ConnectRequest_Payload {
  handshake,
  propertyUpdate,
  deviceAnnounced,
  deviceRemoved,
  commandResult,
  heartbeat,
  notSet
}

class ConnectRequest extends $pb.GeneratedMessage {
  factory ConnectRequest({
    $core.String? messageId,
    $2.Timestamp? sentAt,
    ConnectorHandshake? handshake,
    $3.PropertyUpdateBatch? propertyUpdate,
    DeviceAnnouncement? deviceAnnounced,
    DeviceRemoval? deviceRemoved,
    CommandResult? commandResult,
    HeartBeat? heartbeat,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (sentAt != null) result.sentAt = sentAt;
    if (handshake != null) result.handshake = handshake;
    if (propertyUpdate != null) result.propertyUpdate = propertyUpdate;
    if (deviceAnnounced != null) result.deviceAnnounced = deviceAnnounced;
    if (deviceRemoved != null) result.deviceRemoved = deviceRemoved;
    if (commandResult != null) result.commandResult = commandResult;
    if (heartbeat != null) result.heartbeat = heartbeat;
    return result;
  }

  ConnectRequest._();

  factory ConnectRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConnectRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ConnectRequest_Payload>
      _ConnectRequest_PayloadByTag = {
    3: ConnectRequest_Payload.handshake,
    4: ConnectRequest_Payload.propertyUpdate,
    5: ConnectRequest_Payload.deviceAnnounced,
    6: ConnectRequest_Payload.deviceRemoved,
    7: ConnectRequest_Payload.commandResult,
    8: ConnectRequest_Payload.heartbeat,
    0: ConnectRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConnectRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8])
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..aOM<$2.Timestamp>(2, _omitFieldNames ? '' : 'sentAt',
        subBuilder: $2.Timestamp.create)
    ..aOM<ConnectorHandshake>(3, _omitFieldNames ? '' : 'handshake',
        subBuilder: ConnectorHandshake.create)
    ..aOM<$3.PropertyUpdateBatch>(4, _omitFieldNames ? '' : 'propertyUpdate',
        subBuilder: $3.PropertyUpdateBatch.create)
    ..aOM<DeviceAnnouncement>(5, _omitFieldNames ? '' : 'deviceAnnounced',
        subBuilder: DeviceAnnouncement.create)
    ..aOM<DeviceRemoval>(6, _omitFieldNames ? '' : 'deviceRemoved',
        subBuilder: DeviceRemoval.create)
    ..aOM<CommandResult>(7, _omitFieldNames ? '' : 'commandResult',
        subBuilder: CommandResult.create)
    ..aOM<HeartBeat>(8, _omitFieldNames ? '' : 'heartbeat',
        subBuilder: HeartBeat.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectRequest copyWith(void Function(ConnectRequest) updates) =>
      super.copyWith((message) => updates(message as ConnectRequest))
          as ConnectRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectRequest create() => ConnectRequest._();
  @$core.override
  ConnectRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConnectRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConnectRequest>(create);
  static ConnectRequest? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  ConnectRequest_Payload whichPayload() =>
      _ConnectRequest_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get messageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set messageId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.Timestamp get sentAt => $_getN(1);
  @$pb.TagNumber(2)
  set sentAt($2.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSentAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSentAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureSentAt() => $_ensure(1);

  @$pb.TagNumber(3)
  ConnectorHandshake get handshake => $_getN(2);
  @$pb.TagNumber(3)
  set handshake(ConnectorHandshake value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasHandshake() => $_has(2);
  @$pb.TagNumber(3)
  void clearHandshake() => $_clearField(3);
  @$pb.TagNumber(3)
  ConnectorHandshake ensureHandshake() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.PropertyUpdateBatch get propertyUpdate => $_getN(3);
  @$pb.TagNumber(4)
  set propertyUpdate($3.PropertyUpdateBatch value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPropertyUpdate() => $_has(3);
  @$pb.TagNumber(4)
  void clearPropertyUpdate() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.PropertyUpdateBatch ensurePropertyUpdate() => $_ensure(3);

  @$pb.TagNumber(5)
  DeviceAnnouncement get deviceAnnounced => $_getN(4);
  @$pb.TagNumber(5)
  set deviceAnnounced(DeviceAnnouncement value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDeviceAnnounced() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeviceAnnounced() => $_clearField(5);
  @$pb.TagNumber(5)
  DeviceAnnouncement ensureDeviceAnnounced() => $_ensure(4);

  @$pb.TagNumber(6)
  DeviceRemoval get deviceRemoved => $_getN(5);
  @$pb.TagNumber(6)
  set deviceRemoved(DeviceRemoval value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasDeviceRemoved() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeviceRemoved() => $_clearField(6);
  @$pb.TagNumber(6)
  DeviceRemoval ensureDeviceRemoved() => $_ensure(5);

  @$pb.TagNumber(7)
  CommandResult get commandResult => $_getN(6);
  @$pb.TagNumber(7)
  set commandResult(CommandResult value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCommandResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearCommandResult() => $_clearField(7);
  @$pb.TagNumber(7)
  CommandResult ensureCommandResult() => $_ensure(6);

  @$pb.TagNumber(8)
  HeartBeat get heartbeat => $_getN(7);
  @$pb.TagNumber(8)
  set heartbeat(HeartBeat value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasHeartbeat() => $_has(7);
  @$pb.TagNumber(8)
  void clearHeartbeat() => $_clearField(8);
  @$pb.TagNumber(8)
  HeartBeat ensureHeartbeat() => $_ensure(7);
}

enum ConnectResponse_Payload {
  handshakeAck,
  subscribe,
  unsubscribe,
  error,
  executeCommand,
  notSet
}

class ConnectResponse extends $pb.GeneratedMessage {
  factory ConnectResponse({
    $core.String? messageId,
    $2.Timestamp? sentAt,
    HandshakeAck? handshakeAck,
    SubscribeDevice? subscribe,
    UnsubscribeDevice? unsubscribe,
    GatewayError? error,
    $4.DeviceCommand? executeCommand,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (sentAt != null) result.sentAt = sentAt;
    if (handshakeAck != null) result.handshakeAck = handshakeAck;
    if (subscribe != null) result.subscribe = subscribe;
    if (unsubscribe != null) result.unsubscribe = unsubscribe;
    if (error != null) result.error = error;
    if (executeCommand != null) result.executeCommand = executeCommand;
    return result;
  }

  ConnectResponse._();

  factory ConnectResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConnectResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ConnectResponse_Payload>
      _ConnectResponse_PayloadByTag = {
    3: ConnectResponse_Payload.handshakeAck,
    5: ConnectResponse_Payload.subscribe,
    6: ConnectResponse_Payload.unsubscribe,
    7: ConnectResponse_Payload.error,
    8: ConnectResponse_Payload.executeCommand,
    0: ConnectResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConnectResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 5, 6, 7, 8])
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..aOM<$2.Timestamp>(2, _omitFieldNames ? '' : 'sentAt',
        subBuilder: $2.Timestamp.create)
    ..aOM<HandshakeAck>(3, _omitFieldNames ? '' : 'handshakeAck',
        subBuilder: HandshakeAck.create)
    ..aOM<SubscribeDevice>(5, _omitFieldNames ? '' : 'subscribe',
        subBuilder: SubscribeDevice.create)
    ..aOM<UnsubscribeDevice>(6, _omitFieldNames ? '' : 'unsubscribe',
        subBuilder: UnsubscribeDevice.create)
    ..aOM<GatewayError>(7, _omitFieldNames ? '' : 'error',
        subBuilder: GatewayError.create)
    ..aOM<$4.DeviceCommand>(8, _omitFieldNames ? '' : 'executeCommand',
        subBuilder: $4.DeviceCommand.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectResponse copyWith(void Function(ConnectResponse) updates) =>
      super.copyWith((message) => updates(message as ConnectResponse))
          as ConnectResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectResponse create() => ConnectResponse._();
  @$core.override
  ConnectResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConnectResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConnectResponse>(create);
  static ConnectResponse? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  ConnectResponse_Payload whichPayload() =>
      _ConnectResponse_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get messageId => $_getSZ(0);
  @$pb.TagNumber(1)
  set messageId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessageId() => $_clearField(1);

  @$pb.TagNumber(2)
  $2.Timestamp get sentAt => $_getN(1);
  @$pb.TagNumber(2)
  set sentAt($2.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSentAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSentAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.Timestamp ensureSentAt() => $_ensure(1);

  @$pb.TagNumber(3)
  HandshakeAck get handshakeAck => $_getN(2);
  @$pb.TagNumber(3)
  set handshakeAck(HandshakeAck value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasHandshakeAck() => $_has(2);
  @$pb.TagNumber(3)
  void clearHandshakeAck() => $_clearField(3);
  @$pb.TagNumber(3)
  HandshakeAck ensureHandshakeAck() => $_ensure(2);

  @$pb.TagNumber(5)
  SubscribeDevice get subscribe => $_getN(3);
  @$pb.TagNumber(5)
  set subscribe(SubscribeDevice value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSubscribe() => $_has(3);
  @$pb.TagNumber(5)
  void clearSubscribe() => $_clearField(5);
  @$pb.TagNumber(5)
  SubscribeDevice ensureSubscribe() => $_ensure(3);

  @$pb.TagNumber(6)
  UnsubscribeDevice get unsubscribe => $_getN(4);
  @$pb.TagNumber(6)
  set unsubscribe(UnsubscribeDevice value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasUnsubscribe() => $_has(4);
  @$pb.TagNumber(6)
  void clearUnsubscribe() => $_clearField(6);
  @$pb.TagNumber(6)
  UnsubscribeDevice ensureUnsubscribe() => $_ensure(4);

  @$pb.TagNumber(7)
  GatewayError get error => $_getN(5);
  @$pb.TagNumber(7)
  set error(GatewayError value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasError() => $_has(5);
  @$pb.TagNumber(7)
  void clearError() => $_clearField(7);
  @$pb.TagNumber(7)
  GatewayError ensureError() => $_ensure(5);

  @$pb.TagNumber(8)
  $4.DeviceCommand get executeCommand => $_getN(6);
  @$pb.TagNumber(8)
  set executeCommand($4.DeviceCommand value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasExecuteCommand() => $_has(6);
  @$pb.TagNumber(8)
  void clearExecuteCommand() => $_clearField(8);
  @$pb.TagNumber(8)
  $4.DeviceCommand ensureExecuteCommand() => $_ensure(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
