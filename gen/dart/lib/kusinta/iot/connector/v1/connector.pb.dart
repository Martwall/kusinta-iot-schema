// This is a generated file - do not edit.
//
// Generated from kusinta/iot/connector/v1/connector.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $2;
import '../../common/v1/types.pbenum.dart' as $6;
import '../../device/v1/device.pb.dart' as $1;
import '../../device/v1/device_event.pb.dart' as $4;
import '../../device/v1/property_update.pb.dart' as $3;
import '../../identity/v1/identity.pb.dart' as $0;
import '../../webrtc/v1/command.pb.dart' as $5;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class ConnectorInfo extends $pb.GeneratedMessage {
  factory ConnectorInfo({
    $0.ConnectorId? connectorId,
    $core.String? displayName,
    $core.String? version,
    $6.ConnectorTransport? transport,
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
    ..e<$6.ConnectorTransport>(
        4, _omitFieldNames ? '' : 'transport', $pb.PbFieldType.OE,
        defaultOrMaker: $6.ConnectorTransport.CONNECTOR_TRANSPORT_UNSPECIFIED,
        valueOf: $6.ConnectorTransport.valueOf,
        enumValues: $6.ConnectorTransport.values)
    ..aOS(5, _omitFieldNames ? '' : 'endpoint')
    ..p<$core.int>(
        6, _omitFieldNames ? '' : 'supportedDeviceTypeIds', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorInfo clone() => ConnectorInfo()..mergeFromMessage(this);
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
  static $pb.PbList<ConnectorInfo> createRepeated() =>
      $pb.PbList<ConnectorInfo>();
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
  $6.ConnectorTransport get transport => $_getN(3);
  @$pb.TagNumber(4)
  set transport($6.ConnectorTransport value) => $_setField(4, value);
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
    $core.Iterable<$1.Device>? knownDevices,
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
    ..pc<$1.Device>(
        2, _omitFieldNames ? '' : 'knownDevices', $pb.PbFieldType.PM,
        subBuilder: $1.Device.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorHandshake clone() => ConnectorHandshake()..mergeFromMessage(this);
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
  static $pb.PbList<ConnectorHandshake> createRepeated() =>
      $pb.PbList<ConnectorHandshake>();
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
  $pb.PbList<$1.Device> get knownDevices => $_getList(1);
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
  HandshakeAck clone() => HandshakeAck()..mergeFromMessage(this);
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
  static $pb.PbList<HandshakeAck> createRepeated() =>
      $pb.PbList<HandshakeAck>();
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

/// A device the connector has found. Carries the full Device, not just its descriptor,
/// because a device's endpoints are what say which Matter device types it presents — and
/// without them the gateway cannot resolve any PropertyUpdate the device goes on to send.
///
/// Properties may be unset on every endpoint; that means the device exists and has
/// reported nothing yet, which is the normal state at announcement.
class DeviceAnnouncement extends $pb.GeneratedMessage {
  factory DeviceAnnouncement({
    $1.Device? device,
  }) {
    final result = create();
    if (device != null) result.device = device;
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
    ..aOM<$1.Device>(2, _omitFieldNames ? '' : 'device',
        subBuilder: $1.Device.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAnnouncement clone() => DeviceAnnouncement()..mergeFromMessage(this);
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
  static $pb.PbList<DeviceAnnouncement> createRepeated() =>
      $pb.PbList<DeviceAnnouncement>();
  @$core.pragma('dart2js:noInline')
  static DeviceAnnouncement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceAnnouncement>(create);
  static DeviceAnnouncement? _defaultInstance;

  @$pb.TagNumber(2)
  $1.Device get device => $_getN(0);
  @$pb.TagNumber(2)
  set device($1.Device value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDevice() => $_has(0);
  @$pb.TagNumber(2)
  void clearDevice() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Device ensureDevice() => $_ensure(0);
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
  DeviceRemoval clone() => DeviceRemoval()..mergeFromMessage(this);
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
  static $pb.PbList<DeviceRemoval> createRepeated() =>
      $pb.PbList<DeviceRemoval>();
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
  HeartBeat clone() => HeartBeat()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeartBeat copyWith(void Function(HeartBeat) updates) =>
      super.copyWith((message) => updates(message as HeartBeat)) as HeartBeat;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeartBeat create() => HeartBeat._();
  @$core.override
  HeartBeat createEmptyInstance() => create();
  static $pb.PbList<HeartBeat> createRepeated() => $pb.PbList<HeartBeat>();
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
  SubscribeDevice clone() => SubscribeDevice()..mergeFromMessage(this);
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
  static $pb.PbList<SubscribeDevice> createRepeated() =>
      $pb.PbList<SubscribeDevice>();
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
  UnsubscribeDevice clone() => UnsubscribeDevice()..mergeFromMessage(this);
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
  static $pb.PbList<UnsubscribeDevice> createRepeated() =>
      $pb.PbList<UnsubscribeDevice>();
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
    $core.String? requestId,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    if (requestId != null) result.requestId = requestId;
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
    ..aOS(3, _omitFieldNames ? '' : 'requestId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayError clone() => GatewayError()..mergeFromMessage(this);
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
  static $pb.PbList<GatewayError> createRepeated() =>
      $pb.PbList<GatewayError>();
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
  $core.String get requestId => $_getSZ(2);
  @$pb.TagNumber(3)
  set requestId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRequestId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRequestId() => $_clearField(3);
}

/// A connector's answer to an executed command OR attribute write. One message for both:
/// the two operations differ in what they do to a device, not in how a connector reports
/// having done it, and request_id says which request this answers either way.
class ConnectorCommandResult extends $pb.GeneratedMessage {
  factory ConnectorCommandResult({
    $core.String? requestId,
    $core.bool? success,
    GatewayError? error,
    $2.Timestamp? completedAt,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (success != null) result.success = success;
    if (error != null) result.error = error;
    if (completedAt != null) result.completedAt = completedAt;
    return result;
  }

  ConnectorCommandResult._();

  factory ConnectorCommandResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConnectorCommandResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConnectorCommandResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..aOB(2, _omitFieldNames ? '' : 'success')
    ..aOM<GatewayError>(3, _omitFieldNames ? '' : 'error',
        subBuilder: GatewayError.create)
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'completedAt',
        subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorCommandResult clone() =>
      ConnectorCommandResult()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConnectorCommandResult copyWith(
          void Function(ConnectorCommandResult) updates) =>
      super.copyWith((message) => updates(message as ConnectorCommandResult))
          as ConnectorCommandResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConnectorCommandResult create() => ConnectorCommandResult._();
  @$core.override
  ConnectorCommandResult createEmptyInstance() => create();
  static $pb.PbList<ConnectorCommandResult> createRepeated() =>
      $pb.PbList<ConnectorCommandResult>();
  @$core.pragma('dart2js:noInline')
  static ConnectorCommandResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConnectorCommandResult>(create);
  static ConnectorCommandResult? _defaultInstance;

  /// Was command_id. Renamed with webrtc.v1.DeviceCommand.request_id, which it mirrors, and
  /// because it now correlates writes as well as commands.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

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

enum SessionRequest_Payload {
  handshake,
  propertyUpdate,
  deviceAnnounced,
  deviceRemoved,
  commandResult,
  heartbeat,
  deviceEvents,
  notSet
}

class SessionRequest extends $pb.GeneratedMessage {
  factory SessionRequest({
    $core.String? messageId,
    $2.Timestamp? sentAt,
    ConnectorHandshake? handshake,
    $3.PropertyUpdateBatch? propertyUpdate,
    DeviceAnnouncement? deviceAnnounced,
    DeviceRemoval? deviceRemoved,
    ConnectorCommandResult? commandResult,
    HeartBeat? heartbeat,
    $4.DeviceEventBatch? deviceEvents,
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
    if (deviceEvents != null) result.deviceEvents = deviceEvents;
    return result;
  }

  SessionRequest._();

  factory SessionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SessionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SessionRequest_Payload>
      _SessionRequest_PayloadByTag = {
    3: SessionRequest_Payload.handshake,
    4: SessionRequest_Payload.propertyUpdate,
    5: SessionRequest_Payload.deviceAnnounced,
    6: SessionRequest_Payload.deviceRemoved,
    7: SessionRequest_Payload.commandResult,
    8: SessionRequest_Payload.heartbeat,
    9: SessionRequest_Payload.deviceEvents,
    0: SessionRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SessionRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8, 9])
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
    ..aOM<ConnectorCommandResult>(7, _omitFieldNames ? '' : 'commandResult',
        subBuilder: ConnectorCommandResult.create)
    ..aOM<HeartBeat>(8, _omitFieldNames ? '' : 'heartbeat',
        subBuilder: HeartBeat.create)
    ..aOM<$4.DeviceEventBatch>(9, _omitFieldNames ? '' : 'deviceEvents',
        subBuilder: $4.DeviceEventBatch.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SessionRequest clone() => SessionRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SessionRequest copyWith(void Function(SessionRequest) updates) =>
      super.copyWith((message) => updates(message as SessionRequest))
          as SessionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionRequest create() => SessionRequest._();
  @$core.override
  SessionRequest createEmptyInstance() => create();
  static $pb.PbList<SessionRequest> createRepeated() =>
      $pb.PbList<SessionRequest>();
  @$core.pragma('dart2js:noInline')
  static SessionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SessionRequest>(create);
  static SessionRequest? _defaultInstance;

  SessionRequest_Payload whichPayload() =>
      _SessionRequest_PayloadByTag[$_whichOneof(0)]!;
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
  ConnectorCommandResult get commandResult => $_getN(6);
  @$pb.TagNumber(7)
  set commandResult(ConnectorCommandResult value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCommandResult() => $_has(6);
  @$pb.TagNumber(7)
  void clearCommandResult() => $_clearField(7);
  @$pb.TagNumber(7)
  ConnectorCommandResult ensureCommandResult() => $_ensure(6);

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

  @$pb.TagNumber(9)
  $4.DeviceEventBatch get deviceEvents => $_getN(8);
  @$pb.TagNumber(9)
  set deviceEvents($4.DeviceEventBatch value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasDeviceEvents() => $_has(8);
  @$pb.TagNumber(9)
  void clearDeviceEvents() => $_clearField(9);
  @$pb.TagNumber(9)
  $4.DeviceEventBatch ensureDeviceEvents() => $_ensure(8);
}

enum SessionResponse_Payload {
  handshakeAck,
  subscribe,
  unsubscribe,
  error,
  executeCommand,
  executeAttributeWrite,
  notSet
}

class SessionResponse extends $pb.GeneratedMessage {
  factory SessionResponse({
    $core.String? messageId,
    $2.Timestamp? sentAt,
    HandshakeAck? handshakeAck,
    SubscribeDevice? subscribe,
    UnsubscribeDevice? unsubscribe,
    GatewayError? error,
    $5.DeviceCommand? executeCommand,
    $5.AttributeWriteRequest? executeAttributeWrite,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (sentAt != null) result.sentAt = sentAt;
    if (handshakeAck != null) result.handshakeAck = handshakeAck;
    if (subscribe != null) result.subscribe = subscribe;
    if (unsubscribe != null) result.unsubscribe = unsubscribe;
    if (error != null) result.error = error;
    if (executeCommand != null) result.executeCommand = executeCommand;
    if (executeAttributeWrite != null)
      result.executeAttributeWrite = executeAttributeWrite;
    return result;
  }

  SessionResponse._();

  factory SessionResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SessionResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SessionResponse_Payload>
      _SessionResponse_PayloadByTag = {
    3: SessionResponse_Payload.handshakeAck,
    5: SessionResponse_Payload.subscribe,
    6: SessionResponse_Payload.unsubscribe,
    7: SessionResponse_Payload.error,
    8: SessionResponse_Payload.executeCommand,
    9: SessionResponse_Payload.executeAttributeWrite,
    0: SessionResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SessionResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.connector.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 5, 6, 7, 8, 9])
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
    ..aOM<$5.DeviceCommand>(8, _omitFieldNames ? '' : 'executeCommand',
        subBuilder: $5.DeviceCommand.create)
    ..aOM<$5.AttributeWriteRequest>(
        9, _omitFieldNames ? '' : 'executeAttributeWrite',
        subBuilder: $5.AttributeWriteRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SessionResponse clone() => SessionResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SessionResponse copyWith(void Function(SessionResponse) updates) =>
      super.copyWith((message) => updates(message as SessionResponse))
          as SessionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SessionResponse create() => SessionResponse._();
  @$core.override
  SessionResponse createEmptyInstance() => create();
  static $pb.PbList<SessionResponse> createRepeated() =>
      $pb.PbList<SessionResponse>();
  @$core.pragma('dart2js:noInline')
  static SessionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SessionResponse>(create);
  static SessionResponse? _defaultInstance;

  SessionResponse_Payload whichPayload() =>
      _SessionResponse_PayloadByTag[$_whichOneof(0)]!;
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
  $5.DeviceCommand get executeCommand => $_getN(6);
  @$pb.TagNumber(8)
  set executeCommand($5.DeviceCommand value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasExecuteCommand() => $_has(6);
  @$pb.TagNumber(8)
  void clearExecuteCommand() => $_clearField(8);
  @$pb.TagNumber(8)
  $5.DeviceCommand ensureExecuteCommand() => $_ensure(6);

  /// The connector-leg half of PERMISSION_ACTION_WRITE. A sibling case rather than another
  /// meaning overloaded onto execute_command, which is the mistake this replaces.
  @$pb.TagNumber(9)
  $5.AttributeWriteRequest get executeAttributeWrite => $_getN(7);
  @$pb.TagNumber(9)
  set executeAttributeWrite($5.AttributeWriteRequest value) =>
      $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasExecuteAttributeWrite() => $_has(7);
  @$pb.TagNumber(9)
  void clearExecuteAttributeWrite() => $_clearField(9);
  @$pb.TagNumber(9)
  $5.AttributeWriteRequest ensureExecuteAttributeWrite() => $_ensure(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
