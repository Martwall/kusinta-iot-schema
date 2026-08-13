// This is a generated file - do not edit.
//
// Generated from kusinta/iot/signaling/v1/signaling.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../identity/v1/identity.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SdpOffer extends $pb.GeneratedMessage {
  factory SdpOffer({
    $core.String? sdp,
  }) {
    final result = create();
    if (sdp != null) result.sdp = sdp;
    return result;
  }

  SdpOffer._();

  factory SdpOffer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SdpOffer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SdpOffer',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sdp')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SdpOffer clone() => SdpOffer()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SdpOffer copyWith(void Function(SdpOffer) updates) =>
      super.copyWith((message) => updates(message as SdpOffer)) as SdpOffer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SdpOffer create() => SdpOffer._();
  @$core.override
  SdpOffer createEmptyInstance() => create();
  static $pb.PbList<SdpOffer> createRepeated() => $pb.PbList<SdpOffer>();
  @$core.pragma('dart2js:noInline')
  static SdpOffer getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SdpOffer>(create);
  static SdpOffer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sdp => $_getSZ(0);
  @$pb.TagNumber(1)
  set sdp($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSdp() => $_has(0);
  @$pb.TagNumber(1)
  void clearSdp() => $_clearField(1);
}

class SdpAnswer extends $pb.GeneratedMessage {
  factory SdpAnswer({
    $core.String? sdp,
  }) {
    final result = create();
    if (sdp != null) result.sdp = sdp;
    return result;
  }

  SdpAnswer._();

  factory SdpAnswer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SdpAnswer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SdpAnswer',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sdp')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SdpAnswer clone() => SdpAnswer()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SdpAnswer copyWith(void Function(SdpAnswer) updates) =>
      super.copyWith((message) => updates(message as SdpAnswer)) as SdpAnswer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SdpAnswer create() => SdpAnswer._();
  @$core.override
  SdpAnswer createEmptyInstance() => create();
  static $pb.PbList<SdpAnswer> createRepeated() => $pb.PbList<SdpAnswer>();
  @$core.pragma('dart2js:noInline')
  static SdpAnswer getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SdpAnswer>(create);
  static SdpAnswer? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sdp => $_getSZ(0);
  @$pb.TagNumber(1)
  set sdp($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSdp() => $_has(0);
  @$pb.TagNumber(1)
  void clearSdp() => $_clearField(1);
}

/// candidate is the SDP candidate attribute line. sdp_mid / sdp_mline_index
/// bind it to a media section: WebRTC's addIceCandidate requires a non-null
/// sdpMid (passing null NPEs in the Android JNI layer). Under BUNDLE both are
/// constant ("0" / 0) for a single-m-line session, but they must be carried so
/// candidates stay correct once additional m-lines (e.g. camera video) exist.
class IceCandidate extends $pb.GeneratedMessage {
  factory IceCandidate({
    $core.String? candidate,
    $core.String? sdpMid,
    $core.int? sdpMlineIndex,
  }) {
    final result = create();
    if (candidate != null) result.candidate = candidate;
    if (sdpMid != null) result.sdpMid = sdpMid;
    if (sdpMlineIndex != null) result.sdpMlineIndex = sdpMlineIndex;
    return result;
  }

  IceCandidate._();

  factory IceCandidate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IceCandidate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IceCandidate',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'candidate')
    ..aOS(2, _omitFieldNames ? '' : 'sdpMid')
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'sdpMlineIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IceCandidate clone() => IceCandidate()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IceCandidate copyWith(void Function(IceCandidate) updates) =>
      super.copyWith((message) => updates(message as IceCandidate))
          as IceCandidate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IceCandidate create() => IceCandidate._();
  @$core.override
  IceCandidate createEmptyInstance() => create();
  static $pb.PbList<IceCandidate> createRepeated() =>
      $pb.PbList<IceCandidate>();
  @$core.pragma('dart2js:noInline')
  static IceCandidate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IceCandidate>(create);
  static IceCandidate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get candidate => $_getSZ(0);
  @$pb.TagNumber(1)
  set candidate($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCandidate() => $_has(0);
  @$pb.TagNumber(1)
  void clearCandidate() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sdpMid => $_getSZ(1);
  @$pb.TagNumber(2)
  set sdpMid($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSdpMid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSdpMid() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get sdpMlineIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set sdpMlineIndex($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSdpMlineIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearSdpMlineIndex() => $_clearField(3);
}

/// Empty keepalive. The gateway sends this periodically on the GatewayConnect
/// stream so the otherwise-idle bidi request keeps producing DATA frames, which
/// resets HAProxy's inactivity timers (timeout client/server) and stops the relay
/// from tearing the stream down. Carries no routing target and is dropped on receipt.
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
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
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

/// JWT for user auth is sent in the Authorization: Bearer metadata header, not here.
/// First message carries only the target gateway for stream-specific routing.
class UserHandshake extends $pb.GeneratedMessage {
  factory UserHandshake({
    $0.GatewayId? targetGatewayId,
  }) {
    final result = create();
    if (targetGatewayId != null) result.targetGatewayId = targetGatewayId;
    return result;
  }

  UserHandshake._();

  factory UserHandshake.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserHandshake.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserHandshake',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOM<$0.GatewayId>(1, _omitFieldNames ? '' : 'targetGatewayId',
        subBuilder: $0.GatewayId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserHandshake clone() => UserHandshake()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserHandshake copyWith(void Function(UserHandshake) updates) =>
      super.copyWith((message) => updates(message as UserHandshake))
          as UserHandshake;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserHandshake create() => UserHandshake._();
  @$core.override
  UserHandshake createEmptyInstance() => create();
  static $pb.PbList<UserHandshake> createRepeated() =>
      $pb.PbList<UserHandshake>();
  @$core.pragma('dart2js:noInline')
  static UserHandshake getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserHandshake>(create);
  static UserHandshake? _defaultInstance;

  @$pb.TagNumber(1)
  $0.GatewayId get targetGatewayId => $_getN(0);
  @$pb.TagNumber(1)
  set targetGatewayId($0.GatewayId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTargetGatewayId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetGatewayId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.GatewayId ensureTargetGatewayId() => $_ensure(0);
}

class UserHandshakeAck extends $pb.GeneratedMessage {
  factory UserHandshakeAck({
    $core.bool? accepted,
    $core.String? reason,
  }) {
    final result = create();
    if (accepted != null) result.accepted = accepted;
    if (reason != null) result.reason = reason;
    return result;
  }

  UserHandshakeAck._();

  factory UserHandshakeAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserHandshakeAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserHandshakeAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'accepted')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserHandshakeAck clone() => UserHandshakeAck()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserHandshakeAck copyWith(void Function(UserHandshakeAck) updates) =>
      super.copyWith((message) => updates(message as UserHandshakeAck))
          as UserHandshakeAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserHandshakeAck create() => UserHandshakeAck._();
  @$core.override
  UserHandshakeAck createEmptyInstance() => create();
  static $pb.PbList<UserHandshakeAck> createRepeated() =>
      $pb.PbList<UserHandshakeAck>();
  @$core.pragma('dart2js:noInline')
  static UserHandshakeAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserHandshakeAck>(create);
  static UserHandshakeAck? _defaultInstance;

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
}

enum GatewayConnectRequest_Payload { answer, iceCandidate, heartbeat, notSet }

/// Messages sent by the building-server gateway (GatewaySignalingService.GatewayConnect stream).
/// Auth: x-client-cert-fingerprint metadata header (set by HAProxy from mTLS).
class GatewayConnectRequest extends $pb.GeneratedMessage {
  factory GatewayConnectRequest({
    $0.UserId? targetUserId,
    SdpAnswer? answer,
    IceCandidate? iceCandidate,
    HeartBeat? heartbeat,
    $core.String? sessionId,
  }) {
    final result = create();
    if (targetUserId != null) result.targetUserId = targetUserId;
    if (answer != null) result.answer = answer;
    if (iceCandidate != null) result.iceCandidate = iceCandidate;
    if (heartbeat != null) result.heartbeat = heartbeat;
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  GatewayConnectRequest._();

  factory GatewayConnectRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GatewayConnectRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, GatewayConnectRequest_Payload>
      _GatewayConnectRequest_PayloadByTag = {
    2: GatewayConnectRequest_Payload.answer,
    3: GatewayConnectRequest_Payload.iceCandidate,
    4: GatewayConnectRequest_Payload.heartbeat,
    0: GatewayConnectRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayConnectRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4])
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'targetUserId',
        subBuilder: $0.UserId.create)
    ..aOM<SdpAnswer>(2, _omitFieldNames ? '' : 'answer',
        subBuilder: SdpAnswer.create)
    ..aOM<IceCandidate>(3, _omitFieldNames ? '' : 'iceCandidate',
        subBuilder: IceCandidate.create)
    ..aOM<HeartBeat>(4, _omitFieldNames ? '' : 'heartbeat',
        subBuilder: HeartBeat.create)
    ..aOS(5, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayConnectRequest clone() =>
      GatewayConnectRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayConnectRequest copyWith(
          void Function(GatewayConnectRequest) updates) =>
      super.copyWith((message) => updates(message as GatewayConnectRequest))
          as GatewayConnectRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GatewayConnectRequest create() => GatewayConnectRequest._();
  @$core.override
  GatewayConnectRequest createEmptyInstance() => create();
  static $pb.PbList<GatewayConnectRequest> createRepeated() =>
      $pb.PbList<GatewayConnectRequest>();
  @$core.pragma('dart2js:noInline')
  static GatewayConnectRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GatewayConnectRequest>(create);
  static GatewayConnectRequest? _defaultInstance;

  GatewayConnectRequest_Payload whichPayload() =>
      _GatewayConnectRequest_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.UserId get targetUserId => $_getN(0);
  @$pb.TagNumber(1)
  set targetUserId($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTargetUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTargetUserId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureTargetUserId() => $_ensure(0);

  @$pb.TagNumber(2)
  SdpAnswer get answer => $_getN(1);
  @$pb.TagNumber(2)
  set answer(SdpAnswer value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAnswer() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnswer() => $_clearField(2);
  @$pb.TagNumber(2)
  SdpAnswer ensureAnswer() => $_ensure(1);

  @$pb.TagNumber(3)
  IceCandidate get iceCandidate => $_getN(2);
  @$pb.TagNumber(3)
  set iceCandidate(IceCandidate value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasIceCandidate() => $_has(2);
  @$pb.TagNumber(3)
  void clearIceCandidate() => $_clearField(3);
  @$pb.TagNumber(3)
  IceCandidate ensureIceCandidate() => $_ensure(2);

  @$pb.TagNumber(4)
  HeartBeat get heartbeat => $_getN(3);
  @$pb.TagNumber(4)
  set heartbeat(HeartBeat value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasHeartbeat() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeartbeat() => $_clearField(4);
  @$pb.TagNumber(4)
  HeartBeat ensureHeartbeat() => $_ensure(3);

  /// The session of target_user_id this message answers. See the contract above.
  /// Ignored on a heartbeat, which carries no routing target at all.
  @$pb.TagNumber(5)
  $core.String get sessionId => $_getSZ(4);
  @$pb.TagNumber(5)
  set sessionId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSessionId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSessionId() => $_clearField(5);
}

enum GatewayConnectResponse_Payload { offer, iceCandidate, notSet }

/// Messages sent by the api-server to the building-server gateway.
class GatewayConnectResponse extends $pb.GeneratedMessage {
  factory GatewayConnectResponse({
    $0.UserId? fromUserId,
    SdpOffer? offer,
    IceCandidate? iceCandidate,
    $core.String? sessionId,
  }) {
    final result = create();
    if (fromUserId != null) result.fromUserId = fromUserId;
    if (offer != null) result.offer = offer;
    if (iceCandidate != null) result.iceCandidate = iceCandidate;
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  GatewayConnectResponse._();

  factory GatewayConnectResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GatewayConnectResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, GatewayConnectResponse_Payload>
      _GatewayConnectResponse_PayloadByTag = {
    2: GatewayConnectResponse_Payload.offer,
    3: GatewayConnectResponse_Payload.iceCandidate,
    0: GatewayConnectResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayConnectResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'fromUserId',
        subBuilder: $0.UserId.create)
    ..aOM<SdpOffer>(2, _omitFieldNames ? '' : 'offer',
        subBuilder: SdpOffer.create)
    ..aOM<IceCandidate>(3, _omitFieldNames ? '' : 'iceCandidate',
        subBuilder: IceCandidate.create)
    ..aOS(4, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayConnectResponse clone() =>
      GatewayConnectResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayConnectResponse copyWith(
          void Function(GatewayConnectResponse) updates) =>
      super.copyWith((message) => updates(message as GatewayConnectResponse))
          as GatewayConnectResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GatewayConnectResponse create() => GatewayConnectResponse._();
  @$core.override
  GatewayConnectResponse createEmptyInstance() => create();
  static $pb.PbList<GatewayConnectResponse> createRepeated() =>
      $pb.PbList<GatewayConnectResponse>();
  @$core.pragma('dart2js:noInline')
  static GatewayConnectResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GatewayConnectResponse>(create);
  static GatewayConnectResponse? _defaultInstance;

  GatewayConnectResponse_Payload whichPayload() =>
      _GatewayConnectResponse_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.UserId get fromUserId => $_getN(0);
  @$pb.TagNumber(1)
  set fromUserId($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFromUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromUserId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureFromUserId() => $_ensure(0);

  @$pb.TagNumber(2)
  SdpOffer get offer => $_getN(1);
  @$pb.TagNumber(2)
  set offer(SdpOffer value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOffer() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffer() => $_clearField(2);
  @$pb.TagNumber(2)
  SdpOffer ensureOffer() => $_ensure(1);

  @$pb.TagNumber(3)
  IceCandidate get iceCandidate => $_getN(2);
  @$pb.TagNumber(3)
  set iceCandidate(IceCandidate value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasIceCandidate() => $_has(2);
  @$pb.TagNumber(3)
  void clearIceCandidate() => $_clearField(3);
  @$pb.TagNumber(3)
  IceCandidate ensureIceCandidate() => $_ensure(2);

  /// The session of from_user_id this message originates from — the value the
  /// gateway must echo on the GatewayConnectRequest that answers it. See the
  /// contract above.
  @$pb.TagNumber(4)
  $core.String get sessionId => $_getSZ(3);
  @$pb.TagNumber(4)
  set sessionId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionId() => $_clearField(4);
}

enum UserConnectRequest_Payload { handshake, offer, iceCandidate, notSet }

/// Messages sent by the Flutter app (GatewaySignalingService.UserConnect stream).
/// Auth: Authorization: Bearer <jwt> in gRPC request metadata (validated by interceptor).
class UserConnectRequest extends $pb.GeneratedMessage {
  factory UserConnectRequest({
    UserHandshake? handshake,
    SdpOffer? offer,
    IceCandidate? iceCandidate,
    $core.String? sessionId,
  }) {
    final result = create();
    if (handshake != null) result.handshake = handshake;
    if (offer != null) result.offer = offer;
    if (iceCandidate != null) result.iceCandidate = iceCandidate;
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  UserConnectRequest._();

  factory UserConnectRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserConnectRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, UserConnectRequest_Payload>
      _UserConnectRequest_PayloadByTag = {
    1: UserConnectRequest_Payload.handshake,
    2: UserConnectRequest_Payload.offer,
    3: UserConnectRequest_Payload.iceCandidate,
    0: UserConnectRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserConnectRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<UserHandshake>(1, _omitFieldNames ? '' : 'handshake',
        subBuilder: UserHandshake.create)
    ..aOM<SdpOffer>(2, _omitFieldNames ? '' : 'offer',
        subBuilder: SdpOffer.create)
    ..aOM<IceCandidate>(3, _omitFieldNames ? '' : 'iceCandidate',
        subBuilder: IceCandidate.create)
    ..aOS(4, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserConnectRequest clone() => UserConnectRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserConnectRequest copyWith(void Function(UserConnectRequest) updates) =>
      super.copyWith((message) => updates(message as UserConnectRequest))
          as UserConnectRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserConnectRequest create() => UserConnectRequest._();
  @$core.override
  UserConnectRequest createEmptyInstance() => create();
  static $pb.PbList<UserConnectRequest> createRepeated() =>
      $pb.PbList<UserConnectRequest>();
  @$core.pragma('dart2js:noInline')
  static UserConnectRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserConnectRequest>(create);
  static UserConnectRequest? _defaultInstance;

  UserConnectRequest_Payload whichPayload() =>
      _UserConnectRequest_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  UserHandshake get handshake => $_getN(0);
  @$pb.TagNumber(1)
  set handshake(UserHandshake value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHandshake() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandshake() => $_clearField(1);
  @$pb.TagNumber(1)
  UserHandshake ensureHandshake() => $_ensure(0);

  @$pb.TagNumber(2)
  SdpOffer get offer => $_getN(1);
  @$pb.TagNumber(2)
  set offer(SdpOffer value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOffer() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffer() => $_clearField(2);
  @$pb.TagNumber(2)
  SdpOffer ensureOffer() => $_ensure(1);

  @$pb.TagNumber(3)
  IceCandidate get iceCandidate => $_getN(2);
  @$pb.TagNumber(3)
  set iceCandidate(IceCandidate value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasIceCandidate() => $_has(2);
  @$pb.TagNumber(3)
  void clearIceCandidate() => $_clearField(3);
  @$pb.TagNumber(3)
  IceCandidate ensureIceCandidate() => $_ensure(2);

  /// This client's session, minted by the client. See the contract above. Sent on
  /// every message including the handshake, so the relay can key the stream on it
  /// from the first frame.
  @$pb.TagNumber(4)
  $core.String get sessionId => $_getSZ(3);
  @$pb.TagNumber(4)
  set sessionId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionId() => $_clearField(4);
}

enum UserConnectResponse_Payload { handshakeAck, answer, iceCandidate, notSet }

/// Messages sent by the api-server to the Flutter app.
class UserConnectResponse extends $pb.GeneratedMessage {
  factory UserConnectResponse({
    UserHandshakeAck? handshakeAck,
    SdpAnswer? answer,
    IceCandidate? iceCandidate,
    $core.String? sessionId,
  }) {
    final result = create();
    if (handshakeAck != null) result.handshakeAck = handshakeAck;
    if (answer != null) result.answer = answer;
    if (iceCandidate != null) result.iceCandidate = iceCandidate;
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  UserConnectResponse._();

  factory UserConnectResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserConnectResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, UserConnectResponse_Payload>
      _UserConnectResponse_PayloadByTag = {
    1: UserConnectResponse_Payload.handshakeAck,
    2: UserConnectResponse_Payload.answer,
    3: UserConnectResponse_Payload.iceCandidate,
    0: UserConnectResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserConnectResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<UserHandshakeAck>(1, _omitFieldNames ? '' : 'handshakeAck',
        subBuilder: UserHandshakeAck.create)
    ..aOM<SdpAnswer>(2, _omitFieldNames ? '' : 'answer',
        subBuilder: SdpAnswer.create)
    ..aOM<IceCandidate>(3, _omitFieldNames ? '' : 'iceCandidate',
        subBuilder: IceCandidate.create)
    ..aOS(4, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserConnectResponse clone() => UserConnectResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserConnectResponse copyWith(void Function(UserConnectResponse) updates) =>
      super.copyWith((message) => updates(message as UserConnectResponse))
          as UserConnectResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserConnectResponse create() => UserConnectResponse._();
  @$core.override
  UserConnectResponse createEmptyInstance() => create();
  static $pb.PbList<UserConnectResponse> createRepeated() =>
      $pb.PbList<UserConnectResponse>();
  @$core.pragma('dart2js:noInline')
  static UserConnectResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserConnectResponse>(create);
  static UserConnectResponse? _defaultInstance;

  UserConnectResponse_Payload whichPayload() =>
      _UserConnectResponse_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  UserHandshakeAck get handshakeAck => $_getN(0);
  @$pb.TagNumber(1)
  set handshakeAck(UserHandshakeAck value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHandshakeAck() => $_has(0);
  @$pb.TagNumber(1)
  void clearHandshakeAck() => $_clearField(1);
  @$pb.TagNumber(1)
  UserHandshakeAck ensureHandshakeAck() => $_ensure(0);

  @$pb.TagNumber(2)
  SdpAnswer get answer => $_getN(1);
  @$pb.TagNumber(2)
  set answer(SdpAnswer value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAnswer() => $_has(1);
  @$pb.TagNumber(2)
  void clearAnswer() => $_clearField(2);
  @$pb.TagNumber(2)
  SdpAnswer ensureAnswer() => $_ensure(1);

  @$pb.TagNumber(3)
  IceCandidate get iceCandidate => $_getN(2);
  @$pb.TagNumber(3)
  set iceCandidate(IceCandidate value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasIceCandidate() => $_has(2);
  @$pb.TagNumber(3)
  void clearIceCandidate() => $_clearField(3);
  @$pb.TagNumber(3)
  IceCandidate ensureIceCandidate() => $_ensure(2);

  /// Echoes the session_id of the stream this message is delivered on, so a
  /// client can assert the relay routed to the session it thinks it is. See the
  /// contract above.
  @$pb.TagNumber(4)
  $core.String get sessionId => $_getSZ(3);
  @$pb.TagNumber(4)
  set sessionId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionId() => $_clearField(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
