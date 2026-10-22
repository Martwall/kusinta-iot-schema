// This is a generated file - do not edit.
//
// Generated from kusinta/iot/accountlink/v1/account_link.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/duration.pb.dart' as $1;
import '../../../../google/protobuf/timestamp.pb.dart' as $0;
import 'account_link.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'account_link.pbenum.dart';

/// A single-use nonce for one home's link, in reply to RequestAccountLinkNonce: a compact JWS
/// carrying AccountLinkNonceClaims, signed by the gateway. The service sees it as the OAuth
/// state, so it names the home not at all and the user only as a hash: the gateway records
/// which home each jti was issued for.
class AccountLinkNonce extends $pb.GeneratedMessage {
  factory AccountLinkNonce({
    $core.String? nonce,
    $0.Timestamp? expiresAt,
  }) {
    final result = create();
    if (nonce != null) result.nonce = nonce;
    if (expiresAt != null) result.expiresAt = expiresAt;
    return result;
  }

  AccountLinkNonce._();

  factory AccountLinkNonce.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountLinkNonce.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountLinkNonce',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'nonce')
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'expiresAt',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountLinkNonce clone() => AccountLinkNonce()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountLinkNonce copyWith(void Function(AccountLinkNonce) updates) =>
      super.copyWith((message) => updates(message as AccountLinkNonce))
          as AccountLinkNonce;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountLinkNonce create() => AccountLinkNonce._();
  @$core.override
  AccountLinkNonce createEmptyInstance() => create();
  static $pb.PbList<AccountLinkNonce> createRepeated() =>
      $pb.PbList<AccountLinkNonce>();
  @$core.pragma('dart2js:noInline')
  static AccountLinkNonce getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountLinkNonce>(create);
  static AccountLinkNonce? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nonce => $_getSZ(0);
  @$pb.TagNumber(1)
  set nonce($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => $_clearField(1);

  /// As the claims' exp.
  @$pb.TagNumber(2)
  $0.Timestamp get expiresAt => $_getN(1);
  @$pb.TagNumber(2)
  set expiresAt($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExpiresAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpiresAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureExpiresAt() => $_ensure(1);
}

/// The contract for the claims of AccountLinkNonce.nonce, shared by the gateway, which signs
/// it, and the api-server, which verifies it. NOT sent on the wire, like
/// webrtc.v1.AppTokenClaims: registered claims are flat JWT strings and NumericDates.
///
/// Signed with the private key of the gateway's client certificate — the one it connects to
/// the api-server with — under the algorithm that key calls for. The JWS header carries
/// "x5t#S256", the thumbprint of that certificate, so the api-server finds it across a
/// renewal.
///
/// Before it calls the service, the api-server MUST verify that the certificate the
/// thumbprint names is the current certificate of the gateway named by iss — or the one it
/// replaced, for no more than 10 minutes after the renewal — and the signature by it, aud, svc
/// and exp, and that sub_hash is the hash of the user posting the code. When the grant comes
/// back, the gateway MUST verify the signature by its own key — its current one, or the one
/// it replaced for no more than 10 minutes after the renewal — that iss is itself, aud and
/// exp, and then accept the nonce once, by its jti, for the home it recorded for that jti,
/// and only while that user is still a household admin of the home. exp is judged on the
/// gateway's clock with no allowance for skew. A gateway that restarts mid-link may have
/// lost its jti record and answer REJECTED; the household links again.
class AccountLinkNonceClaims extends $pb.GeneratedMessage {
  factory AccountLinkNonceClaims({
    $core.String? iss,
    $core.String? aud,
    $core.String? subHash,
    $0.Timestamp? iat,
    $0.Timestamp? exp,
    $core.String? jti,
    $core.String? svc,
  }) {
    final result = create();
    if (iss != null) result.iss = iss;
    if (aud != null) result.aud = aud;
    if (subHash != null) result.subHash = subHash;
    if (iat != null) result.iat = iat;
    if (exp != null) result.exp = exp;
    if (jti != null) result.jti = jti;
    if (svc != null) result.svc = svc;
    return result;
  }

  AccountLinkNonceClaims._();

  factory AccountLinkNonceClaims.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountLinkNonceClaims.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountLinkNonceClaims',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'iss')
    ..aOS(2, _omitFieldNames ? '' : 'aud')
    ..aOS(3, _omitFieldNames ? '' : 'subHash')
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'iat',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'exp',
        subBuilder: $0.Timestamp.create)
    ..aOS(6, _omitFieldNames ? '' : 'jti')
    ..aOS(8, _omitFieldNames ? '' : 'svc')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountLinkNonceClaims clone() =>
      AccountLinkNonceClaims()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountLinkNonceClaims copyWith(
          void Function(AccountLinkNonceClaims) updates) =>
      super.copyWith((message) => updates(message as AccountLinkNonceClaims))
          as AccountLinkNonceClaims;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountLinkNonceClaims create() => AccountLinkNonceClaims._();
  @$core.override
  AccountLinkNonceClaims createEmptyInstance() => create();
  static $pb.PbList<AccountLinkNonceClaims> createRepeated() =>
      $pb.PbList<AccountLinkNonceClaims>();
  @$core.pragma('dart2js:noInline')
  static AccountLinkNonceClaims getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountLinkNonceClaims>(create);
  static AccountLinkNonceClaims? _defaultInstance;

  /// The gateway's id (identity.v1.GatewayId value).
  @$pb.TagNumber(1)
  $core.String get iss => $_getSZ(0);
  @$pb.TagNumber(1)
  set iss($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIss() => $_has(0);
  @$pb.TagNumber(1)
  void clearIss() => $_clearField(1);

  /// Always "account-link".
  @$pb.TagNumber(2)
  $core.String get aud => $_getSZ(1);
  @$pb.TagNumber(2)
  set aud($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAud() => $_has(1);
  @$pb.TagNumber(2)
  void clearAud() => $_clearField(2);

  /// The user it was issued to, as the unpadded base64url SHA-256 of their
  /// identity.v1.UserId value. Named in JWT as "sub_hash"; there is no "sub".
  @$pb.TagNumber(3)
  $core.String get subHash => $_getSZ(2);
  @$pb.TagNumber(3)
  set subHash($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSubHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubHash() => $_clearField(3);

  @$pb.TagNumber(4)
  $0.Timestamp get iat => $_getN(3);
  @$pb.TagNumber(4)
  set iat($0.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasIat() => $_has(3);
  @$pb.TagNumber(4)
  void clearIat() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureIat() => $_ensure(3);

  /// No more than 10 minutes after iat.
  @$pb.TagNumber(5)
  $0.Timestamp get exp => $_getN(4);
  @$pb.TagNumber(5)
  set exp($0.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasExp() => $_has(4);
  @$pb.TagNumber(5)
  void clearExp() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureExp() => $_ensure(4);

  /// Unique among the gateway's nonces, and not guessable.
  @$pb.TagNumber(6)
  $core.String get jti => $_getSZ(5);
  @$pb.TagNumber(6)
  set jti($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasJti() => $_has(5);
  @$pb.TagNumber(6)
  void clearJti() => $_clearField(6);

  /// The service, by its claim value (see LinkedService).
  @$pb.TagNumber(8)
  $core.String get svc => $_getSZ(6);
  @$pb.TagNumber(8)
  set svc($core.String value) => $_setString(6, value);
  @$pb.TagNumber(8)
  $core.bool hasSvc() => $_has(6);
  @$pb.TagNumber(8)
  void clearSvc() => $_clearField(8);
}

/// An access token and what it allows: all a reader of the service needs, without the means
/// to renew it.
class AccessGrant extends $pb.GeneratedMessage {
  factory AccessGrant({
    $core.String? accessToken,
    $0.Timestamp? expiresAt,
    $core.String? scope,
  }) {
    final result = create();
    if (accessToken != null) result.accessToken = accessToken;
    if (expiresAt != null) result.expiresAt = expiresAt;
    if (scope != null) result.scope = scope;
    return result;
  }

  AccessGrant._();

  factory AccessGrant.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccessGrant.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccessGrant',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken')
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'expiresAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(3, _omitFieldNames ? '' : 'scope')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessGrant clone() => AccessGrant()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessGrant copyWith(void Function(AccessGrant) updates) =>
      super.copyWith((message) => updates(message as AccessGrant))
          as AccessGrant;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccessGrant create() => AccessGrant._();
  @$core.override
  AccessGrant createEmptyInstance() => create();
  static $pb.PbList<AccessGrant> createRepeated() => $pb.PbList<AccessGrant>();
  @$core.pragma('dart2js:noInline')
  static AccessGrant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccessGrant>(create);
  static AccessGrant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.Timestamp get expiresAt => $_getN(1);
  @$pb.TagNumber(2)
  set expiresAt($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasExpiresAt() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpiresAt() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureExpiresAt() => $_ensure(1);

  /// As granted, space-separated.
  @$pb.TagNumber(3)
  $core.String get scope => $_getSZ(2);
  @$pb.TagNumber(3)
  set scope($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScope() => $_has(2);
  @$pb.TagNumber(3)
  void clearScope() => $_clearField(3);
}

/// A grant with its refresh token, which stays on the gateway.
class TokenGrant extends $pb.GeneratedMessage {
  factory TokenGrant({
    AccessGrant? access,
    $core.String? refreshToken,
  }) {
    final result = create();
    if (access != null) result.access = access;
    if (refreshToken != null) result.refreshToken = refreshToken;
    return result;
  }

  TokenGrant._();

  factory TokenGrant.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenGrant.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenGrant',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOM<AccessGrant>(1, _omitFieldNames ? '' : 'access',
        subBuilder: AccessGrant.create)
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGrant clone() => TokenGrant()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenGrant copyWith(void Function(TokenGrant) updates) =>
      super.copyWith((message) => updates(message as TokenGrant)) as TokenGrant;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenGrant create() => TokenGrant._();
  @$core.override
  TokenGrant createEmptyInstance() => create();
  static $pb.PbList<TokenGrant> createRepeated() => $pb.PbList<TokenGrant>();
  @$core.pragma('dart2js:noInline')
  static TokenGrant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenGrant>(create);
  static TokenGrant? _defaultInstance;

  @$pb.TagNumber(1)
  AccessGrant get access => $_getN(0);
  @$pb.TagNumber(1)
  set access(AccessGrant value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccess() => $_clearField(1);
  @$pb.TagNumber(1)
  AccessGrant ensureAccess() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => $_clearField(2);
}

/// A home's account linked, api-server → gateway. Answered with an AccountLinkResult carrying
/// the same request_id. With no answer within 30 seconds, the api-server sends an
/// AccountLinkCancelled, revokes the grant, and tells the app the link failed.
class AccountLinked extends $pb.GeneratedMessage {
  factory AccountLinked({
    $core.String? requestId,
    $core.String? nonce,
    TokenGrant? grant,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (nonce != null) result.nonce = nonce;
    if (grant != null) result.grant = grant;
    return result;
  }

  AccountLinked._();

  factory AccountLinked.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountLinked.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountLinked',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..aOS(2, _omitFieldNames ? '' : 'nonce')
    ..aOM<TokenGrant>(3, _omitFieldNames ? '' : 'grant',
        subBuilder: TokenGrant.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountLinked clone() => AccountLinked()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountLinked copyWith(void Function(AccountLinked) updates) =>
      super.copyWith((message) => updates(message as AccountLinked))
          as AccountLinked;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountLinked create() => AccountLinked._();
  @$core.override
  AccountLinked createEmptyInstance() => create();
  static $pb.PbList<AccountLinked> createRepeated() =>
      $pb.PbList<AccountLinked>();
  @$core.pragma('dart2js:noInline')
  static AccountLinked getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountLinked>(create);
  static AccountLinked? _defaultInstance;

  /// Minted by the api-server, opaque, unique among its links in flight.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  /// The nonce exactly as the app passed it as the OAuth state.
  @$pb.TagNumber(2)
  $core.String get nonce => $_getSZ(1);
  @$pb.TagNumber(2)
  set nonce($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNonce() => $_has(1);
  @$pb.TagNumber(2)
  void clearNonce() => $_clearField(2);

  @$pb.TagNumber(3)
  TokenGrant get grant => $_getN(2);
  @$pb.TagNumber(3)
  set grant(TokenGrant value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGrant() => $_has(2);
  @$pb.TagNumber(3)
  void clearGrant() => $_clearField(3);
  @$pb.TagNumber(3)
  TokenGrant ensureGrant() => $_ensure(2);
}

/// The api-server gave up waiting for an AccountLinkResult, api-server → gateway. A gateway
/// that stored the grant for that request_id deletes it, and answers nothing.
class AccountLinkCancelled extends $pb.GeneratedMessage {
  factory AccountLinkCancelled({
    $core.String? requestId,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    return result;
  }

  AccountLinkCancelled._();

  factory AccountLinkCancelled.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountLinkCancelled.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountLinkCancelled',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountLinkCancelled clone() =>
      AccountLinkCancelled()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountLinkCancelled copyWith(void Function(AccountLinkCancelled) updates) =>
      super.copyWith((message) => updates(message as AccountLinkCancelled))
          as AccountLinkCancelled;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountLinkCancelled create() => AccountLinkCancelled._();
  @$core.override
  AccountLinkCancelled createEmptyInstance() => create();
  static $pb.PbList<AccountLinkCancelled> createRepeated() =>
      $pb.PbList<AccountLinkCancelled>();
  @$core.pragma('dart2js:noInline')
  static AccountLinkCancelled getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountLinkCancelled>(create);
  static AccountLinkCancelled? _defaultInstance;

  /// As AccountLinked.request_id.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);
}

class AccountLinkResult extends $pb.GeneratedMessage {
  factory AccountLinkResult({
    $core.String? requestId,
    AccountLinkOutcome? outcome,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (outcome != null) result.outcome = outcome;
    return result;
  }

  AccountLinkResult._();

  factory AccountLinkResult.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AccountLinkResult.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AccountLinkResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..e<AccountLinkOutcome>(
        2, _omitFieldNames ? '' : 'outcome', $pb.PbFieldType.OE,
        defaultOrMaker: AccountLinkOutcome.ACCOUNT_LINK_OUTCOME_UNSPECIFIED,
        valueOf: AccountLinkOutcome.valueOf,
        enumValues: AccountLinkOutcome.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountLinkResult clone() => AccountLinkResult()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountLinkResult copyWith(void Function(AccountLinkResult) updates) =>
      super.copyWith((message) => updates(message as AccountLinkResult))
          as AccountLinkResult;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountLinkResult create() => AccountLinkResult._();
  @$core.override
  AccountLinkResult createEmptyInstance() => create();
  static $pb.PbList<AccountLinkResult> createRepeated() =>
      $pb.PbList<AccountLinkResult>();
  @$core.pragma('dart2js:noInline')
  static AccountLinkResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AccountLinkResult>(create);
  static AccountLinkResult? _defaultInstance;

  /// As AccountLinked.request_id.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  AccountLinkOutcome get outcome => $_getN(1);
  @$pb.TagNumber(2)
  set outcome(AccountLinkOutcome value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOutcome() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutcome() => $_clearField(2);
}

/// Asks the api-server to refresh a grant, gateway → api-server. Answered with a TokenRefreshed
/// carrying the same request_id.
///
/// The gateway refreshes only when it needs a current access token for a read — for a read
/// by a connector, while a connector session reading through the link is open — and not
/// before the access token is near its expiry, with a random margin, so that gateways do not
/// refresh together; and it has at most one refresh of a grant in flight. A gateway with no
/// answer asks again with the same request_id and refresh token, for up to 10 minutes; after
/// that it sends the old token no more, and the household links again.
///
/// The api-server MUST keep its answer in memory, keyed by the requesting gateway's identity
/// and a hash of the refresh token, for 10 minutes, and answer a repeated request from it
/// without asking the service: a service may rotate the refresh token, and a second exchange
/// of the old one would end the link. Across several api-server instances that memory is
/// shared, or a gateway's requests go to one instance. Nowhere else, and never in a log.
class RefreshToken extends $pb.GeneratedMessage {
  factory RefreshToken({
    $core.String? requestId,
    LinkedService? service,
    $core.String? refreshToken,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (service != null) result.service = service;
    if (refreshToken != null) result.refreshToken = refreshToken;
    return result;
  }

  RefreshToken._();

  factory RefreshToken.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RefreshToken.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RefreshToken',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..e<LinkedService>(2, _omitFieldNames ? '' : 'service', $pb.PbFieldType.OE,
        defaultOrMaker: LinkedService.LINKED_SERVICE_UNSPECIFIED,
        valueOf: LinkedService.valueOf,
        enumValues: LinkedService.values)
    ..aOS(3, _omitFieldNames ? '' : 'refreshToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshToken clone() => RefreshToken()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshToken copyWith(void Function(RefreshToken) updates) =>
      super.copyWith((message) => updates(message as RefreshToken))
          as RefreshToken;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshToken create() => RefreshToken._();
  @$core.override
  RefreshToken createEmptyInstance() => create();
  static $pb.PbList<RefreshToken> createRepeated() =>
      $pb.PbList<RefreshToken>();
  @$core.pragma('dart2js:noInline')
  static RefreshToken getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RefreshToken>(create);
  static RefreshToken? _defaultInstance;

  /// Minted by the gateway, opaque, unique among its requests in flight.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  LinkedService get service => $_getN(1);
  @$pb.TagNumber(2)
  set service(LinkedService value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasService() => $_has(1);
  @$pb.TagNumber(2)
  void clearService() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get refreshToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set refreshToken($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRefreshToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefreshToken() => $_clearField(3);
}

class TokenRefreshed extends $pb.GeneratedMessage {
  factory TokenRefreshed({
    $core.String? requestId,
    TokenOutcome? outcome,
    TokenGrant? grant,
    $1.Duration? retryAfter,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (outcome != null) result.outcome = outcome;
    if (grant != null) result.grant = grant;
    if (retryAfter != null) result.retryAfter = retryAfter;
    return result;
  }

  TokenRefreshed._();

  factory TokenRefreshed.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenRefreshed.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenRefreshed',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..e<TokenOutcome>(2, _omitFieldNames ? '' : 'outcome', $pb.PbFieldType.OE,
        defaultOrMaker: TokenOutcome.TOKEN_OUTCOME_UNSPECIFIED,
        valueOf: TokenOutcome.valueOf,
        enumValues: TokenOutcome.values)
    ..aOM<TokenGrant>(3, _omitFieldNames ? '' : 'grant',
        subBuilder: TokenGrant.create)
    ..aOM<$1.Duration>(4, _omitFieldNames ? '' : 'retryAfter',
        subBuilder: $1.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenRefreshed clone() => TokenRefreshed()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenRefreshed copyWith(void Function(TokenRefreshed) updates) =>
      super.copyWith((message) => updates(message as TokenRefreshed))
          as TokenRefreshed;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenRefreshed create() => TokenRefreshed._();
  @$core.override
  TokenRefreshed createEmptyInstance() => create();
  static $pb.PbList<TokenRefreshed> createRepeated() =>
      $pb.PbList<TokenRefreshed>();
  @$core.pragma('dart2js:noInline')
  static TokenRefreshed getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenRefreshed>(create);
  static TokenRefreshed? _defaultInstance;

  /// As RefreshToken.request_id.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  /// OK: grant replaces the gateway's. REJECTED: the service refused the refresh token, the
  /// link is gone, and the household links again. UNAVAILABLE: ask again after retry_after.
  @$pb.TagNumber(2)
  TokenOutcome get outcome => $_getN(1);
  @$pb.TagNumber(2)
  set outcome(TokenOutcome value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOutcome() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutcome() => $_clearField(2);

  /// OK only, and always whole: where the service issued no new refresh token, the api-server
  /// fills in the one it was sent.
  @$pb.TagNumber(3)
  TokenGrant get grant => $_getN(2);
  @$pb.TagNumber(3)
  set grant(TokenGrant value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGrant() => $_has(2);
  @$pb.TagNumber(3)
  void clearGrant() => $_clearField(3);
  @$pb.TagNumber(3)
  TokenGrant ensureGrant() => $_ensure(2);

  /// See TokenOutcome.
  @$pb.TagNumber(4)
  $1.Duration get retryAfter => $_getN(3);
  @$pb.TagNumber(4)
  set retryAfter($1.Duration value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRetryAfter() => $_has(3);
  @$pb.TagNumber(4)
  void clearRetryAfter() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Duration ensureRetryAfter() => $_ensure(3);
}

/// Asks the api-server to revoke a grant, gateway → api-server: when a household unlinks or
/// hands its home over, or a link is replaced. Answered with a TokenRevoked carrying the same
/// request_id.
///
/// The gateway reads no more through the grant once it asks. It keeps only the refresh token,
/// and only to ask again: after retry_after on UNAVAILABLE, until OK or REJECTED, and for no
/// more than 7 days. That pending revocation is stored encrypted, so it survives a restart,
/// and it outlives a household handover's wipe and a gateway-wide wipe, which delete the
/// grant itself: it is the only means left of ending the link at the service.
class RevokeToken extends $pb.GeneratedMessage {
  factory RevokeToken({
    $core.String? requestId,
    LinkedService? service,
    $core.String? refreshToken,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (service != null) result.service = service;
    if (refreshToken != null) result.refreshToken = refreshToken;
    return result;
  }

  RevokeToken._();

  factory RevokeToken.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RevokeToken.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RevokeToken',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..e<LinkedService>(2, _omitFieldNames ? '' : 'service', $pb.PbFieldType.OE,
        defaultOrMaker: LinkedService.LINKED_SERVICE_UNSPECIFIED,
        valueOf: LinkedService.valueOf,
        enumValues: LinkedService.values)
    ..aOS(3, _omitFieldNames ? '' : 'refreshToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevokeToken clone() => RevokeToken()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevokeToken copyWith(void Function(RevokeToken) updates) =>
      super.copyWith((message) => updates(message as RevokeToken))
          as RevokeToken;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevokeToken create() => RevokeToken._();
  @$core.override
  RevokeToken createEmptyInstance() => create();
  static $pb.PbList<RevokeToken> createRepeated() => $pb.PbList<RevokeToken>();
  @$core.pragma('dart2js:noInline')
  static RevokeToken getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevokeToken>(create);
  static RevokeToken? _defaultInstance;

  /// Minted by the gateway, opaque, unique among its requests in flight.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  LinkedService get service => $_getN(1);
  @$pb.TagNumber(2)
  set service(LinkedService value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasService() => $_has(1);
  @$pb.TagNumber(2)
  void clearService() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get refreshToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set refreshToken($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRefreshToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefreshToken() => $_clearField(3);
}

class TokenRevoked extends $pb.GeneratedMessage {
  factory TokenRevoked({
    $core.String? requestId,
    TokenOutcome? outcome,
    $1.Duration? retryAfter,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (outcome != null) result.outcome = outcome;
    if (retryAfter != null) result.retryAfter = retryAfter;
    return result;
  }

  TokenRevoked._();

  factory TokenRevoked.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TokenRevoked.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TokenRevoked',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.accountlink.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..e<TokenOutcome>(2, _omitFieldNames ? '' : 'outcome', $pb.PbFieldType.OE,
        defaultOrMaker: TokenOutcome.TOKEN_OUTCOME_UNSPECIFIED,
        valueOf: TokenOutcome.valueOf,
        enumValues: TokenOutcome.values)
    ..aOM<$1.Duration>(3, _omitFieldNames ? '' : 'retryAfter',
        subBuilder: $1.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenRevoked clone() => TokenRevoked()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TokenRevoked copyWith(void Function(TokenRevoked) updates) =>
      super.copyWith((message) => updates(message as TokenRevoked))
          as TokenRevoked;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenRevoked create() => TokenRevoked._();
  @$core.override
  TokenRevoked createEmptyInstance() => create();
  static $pb.PbList<TokenRevoked> createRepeated() =>
      $pb.PbList<TokenRevoked>();
  @$core.pragma('dart2js:noInline')
  static TokenRevoked getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TokenRevoked>(create);
  static TokenRevoked? _defaultInstance;

  /// As RevokeToken.request_id.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  /// OK: revoked. REJECTED: the service no longer knew the token, which is as good.
  /// UNAVAILABLE: ask again after retry_after.
  @$pb.TagNumber(2)
  TokenOutcome get outcome => $_getN(1);
  @$pb.TagNumber(2)
  set outcome(TokenOutcome value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOutcome() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutcome() => $_clearField(2);

  /// See TokenOutcome.
  @$pb.TagNumber(3)
  $1.Duration get retryAfter => $_getN(2);
  @$pb.TagNumber(3)
  set retryAfter($1.Duration value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRetryAfter() => $_has(2);
  @$pb.TagNumber(3)
  void clearRetryAfter() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Duration ensureRetryAfter() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
