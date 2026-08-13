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

/// Machine-readable classification of a session-level gateway error, so the app
/// can branch without string-matching a human sentence. Deliberately an enum here,
/// unlike the free-form code on connector.v1.GatewayError: the app leg is versioned
/// together with the gateway, and clients need an exhaustive switch.
class GatewayErrorCode extends $pb.ProtobufEnum {
  /// Sender did not set a code, or sent one this client's schema does not know.
  static const GatewayErrorCode GATEWAY_ERROR_CODE_UNSPECIFIED =
      GatewayErrorCode._(
          0, _omitEnumNames ? '' : 'GATEWAY_ERROR_CODE_UNSPECIFIED');

  /// Permanent refusal — the user may not see or act on this. Stop asking, tell the user.
  static const GatewayErrorCode GATEWAY_ERROR_CODE_NOT_ENTITLED =
      GatewayErrorCode._(
          1, _omitEnumNames ? '' : 'GATEWAY_ERROR_CODE_NOT_ENTITLED');

  /// The app sent something malformed. A client bug: log it, do not retry.
  static const GatewayErrorCode GATEWAY_ERROR_CODE_INVALID_REQUEST =
      GatewayErrorCode._(
          2, _omitEnumNames ? '' : 'GATEWAY_ERROR_CODE_INVALID_REQUEST');

  /// Transient failure. Retrying is reasonable.
  static const GatewayErrorCode GATEWAY_ERROR_CODE_UNAVAILABLE =
      GatewayErrorCode._(
          3, _omitEnumNames ? '' : 'GATEWAY_ERROR_CODE_UNAVAILABLE');

  /// Gateway-side fault. Not the app's doing; retry cautiously.
  static const GatewayErrorCode GATEWAY_ERROR_CODE_INTERNAL =
      GatewayErrorCode._(
          4, _omitEnumNames ? '' : 'GATEWAY_ERROR_CODE_INTERNAL');

  /// The user already holds the maximum number of concurrent sessions this
  /// gateway will keep, and this attempt is refused. Permanent for this attempt:
  /// the limit does not clear on its own, so retrying is exactly the wrong
  /// response — the user must end another session first. Distinct from
  /// NOT_ENTITLED, which is a statement about what the user may see; this user
  /// may, they are simply already connected enough times.
  ///
  /// The limit itself is gateway configuration and deliberately not modelled
  /// here. GatewayError.message carries the specifics so a client can render
  /// something actionable.
  ///
  /// Rollout note: a client whose schema predates this value decodes it as
  /// UNSPECIFIED, which is retryable by design. Client handling must therefore
  /// ship before or with the gateway that emits it, and the gateway must close
  /// the session itself rather than rely on the client standing down.
  static const GatewayErrorCode GATEWAY_ERROR_CODE_SESSION_LIMIT_REACHED =
      GatewayErrorCode._(
          5, _omitEnumNames ? '' : 'GATEWAY_ERROR_CODE_SESSION_LIMIT_REACHED');

  static const $core.List<GatewayErrorCode> values = <GatewayErrorCode>[
    GATEWAY_ERROR_CODE_UNSPECIFIED,
    GATEWAY_ERROR_CODE_NOT_ENTITLED,
    GATEWAY_ERROR_CODE_INVALID_REQUEST,
    GATEWAY_ERROR_CODE_UNAVAILABLE,
    GATEWAY_ERROR_CODE_INTERNAL,
    GATEWAY_ERROR_CODE_SESSION_LIMIT_REACHED,
  ];

  static final $core.List<GatewayErrorCode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static GatewayErrorCode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GatewayErrorCode._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
