// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/envelope.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $1;

import '../../identity/v1/identity.pb.dart' as $0;
import 'command.pb.dart' as $4;
import 'device_state.pb.dart' as $2;
import 'permission_push.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Ping extends $pb.GeneratedMessage {
  factory Ping() => create();

  Ping._();

  factory Ping.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Ping.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Ping',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Ping clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Ping copyWith(void Function(Ping) updates) =>
      super.copyWith((message) => updates(message as Ping)) as Ping;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ping create() => Ping._();
  @$core.override
  Ping createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Ping getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ping>(create);
  static Ping? _defaultInstance;
}

class Pong extends $pb.GeneratedMessage {
  factory Pong() => create();

  Pong._();

  factory Pong.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Pong.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Pong',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pong clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pong copyWith(void Function(Pong) updates) =>
      super.copyWith((message) => updates(message as Pong)) as Pong;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pong create() => Pong._();
  @$core.override
  Pong createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Pong getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pong>(create);
  static Pong? _defaultInstance;
}

class HandshakeRejected extends $pb.GeneratedMessage {
  factory HandshakeRejected({
    $core.String? reason,
  }) {
    final result = create();
    if (reason != null) result.reason = reason;
    return result;
  }

  HandshakeRejected._();

  factory HandshakeRejected.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HandshakeRejected.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HandshakeRejected',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HandshakeRejected clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HandshakeRejected copyWith(void Function(HandshakeRejected) updates) =>
      super.copyWith((message) => updates(message as HandshakeRejected))
          as HandshakeRejected;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HandshakeRejected create() => HandshakeRejected._();
  @$core.override
  HandshakeRejected createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HandshakeRejected getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HandshakeRejected>(create);
  static HandshakeRejected? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get reason => $_getSZ(0);
  @$pb.TagNumber(1)
  set reason($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => $_clearField(1);
}

/// AppHandshake must be the first message sent by the Flutter app on the data channel.
/// The gateway validates the JWT locally using the mykusinta-api-server public key,
/// checks that gateway_id in the JWT matches this gateway, then extracts the role.
class AppHandshake extends $pb.GeneratedMessage {
  factory AppHandshake({
    $core.String? jwt,
    $core.Iterable<$0.DeviceId>? subscribeDeviceIds,
  }) {
    final result = create();
    if (jwt != null) result.jwt = jwt;
    if (subscribeDeviceIds != null)
      result.subscribeDeviceIds.addAll(subscribeDeviceIds);
    return result;
  }

  AppHandshake._();

  factory AppHandshake.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppHandshake.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppHandshake',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'jwt')
    ..pPM<$0.DeviceId>(2, _omitFieldNames ? '' : 'subscribeDeviceIds',
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppHandshake clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppHandshake copyWith(void Function(AppHandshake) updates) =>
      super.copyWith((message) => updates(message as AppHandshake))
          as AppHandshake;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppHandshake create() => AppHandshake._();
  @$core.override
  AppHandshake createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppHandshake getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppHandshake>(create);
  static AppHandshake? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jwt => $_getSZ(0);
  @$pb.TagNumber(1)
  set jwt($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasJwt() => $_has(0);
  @$pb.TagNumber(1)
  void clearJwt() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.DeviceId> get subscribeDeviceIds => $_getList(1);
}

class PropertyReadRequest extends $pb.GeneratedMessage {
  factory PropertyReadRequest({
    $0.DeviceId? deviceId,
    $core.String? attributeName,
    $core.String? clusterIdHex,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (attributeName != null) result.attributeName = attributeName;
    if (clusterIdHex != null) result.clusterIdHex = clusterIdHex;
    return result;
  }

  PropertyReadRequest._();

  factory PropertyReadRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PropertyReadRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PropertyReadRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOS(2, _omitFieldNames ? '' : 'attributeName')
    ..aOS(3, _omitFieldNames ? '' : 'clusterIdHex')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyReadRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyReadRequest copyWith(void Function(PropertyReadRequest) updates) =>
      super.copyWith((message) => updates(message as PropertyReadRequest))
          as PropertyReadRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyReadRequest create() => PropertyReadRequest._();
  @$core.override
  PropertyReadRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PropertyReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PropertyReadRequest>(create);
  static PropertyReadRequest? _defaultInstance;

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
  $core.String get attributeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set attributeName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAttributeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAttributeName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get clusterIdHex => $_getSZ(2);
  @$pb.TagNumber(3)
  set clusterIdHex($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasClusterIdHex() => $_has(2);
  @$pb.TagNumber(3)
  void clearClusterIdHex() => $_clearField(3);
}

enum GatewayMessage_Payload {
  stateSnapshot,
  propertyEvent,
  permissionUpdate,
  commandResult,
  error,
  pong,
  handshakeRejected,
  notSet
}

/// GatewayMessage: gateway → Flutter app
class GatewayMessage extends $pb.GeneratedMessage {
  factory GatewayMessage({
    $core.String? messageId,
    $1.Timestamp? sentAt,
    $2.DeviceStateSnapshot? stateSnapshot,
    $2.DevicePropertyEvent? propertyEvent,
    $3.LivePermissionUpdate? permissionUpdate,
    $4.CommandResult? commandResult,
    $core.String? error,
    Pong? pong,
    HandshakeRejected? handshakeRejected,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (sentAt != null) result.sentAt = sentAt;
    if (stateSnapshot != null) result.stateSnapshot = stateSnapshot;
    if (propertyEvent != null) result.propertyEvent = propertyEvent;
    if (permissionUpdate != null) result.permissionUpdate = permissionUpdate;
    if (commandResult != null) result.commandResult = commandResult;
    if (error != null) result.error = error;
    if (pong != null) result.pong = pong;
    if (handshakeRejected != null) result.handshakeRejected = handshakeRejected;
    return result;
  }

  GatewayMessage._();

  factory GatewayMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GatewayMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, GatewayMessage_Payload>
      _GatewayMessage_PayloadByTag = {
    3: GatewayMessage_Payload.stateSnapshot,
    4: GatewayMessage_Payload.propertyEvent,
    5: GatewayMessage_Payload.permissionUpdate,
    6: GatewayMessage_Payload.commandResult,
    7: GatewayMessage_Payload.error,
    8: GatewayMessage_Payload.pong,
    9: GatewayMessage_Payload.handshakeRejected,
    0: GatewayMessage_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8, 9])
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'sentAt',
        subBuilder: $1.Timestamp.create)
    ..aOM<$2.DeviceStateSnapshot>(3, _omitFieldNames ? '' : 'stateSnapshot',
        subBuilder: $2.DeviceStateSnapshot.create)
    ..aOM<$2.DevicePropertyEvent>(4, _omitFieldNames ? '' : 'propertyEvent',
        subBuilder: $2.DevicePropertyEvent.create)
    ..aOM<$3.LivePermissionUpdate>(5, _omitFieldNames ? '' : 'permissionUpdate',
        subBuilder: $3.LivePermissionUpdate.create)
    ..aOM<$4.CommandResult>(6, _omitFieldNames ? '' : 'commandResult',
        subBuilder: $4.CommandResult.create)
    ..aOS(7, _omitFieldNames ? '' : 'error')
    ..aOM<Pong>(8, _omitFieldNames ? '' : 'pong', subBuilder: Pong.create)
    ..aOM<HandshakeRejected>(9, _omitFieldNames ? '' : 'handshakeRejected',
        subBuilder: HandshakeRejected.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayMessage copyWith(void Function(GatewayMessage) updates) =>
      super.copyWith((message) => updates(message as GatewayMessage))
          as GatewayMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GatewayMessage create() => GatewayMessage._();
  @$core.override
  GatewayMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GatewayMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GatewayMessage>(create);
  static GatewayMessage? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  GatewayMessage_Payload whichPayload() =>
      _GatewayMessage_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
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
  $1.Timestamp get sentAt => $_getN(1);
  @$pb.TagNumber(2)
  set sentAt($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSentAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSentAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureSentAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.DeviceStateSnapshot get stateSnapshot => $_getN(2);
  @$pb.TagNumber(3)
  set stateSnapshot($2.DeviceStateSnapshot value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStateSnapshot() => $_has(2);
  @$pb.TagNumber(3)
  void clearStateSnapshot() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.DeviceStateSnapshot ensureStateSnapshot() => $_ensure(2);

  @$pb.TagNumber(4)
  $2.DevicePropertyEvent get propertyEvent => $_getN(3);
  @$pb.TagNumber(4)
  set propertyEvent($2.DevicePropertyEvent value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPropertyEvent() => $_has(3);
  @$pb.TagNumber(4)
  void clearPropertyEvent() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.DevicePropertyEvent ensurePropertyEvent() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.LivePermissionUpdate get permissionUpdate => $_getN(4);
  @$pb.TagNumber(5)
  set permissionUpdate($3.LivePermissionUpdate value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPermissionUpdate() => $_has(4);
  @$pb.TagNumber(5)
  void clearPermissionUpdate() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.LivePermissionUpdate ensurePermissionUpdate() => $_ensure(4);

  @$pb.TagNumber(6)
  $4.CommandResult get commandResult => $_getN(5);
  @$pb.TagNumber(6)
  set commandResult($4.CommandResult value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCommandResult() => $_has(5);
  @$pb.TagNumber(6)
  void clearCommandResult() => $_clearField(6);
  @$pb.TagNumber(6)
  $4.CommandResult ensureCommandResult() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get error => $_getSZ(6);
  @$pb.TagNumber(7)
  set error($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasError() => $_has(6);
  @$pb.TagNumber(7)
  void clearError() => $_clearField(7);

  @$pb.TagNumber(8)
  Pong get pong => $_getN(7);
  @$pb.TagNumber(8)
  set pong(Pong value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPong() => $_has(7);
  @$pb.TagNumber(8)
  void clearPong() => $_clearField(8);
  @$pb.TagNumber(8)
  Pong ensurePong() => $_ensure(7);

  @$pb.TagNumber(9)
  HandshakeRejected get handshakeRejected => $_getN(8);
  @$pb.TagNumber(9)
  set handshakeRejected(HandshakeRejected value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasHandshakeRejected() => $_has(8);
  @$pb.TagNumber(9)
  void clearHandshakeRejected() => $_clearField(9);
  @$pb.TagNumber(9)
  HandshakeRejected ensureHandshakeRejected() => $_ensure(8);
}

enum AppMessage_Payload { handshake, command, readRequest, ping, notSet }

/// AppMessage: Flutter app → gateway
class AppMessage extends $pb.GeneratedMessage {
  factory AppMessage({
    $core.String? messageId,
    $1.Timestamp? sentAt,
    AppHandshake? handshake,
    $4.DeviceCommand? command,
    PropertyReadRequest? readRequest,
    Ping? ping,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (sentAt != null) result.sentAt = sentAt;
    if (handshake != null) result.handshake = handshake;
    if (command != null) result.command = command;
    if (readRequest != null) result.readRequest = readRequest;
    if (ping != null) result.ping = ping;
    return result;
  }

  AppMessage._();

  factory AppMessage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppMessage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AppMessage_Payload>
      _AppMessage_PayloadByTag = {
    3: AppMessage_Payload.handshake,
    4: AppMessage_Payload.command,
    5: AppMessage_Payload.readRequest,
    6: AppMessage_Payload.ping,
    0: AppMessage_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'sentAt',
        subBuilder: $1.Timestamp.create)
    ..aOM<AppHandshake>(3, _omitFieldNames ? '' : 'handshake',
        subBuilder: AppHandshake.create)
    ..aOM<$4.DeviceCommand>(4, _omitFieldNames ? '' : 'command',
        subBuilder: $4.DeviceCommand.create)
    ..aOM<PropertyReadRequest>(5, _omitFieldNames ? '' : 'readRequest',
        subBuilder: PropertyReadRequest.create)
    ..aOM<Ping>(6, _omitFieldNames ? '' : 'ping', subBuilder: Ping.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppMessage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppMessage copyWith(void Function(AppMessage) updates) =>
      super.copyWith((message) => updates(message as AppMessage)) as AppMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppMessage create() => AppMessage._();
  @$core.override
  AppMessage createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AppMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppMessage>(create);
  static AppMessage? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  AppMessage_Payload whichPayload() =>
      _AppMessage_PayloadByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
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
  $1.Timestamp get sentAt => $_getN(1);
  @$pb.TagNumber(2)
  set sentAt($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSentAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSentAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureSentAt() => $_ensure(1);

  @$pb.TagNumber(3)
  AppHandshake get handshake => $_getN(2);
  @$pb.TagNumber(3)
  set handshake(AppHandshake value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasHandshake() => $_has(2);
  @$pb.TagNumber(3)
  void clearHandshake() => $_clearField(3);
  @$pb.TagNumber(3)
  AppHandshake ensureHandshake() => $_ensure(2);

  @$pb.TagNumber(4)
  $4.DeviceCommand get command => $_getN(3);
  @$pb.TagNumber(4)
  set command($4.DeviceCommand value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCommand() => $_has(3);
  @$pb.TagNumber(4)
  void clearCommand() => $_clearField(4);
  @$pb.TagNumber(4)
  $4.DeviceCommand ensureCommand() => $_ensure(3);

  @$pb.TagNumber(5)
  PropertyReadRequest get readRequest => $_getN(4);
  @$pb.TagNumber(5)
  set readRequest(PropertyReadRequest value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasReadRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearReadRequest() => $_clearField(5);
  @$pb.TagNumber(5)
  PropertyReadRequest ensureReadRequest() => $_ensure(4);

  @$pb.TagNumber(6)
  Ping get ping => $_getN(5);
  @$pb.TagNumber(6)
  set ping(Ping value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPing() => $_has(5);
  @$pb.TagNumber(6)
  void clearPing() => $_clearField(6);
  @$pb.TagNumber(6)
  Ping ensurePing() => $_ensure(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
