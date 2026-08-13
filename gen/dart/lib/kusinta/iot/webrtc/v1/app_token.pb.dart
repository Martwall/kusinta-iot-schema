// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/app_token.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $0;
import '../../access/v1/roles.pbenum.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// AppTokenClaims is the contract for the payload of the JWT carried in
/// AppHandshake.jwt. It is the single source of truth shared between the
/// api-server (which mints the token) and the gateway (which validates it
/// locally against the api-server's public key).
///
/// This message is NOT sent on the wire — the wire value stays the signed,
/// compact JWS string in AppHandshake.jwt. The fields here document the claim
/// names and types each side must agree on. JWT libraries emit registered
/// claims (iss/aud/sub) as flat strings and timestamps as NumericDate
/// (seconds since the Unix epoch), so map to/from your native JWT library
/// rather than serializing this message directly into the token.
class AppTokenClaims extends $pb.GeneratedMessage {
  factory AppTokenClaims({
    $core.String? iss,
    $core.String? aud,
    $core.String? sub,
    $0.Timestamp? iat,
    $0.Timestamp? exp,
    $core.Iterable<$1.Role>? roles,
    Confirmation? cnf,
  }) {
    final result = create();
    if (iss != null) result.iss = iss;
    if (aud != null) result.aud = aud;
    if (sub != null) result.sub = sub;
    if (iat != null) result.iat = iat;
    if (exp != null) result.exp = exp;
    if (roles != null) result.roles.addAll(roles);
    if (cnf != null) result.cnf = cnf;
    return result;
  }

  AppTokenClaims._();

  factory AppTokenClaims.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AppTokenClaims.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AppTokenClaims',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'iss')
    ..aOS(2, _omitFieldNames ? '' : 'aud')
    ..aOS(3, _omitFieldNames ? '' : 'sub')
    ..aOM<$0.Timestamp>(4, _omitFieldNames ? '' : 'iat',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(5, _omitFieldNames ? '' : 'exp',
        subBuilder: $0.Timestamp.create)
    ..pc<$1.Role>(6, _omitFieldNames ? '' : 'roles', $pb.PbFieldType.KE,
        valueOf: $1.Role.valueOf,
        enumValues: $1.Role.values,
        defaultEnumValue: $1.Role.ROLE_UNSPECIFIED)
    ..aOM<Confirmation>(7, _omitFieldNames ? '' : 'cnf',
        subBuilder: Confirmation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppTokenClaims clone() => AppTokenClaims()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppTokenClaims copyWith(void Function(AppTokenClaims) updates) =>
      super.copyWith((message) => updates(message as AppTokenClaims))
          as AppTokenClaims;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppTokenClaims create() => AppTokenClaims._();
  @$core.override
  AppTokenClaims createEmptyInstance() => create();
  static $pb.PbList<AppTokenClaims> createRepeated() =>
      $pb.PbList<AppTokenClaims>();
  @$core.pragma('dart2js:noInline')
  static AppTokenClaims getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AppTokenClaims>(create);
  static AppTokenClaims? _defaultInstance;

  /// Registered claims (RFC 7519).
  /// Issuer: the api-server's issuer identifier, agreed out of band. A fixed
  /// string both sides compare exactly — not derived from anything here.
  @$pb.TagNumber(1)
  $core.String get iss => $_getSZ(0);
  @$pb.TagNumber(1)
  set iss($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIss() => $_has(0);
  @$pb.TagNumber(1)
  void clearIss() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get aud => $_getSZ(1);
  @$pb.TagNumber(2)
  set aud($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAud() => $_has(1);
  @$pb.TagNumber(2)
  void clearAud() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sub => $_getSZ(2);
  @$pb.TagNumber(3)
  set sub($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSub() => $_has(2);
  @$pb.TagNumber(3)
  void clearSub() => $_clearField(3);

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

  /// Custom claims.
  /// A user may hold several roles at once (e.g. resident + gateway admin), so
  /// this is a list. Carried in the JWT as an array of enum NAME strings
  /// (e.g. ["ROLE_RESIDENT", "ROLE_GATEWAY_ADMIN"]), matching proto3 canonical
  /// JSON enum encoding — not integer values. This keeps the claim
  /// self-describing and aligns with text-typed role storage on the api-server.
  @$pb.TagNumber(6)
  $pb.PbList<$1.Role> get roles => $_getList(5);

  /// RFC 7800 confirmation claim. Binds the token to the DTLS certificate of the
  /// connection it may be presented on: the validator compares this against the
  /// fingerprint of the live peer and rejects on mismatch, so a token replayed on
  /// a different connection is not usable. Without it the token is a pure bearer
  /// credential — possession alone is the whole proof.
  ///
  /// Carried in the JWT as the nested object RFC 7800 specifies:
  ///   "cnf": { "x5t#S256": "<base64url SHA-256 thumbprint of the peer's DER certificate>" }
  ///
  /// MANDATORY. The issuer MUST set it on every token, and the validator MUST
  /// reject a token that arrives without one. proto3 cannot express that, and
  /// the claim is a JSON object in a JWT rather than a field on this message on
  /// the wire, so nothing mechanical enforces it — it is a contract both sides
  /// implement or the binding is worthless. A validator that treats an absent
  /// cnf as "fall back to bearer" reopens the exact replay this claim closes,
  /// and gives any holder of a stolen token a way to opt out of the check by
  /// stripping it.
  ///
  /// Rollout order, since a mandatory claim cannot appear on both sides at once:
  /// the api-server must be issuing cnf on every token BEFORE the gateway begins
  /// rejecting tokens that lack it. Reverse that order and every live session is
  /// refused. Tokens are short-TTL, so the gap between the two deployments need
  /// only exceed one token lifetime.
  @$pb.TagNumber(7)
  Confirmation get cnf => $_getN(6);
  @$pb.TagNumber(7)
  set cnf(Confirmation value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCnf() => $_has(6);
  @$pb.TagNumber(7)
  void clearCnf() => $_clearField(7);
  @$pb.TagNumber(7)
  Confirmation ensureCnf() => $_ensure(6);
}

/// RFC 7800 confirmation, the value of the "cnf" claim. A separate message
/// because the claim is a nested JSON object in the token, not a flat string.
class Confirmation extends $pb.GeneratedMessage {
  factory Confirmation({
    $core.String? x5tS256,
  }) {
    final result = create();
    if (x5tS256 != null) result.x5tS256 = x5tS256;
    return result;
  }

  Confirmation._();

  factory Confirmation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Confirmation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Confirmation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'x5tS256')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Confirmation clone() => Confirmation()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Confirmation copyWith(void Function(Confirmation) updates) =>
      super.copyWith((message) => updates(message as Confirmation))
          as Confirmation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Confirmation create() => Confirmation._();
  @$core.override
  Confirmation createEmptyInstance() => create();
  static $pb.PbList<Confirmation> createRepeated() =>
      $pb.PbList<Confirmation>();
  @$core.pragma('dart2js:noInline')
  static Confirmation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Confirmation>(create);
  static Confirmation? _defaultInstance;

  /// JWT claim name "x5t#S256" — the proto field cannot carry the "#", so the
  /// mapping to and from the JWT is by hand on both sides.
  ///
  /// ENCODING, pinned deliberately: base64url (unpadded) of the SHA-256 digest
  /// over the peer's DER-encoded certificate. WebRTC stacks hand you the same
  /// digest in the SDP `a=fingerprint:sha-256` attribute in a DIFFERENT form —
  /// uppercase, colon-separated hex — and the two will never compare equal.
  /// Issuer and validator must both normalise to the base64url form here; left
  /// unstated, each side can derive a correct value and never match.
  ///
  /// A DTLS fingerprint names a CERTIFICATE, not a connection: WebRTC permits
  /// reusing one certificate across several peer connections, and a new
  /// connection normally brings a new certificate. It is therefore neither
  /// unique per connection nor stable across reconnects, and must not be used as
  /// a session or connection key. It is a credential — it proves the peer holds
  /// the private key for the certificate the token was issued against, which is
  /// exactly and only what a confirmation claim needs.
  @$pb.TagNumber(1)
  $core.String get x5tS256 => $_getSZ(0);
  @$pb.TagNumber(1)
  set x5tS256($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX5tS256() => $_has(0);
  @$pb.TagNumber(1)
  void clearX5tS256() => $_clearField(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
