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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $1;
import '../../common/v1/types.pbenum.dart' as $2;
import '../../identity/v1/identity.pb.dart' as $0;
import 'signaling.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'signaling.pbenum.dart';

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
/// sdpMid (some native WebRTC bindings crash on a null). Under BUNDLE both are
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

/// Empty keepalive, sent periodically on a stream that would otherwise fall
/// silent. The DATA frames it produces reset the inactivity timers on any proxy
/// between the two ends and stop it tearing the stream down. Carries no routing
/// target and is dropped on receipt.
///
/// Carried on two arms, each covering a half that falls silent while neither end
/// has anything to say: the building-server gateway sends it upstream on
/// GatewayConnect, and the api-server sends it downstream to the app on
/// UserConnectResponse. The remaining halves have no arm — an app leg's upstream
/// that goes idle is one the client can write on whenever it needs to.
///
/// Never an acknowledgement. A heartbeat answers no message and must not be
/// treated as confirming one.
///
/// On GatewayConnect it also lets the api-server judge whether the gateway is
/// present. A gateway is present while its stream is open, and never lets it
/// carry nothing for more than 30 seconds: a heartbeat fills any longer silence.
/// A stream that has carried nothing for 90 seconds may be taken as gone, even
/// when the transport has not yet said so. That is the gateway's presence and
/// nothing more: a present gateway may still have lost its devices.
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
    $core.int? heartbeatIntervalMs,
  }) {
    final result = create();
    if (accepted != null) result.accepted = accepted;
    if (reason != null) result.reason = reason;
    if (heartbeatIntervalMs != null)
      result.heartbeatIntervalMs = heartbeatIntervalMs;
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
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'heartbeatIntervalMs', $pb.PbFieldType.OU3)
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

  /// How often the api-server will send a HeartBeat on this stream, in
  /// milliseconds.
  ///
  /// Advisory, and a client must not refuse a stream over it: a client that has
  /// seen no traffic at all for a small multiple of this may take the stream for
  /// gone and reattach with the same session_id, which is the difference between
  /// a renegotiation that stalls and one that reconnects. The server is free to
  /// answer with a different value on the next session.
  ///
  /// Zero means the server is not heartbeating this stream, and a client must
  /// then not infer anything from silence.
  @$pb.TagNumber(3)
  $core.int get heartbeatIntervalMs => $_getIZ(2);
  @$pb.TagNumber(3)
  set heartbeatIntervalMs($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHeartbeatIntervalMs() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeartbeatIntervalMs() => $_clearField(3);
}

enum GatewayConnectRequest_Payload {
  answer,
  iceCandidate,
  heartbeat,
  redeemInviteResult,
  vouchedAdministratorsApplied,
  transferOutcomeApplied,
  wiped,
  notSet
}

/// Messages sent by the building-server gateway (GatewaySignalingService.GatewayConnect stream).
/// Auth: x-client-cert-fingerprint metadata header, set from the client
/// certificate by the mTLS-terminating proxy in front of this service.
class GatewayConnectRequest extends $pb.GeneratedMessage {
  factory GatewayConnectRequest({
    $0.UserId? targetUserId,
    SdpAnswer? answer,
    IceCandidate? iceCandidate,
    HeartBeat? heartbeat,
    $core.String? sessionId,
    RedeemInviteResult? redeemInviteResult,
    VouchedAdministratorsApplied? vouchedAdministratorsApplied,
    TransferOutcomeApplied? transferOutcomeApplied,
    GatewayWiped? wiped,
  }) {
    final result = create();
    if (targetUserId != null) result.targetUserId = targetUserId;
    if (answer != null) result.answer = answer;
    if (iceCandidate != null) result.iceCandidate = iceCandidate;
    if (heartbeat != null) result.heartbeat = heartbeat;
    if (sessionId != null) result.sessionId = sessionId;
    if (redeemInviteResult != null)
      result.redeemInviteResult = redeemInviteResult;
    if (vouchedAdministratorsApplied != null)
      result.vouchedAdministratorsApplied = vouchedAdministratorsApplied;
    if (transferOutcomeApplied != null)
      result.transferOutcomeApplied = transferOutcomeApplied;
    if (wiped != null) result.wiped = wiped;
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
    6: GatewayConnectRequest_Payload.redeemInviteResult,
    7: GatewayConnectRequest_Payload.vouchedAdministratorsApplied,
    8: GatewayConnectRequest_Payload.transferOutcomeApplied,
    9: GatewayConnectRequest_Payload.wiped,
    0: GatewayConnectRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayConnectRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 6, 7, 8, 9])
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'targetUserId',
        subBuilder: $0.UserId.create)
    ..aOM<SdpAnswer>(2, _omitFieldNames ? '' : 'answer',
        subBuilder: SdpAnswer.create)
    ..aOM<IceCandidate>(3, _omitFieldNames ? '' : 'iceCandidate',
        subBuilder: IceCandidate.create)
    ..aOM<HeartBeat>(4, _omitFieldNames ? '' : 'heartbeat',
        subBuilder: HeartBeat.create)
    ..aOS(5, _omitFieldNames ? '' : 'sessionId')
    ..aOM<RedeemInviteResult>(6, _omitFieldNames ? '' : 'redeemInviteResult',
        subBuilder: RedeemInviteResult.create)
    ..aOM<VouchedAdministratorsApplied>(
        7, _omitFieldNames ? '' : 'vouchedAdministratorsApplied',
        subBuilder: VouchedAdministratorsApplied.create)
    ..aOM<TransferOutcomeApplied>(
        8, _omitFieldNames ? '' : 'transferOutcomeApplied',
        subBuilder: TransferOutcomeApplied.create)
    ..aOM<GatewayWiped>(9, _omitFieldNames ? '' : 'wiped',
        subBuilder: GatewayWiped.create)
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

  /// On redeem_invite_result, the user who redeemed (RedeemInvite). Unset on an
  /// acknowledgement, which is to no user.
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
  /// Ignored on a heartbeat, which carries no routing target at all, and on
  /// redeem_invite_result and the acknowledgements, which belong to no session.
  @$pb.TagNumber(5)
  $core.String get sessionId => $_getSZ(4);
  @$pb.TagNumber(5)
  set sessionId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSessionId() => $_has(4);
  @$pb.TagNumber(5)
  void clearSessionId() => $_clearField(5);

  @$pb.TagNumber(6)
  RedeemInviteResult get redeemInviteResult => $_getN(5);
  @$pb.TagNumber(6)
  set redeemInviteResult(RedeemInviteResult value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasRedeemInviteResult() => $_has(5);
  @$pb.TagNumber(6)
  void clearRedeemInviteResult() => $_clearField(6);
  @$pb.TagNumber(6)
  RedeemInviteResult ensureRedeemInviteResult() => $_ensure(5);

  @$pb.TagNumber(7)
  VouchedAdministratorsApplied get vouchedAdministratorsApplied => $_getN(6);
  @$pb.TagNumber(7)
  set vouchedAdministratorsApplied(VouchedAdministratorsApplied value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasVouchedAdministratorsApplied() => $_has(6);
  @$pb.TagNumber(7)
  void clearVouchedAdministratorsApplied() => $_clearField(7);
  @$pb.TagNumber(7)
  VouchedAdministratorsApplied ensureVouchedAdministratorsApplied() =>
      $_ensure(6);

  @$pb.TagNumber(8)
  TransferOutcomeApplied get transferOutcomeApplied => $_getN(7);
  @$pb.TagNumber(8)
  set transferOutcomeApplied(TransferOutcomeApplied value) =>
      $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasTransferOutcomeApplied() => $_has(7);
  @$pb.TagNumber(8)
  void clearTransferOutcomeApplied() => $_clearField(8);
  @$pb.TagNumber(8)
  TransferOutcomeApplied ensureTransferOutcomeApplied() => $_ensure(7);

  @$pb.TagNumber(9)
  GatewayWiped get wiped => $_getN(8);
  @$pb.TagNumber(9)
  set wiped(GatewayWiped value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasWiped() => $_has(8);
  @$pb.TagNumber(9)
  void clearWiped() => $_clearField(9);
  @$pb.TagNumber(9)
  GatewayWiped ensureWiped() => $_ensure(8);
}

enum GatewayConnectResponse_Payload {
  offer,
  iceCandidate,
  redeemInvite,
  vouchedAdministrators,
  transferOutcome,
  streamOpened,
  gatewayDeleted,
  notSet
}

/// Messages sent by the api-server to the building-server gateway.
class GatewayConnectResponse extends $pb.GeneratedMessage {
  factory GatewayConnectResponse({
    $0.UserId? fromUserId,
    SdpOffer? offer,
    IceCandidate? iceCandidate,
    $core.String? sessionId,
    RedeemInvite? redeemInvite,
    VouchedAdministrators? vouchedAdministrators,
    TransferOutcome? transferOutcome,
    GatewayStreamOpened? streamOpened,
    GatewayDeleted? gatewayDeleted,
  }) {
    final result = create();
    if (fromUserId != null) result.fromUserId = fromUserId;
    if (offer != null) result.offer = offer;
    if (iceCandidate != null) result.iceCandidate = iceCandidate;
    if (sessionId != null) result.sessionId = sessionId;
    if (redeemInvite != null) result.redeemInvite = redeemInvite;
    if (vouchedAdministrators != null)
      result.vouchedAdministrators = vouchedAdministrators;
    if (transferOutcome != null) result.transferOutcome = transferOutcome;
    if (streamOpened != null) result.streamOpened = streamOpened;
    if (gatewayDeleted != null) result.gatewayDeleted = gatewayDeleted;
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
    5: GatewayConnectResponse_Payload.redeemInvite,
    6: GatewayConnectResponse_Payload.vouchedAdministrators,
    7: GatewayConnectResponse_Payload.transferOutcome,
    8: GatewayConnectResponse_Payload.streamOpened,
    9: GatewayConnectResponse_Payload.gatewayDeleted,
    0: GatewayConnectResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayConnectResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 5, 6, 7, 8, 9])
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'fromUserId',
        subBuilder: $0.UserId.create)
    ..aOM<SdpOffer>(2, _omitFieldNames ? '' : 'offer',
        subBuilder: SdpOffer.create)
    ..aOM<IceCandidate>(3, _omitFieldNames ? '' : 'iceCandidate',
        subBuilder: IceCandidate.create)
    ..aOS(4, _omitFieldNames ? '' : 'sessionId')
    ..aOM<RedeemInvite>(5, _omitFieldNames ? '' : 'redeemInvite',
        subBuilder: RedeemInvite.create)
    ..aOM<VouchedAdministrators>(
        6, _omitFieldNames ? '' : 'vouchedAdministrators',
        subBuilder: VouchedAdministrators.create)
    ..aOM<TransferOutcome>(7, _omitFieldNames ? '' : 'transferOutcome',
        subBuilder: TransferOutcome.create)
    ..aOM<GatewayStreamOpened>(8, _omitFieldNames ? '' : 'streamOpened',
        subBuilder: GatewayStreamOpened.create)
    ..aOM<GatewayDeleted>(9, _omitFieldNames ? '' : 'gatewayDeleted',
        subBuilder: GatewayDeleted.create)
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

  /// On redeem_invite, the user redeeming: the sub of the token the api-server
  /// verified, and never a value the user supplied. Unset on what concerns the
  /// gateway itself (stream_opened, vouched_administrators, transfer_outcome,
  /// gateway_deleted), which is from no user.
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
  /// contract above. Unset on redeem_invite and on what concerns the gateway
  /// itself, which belong to no session.
  @$pb.TagNumber(4)
  $core.String get sessionId => $_getSZ(3);
  @$pb.TagNumber(4)
  set sessionId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionId() => $_clearField(4);

  @$pb.TagNumber(5)
  RedeemInvite get redeemInvite => $_getN(4);
  @$pb.TagNumber(5)
  set redeemInvite(RedeemInvite value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasRedeemInvite() => $_has(4);
  @$pb.TagNumber(5)
  void clearRedeemInvite() => $_clearField(5);
  @$pb.TagNumber(5)
  RedeemInvite ensureRedeemInvite() => $_ensure(4);

  @$pb.TagNumber(6)
  VouchedAdministrators get vouchedAdministrators => $_getN(5);
  @$pb.TagNumber(6)
  set vouchedAdministrators(VouchedAdministrators value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasVouchedAdministrators() => $_has(5);
  @$pb.TagNumber(6)
  void clearVouchedAdministrators() => $_clearField(6);
  @$pb.TagNumber(6)
  VouchedAdministrators ensureVouchedAdministrators() => $_ensure(5);

  @$pb.TagNumber(7)
  TransferOutcome get transferOutcome => $_getN(6);
  @$pb.TagNumber(7)
  set transferOutcome(TransferOutcome value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasTransferOutcome() => $_has(6);
  @$pb.TagNumber(7)
  void clearTransferOutcome() => $_clearField(7);
  @$pb.TagNumber(7)
  TransferOutcome ensureTransferOutcome() => $_ensure(6);

  @$pb.TagNumber(8)
  GatewayStreamOpened get streamOpened => $_getN(7);
  @$pb.TagNumber(8)
  set streamOpened(GatewayStreamOpened value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasStreamOpened() => $_has(7);
  @$pb.TagNumber(8)
  void clearStreamOpened() => $_clearField(8);
  @$pb.TagNumber(8)
  GatewayStreamOpened ensureStreamOpened() => $_ensure(7);

  @$pb.TagNumber(9)
  GatewayDeleted get gatewayDeleted => $_getN(8);
  @$pb.TagNumber(9)
  set gatewayDeleted(GatewayDeleted value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasGatewayDeleted() => $_has(8);
  @$pb.TagNumber(9)
  void clearGatewayDeleted() => $_clearField(9);
  @$pb.TagNumber(9)
  GatewayDeleted ensureGatewayDeleted() => $_ensure(8);
}

enum RedeemInvite_Secret { token, code, notSet }

/// A person redeeming an invite (webrtc.v1 CreateInvite), api-server → gateway.
/// The one request on this stream that the gateway answers, with a
/// RedeemInviteResult carrying the same request_id.
///
/// The api-server sends it only to the gateway whose invite routes hold the
/// secret's hash (reporting.v1.ReportInviteRoutesRequest), and only for a user
/// whose account has a verified email: it answers a user without one itself,
/// before routing. A hash held by more than one gateway routes nowhere and is
/// answered as INVALID.
///
/// A code is 40 bits, few enough to guess at. The api-server limits how often each
/// user, and each client address, may redeem, and answers past that limit itself.
///
/// The api-server waits at least 30 seconds for the result. With no result by
/// then, or no stream to send on, it tells the user to try again later; the redeem
/// may or may not have been done. Trying again is safe: a redeem is idempotent for
/// its user (see RedeemOutcome).
class RedeemInvite extends $pb.GeneratedMessage {
  factory RedeemInvite({
    $core.String? requestId,
    $core.String? token,
    $core.String? code,
    $core.String? displayName,
    $core.String? verifiedEmail,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (token != null) result.token = token;
    if (code != null) result.code = code;
    if (displayName != null) result.displayName = displayName;
    if (verifiedEmail != null) result.verifiedEmail = verifiedEmail;
    return result;
  }

  RedeemInvite._();

  factory RedeemInvite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RedeemInvite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, RedeemInvite_Secret>
      _RedeemInvite_SecretByTag = {
    2: RedeemInvite_Secret.token,
    3: RedeemInvite_Secret.code,
    0: RedeemInvite_Secret.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RedeemInvite',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..aOS(3, _omitFieldNames ? '' : 'code')
    ..aOS(4, _omitFieldNames ? '' : 'displayName')
    ..aOS(5, _omitFieldNames ? '' : 'verifiedEmail')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RedeemInvite clone() => RedeemInvite()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RedeemInvite copyWith(void Function(RedeemInvite) updates) =>
      super.copyWith((message) => updates(message as RedeemInvite))
          as RedeemInvite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedeemInvite create() => RedeemInvite._();
  @$core.override
  RedeemInvite createEmptyInstance() => create();
  static $pb.PbList<RedeemInvite> createRepeated() =>
      $pb.PbList<RedeemInvite>();
  @$core.pragma('dart2js:noInline')
  static RedeemInvite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RedeemInvite>(create);
  static RedeemInvite? _defaultInstance;

  RedeemInvite_Secret whichSecret() =>
      _RedeemInvite_SecretByTag[$_whichOneof(0)]!;
  void clearSecret() => $_clearField($_whichOneof(0));

  /// Minted by the api-server, opaque, unique among its redeems in flight.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => $_clearField(3);

  /// The display name the user's token carries, for the join request it may make, by the
  /// same rule as webrtc.v1.AppTokenClaims.name: the identity provider's display-name claim
  /// alone, never a username or an email address. May be empty.
  @$pb.TagNumber(4)
  $core.String get displayName => $_getSZ(3);
  @$pb.TagNumber(4)
  set displayName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDisplayName() => $_has(3);
  @$pb.TagNumber(4)
  void clearDisplayName() => $_clearField(4);

  /// The verified email address of the user's account, as their token states it.
  /// Never an address the token does not mark verified.
  @$pb.TagNumber(5)
  $core.String get verifiedEmail => $_getSZ(4);
  @$pb.TagNumber(5)
  set verifiedEmail($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVerifiedEmail() => $_has(4);
  @$pb.TagNumber(5)
  void clearVerifiedEmail() => $_clearField(5);
}

/// The answer to a RedeemInvite, gateway → api-server.
class RedeemInviteResult extends $pb.GeneratedMessage {
  factory RedeemInviteResult({
    $core.String? requestId,
    RedeemOutcome? outcome,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (outcome != null) result.outcome = outcome;
    return result;
  }

  RedeemInviteResult._();

  factory RedeemInviteResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RedeemInviteResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RedeemInviteResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..e<RedeemOutcome>(2, _omitFieldNames ? '' : 'outcome', $pb.PbFieldType.OE,
        defaultOrMaker: RedeemOutcome.REDEEM_OUTCOME_UNSPECIFIED,
        valueOf: RedeemOutcome.valueOf,
        enumValues: RedeemOutcome.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RedeemInviteResult clone() => RedeemInviteResult()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RedeemInviteResult copyWith(void Function(RedeemInviteResult) updates) =>
      super.copyWith((message) => updates(message as RedeemInviteResult))
          as RedeemInviteResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedeemInviteResult create() => RedeemInviteResult._();
  @$core.override
  RedeemInviteResult createEmptyInstance() => create();
  static $pb.PbList<RedeemInviteResult> createRepeated() =>
      $pb.PbList<RedeemInviteResult>();
  @$core.pragma('dart2js:noInline')
  static RedeemInviteResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RedeemInviteResult>(create);
  static RedeemInviteResult? _defaultInstance;

  /// As RedeemInvite.request_id.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  RedeemOutcome get outcome => $_getN(1);
  @$pb.TagNumber(2)
  set outcome(RedeemOutcome value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOutcome() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutcome() => $_clearField(2);
}

/// The api-server's first message on every GatewayConnect stream, sent before any other. It
/// carries the ownership epoch of the gateway's owner record.
///
/// OWNER OF RECORD. A gateway is owned by an organisation, which the api-server keeps; the
/// organisation's administrators are the gateway's vouched administrators. The api-server
/// vouches for them twice: in the token of each session one of them opens
/// (webrtc.v1.AppTokenClaims.roles), and to the gateway, as the whole set
/// (VouchedAdministrators). Neither can be changed on the gateway. A gateway moves to another
/// organisation only by a transfer the receiving organisation accepted (TransferOutcome).
///
/// OWNERSHIP EPOCH. An opaque id the api-server gives each owner record of a gateway. It is new
/// at the first registration after the gateway was deleted, and only then: a revoke, a
/// re-registration by the owning organisation and a transfer all keep it. The gateway takes it
/// from the api-server's answer to its own registration (registration.v1.RegistrationComplete)
/// and from this message, and from nowhere else: never from an app session, nor from anything an
/// app hands over, the registration token included. It keeps the epoch it holds across restarts.
///
/// Given an epoch other than the one it holds, the gateway wipes people and history (see
/// GatewayDeleted, WIPE), space names included, before it admits any session or applies anything
/// else from that registration or stream, and then holds the new epoch. A gateway holding no epoch takes the first it is given and wipes nothing. The
/// epoch it holds, given again, changes nothing, so the same epoch twice wipes once.
///
/// A gateway that holds an epoch treats a stream on which anything arrives before this message,
/// or this message with an empty epoch, as not open: it applies nothing from it and closes it.
/// So the api-server must send this message first on every stream before a gateway that
/// requires it is deployed.
class GatewayStreamOpened extends $pb.GeneratedMessage {
  factory GatewayStreamOpened({
    $core.String? ownershipEpoch,
  }) {
    final result = create();
    if (ownershipEpoch != null) result.ownershipEpoch = ownershipEpoch;
    return result;
  }

  GatewayStreamOpened._();

  factory GatewayStreamOpened.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GatewayStreamOpened.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayStreamOpened',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ownershipEpoch')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayStreamOpened clone() => GatewayStreamOpened()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayStreamOpened copyWith(void Function(GatewayStreamOpened) updates) =>
      super.copyWith((message) => updates(message as GatewayStreamOpened))
          as GatewayStreamOpened;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GatewayStreamOpened create() => GatewayStreamOpened._();
  @$core.override
  GatewayStreamOpened createEmptyInstance() => create();
  static $pb.PbList<GatewayStreamOpened> createRepeated() =>
      $pb.PbList<GatewayStreamOpened>();
  @$core.pragma('dart2js:noInline')
  static GatewayStreamOpened getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GatewayStreamOpened>(create);
  static GatewayStreamOpened? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ownershipEpoch => $_getSZ(0);
  @$pb.TagNumber(1)
  set ownershipEpoch($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOwnershipEpoch() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnershipEpoch() => $_clearField(1);
}

/// The gateway was deleted at the api-server, api-server → gateway: the owner record with
/// ownership_epoch has ended, and the gateway decommissions at once. Sent to a connected gateway
/// before the api-server ends its stream, and answered with GatewayWiped. A gateway offline when
/// it is deleted learns it from the new epoch at its next registration instead
/// (GatewayStreamOpened, OWNERSHIP EPOCH), and wipes then just as it would have now.
///
/// A delete is not a revoke. A revoke ends the gateway's certificate and keeps its owner: it sends
/// no notice and wipes nothing, and a revoked gateway registered again by the owning organisation
/// keeps everything. A delete ends the owner record itself, so the gateway starts empty for
/// whoever registers it next, and nothing about people is carried to an organisation that did not
/// choose it.
///
/// A notice naming the epoch the gateway holds makes it wipe at once, in the scope asked and
/// before it applies anything else, and then hold no epoch. A repeat of the notice it last applied
/// is acknowledged again as before and changes nothing; a notice naming any other epoch is
/// ignored.
///
/// WIPE. A wipe of people and history (WIPE_SCOPE_PEOPLE_AND_HISTORY) keeps the building's setup:
/// its spaces, with their structure and types; its devices and how they are filed; device links;
/// connector configuration; the building's time zone; and the gateway's own credentials and the
/// settings that are not about people. Everything about people goes: every user, role,
/// membership and residency, with its residency id; every invite, join request and promotion
/// request; every name and email address; the vouched administrators and their version; every end
/// of access; every device's ownership, an owned device staying filed where it is, released, as
/// one of the building's own; every contact; and everything recorded per home — room history,
/// climate summaries, events, targets, modes and routines — including what is still queued for the
/// api-server about any of them, and the gateway's own records of who did what. Every open session
/// ends, and none is admitted until the wipe is done.
///
/// Logs. A wipe takes what the gateway itself keeps; the operating system's log of the host it
/// runs on is not the gateway's to erase, and what it holds stays until the host's own retention
/// drops it. A gateway SHOULD NOT write user ids or names to that log in normal operation, so that
/// nothing about people outlives a wipe there.
///
/// It always renames every space too, since a name can name a person ("Ilse's room"): each gets a
/// generic name, its type and its number among the spaces of that type under the same parent,
/// counted from 1 in the order the gateway lists them — "Apartment 1", "Floor 2", "Room 3". In
/// English, as here, since nothing on the gateway knows the building's language. The renaming is
/// part of the wipe: done in the same step, all of it or none, and keyed by the same epoch, so it
/// is done once per epoch as the rest is.
/// No space is removed or moved by it; each keeps its type, its place in the structure, its
/// devices, its filing and its links.
///
/// The gateway then reports as a gateway starting afresh does: on new streams, a snapshot with no
/// members (reporting.v1.ReportMembersRequest), no service reach and no invite routes, so the
/// api-server's record of who belongs to the gateway empties too.
class GatewayDeleted extends $pb.GeneratedMessage {
  factory GatewayDeleted({
    $core.String? ownershipEpoch,
    WipeScope? scope,
  }) {
    final result = create();
    if (ownershipEpoch != null) result.ownershipEpoch = ownershipEpoch;
    if (scope != null) result.scope = scope;
    return result;
  }

  GatewayDeleted._();

  factory GatewayDeleted.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GatewayDeleted.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayDeleted',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ownershipEpoch')
    ..e<WipeScope>(2, _omitFieldNames ? '' : 'scope', $pb.PbFieldType.OE,
        defaultOrMaker: WipeScope.WIPE_SCOPE_UNSPECIFIED,
        valueOf: WipeScope.valueOf,
        enumValues: WipeScope.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayDeleted clone() => GatewayDeleted()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayDeleted copyWith(void Function(GatewayDeleted) updates) =>
      super.copyWith((message) => updates(message as GatewayDeleted))
          as GatewayDeleted;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GatewayDeleted create() => GatewayDeleted._();
  @$core.override
  GatewayDeleted createEmptyInstance() => create();
  static $pb.PbList<GatewayDeleted> createRepeated() =>
      $pb.PbList<GatewayDeleted>();
  @$core.pragma('dart2js:noInline')
  static GatewayDeleted getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GatewayDeleted>(create);
  static GatewayDeleted? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ownershipEpoch => $_getSZ(0);
  @$pb.TagNumber(1)
  set ownershipEpoch($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOwnershipEpoch() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnershipEpoch() => $_clearField(1);

  @$pb.TagNumber(2)
  WipeScope get scope => $_getN(1);
  @$pb.TagNumber(2)
  set scope(WipeScope value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearScope() => $_clearField(2);
}

/// The gateway's acknowledgement of a GatewayDeleted, gateway → api-server: what it wiped.
///
/// For WIPE_SCOPE_PEOPLE_AND_HISTORY, sent once the wipe is done. For WIPE_SCOPE_FACTORY_RESET,
/// sent once everything but the gateway's credentials is gone and before it erases those, since
/// sending needs them; the credentials go at once after. The api-server then revokes the gateway's
/// certificate.
class GatewayWiped extends $pb.GeneratedMessage {
  factory GatewayWiped({
    $core.String? ownershipEpoch,
    WipeScope? scope,
    $core.Iterable<PairingsLeftBehind>? leftBehind,
  }) {
    final result = create();
    if (ownershipEpoch != null) result.ownershipEpoch = ownershipEpoch;
    if (scope != null) result.scope = scope;
    if (leftBehind != null) result.leftBehind.addAll(leftBehind);
    return result;
  }

  GatewayWiped._();

  factory GatewayWiped.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GatewayWiped.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayWiped',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ownershipEpoch')
    ..e<WipeScope>(2, _omitFieldNames ? '' : 'scope', $pb.PbFieldType.OE,
        defaultOrMaker: WipeScope.WIPE_SCOPE_UNSPECIFIED,
        valueOf: WipeScope.valueOf,
        enumValues: WipeScope.values)
    ..pc<PairingsLeftBehind>(
        3, _omitFieldNames ? '' : 'leftBehind', $pb.PbFieldType.PM,
        subBuilder: PairingsLeftBehind.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayWiped clone() => GatewayWiped()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayWiped copyWith(void Function(GatewayWiped) updates) =>
      super.copyWith((message) => updates(message as GatewayWiped))
          as GatewayWiped;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GatewayWiped create() => GatewayWiped._();
  @$core.override
  GatewayWiped createEmptyInstance() => create();
  static $pb.PbList<GatewayWiped> createRepeated() =>
      $pb.PbList<GatewayWiped>();
  @$core.pragma('dart2js:noInline')
  static GatewayWiped getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GatewayWiped>(create);
  static GatewayWiped? _defaultInstance;

  /// As GatewayDeleted.ownership_epoch.
  @$pb.TagNumber(1)
  $core.String get ownershipEpoch => $_getSZ(0);
  @$pb.TagNumber(1)
  set ownershipEpoch($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOwnershipEpoch() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnershipEpoch() => $_clearField(1);

  /// The scope the gateway applied: WIPE_SCOPE_PEOPLE_AND_HISTORY when it was asked for that, and
  /// when it was asked for a factory reset it does not perform.
  @$pb.TagNumber(2)
  WipeScope get scope => $_getN(1);
  @$pb.TagNumber(2)
  set scope(WipeScope value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasScope() => $_has(1);
  @$pb.TagNumber(2)
  void clearScope() => $_clearField(2);

  /// With WIPE_SCOPE_FACTORY_RESET: each piece of other hardware that still holds pairings the
  /// reset could not reach, for the person who asked to reset it by hand. Empty otherwise.
  @$pb.TagNumber(3)
  $pb.PbList<PairingsLeftBehind> get leftBehind => $_getList(2);
}

/// Hardware a connector drives that keeps its own pairings through a factory reset.
class PairingsLeftBehind extends $pb.GeneratedMessage {
  factory PairingsLeftBehind({
    $2.ConnectorKind? kind,
    $core.String? displayName,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (displayName != null) result.displayName = displayName;
    return result;
  }

  PairingsLeftBehind._();

  factory PairingsLeftBehind.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PairingsLeftBehind.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PairingsLeftBehind',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..e<$2.ConnectorKind>(1, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: $2.ConnectorKind.CONNECTOR_KIND_UNSPECIFIED,
        valueOf: $2.ConnectorKind.valueOf,
        enumValues: $2.ConnectorKind.values)
    ..aOS(2, _omitFieldNames ? '' : 'displayName')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingsLeftBehind clone() => PairingsLeftBehind()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PairingsLeftBehind copyWith(void Function(PairingsLeftBehind) updates) =>
      super.copyWith((message) => updates(message as PairingsLeftBehind))
          as PairingsLeftBehind;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PairingsLeftBehind create() => PairingsLeftBehind._();
  @$core.override
  PairingsLeftBehind createEmptyInstance() => create();
  static $pb.PbList<PairingsLeftBehind> createRepeated() =>
      $pb.PbList<PairingsLeftBehind>();
  @$core.pragma('dart2js:noInline')
  static PairingsLeftBehind getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PairingsLeftBehind>(create);
  static PairingsLeftBehind? _defaultInstance;

  /// As the connector described itself (webrtc.v1.ConnectorDescriptor): what kind of hardware,
  /// and its name, for a person.
  @$pb.TagNumber(1)
  $2.ConnectorKind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind($2.ConnectorKind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get displayName => $_getSZ(1);
  @$pb.TagNumber(2)
  set displayName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDisplayName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisplayName() => $_clearField(2);
}

/// The administrators of the organisation that owns the gateway, api-server → gateway: the whole
/// set each time, never a change to it.
///
/// The api-server sends it on every stream, after GatewayStreamOpened and any unacknowledged
/// TransferOutcome, and again whenever the set or the organisation's name changes. It sends the
/// newest set again on every stream until the gateway acknowledges its version
/// (VouchedAdministratorsApplied).
///
/// It grants nothing on its own. A session holds ROLE_GATEWAY_ADMIN as a vouched administrator
/// only when the token it opened with carries it (webrtc.v1.AppTokenClaims.roles); a user named
/// here who connects with a token that does not is no administrator in that session. What the set
/// says is who the administrators are between their tokens:
///   * every user it names is a member of the gateway, listed as a vouched administrator
///     (webrtc.v1.MemberDetail.vouched_admin) and counted under ROLE_GATEWAY_ADMIN, whether or not
///     the gateway has seen them connect. Their name and email address are learnt from their own
///     tokens, and are unknown until then;
///   * their administration cannot be changed on the gateway (webrtc.v1 members.proto,
///     "vouched_admin");
///   * when a set the gateway applies drops a user, the gateway ends the administration of every
///     open session of theirs at once, without waiting for them to reconnect: the session loses
///     ROLE_GATEWAY_ADMIN as any change of role reaches it (webrtc.v1.LivePermissionUpdate,
///     session_roles), unless the gateway holds that role for them itself;
///   * a token issued (AppTokenClaims.iat, in whole seconds) no later than the second in which
///     the set the gateway holds was issued, for a user that set does not name, vouches for no
///     administration, so a token minted before a user was dropped cannot bring it back. A token
///     issued later is honoured whether or not the set names its user, since the set may lag
///     behind it.
///
/// Safe to lose, repeat and reorder: the gateway applies a set only when its version is above the
/// one it holds, ignores any other, and acknowledges each with the version it then holds. It keeps
/// the set it holds, with its version and issued_at, across restarts, so a restart forgets nothing
/// before the stream opens again. A wipe drops it, version included (GatewayDeleted, WIPE), so the
/// versions of a new owner record start afresh.
class VouchedAdministrators extends $pb.GeneratedMessage {
  factory VouchedAdministrators({
    $fixnum.Int64? version,
    $core.Iterable<$0.UserId>? administrators,
    $core.String? organisationName,
    $1.Timestamp? issuedAt,
  }) {
    final result = create();
    if (version != null) result.version = version;
    if (administrators != null) result.administrators.addAll(administrators);
    if (organisationName != null) result.organisationName = organisationName;
    if (issuedAt != null) result.issuedAt = issuedAt;
    return result;
  }

  VouchedAdministrators._();

  factory VouchedAdministrators.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VouchedAdministrators.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VouchedAdministrators',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$0.UserId>(
        2, _omitFieldNames ? '' : 'administrators', $pb.PbFieldType.PM,
        subBuilder: $0.UserId.create)
    ..aOS(3, _omitFieldNames ? '' : 'organisationName')
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'issuedAt',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VouchedAdministrators clone() =>
      VouchedAdministrators()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VouchedAdministrators copyWith(
          void Function(VouchedAdministrators) updates) =>
      super.copyWith((message) => updates(message as VouchedAdministrators))
          as VouchedAdministrators;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VouchedAdministrators create() => VouchedAdministrators._();
  @$core.override
  VouchedAdministrators createEmptyInstance() => create();
  static $pb.PbList<VouchedAdministrators> createRepeated() =>
      $pb.PbList<VouchedAdministrators>();
  @$core.pragma('dart2js:noInline')
  static VouchedAdministrators getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VouchedAdministrators>(create);
  static VouchedAdministrators? _defaultInstance;

  /// Above that of every set the api-server sent before under the same ownership epoch. Never zero.
  @$pb.TagNumber(1)
  $fixnum.Int64 get version => $_getI64(0);
  @$pb.TagNumber(1)
  set version($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);

  /// Each administrator of the owning organisation, once. Never empty, since an organisation
  /// always has one. The set carries no one's name or email address.
  @$pb.TagNumber(2)
  $pb.PbList<$0.UserId> get administrators => $_getList(1);

  /// The owning organisation's name, as its administrators set it: what
  /// webrtc.v1.PrivacyDisclosure.owner_organisation_name tells. Never its organisation number.
  @$pb.TagNumber(3)
  $core.String get organisationName => $_getSZ(2);
  @$pb.TagNumber(3)
  set organisationName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOrganisationName() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrganisationName() => $_clearField(3);

  /// When the api-server made this set, on the clock that sets AppTokenClaims.iat, so the two
  /// compare. Never earlier than an earlier version's.
  @$pb.TagNumber(4)
  $1.Timestamp get issuedAt => $_getN(3);
  @$pb.TagNumber(4)
  set issuedAt($1.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasIssuedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearIssuedAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureIssuedAt() => $_ensure(3);
}

/// The gateway's acknowledgement of a VouchedAdministrators, gateway → api-server.
class VouchedAdministratorsApplied extends $pb.GeneratedMessage {
  factory VouchedAdministratorsApplied({
    $fixnum.Int64? version,
  }) {
    final result = create();
    if (version != null) result.version = version;
    return result;
  }

  VouchedAdministratorsApplied._();

  factory VouchedAdministratorsApplied.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VouchedAdministratorsApplied.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VouchedAdministratorsApplied',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'version', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VouchedAdministratorsApplied clone() =>
      VouchedAdministratorsApplied()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VouchedAdministratorsApplied copyWith(
          void Function(VouchedAdministratorsApplied) updates) =>
      super.copyWith(
              (message) => updates(message as VouchedAdministratorsApplied))
          as VouchedAdministratorsApplied;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VouchedAdministratorsApplied create() =>
      VouchedAdministratorsApplied._();
  @$core.override
  VouchedAdministratorsApplied createEmptyInstance() => create();
  static $pb.PbList<VouchedAdministratorsApplied> createRepeated() =>
      $pb.PbList<VouchedAdministratorsApplied>();
  @$core.pragma('dart2js:noInline')
  static VouchedAdministratorsApplied getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VouchedAdministratorsApplied>(create);
  static VouchedAdministratorsApplied? _defaultInstance;

  /// The version the gateway holds once it has applied or ignored the set, which may be above
  /// the one acknowledged. The api-server sends no set at or below it again.
  @$pb.TagNumber(1)
  $fixnum.Int64 get version => $_getI64(0);
  @$pb.TagNumber(1)
  set version($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => $_clearField(1);
}

/// A transfer of the gateway to another organisation, accepted by an administrator of the
/// receiving one, api-server → gateway. It carries the receiving organisation's vouched set and
/// what becomes of each outgoing staff member, and the gateway applies the two in one step — all
/// of it or none — before anything after it on the stream. The ownership epoch is kept: residents,
/// technicians, spaces and devices stay as they are.
///
/// The api-server keeps an outcome until the gateway acknowledges it (TransferOutcomeApplied),
/// through the gateway's offline spells, and sends it on every stream right after
/// GatewayStreamOpened. While one is unacknowledged it sends the vouched set only inside it, as
/// administrators, the newest set. Applying is idempotent by transfer_id: an outcome already
/// applied is acknowledged again, its outgoing choices are not applied again, and its set is
/// applied as any VouchedAdministrators is, by version.
///
/// The outgoing staff are everyone named in outgoing and everyone holding ROLE_GATEWAY_ADMIN or
/// ROLE_PROPERTY_OWNER on the gateway as the outcome is applied — save anyone the new set names,
/// who is of the receiving organisation and is left as they are. The api-server names in outgoing
/// every administrator of the sending organisation, and everyone it holds as reported with
/// ROLE_GATEWAY_ADMIN or ROLE_PROPERTY_OWNER (reporting.v1.GatewayMember). Each outgoing staff
/// member either:
///   * leaves: their choice is LEAVE, UNSPECIFIED or a value the gateway does not know, or they
///     are not named in outgoing at all, so a transfer keeps no one by omission. The gateway takes
///     every role it holds for them and every SERVICE membership, with the pending invites they
///     made as staff, as RemoveFromGateway by user id does from a caller who lives in none of
///     their homes. It never ends a residency, nor the invites they made as its resident;
///   * or stays as a technician: STAY_AS_TECHNICIAN. The gateway takes ROLE_GATEWAY_ADMIN and
///     ROLE_PROPERTY_OWNER as webrtc.v1.SetMemberRole taking them away does, gives
///     ROLE_TECHNICIAN, keeps their SERVICE memberships, files them SERVICE on every top-level
///     space they are not filed on, and sets access_until as webrtc.v1.SetAccessUntil does. One
///     whose access_until is not after the moment the outcome is applied leaves instead.
/// Every change reaches the outgoing staff's open sessions at once, as a change of role does.
class TransferOutcome extends $pb.GeneratedMessage {
  factory TransferOutcome({
    $core.String? transferId,
    VouchedAdministrators? administrators,
    $core.Iterable<OutgoingChoice>? outgoing,
  }) {
    final result = create();
    if (transferId != null) result.transferId = transferId;
    if (administrators != null) result.administrators = administrators;
    if (outgoing != null) result.outgoing.addAll(outgoing);
    return result;
  }

  TransferOutcome._();

  factory TransferOutcome.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransferOutcome.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransferOutcome',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'transferId')
    ..aOM<VouchedAdministrators>(2, _omitFieldNames ? '' : 'administrators',
        subBuilder: VouchedAdministrators.create)
    ..pc<OutgoingChoice>(
        3, _omitFieldNames ? '' : 'outgoing', $pb.PbFieldType.PM,
        subBuilder: OutgoingChoice.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferOutcome clone() => TransferOutcome()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferOutcome copyWith(void Function(TransferOutcome) updates) =>
      super.copyWith((message) => updates(message as TransferOutcome))
          as TransferOutcome;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferOutcome create() => TransferOutcome._();
  @$core.override
  TransferOutcome createEmptyInstance() => create();
  static $pb.PbList<TransferOutcome> createRepeated() =>
      $pb.PbList<TransferOutcome>();
  @$core.pragma('dart2js:noInline')
  static TransferOutcome getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransferOutcome>(create);
  static TransferOutcome? _defaultInstance;

  /// Minted by the api-server, opaque, unique among the gateway's transfers.
  @$pb.TagNumber(1)
  $core.String get transferId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transferId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTransferId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransferId() => $_clearField(1);

  /// The receiving organisation's vouched set, as it stands.
  @$pb.TagNumber(2)
  VouchedAdministrators get administrators => $_getN(1);
  @$pb.TagNumber(2)
  set administrators(VouchedAdministrators value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAdministrators() => $_has(1);
  @$pb.TagNumber(2)
  void clearAdministrators() => $_clearField(2);
  @$pb.TagNumber(2)
  VouchedAdministrators ensureAdministrators() => $_ensure(1);

  /// What becomes of each outgoing staff member, once each.
  @$pb.TagNumber(3)
  $pb.PbList<OutgoingChoice> get outgoing => $_getList(2);
}

/// What a transfer does with one outgoing staff member (TransferOutcome).
class OutgoingChoice extends $pb.GeneratedMessage {
  factory OutgoingChoice({
    $0.UserId? userId,
    OutgoingStaffChoice? choice,
    $1.Timestamp? accessUntil,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (choice != null) result.choice = choice;
    if (accessUntil != null) result.accessUntil = accessUntil;
    return result;
  }

  OutgoingChoice._();

  factory OutgoingChoice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OutgoingChoice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OutgoingChoice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..e<OutgoingStaffChoice>(
        2, _omitFieldNames ? '' : 'choice', $pb.PbFieldType.OE,
        defaultOrMaker: OutgoingStaffChoice.OUTGOING_STAFF_CHOICE_UNSPECIFIED,
        valueOf: OutgoingStaffChoice.valueOf,
        enumValues: OutgoingStaffChoice.values)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'accessUntil',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OutgoingChoice clone() => OutgoingChoice()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OutgoingChoice copyWith(void Function(OutgoingChoice) updates) =>
      super.copyWith((message) => updates(message as OutgoingChoice))
          as OutgoingChoice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OutgoingChoice create() => OutgoingChoice._();
  @$core.override
  OutgoingChoice createEmptyInstance() => create();
  static $pb.PbList<OutgoingChoice> createRepeated() =>
      $pb.PbList<OutgoingChoice>();
  @$core.pragma('dart2js:noInline')
  static OutgoingChoice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OutgoingChoice>(create);
  static OutgoingChoice? _defaultInstance;

  @$pb.TagNumber(1)
  $0.UserId get userId => $_getN(0);
  @$pb.TagNumber(1)
  set userId($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureUserId() => $_ensure(0);

  @$pb.TagNumber(2)
  OutgoingStaffChoice get choice => $_getN(1);
  @$pb.TagNumber(2)
  set choice(OutgoingStaffChoice value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasChoice() => $_has(1);
  @$pb.TagNumber(2)
  void clearChoice() => $_clearField(2);

  /// When their access as a technician ends; unset for no end. Only with STAY_AS_TECHNICIAN, and
  /// ignored with any other choice.
  @$pb.TagNumber(3)
  $1.Timestamp get accessUntil => $_getN(2);
  @$pb.TagNumber(3)
  set accessUntil($1.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAccessUntil() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessUntil() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureAccessUntil() => $_ensure(2);
}

/// The gateway's acknowledgement of a TransferOutcome, gateway → api-server: applied now or
/// before. It acknowledges the outcome's vouched set too. The api-server sends the outcome no
/// more.
class TransferOutcomeApplied extends $pb.GeneratedMessage {
  factory TransferOutcomeApplied({
    $core.String? transferId,
  }) {
    final result = create();
    if (transferId != null) result.transferId = transferId;
    return result;
  }

  TransferOutcomeApplied._();

  factory TransferOutcomeApplied.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TransferOutcomeApplied.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TransferOutcomeApplied',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'transferId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferOutcomeApplied clone() =>
      TransferOutcomeApplied()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TransferOutcomeApplied copyWith(
          void Function(TransferOutcomeApplied) updates) =>
      super.copyWith((message) => updates(message as TransferOutcomeApplied))
          as TransferOutcomeApplied;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransferOutcomeApplied create() => TransferOutcomeApplied._();
  @$core.override
  TransferOutcomeApplied createEmptyInstance() => create();
  static $pb.PbList<TransferOutcomeApplied> createRepeated() =>
      $pb.PbList<TransferOutcomeApplied>();
  @$core.pragma('dart2js:noInline')
  static TransferOutcomeApplied getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TransferOutcomeApplied>(create);
  static TransferOutcomeApplied? _defaultInstance;

  /// As TransferOutcome.transfer_id.
  @$pb.TagNumber(1)
  $core.String get transferId => $_getSZ(0);
  @$pb.TagNumber(1)
  set transferId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTransferId() => $_has(0);
  @$pb.TagNumber(1)
  void clearTransferId() => $_clearField(1);
}

enum UserConnectRequest_Payload { handshake, offer, iceCandidate, notSet }

/// Messages sent by the app (GatewaySignalingService.UserConnect stream).
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

enum UserConnectResponse_Payload {
  handshakeAck,
  answer,
  iceCandidate,
  heartbeat,
  notSet
}

/// Messages sent by the api-server to the app.
///
/// One oneof serves both forms of the leg: UserListenResponse wraps this message
/// rather than restating its payloads, so an arm added here reaches the bidi and
/// half-duplex forms alike.
class UserConnectResponse extends $pb.GeneratedMessage {
  factory UserConnectResponse({
    UserHandshakeAck? handshakeAck,
    SdpAnswer? answer,
    IceCandidate? iceCandidate,
    $core.String? sessionId,
    HeartBeat? heartbeat,
  }) {
    final result = create();
    if (handshakeAck != null) result.handshakeAck = handshakeAck;
    if (answer != null) result.answer = answer;
    if (iceCandidate != null) result.iceCandidate = iceCandidate;
    if (sessionId != null) result.sessionId = sessionId;
    if (heartbeat != null) result.heartbeat = heartbeat;
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
    5: UserConnectResponse_Payload.heartbeat,
    0: UserConnectResponse_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserConnectResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 5])
    ..aOM<UserHandshakeAck>(1, _omitFieldNames ? '' : 'handshakeAck',
        subBuilder: UserHandshakeAck.create)
    ..aOM<SdpAnswer>(2, _omitFieldNames ? '' : 'answer',
        subBuilder: SdpAnswer.create)
    ..aOM<IceCandidate>(3, _omitFieldNames ? '' : 'iceCandidate',
        subBuilder: IceCandidate.create)
    ..aOS(4, _omitFieldNames ? '' : 'sessionId')
    ..aOM<HeartBeat>(5, _omitFieldNames ? '' : 'heartbeat',
        subBuilder: HeartBeat.create)
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
  /// Ignored on a heartbeat, which carries no routing target at all.
  @$pb.TagNumber(4)
  $core.String get sessionId => $_getSZ(3);
  @$pb.TagNumber(4)
  set sessionId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSessionId() => $_clearField(4);

  /// Keeps a silent stream alive. UserListen is downstream-only — the client
  /// opens it with a handshake and then writes nothing — so between the
  /// acknowledgement and an answer there is no traffic in either direction, and
  /// an idle negotiation can outlast a proxy's patience. Upstream cannot help:
  /// the client has nothing to send, and it is traffic *to* the client that
  /// resets a client-side idle timer.
  ///
  /// A client that does not know this arm sees an unset payload rather than an
  /// error, which is what the oneof buys.
  @$pb.TagNumber(5)
  HeartBeat get heartbeat => $_getN(4);
  @$pb.TagNumber(5)
  set heartbeat(HeartBeat value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasHeartbeat() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeartbeat() => $_clearField(5);
  @$pb.TagNumber(5)
  HeartBeat ensureHeartbeat() => $_ensure(4);
}

/// The app leg of the protocol exists twice. UserConnect is one bidi stream, and
/// is what a client uses when its transport can stream a request body. A client
/// whose transport cannot — a browser, whose fetch API has no full-duplex request
/// stream — uses UserListen and UserSend instead. Both forms carry the same
/// messages and are served by the same relay: once a session is live, how it was
/// opened is not observable.
///
/// Opens the downstream half of a half-duplex app session, and carries the
/// handshake that is the first frame of the bidi form. Field numbers are those of
/// the equivalent UserConnectRequest, so the two cannot be confused on the wire.
class UserListenRequest extends $pb.GeneratedMessage {
  factory UserListenRequest({
    UserHandshake? handshake,
    $core.String? sessionId,
  }) {
    final result = create();
    if (handshake != null) result.handshake = handshake;
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  UserListenRequest._();

  factory UserListenRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserListenRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserListenRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOM<UserHandshake>(1, _omitFieldNames ? '' : 'handshake',
        subBuilder: UserHandshake.create)
    ..aOS(4, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserListenRequest clone() => UserListenRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserListenRequest copyWith(void Function(UserListenRequest) updates) =>
      super.copyWith((message) => updates(message as UserListenRequest))
          as UserListenRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserListenRequest create() => UserListenRequest._();
  @$core.override
  UserListenRequest createEmptyInstance() => create();
  static $pb.PbList<UserListenRequest> createRepeated() =>
      $pb.PbList<UserListenRequest>();
  @$core.pragma('dart2js:noInline')
  static UserListenRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserListenRequest>(create);
  static UserListenRequest? _defaultInstance;

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

  /// This client's session: opaque, minted by the client, stable across
  /// reconnects, never a credential, and required. See the contract above.
  @$pb.TagNumber(4)
  $core.String get sessionId => $_getSZ(1);
  @$pb.TagNumber(4)
  set sessionId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(4)
  void clearSessionId() => $_clearField(4);
}

/// One message of the downstream half. Wraps the response the bidi form delivers
/// directly, rather than restating its payloads: a response message is not shared
/// between two rpcs, and a second copy of the oneof would be free to drift from
/// the first.
class UserListenResponse extends $pb.GeneratedMessage {
  factory UserListenResponse({
    UserConnectResponse? response,
  }) {
    final result = create();
    if (response != null) result.response = response;
    return result;
  }

  UserListenResponse._();

  factory UserListenResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserListenResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserListenResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..aOM<UserConnectResponse>(1, _omitFieldNames ? '' : 'response',
        subBuilder: UserConnectResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserListenResponse clone() => UserListenResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserListenResponse copyWith(void Function(UserListenResponse) updates) =>
      super.copyWith((message) => updates(message as UserListenResponse))
          as UserListenResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserListenResponse create() => UserListenResponse._();
  @$core.override
  UserListenResponse createEmptyInstance() => create();
  static $pb.PbList<UserListenResponse> createRepeated() =>
      $pb.PbList<UserListenResponse>();
  @$core.pragma('dart2js:noInline')
  static UserListenResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserListenResponse>(create);
  static UserListenResponse? _defaultInstance;

  @$pb.TagNumber(1)
  UserConnectResponse get response => $_getN(0);
  @$pb.TagNumber(1)
  set response(UserConnectResponse value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasResponse() => $_has(0);
  @$pb.TagNumber(1)
  void clearResponse() => $_clearField(1);
  @$pb.TagNumber(1)
  UserConnectResponse ensureResponse() => $_ensure(0);
}

enum UserSendRequest_Payload { offer, iceCandidate, notSet }

/// One upstream message of a half-duplex app session, delivered by its own call.
///
/// The session must already be open, which is what makes ordering the caller's
/// job: the handshake is acknowledged on the UserListen stream, and a UserSend
/// issued before that acknowledgement names a session the relay does not hold
/// yet. It is refused, not queued. Two sends racing each other can also arrive
/// out of order, so a caller that must preserve order — an offer before the
/// candidates that belong to it — issues them one at a time.
class UserSendRequest extends $pb.GeneratedMessage {
  factory UserSendRequest({
    SdpOffer? offer,
    IceCandidate? iceCandidate,
    $core.String? sessionId,
  }) {
    final result = create();
    if (offer != null) result.offer = offer;
    if (iceCandidate != null) result.iceCandidate = iceCandidate;
    if (sessionId != null) result.sessionId = sessionId;
    return result;
  }

  UserSendRequest._();

  factory UserSendRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserSendRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, UserSendRequest_Payload>
      _UserSendRequest_PayloadByTag = {
    2: UserSendRequest_Payload.offer,
    3: UserSendRequest_Payload.iceCandidate,
    0: UserSendRequest_Payload.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserSendRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOM<SdpOffer>(2, _omitFieldNames ? '' : 'offer',
        subBuilder: SdpOffer.create)
    ..aOM<IceCandidate>(3, _omitFieldNames ? '' : 'iceCandidate',
        subBuilder: IceCandidate.create)
    ..aOS(4, _omitFieldNames ? '' : 'sessionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserSendRequest clone() => UserSendRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserSendRequest copyWith(void Function(UserSendRequest) updates) =>
      super.copyWith((message) => updates(message as UserSendRequest))
          as UserSendRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserSendRequest create() => UserSendRequest._();
  @$core.override
  UserSendRequest createEmptyInstance() => create();
  static $pb.PbList<UserSendRequest> createRepeated() =>
      $pb.PbList<UserSendRequest>();
  @$core.pragma('dart2js:noInline')
  static UserSendRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserSendRequest>(create);
  static UserSendRequest? _defaultInstance;

  UserSendRequest_Payload whichPayload() =>
      _UserSendRequest_PayloadByTag[$_whichOneof(0)]!;
  void clearPayload() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  SdpOffer get offer => $_getN(0);
  @$pb.TagNumber(2)
  set offer(SdpOffer value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOffer() => $_has(0);
  @$pb.TagNumber(2)
  void clearOffer() => $_clearField(2);
  @$pb.TagNumber(2)
  SdpOffer ensureOffer() => $_ensure(0);

  @$pb.TagNumber(3)
  IceCandidate get iceCandidate => $_getN(1);
  @$pb.TagNumber(3)
  set iceCandidate(IceCandidate value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasIceCandidate() => $_has(1);
  @$pb.TagNumber(3)
  void clearIceCandidate() => $_clearField(3);
  @$pb.TagNumber(3)
  IceCandidate ensureIceCandidate() => $_ensure(1);

  /// The session to deliver into. See the contract above.
  @$pb.TagNumber(4)
  $core.String get sessionId => $_getSZ(2);
  @$pb.TagNumber(4)
  set sessionId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(4)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(4)
  void clearSessionId() => $_clearField(4);
}

/// Empty. Delivery is acknowledged by the call succeeding; a message that could
/// not be routed fails the call instead.
class UserSendResponse extends $pb.GeneratedMessage {
  factory UserSendResponse() => create();

  UserSendResponse._();

  factory UserSendResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UserSendResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UserSendResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.signaling.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserSendResponse clone() => UserSendResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserSendResponse copyWith(void Function(UserSendResponse) updates) =>
      super.copyWith((message) => updates(message as UserSendResponse))
          as UserSendResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserSendResponse create() => UserSendResponse._();
  @$core.override
  UserSendResponse createEmptyInstance() => create();
  static $pb.PbList<UserSendResponse> createRepeated() =>
      $pb.PbList<UserSendResponse>();
  @$core.pragma('dart2js:noInline')
  static UserSendResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserSendResponse>(create);
  static UserSendResponse? _defaultInstance;
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
