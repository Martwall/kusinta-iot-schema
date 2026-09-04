// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/envelope.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $6;
import '../../access/v1/acl.pb.dart' as $1;
import '../../common/v1/pairing.pb.dart' as $5;
import '../../common/v1/types.pbenum.dart' as $11;
import '../../device/v1/device_event.pb.dart' as $10;
import '../../identity/v1/identity.pb.dart' as $0;
import '../../link/v1/link.pb.dart' as $4;
import '../../space/v1/space.pb.dart' as $2;
import 'command.pb.dart' as $9;
import 'device_state.pb.dart' as $7;
import 'envelope.pbenum.dart';
import 'management.pb.dart' as $3;
import 'permission_push.pb.dart' as $8;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'envelope.pbenum.dart';

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
  Ping clone() => Ping()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Ping copyWith(void Function(Ping) updates) =>
      super.copyWith((message) => updates(message as Ping)) as Ping;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ping create() => Ping._();
  @$core.override
  Ping createEmptyInstance() => create();
  static $pb.PbList<Ping> createRepeated() => $pb.PbList<Ping>();
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
  Pong clone() => Pong()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pong copyWith(void Function(Pong) updates) =>
      super.copyWith((message) => updates(message as Pong)) as Pong;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pong create() => Pong._();
  @$core.override
  Pong createEmptyInstance() => create();
  static $pb.PbList<Pong> createRepeated() => $pb.PbList<Pong>();
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
  HandshakeRejected clone() => HandshakeRejected()..mergeFromMessage(this);
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
  static $pb.PbList<HandshakeRejected> createRepeated() =>
      $pb.PbList<HandshakeRejected>();
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

/// AppHandshake must be the first message sent by the app on the data channel.
/// The gateway validates the JWT locally using the api-server's public key,
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
    ..pc<$0.DeviceId>(
        2, _omitFieldNames ? '' : 'subscribeDeviceIds', $pb.PbFieldType.PM,
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppHandshake clone() => AppHandshake()..mergeFromMessage(this);
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
  static $pb.PbList<AppHandshake> createRepeated() =>
      $pb.PbList<AppHandshake>();
  @$core.pragma('dart2js:noInline')
  static AppHandshake getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppHandshake>(create);
  static AppHandshake? _defaultInstance;

  /// Signed compact JWS. Its payload claims are documented by AppTokenClaims
  /// in app_token.proto — the shared contract between the api-server (issuer)
  /// and the gateway (validator).
  @$pb.TagNumber(1)
  $core.String get jwt => $_getSZ(0);
  @$pb.TagNumber(1)
  set jwt($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasJwt() => $_has(0);
  @$pb.TagNumber(1)
  void clearJwt() => $_clearField(1);

  /// Initial interest set — an optimisation that saves one round trip, equivalent to
  /// sending SubscribeDevices immediately after the handshake. Interest only: naming
  /// an id here does not entitle the app to it, and ids the user may not see are
  /// refused in the SubscriptionAck that follows. Not the only mechanism — the set is
  /// revisable mid-session via AppMessage.subscribe / .unsubscribe.
  @$pb.TagNumber(2)
  $pb.PbList<$0.DeviceId> get subscribeDeviceIds => $_getList(1);
}

/// Adds device_ids to what the app wants streamed. Interest, never entitlement:
/// the gateway intersects the request with what the user is permitted to see and
/// reports what it declined in SubscriptionAck.refused. Additive — ids already in
/// the set are a no-op, so a retry after a dropped ack is safe.
class SubscribeDevices extends $pb.GeneratedMessage {
  factory SubscribeDevices({
    $core.Iterable<$0.DeviceId>? deviceIds,
  }) {
    final result = create();
    if (deviceIds != null) result.deviceIds.addAll(deviceIds);
    return result;
  }

  SubscribeDevices._();

  factory SubscribeDevices.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SubscribeDevices.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SubscribeDevices',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..pc<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceIds', $pb.PbFieldType.PM,
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubscribeDevices clone() => SubscribeDevices()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubscribeDevices copyWith(void Function(SubscribeDevices) updates) =>
      super.copyWith((message) => updates(message as SubscribeDevices))
          as SubscribeDevices;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscribeDevices create() => SubscribeDevices._();
  @$core.override
  SubscribeDevices createEmptyInstance() => create();
  static $pb.PbList<SubscribeDevices> createRepeated() =>
      $pb.PbList<SubscribeDevices>();
  @$core.pragma('dart2js:noInline')
  static SubscribeDevices getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubscribeDevices>(create);
  static SubscribeDevices? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.DeviceId> get deviceIds => $_getList(0);
}

/// Removes device_ids from what the app wants streamed. Removing an id the app is
/// not subscribed to is a no-op, not an error.
class UnsubscribeDevices extends $pb.GeneratedMessage {
  factory UnsubscribeDevices({
    $core.Iterable<$0.DeviceId>? deviceIds,
  }) {
    final result = create();
    if (deviceIds != null) result.deviceIds.addAll(deviceIds);
    return result;
  }

  UnsubscribeDevices._();

  factory UnsubscribeDevices.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UnsubscribeDevices.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UnsubscribeDevices',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..pc<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceIds', $pb.PbFieldType.PM,
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnsubscribeDevices clone() => UnsubscribeDevices()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UnsubscribeDevices copyWith(void Function(UnsubscribeDevices) updates) =>
      super.copyWith((message) => updates(message as UnsubscribeDevices))
          as UnsubscribeDevices;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UnsubscribeDevices create() => UnsubscribeDevices._();
  @$core.override
  UnsubscribeDevices createEmptyInstance() => create();
  static $pb.PbList<UnsubscribeDevices> createRepeated() =>
      $pb.PbList<UnsubscribeDevices>();
  @$core.pragma('dart2js:noInline')
  static UnsubscribeDevices getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UnsubscribeDevices>(create);
  static UnsubscribeDevices? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.DeviceId> get deviceIds => $_getList(0);
}

/// A device the gateway declined to add to the interest set. Ids the gateway does
/// not know are refused as NOT_ENTITLED rather than a distinct not-found code, so
/// the ack cannot be used to enumerate devices the user may not see.
class RefusedSubscription extends $pb.GeneratedMessage {
  factory RefusedSubscription({
    $0.DeviceId? deviceId,
    GatewayErrorCode? code,
    $core.String? message,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    return result;
  }

  RefusedSubscription._();

  factory RefusedSubscription.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RefusedSubscription.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RefusedSubscription',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..e<GatewayErrorCode>(2, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OE,
        defaultOrMaker: GatewayErrorCode.GATEWAY_ERROR_CODE_UNSPECIFIED,
        valueOf: GatewayErrorCode.valueOf,
        enumValues: GatewayErrorCode.values)
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefusedSubscription clone() => RefusedSubscription()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefusedSubscription copyWith(void Function(RefusedSubscription) updates) =>
      super.copyWith((message) => updates(message as RefusedSubscription))
          as RefusedSubscription;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefusedSubscription create() => RefusedSubscription._();
  @$core.override
  RefusedSubscription createEmptyInstance() => create();
  static $pb.PbList<RefusedSubscription> createRepeated() =>
      $pb.PbList<RefusedSubscription>();
  @$core.pragma('dart2js:noInline')
  static RefusedSubscription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RefusedSubscription>(create);
  static RefusedSubscription? _defaultInstance;

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
  GatewayErrorCode get code => $_getN(1);
  @$pb.TagNumber(2)
  set code(GatewayErrorCode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => $_clearField(3);
}

/// Answer to SubscribeDevices / UnsubscribeDevices, gateway → app.
/// `subscribed` is the effective set after the change, not a delta: an app that
/// missed an ack or raced two requests re-syncs from it without reconnecting.
class SubscriptionAck extends $pb.GeneratedMessage {
  factory SubscriptionAck({
    $core.String? inReplyTo,
    $core.Iterable<$0.DeviceId>? subscribed,
    $core.Iterable<RefusedSubscription>? refused,
  }) {
    final result = create();
    if (inReplyTo != null) result.inReplyTo = inReplyTo;
    if (subscribed != null) result.subscribed.addAll(subscribed);
    if (refused != null) result.refused.addAll(refused);
    return result;
  }

  SubscriptionAck._();

  factory SubscriptionAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SubscriptionAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SubscriptionAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'inReplyTo')
    ..pc<$0.DeviceId>(
        2, _omitFieldNames ? '' : 'subscribed', $pb.PbFieldType.PM,
        subBuilder: $0.DeviceId.create)
    ..pc<RefusedSubscription>(
        3, _omitFieldNames ? '' : 'refused', $pb.PbFieldType.PM,
        subBuilder: RefusedSubscription.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubscriptionAck clone() => SubscriptionAck()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SubscriptionAck copyWith(void Function(SubscriptionAck) updates) =>
      super.copyWith((message) => updates(message as SubscriptionAck))
          as SubscriptionAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscriptionAck create() => SubscriptionAck._();
  @$core.override
  SubscriptionAck createEmptyInstance() => create();
  static $pb.PbList<SubscriptionAck> createRepeated() =>
      $pb.PbList<SubscriptionAck>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubscriptionAck>(create);
  static SubscriptionAck? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inReplyTo => $_getSZ(0);
  @$pb.TagNumber(1)
  set inReplyTo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInReplyTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInReplyTo() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.DeviceId> get subscribed => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<RefusedSubscription> get refused => $_getList(2);
}

/// Reads one attribute of one endpoint, on demand. The carrier for
/// PERMISSION_ACTION_READ.
///
/// Addressed by AttributeRef, the same type a write, a grant and a constraint use — so a
/// read, the write that changes the value, and the permission covering both name the
/// attribute identically.
class PropertyReadRequest extends $pb.GeneratedMessage {
  factory PropertyReadRequest({
    $0.DeviceId? deviceId,
    $1.AttributeRef? target,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (target != null) result.target = target;
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
    ..aOM<$1.AttributeRef>(7, _omitFieldNames ? '' : 'target',
        subBuilder: $1.AttributeRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyReadRequest clone() => PropertyReadRequest()..mergeFromMessage(this);
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
  static $pb.PbList<PropertyReadRequest> createRepeated() =>
      $pb.PbList<PropertyReadRequest>();
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

  @$pb.TagNumber(7)
  $1.AttributeRef get target => $_getN(1);
  @$pb.TagNumber(7)
  set target($1.AttributeRef value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(7)
  void clearTarget() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.AttributeRef ensureTarget() => $_ensure(1);
}

/// Session-level error, gateway → app. Mirrors connector.v1.GatewayError
/// on the connector leg; kept separate because the two legs have different
/// authorization semantics and this one has a closed code vocabulary.
class GatewayError extends $pb.GeneratedMessage {
  factory GatewayError({
    GatewayErrorCode? code,
    $core.String? message,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? metadata,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    if (metadata != null) result.metadata.addEntries(metadata);
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
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..e<GatewayErrorCode>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OE,
        defaultOrMaker: GatewayErrorCode.GATEWAY_ERROR_CODE_UNSPECIFIED,
        valueOf: GatewayErrorCode.valueOf,
        enumValues: GatewayErrorCode.values)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'metadata',
        entryClassName: 'GatewayError.MetadataEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('kusinta.iot.webrtc.v1'))
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
  GatewayErrorCode get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(GatewayErrorCode value) => $_setField(1, value);
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
  $pb.PbMap<$core.String, $core.String> get metadata => $_getMap(2);
}

enum ManagementResult_Result { error, space, spaceTree, ack, links, notSet }

/// Answer to a ManagementRequest, gateway → app. Lives here rather than beside the
/// requests in management.proto because it carries GatewayError, which is declared
/// in this file; the other direction would be an import cycle.
///
/// Exactly one result arrives per request, correlated by in_reply_to. A refusal is
/// an ordinary result, not a session-level error: a filing operation the caller may
/// not perform says so and the session continues. Targets the caller cannot reach
/// are refused as NOT_ENTITLED whether or not they exist, so no result here reveals
/// which spaces or devices are out there.
class ManagementResult extends $pb.GeneratedMessage {
  factory ManagementResult({
    $core.String? inReplyTo,
    GatewayError? error,
    $2.Space? space,
    $3.SpaceTree? spaceTree,
    $3.ManagementAck? ack,
    $4.DeviceLinkList? links,
  }) {
    final result = create();
    if (inReplyTo != null) result.inReplyTo = inReplyTo;
    if (error != null) result.error = error;
    if (space != null) result.space = space;
    if (spaceTree != null) result.spaceTree = spaceTree;
    if (ack != null) result.ack = ack;
    if (links != null) result.links = links;
    return result;
  }

  ManagementResult._();

  factory ManagementResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ManagementResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ManagementResult_Result>
      _ManagementResult_ResultByTag = {
    2: ManagementResult_Result.error,
    3: ManagementResult_Result.space,
    4: ManagementResult_Result.spaceTree,
    5: ManagementResult_Result.ack,
    6: ManagementResult_Result.links,
    0: ManagementResult_Result.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ManagementResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6])
    ..aOS(1, _omitFieldNames ? '' : 'inReplyTo')
    ..aOM<GatewayError>(2, _omitFieldNames ? '' : 'error',
        subBuilder: GatewayError.create)
    ..aOM<$2.Space>(3, _omitFieldNames ? '' : 'space',
        subBuilder: $2.Space.create)
    ..aOM<$3.SpaceTree>(4, _omitFieldNames ? '' : 'spaceTree',
        subBuilder: $3.SpaceTree.create)
    ..aOM<$3.ManagementAck>(5, _omitFieldNames ? '' : 'ack',
        subBuilder: $3.ManagementAck.create)
    ..aOM<$4.DeviceLinkList>(6, _omitFieldNames ? '' : 'links',
        subBuilder: $4.DeviceLinkList.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagementResult clone() => ManagementResult()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagementResult copyWith(void Function(ManagementResult) updates) =>
      super.copyWith((message) => updates(message as ManagementResult))
          as ManagementResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManagementResult create() => ManagementResult._();
  @$core.override
  ManagementResult createEmptyInstance() => create();
  static $pb.PbList<ManagementResult> createRepeated() =>
      $pb.PbList<ManagementResult>();
  @$core.pragma('dart2js:noInline')
  static ManagementResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ManagementResult>(create);
  static ManagementResult? _defaultInstance;

  ManagementResult_Result whichResult() =>
      _ManagementResult_ResultByTag[$_whichOneof(0)]!;
  void clearResult() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get inReplyTo => $_getSZ(0);
  @$pb.TagNumber(1)
  set inReplyTo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInReplyTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInReplyTo() => $_clearField(1);

  @$pb.TagNumber(2)
  GatewayError get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(GatewayError value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => $_clearField(2);
  @$pb.TagNumber(2)
  GatewayError ensureError() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Space get space => $_getN(2);
  @$pb.TagNumber(3)
  set space($2.Space value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSpace() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpace() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Space ensureSpace() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.SpaceTree get spaceTree => $_getN(3);
  @$pb.TagNumber(4)
  set spaceTree($3.SpaceTree value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSpaceTree() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpaceTree() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.SpaceTree ensureSpaceTree() => $_ensure(3);

  @$pb.TagNumber(5)
  $3.ManagementAck get ack => $_getN(4);
  @$pb.TagNumber(5)
  set ack($3.ManagementAck value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAck() => $_has(4);
  @$pb.TagNumber(5)
  void clearAck() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.ManagementAck ensureAck() => $_ensure(4);

  @$pb.TagNumber(6)
  $4.DeviceLinkList get links => $_getN(5);
  @$pb.TagNumber(6)
  set links($4.DeviceLinkList value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasLinks() => $_has(5);
  @$pb.TagNumber(6)
  void clearLinks() => $_clearField(6);
  @$pb.TagNumber(6)
  $4.DeviceLinkList ensureLinks() => $_ensure(5);
}

/// Asks the gateway to put a connector into pairing mode, so a device joined during the
/// window becomes the caller's rather than belonging to nobody.
///
/// A payload case of its own rather than a ManagementRequest. Those are gated on a target —
/// a space, a device — and that is the justification for keeping them behind one wrapper.
/// This one names no target: connector_id is optional, and unset means every connector, so
/// it is authorized against the caller's role and nothing else.
///
/// Answered twice, and the two answers say different things at different times.
/// PairingStarted reports whether the window opened; PairingFinished reports what came of
/// it, seconds or minutes later, once someone has pressed a button on hardware that may be
/// asleep or out of range.
class StartPairing extends $pb.GeneratedMessage {
  factory StartPairing({
    $0.ConnectorId? connectorId,
    $5.PairingWindow? window,
    $0.SpaceId? initialSpaceId,
    $11.DeviceOwnershipType? ownership,
  }) {
    final result = create();
    if (connectorId != null) result.connectorId = connectorId;
    if (window != null) result.window = window;
    if (initialSpaceId != null) result.initialSpaceId = initialSpaceId;
    if (ownership != null) result.ownership = ownership;
    return result;
  }

  StartPairing._();

  factory StartPairing.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StartPairing.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StartPairing',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.ConnectorId>(1, _omitFieldNames ? '' : 'connectorId',
        subBuilder: $0.ConnectorId.create)
    ..aOM<$5.PairingWindow>(2, _omitFieldNames ? '' : 'window',
        subBuilder: $5.PairingWindow.create)
    ..aOM<$0.SpaceId>(3, _omitFieldNames ? '' : 'initialSpaceId',
        subBuilder: $0.SpaceId.create)
    ..e<$11.DeviceOwnershipType>(
        4, _omitFieldNames ? '' : 'ownership', $pb.PbFieldType.OE,
        defaultOrMaker:
            $11.DeviceOwnershipType.DEVICE_OWNERSHIP_TYPE_UNSPECIFIED,
        valueOf: $11.DeviceOwnershipType.valueOf,
        enumValues: $11.DeviceOwnershipType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartPairing clone() => StartPairing()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StartPairing copyWith(void Function(StartPairing) updates) =>
      super.copyWith((message) => updates(message as StartPairing))
          as StartPairing;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StartPairing create() => StartPairing._();
  @$core.override
  StartPairing createEmptyInstance() => create();
  static $pb.PbList<StartPairing> createRepeated() =>
      $pb.PbList<StartPairing>();
  @$core.pragma('dart2js:noInline')
  static StartPairing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StartPairing>(create);
  static StartPairing? _defaultInstance;

  /// Which connector to open. Unset means every connector the gateway holds, which is the
  /// sensible default: a device picks its hub by radio range, and asking a user to choose is
  /// asking them to guess at something they cannot observe.
  ///
  /// Name one where the answer is not a guess — a device that will be linked to devices on a
  /// particular hub has to join that hub, because links are held by the hub that brokered
  /// them.
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

  /// How long, which device, how many. See PairingWindow.
  @$pb.TagNumber(2)
  $5.PairingWindow get window => $_getN(1);
  @$pb.TagNumber(2)
  set window($5.PairingWindow value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasWindow() => $_has(1);
  @$pb.TagNumber(2)
  void clearWindow() => $_clearField(2);
  @$pb.TagNumber(2)
  $5.PairingWindow ensureWindow() => $_ensure(1);

  /// Where to file the device once it arrives.
  ///
  /// Optional, and the two cases differ. A caller pairing a device of their own must name a
  /// space they reach, so it is theirs and placed on arrival rather than sitting unfiled and
  /// invisible to them. A caller commissioning for a building may leave it unset: a building
  /// is commissioned before its spaces are recorded, and an unfiled device is visible to the
  /// administrator, who is the person doing the pairing.
  @$pb.TagNumber(3)
  $0.SpaceId get initialSpaceId => $_getN(2);
  @$pb.TagNumber(3)
  set initialSpaceId($0.SpaceId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInitialSpaceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearInitialSpaceId() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.SpaceId ensureInitialSpaceId() => $_ensure(2);

  /// What the device should become. Unset lets the gateway decide from the caller's role,
  /// which is the reading that scales: someone commissioning fifty devices for a building
  /// should not come to own fifty devices because a field defaulted.
  ///
  /// The gateway refuses an ownership the caller may not confer, and never mints ownership
  /// for a third party — handing a device to someone else is a transfer, a separate operation
  /// with its own authority.
  @$pb.TagNumber(4)
  $11.DeviceOwnershipType get ownership => $_getN(3);
  @$pb.TagNumber(4)
  set ownership($11.DeviceOwnershipType value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOwnership() => $_has(3);
  @$pb.TagNumber(4)
  void clearOwnership() => $_clearField(4);
}

/// Whether the pairing window opened, gateway → app. The first of two answers to a
/// StartPairing.
class PairingStarted extends $pb.GeneratedMessage {
  factory PairingStarted({
    $core.String? inReplyTo,
    $6.Timestamp? expiresAt,
    $5.PairingErrorDetail? error,
  }) {
    final result = create();
    if (inReplyTo != null) result.inReplyTo = inReplyTo;
    if (expiresAt != null) result.expiresAt = expiresAt;
    if (error != null) result.error = error;
    return result;
  }

  PairingStarted._();

  factory PairingStarted.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PairingStarted.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PairingStarted',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'inReplyTo')
    ..aOM<$6.Timestamp>(2, _omitFieldNames ? '' : 'expiresAt',
        subBuilder: $6.Timestamp.create)
    ..aOM<$5.PairingErrorDetail>(3, _omitFieldNames ? '' : 'error',
        subBuilder: $5.PairingErrorDetail.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingStarted clone() => PairingStarted()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingStarted copyWith(void Function(PairingStarted) updates) =>
      super.copyWith((message) => updates(message as PairingStarted))
          as PairingStarted;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PairingStarted create() => PairingStarted._();
  @$core.override
  PairingStarted createEmptyInstance() => create();
  static $pb.PbList<PairingStarted> createRepeated() =>
      $pb.PbList<PairingStarted>();
  @$core.pragma('dart2js:noInline')
  static PairingStarted getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PairingStarted>(create);
  static PairingStarted? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inReplyTo => $_getSZ(0);
  @$pb.TagNumber(1)
  set inReplyTo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInReplyTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInReplyTo() => $_clearField(1);

  /// When the window closes. Present when it opened, and this is the value to count down
  /// from — not the duration that was asked for, which both the gateway and the connector
  /// clamp. A countdown run on the request rather than on this one disagrees with the hub.
  @$pb.TagNumber(2)
  $6.Timestamp get expiresAt => $_getN(1);
  @$pb.TagNumber(2)
  set expiresAt($6.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExpiresAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpiresAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $6.Timestamp ensureExpiresAt() => $_ensure(1);

  /// Why it did not open. Present instead of expires_at.
  @$pb.TagNumber(3)
  $5.PairingErrorDetail get error => $_getN(2);
  @$pb.TagNumber(3)
  set error($5.PairingErrorDetail value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => $_clearField(3);
  @$pb.TagNumber(3)
  $5.PairingErrorDetail ensureError() => $_ensure(2);
}

/// What the pairing window produced, gateway → app. The second and last answer, sent once
/// when the window closes.
///
/// One message per request, not per device: a batch window attributes several, and a client
/// given one message each has nothing telling it the window is over and no defined moment to
/// stop waiting. The devices are listed here; each also arrives as an ordinary DeviceAdded
/// as it appears, so a client may show them as they come and use this to finish.
///
/// An error and a non-empty device list are not exclusive. A batch of five that attributed
/// three and then expired reports both — three devices and NO_DEVICE_APPEARED — because
/// "some worked" and "the window ran out" are both true and a user needs to be told both.
class PairingFinished extends $pb.GeneratedMessage {
  factory PairingFinished({
    $core.String? inReplyTo,
    $core.Iterable<$0.DeviceId>? deviceIds,
    $5.PairingErrorDetail? error,
  }) {
    final result = create();
    if (inReplyTo != null) result.inReplyTo = inReplyTo;
    if (deviceIds != null) result.deviceIds.addAll(deviceIds);
    if (error != null) result.error = error;
    return result;
  }

  PairingFinished._();

  factory PairingFinished.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PairingFinished.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PairingFinished',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'inReplyTo')
    ..pc<$0.DeviceId>(2, _omitFieldNames ? '' : 'deviceIds', $pb.PbFieldType.PM,
        subBuilder: $0.DeviceId.create)
    ..aOM<$5.PairingErrorDetail>(3, _omitFieldNames ? '' : 'error',
        subBuilder: $5.PairingErrorDetail.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingFinished clone() => PairingFinished()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingFinished copyWith(void Function(PairingFinished) updates) =>
      super.copyWith((message) => updates(message as PairingFinished))
          as PairingFinished;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PairingFinished create() => PairingFinished._();
  @$core.override
  PairingFinished createEmptyInstance() => create();
  static $pb.PbList<PairingFinished> createRepeated() =>
      $pb.PbList<PairingFinished>();
  @$core.pragma('dart2js:noInline')
  static PairingFinished getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PairingFinished>(create);
  static PairingFinished? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inReplyTo => $_getSZ(0);
  @$pb.TagNumber(1)
  set inReplyTo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInReplyTo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInReplyTo() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$0.DeviceId> get deviceIds => $_getList(1);

  /// Why the window produced fewer devices than asked for, absent when it produced them all.
  /// Note this is not always a failure of the request: a window that simply expired unused
  /// ends here too, and is the ordinary result of a user changing their mind.
  @$pb.TagNumber(3)
  $5.PairingErrorDetail get error => $_getN(2);
  @$pb.TagNumber(3)
  set error($5.PairingErrorDetail value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => $_clearField(3);
  @$pb.TagNumber(3)
  $5.PairingErrorDetail ensureError() => $_ensure(2);
}

/// GatewayMessage: gateway → app
/// A link between two devices has changed, gateway to app.
///
/// Sent without being asked for, like device_added, and for the same reason: a link's
/// state is not settled when it is made. A hub accepting a link is not the two devices
/// honouring it, and a link that was carrying stops when its sender goes quiet — so the
/// interesting transitions all happen long after the request that created it was
/// answered. Without this an app can only learn by listing every link again and
/// diffing, which means a room that has quietly stopped following its wall thermostat
/// looks correct until somebody reloads.
///
/// Apply as an upsert keyed on link.link_id, never as an insert: the same link is sent
/// again whenever its state moves.
///
/// Sent only for links the recipient is entitled to see. An unfiltered one would say
/// which devices exist and how they are arranged, to somebody entitled to neither.
class LinkChanged extends $pb.GeneratedMessage {
  factory LinkChanged({
    $4.DeviceLink? link,
    $core.bool? removed,
  }) {
    final result = create();
    if (link != null) result.link = link;
    if (removed != null) result.removed = removed;
    return result;
  }

  LinkChanged._();

  factory LinkChanged.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinkChanged.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinkChanged',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$4.DeviceLink>(1, _omitFieldNames ? '' : 'link',
        subBuilder: $4.DeviceLink.create)
    ..aOB(2, _omitFieldNames ? '' : 'removed')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkChanged clone() => LinkChanged()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinkChanged copyWith(void Function(LinkChanged) updates) =>
      super.copyWith((message) => updates(message as LinkChanged))
          as LinkChanged;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinkChanged create() => LinkChanged._();
  @$core.override
  LinkChanged createEmptyInstance() => create();
  static $pb.PbList<LinkChanged> createRepeated() => $pb.PbList<LinkChanged>();
  @$core.pragma('dart2js:noInline')
  static LinkChanged getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinkChanged>(create);
  static LinkChanged? _defaultInstance;

  @$pb.TagNumber(1)
  $4.DeviceLink get link => $_getN(0);
  @$pb.TagNumber(1)
  set link($4.DeviceLink value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLink() => $_has(0);
  @$pb.TagNumber(1)
  void clearLink() => $_clearField(1);
  @$pb.TagNumber(1)
  $4.DeviceLink ensureLink() => $_ensure(0);

  /// The link is gone, rather than merely not carrying. Distinct from a BROKEN state
  /// because the two need opposite responses: a removal is finished business, while a
  /// link that has stopped carrying is a fault worth showing somebody. Announcing a
  /// deletion as BROKEN would leave every removed link looking like something to go
  /// and repair.
  ///
  /// `link` still carries the whole link when this is set, so the app can name what
  /// went rather than only its id.
  @$pb.TagNumber(2)
  $core.bool get removed => $_getBF(1);
  @$pb.TagNumber(2)
  set removed($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRemoved() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemoved() => $_clearField(2);
}

enum GatewayMessage_Payload {
  stateSnapshot,
  propertyReport,
  permissionUpdate,
  commandResult,
  pong,
  handshakeRejected,
  error,
  subscriptionAck,
  deviceAdded,
  deviceRemoved,
  managementResult,
  deviceEvents,
  pairingStarted,
  pairingFinished,
  linkChanged,
  notSet
}

class GatewayMessage extends $pb.GeneratedMessage {
  factory GatewayMessage({
    $core.String? messageId,
    $6.Timestamp? sentAt,
    $7.DeviceStateSnapshot? stateSnapshot,
    $7.PropertyReport? propertyReport,
    $8.LivePermissionUpdate? permissionUpdate,
    $9.CommandResult? commandResult,
    Pong? pong,
    HandshakeRejected? handshakeRejected,
    GatewayError? error,
    SubscriptionAck? subscriptionAck,
    $7.DeviceAdded? deviceAdded,
    $7.DeviceRemoved? deviceRemoved,
    ManagementResult? managementResult,
    $10.DeviceEventBatch? deviceEvents,
    PairingStarted? pairingStarted,
    PairingFinished? pairingFinished,
    LinkChanged? linkChanged,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (sentAt != null) result.sentAt = sentAt;
    if (stateSnapshot != null) result.stateSnapshot = stateSnapshot;
    if (propertyReport != null) result.propertyReport = propertyReport;
    if (permissionUpdate != null) result.permissionUpdate = permissionUpdate;
    if (commandResult != null) result.commandResult = commandResult;
    if (pong != null) result.pong = pong;
    if (handshakeRejected != null) result.handshakeRejected = handshakeRejected;
    if (error != null) result.error = error;
    if (subscriptionAck != null) result.subscriptionAck = subscriptionAck;
    if (deviceAdded != null) result.deviceAdded = deviceAdded;
    if (deviceRemoved != null) result.deviceRemoved = deviceRemoved;
    if (managementResult != null) result.managementResult = managementResult;
    if (deviceEvents != null) result.deviceEvents = deviceEvents;
    if (pairingStarted != null) result.pairingStarted = pairingStarted;
    if (pairingFinished != null) result.pairingFinished = pairingFinished;
    if (linkChanged != null) result.linkChanged = linkChanged;
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
    4: GatewayMessage_Payload.propertyReport,
    5: GatewayMessage_Payload.permissionUpdate,
    6: GatewayMessage_Payload.commandResult,
    8: GatewayMessage_Payload.pong,
    9: GatewayMessage_Payload.handshakeRejected,
    10: GatewayMessage_Payload.error,
    11: GatewayMessage_Payload.subscriptionAck,
    12: GatewayMessage_Payload.deviceAdded,
    13: GatewayMessage_Payload.deviceRemoved,
    14: GatewayMessage_Payload.managementResult,
    16: GatewayMessage_Payload.deviceEvents,
    17: GatewayMessage_Payload.pairingStarted,
    18: GatewayMessage_Payload.pairingFinished,
    19: GatewayMessage_Payload.linkChanged,
    0: GatewayMessage_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 19])
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..aOM<$6.Timestamp>(2, _omitFieldNames ? '' : 'sentAt',
        subBuilder: $6.Timestamp.create)
    ..aOM<$7.DeviceStateSnapshot>(3, _omitFieldNames ? '' : 'stateSnapshot',
        subBuilder: $7.DeviceStateSnapshot.create)
    ..aOM<$7.PropertyReport>(4, _omitFieldNames ? '' : 'propertyReport',
        subBuilder: $7.PropertyReport.create)
    ..aOM<$8.LivePermissionUpdate>(5, _omitFieldNames ? '' : 'permissionUpdate',
        subBuilder: $8.LivePermissionUpdate.create)
    ..aOM<$9.CommandResult>(6, _omitFieldNames ? '' : 'commandResult',
        subBuilder: $9.CommandResult.create)
    ..aOM<Pong>(8, _omitFieldNames ? '' : 'pong', subBuilder: Pong.create)
    ..aOM<HandshakeRejected>(9, _omitFieldNames ? '' : 'handshakeRejected',
        subBuilder: HandshakeRejected.create)
    ..aOM<GatewayError>(10, _omitFieldNames ? '' : 'error',
        subBuilder: GatewayError.create)
    ..aOM<SubscriptionAck>(11, _omitFieldNames ? '' : 'subscriptionAck',
        subBuilder: SubscriptionAck.create)
    ..aOM<$7.DeviceAdded>(12, _omitFieldNames ? '' : 'deviceAdded',
        subBuilder: $7.DeviceAdded.create)
    ..aOM<$7.DeviceRemoved>(13, _omitFieldNames ? '' : 'deviceRemoved',
        subBuilder: $7.DeviceRemoved.create)
    ..aOM<ManagementResult>(14, _omitFieldNames ? '' : 'managementResult',
        subBuilder: ManagementResult.create)
    ..aOM<$10.DeviceEventBatch>(16, _omitFieldNames ? '' : 'deviceEvents',
        subBuilder: $10.DeviceEventBatch.create)
    ..aOM<PairingStarted>(17, _omitFieldNames ? '' : 'pairingStarted',
        subBuilder: PairingStarted.create)
    ..aOM<PairingFinished>(18, _omitFieldNames ? '' : 'pairingFinished',
        subBuilder: PairingFinished.create)
    ..aOM<LinkChanged>(19, _omitFieldNames ? '' : 'linkChanged',
        subBuilder: LinkChanged.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayMessage clone() => GatewayMessage()..mergeFromMessage(this);
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
  static $pb.PbList<GatewayMessage> createRepeated() =>
      $pb.PbList<GatewayMessage>();
  @$core.pragma('dart2js:noInline')
  static GatewayMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GatewayMessage>(create);
  static GatewayMessage? _defaultInstance;

  GatewayMessage_Payload whichPayload() =>
      _GatewayMessage_PayloadByTag[$_whichOneof(0)]!;
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
  $6.Timestamp get sentAt => $_getN(1);
  @$pb.TagNumber(2)
  set sentAt($6.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSentAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSentAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $6.Timestamp ensureSentAt() => $_ensure(1);

  @$pb.TagNumber(3)
  $7.DeviceStateSnapshot get stateSnapshot => $_getN(2);
  @$pb.TagNumber(3)
  set stateSnapshot($7.DeviceStateSnapshot value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStateSnapshot() => $_has(2);
  @$pb.TagNumber(3)
  void clearStateSnapshot() => $_clearField(3);
  @$pb.TagNumber(3)
  $7.DeviceStateSnapshot ensureStateSnapshot() => $_ensure(2);

  @$pb.TagNumber(4)
  $7.PropertyReport get propertyReport => $_getN(3);
  @$pb.TagNumber(4)
  set propertyReport($7.PropertyReport value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPropertyReport() => $_has(3);
  @$pb.TagNumber(4)
  void clearPropertyReport() => $_clearField(4);
  @$pb.TagNumber(4)
  $7.PropertyReport ensurePropertyReport() => $_ensure(3);

  @$pb.TagNumber(5)
  $8.LivePermissionUpdate get permissionUpdate => $_getN(4);
  @$pb.TagNumber(5)
  set permissionUpdate($8.LivePermissionUpdate value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPermissionUpdate() => $_has(4);
  @$pb.TagNumber(5)
  void clearPermissionUpdate() => $_clearField(5);
  @$pb.TagNumber(5)
  $8.LivePermissionUpdate ensurePermissionUpdate() => $_ensure(4);

  @$pb.TagNumber(6)
  $9.CommandResult get commandResult => $_getN(5);
  @$pb.TagNumber(6)
  set commandResult($9.CommandResult value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCommandResult() => $_has(5);
  @$pb.TagNumber(6)
  void clearCommandResult() => $_clearField(6);
  @$pb.TagNumber(6)
  $9.CommandResult ensureCommandResult() => $_ensure(5);

  @$pb.TagNumber(8)
  Pong get pong => $_getN(6);
  @$pb.TagNumber(8)
  set pong(Pong value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPong() => $_has(6);
  @$pb.TagNumber(8)
  void clearPong() => $_clearField(8);
  @$pb.TagNumber(8)
  Pong ensurePong() => $_ensure(6);

  @$pb.TagNumber(9)
  HandshakeRejected get handshakeRejected => $_getN(7);
  @$pb.TagNumber(9)
  set handshakeRejected(HandshakeRejected value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasHandshakeRejected() => $_has(7);
  @$pb.TagNumber(9)
  void clearHandshakeRejected() => $_clearField(9);
  @$pb.TagNumber(9)
  HandshakeRejected ensureHandshakeRejected() => $_ensure(7);

  @$pb.TagNumber(10)
  GatewayError get error => $_getN(8);
  @$pb.TagNumber(10)
  set error(GatewayError value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasError() => $_has(8);
  @$pb.TagNumber(10)
  void clearError() => $_clearField(10);
  @$pb.TagNumber(10)
  GatewayError ensureError() => $_ensure(8);

  @$pb.TagNumber(11)
  SubscriptionAck get subscriptionAck => $_getN(9);
  @$pb.TagNumber(11)
  set subscriptionAck(SubscriptionAck value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasSubscriptionAck() => $_has(9);
  @$pb.TagNumber(11)
  void clearSubscriptionAck() => $_clearField(11);
  @$pb.TagNumber(11)
  SubscriptionAck ensureSubscriptionAck() => $_ensure(9);

  @$pb.TagNumber(12)
  $7.DeviceAdded get deviceAdded => $_getN(10);
  @$pb.TagNumber(12)
  set deviceAdded($7.DeviceAdded value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasDeviceAdded() => $_has(10);
  @$pb.TagNumber(12)
  void clearDeviceAdded() => $_clearField(12);
  @$pb.TagNumber(12)
  $7.DeviceAdded ensureDeviceAdded() => $_ensure(10);

  @$pb.TagNumber(13)
  $7.DeviceRemoved get deviceRemoved => $_getN(11);
  @$pb.TagNumber(13)
  set deviceRemoved($7.DeviceRemoved value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasDeviceRemoved() => $_has(11);
  @$pb.TagNumber(13)
  void clearDeviceRemoved() => $_clearField(13);
  @$pb.TagNumber(13)
  $7.DeviceRemoved ensureDeviceRemoved() => $_ensure(11);

  @$pb.TagNumber(14)
  ManagementResult get managementResult => $_getN(12);
  @$pb.TagNumber(14)
  set managementResult(ManagementResult value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasManagementResult() => $_has(12);
  @$pb.TagNumber(14)
  void clearManagementResult() => $_clearField(14);
  @$pb.TagNumber(14)
  ManagementResult ensureManagementResult() => $_ensure(12);

  /// 15 was attribute_write_result. Answers to attribute writes come back as
  /// command_result above instead: a write and an invoke differ in what they do to a
  /// device, not in how the gateway reports having done it, and request_id says which
  /// request is being answered either way.
  @$pb.TagNumber(16)
  $10.DeviceEventBatch get deviceEvents => $_getN(13);
  @$pb.TagNumber(16)
  set deviceEvents($10.DeviceEventBatch value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasDeviceEvents() => $_has(13);
  @$pb.TagNumber(16)
  void clearDeviceEvents() => $_clearField(16);
  @$pb.TagNumber(16)
  $10.DeviceEventBatch ensureDeviceEvents() => $_ensure(13);

  @$pb.TagNumber(17)
  PairingStarted get pairingStarted => $_getN(14);
  @$pb.TagNumber(17)
  set pairingStarted(PairingStarted value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasPairingStarted() => $_has(14);
  @$pb.TagNumber(17)
  void clearPairingStarted() => $_clearField(17);
  @$pb.TagNumber(17)
  PairingStarted ensurePairingStarted() => $_ensure(14);

  @$pb.TagNumber(18)
  PairingFinished get pairingFinished => $_getN(15);
  @$pb.TagNumber(18)
  set pairingFinished(PairingFinished value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasPairingFinished() => $_has(15);
  @$pb.TagNumber(18)
  void clearPairingFinished() => $_clearField(18);
  @$pb.TagNumber(18)
  PairingFinished ensurePairingFinished() => $_ensure(15);

  @$pb.TagNumber(19)
  LinkChanged get linkChanged => $_getN(16);
  @$pb.TagNumber(19)
  set linkChanged(LinkChanged value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasLinkChanged() => $_has(16);
  @$pb.TagNumber(19)
  void clearLinkChanged() => $_clearField(19);
  @$pb.TagNumber(19)
  LinkChanged ensureLinkChanged() => $_ensure(16);
}

enum AppMessage_Payload {
  handshake,
  command,
  readRequest,
  ping,
  subscribe,
  unsubscribe,
  management,
  attributeWrite,
  startPairing,
  notSet
}

/// AppMessage: app → gateway
class AppMessage extends $pb.GeneratedMessage {
  factory AppMessage({
    $core.String? messageId,
    $6.Timestamp? sentAt,
    AppHandshake? handshake,
    $9.DeviceCommand? command,
    PropertyReadRequest? readRequest,
    Ping? ping,
    SubscribeDevices? subscribe,
    UnsubscribeDevices? unsubscribe,
    $3.ManagementRequest? management,
    $9.AttributeWriteRequest? attributeWrite,
    StartPairing? startPairing,
  }) {
    final result = create();
    if (messageId != null) result.messageId = messageId;
    if (sentAt != null) result.sentAt = sentAt;
    if (handshake != null) result.handshake = handshake;
    if (command != null) result.command = command;
    if (readRequest != null) result.readRequest = readRequest;
    if (ping != null) result.ping = ping;
    if (subscribe != null) result.subscribe = subscribe;
    if (unsubscribe != null) result.unsubscribe = unsubscribe;
    if (management != null) result.management = management;
    if (attributeWrite != null) result.attributeWrite = attributeWrite;
    if (startPairing != null) result.startPairing = startPairing;
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
    7: AppMessage_Payload.subscribe,
    8: AppMessage_Payload.unsubscribe,
    9: AppMessage_Payload.management,
    10: AppMessage_Payload.attributeWrite,
    11: AppMessage_Payload.startPairing,
    0: AppMessage_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8, 9, 10, 11])
    ..aOS(1, _omitFieldNames ? '' : 'messageId')
    ..aOM<$6.Timestamp>(2, _omitFieldNames ? '' : 'sentAt',
        subBuilder: $6.Timestamp.create)
    ..aOM<AppHandshake>(3, _omitFieldNames ? '' : 'handshake',
        subBuilder: AppHandshake.create)
    ..aOM<$9.DeviceCommand>(4, _omitFieldNames ? '' : 'command',
        subBuilder: $9.DeviceCommand.create)
    ..aOM<PropertyReadRequest>(5, _omitFieldNames ? '' : 'readRequest',
        subBuilder: PropertyReadRequest.create)
    ..aOM<Ping>(6, _omitFieldNames ? '' : 'ping', subBuilder: Ping.create)
    ..aOM<SubscribeDevices>(7, _omitFieldNames ? '' : 'subscribe',
        subBuilder: SubscribeDevices.create)
    ..aOM<UnsubscribeDevices>(8, _omitFieldNames ? '' : 'unsubscribe',
        subBuilder: UnsubscribeDevices.create)
    ..aOM<$3.ManagementRequest>(9, _omitFieldNames ? '' : 'management',
        subBuilder: $3.ManagementRequest.create)
    ..aOM<$9.AttributeWriteRequest>(10, _omitFieldNames ? '' : 'attributeWrite',
        subBuilder: $9.AttributeWriteRequest.create)
    ..aOM<StartPairing>(11, _omitFieldNames ? '' : 'startPairing',
        subBuilder: StartPairing.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppMessage clone() => AppMessage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppMessage copyWith(void Function(AppMessage) updates) =>
      super.copyWith((message) => updates(message as AppMessage)) as AppMessage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppMessage create() => AppMessage._();
  @$core.override
  AppMessage createEmptyInstance() => create();
  static $pb.PbList<AppMessage> createRepeated() => $pb.PbList<AppMessage>();
  @$core.pragma('dart2js:noInline')
  static AppMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppMessage>(create);
  static AppMessage? _defaultInstance;

  AppMessage_Payload whichPayload() =>
      _AppMessage_PayloadByTag[$_whichOneof(0)]!;
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
  $6.Timestamp get sentAt => $_getN(1);
  @$pb.TagNumber(2)
  set sentAt($6.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSentAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearSentAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $6.Timestamp ensureSentAt() => $_ensure(1);

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
  $9.DeviceCommand get command => $_getN(3);
  @$pb.TagNumber(4)
  set command($9.DeviceCommand value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCommand() => $_has(3);
  @$pb.TagNumber(4)
  void clearCommand() => $_clearField(4);
  @$pb.TagNumber(4)
  $9.DeviceCommand ensureCommand() => $_ensure(3);

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

  @$pb.TagNumber(7)
  SubscribeDevices get subscribe => $_getN(6);
  @$pb.TagNumber(7)
  set subscribe(SubscribeDevices value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSubscribe() => $_has(6);
  @$pb.TagNumber(7)
  void clearSubscribe() => $_clearField(7);
  @$pb.TagNumber(7)
  SubscribeDevices ensureSubscribe() => $_ensure(6);

  @$pb.TagNumber(8)
  UnsubscribeDevices get unsubscribe => $_getN(7);
  @$pb.TagNumber(8)
  set unsubscribe(UnsubscribeDevices value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasUnsubscribe() => $_has(7);
  @$pb.TagNumber(8)
  void clearUnsubscribe() => $_clearField(8);
  @$pb.TagNumber(8)
  UnsubscribeDevices ensureUnsubscribe() => $_ensure(7);

  @$pb.TagNumber(9)
  $3.ManagementRequest get management => $_getN(8);
  @$pb.TagNumber(9)
  set management($3.ManagementRequest value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasManagement() => $_has(8);
  @$pb.TagNumber(9)
  void clearManagement() => $_clearField(9);
  @$pb.TagNumber(9)
  $3.ManagementRequest ensureManagement() => $_ensure(8);

  @$pb.TagNumber(10)
  $9.AttributeWriteRequest get attributeWrite => $_getN(9);
  @$pb.TagNumber(10)
  set attributeWrite($9.AttributeWriteRequest value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAttributeWrite() => $_has(9);
  @$pb.TagNumber(10)
  void clearAttributeWrite() => $_clearField(10);
  @$pb.TagNumber(10)
  $9.AttributeWriteRequest ensureAttributeWrite() => $_ensure(9);

  @$pb.TagNumber(11)
  StartPairing get startPairing => $_getN(10);
  @$pb.TagNumber(11)
  set startPairing(StartPairing value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasStartPairing() => $_has(10);
  @$pb.TagNumber(11)
  void clearStartPairing() => $_clearField(11);
  @$pb.TagNumber(11)
  StartPairing ensureStartPairing() => $_ensure(10);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
