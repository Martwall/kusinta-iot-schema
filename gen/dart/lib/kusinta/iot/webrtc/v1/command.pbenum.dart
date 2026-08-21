// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/command.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Why a command was refused or failed, so an app can branch without string-matching a
/// human sentence. Closed vocabulary for the same reason as GatewayErrorCode: the app leg
/// is versioned together with the gateway, so clients can switch exhaustively.
class CommandErrorCode extends $pb.ProtobufEnum {
  /// Sender did not set a code, or sent one this client's schema does not know.
  static const CommandErrorCode COMMAND_ERROR_CODE_UNSPECIFIED =
      CommandErrorCode._(
          0, _omitEnumNames ? '' : 'COMMAND_ERROR_CODE_UNSPECIFIED');

  /// The caller's DeviceAcl does not permit this command. Permanent: do not retry, and do
  /// not reveal whether the device exists. Also the answer for a device out of reach.
  static const CommandErrorCode COMMAND_ERROR_CODE_NOT_ENTITLED =
      CommandErrorCode._(
          1, _omitEnumNames ? '' : 'COMMAND_ERROR_CODE_NOT_ENTITLED');

  /// The value is outside a PropertyConstraint bounding it — a resident asking for a
  /// setpoint above the property owner's limit. About the USER's request, not the app's
  /// correctness: worth telling the user, and the limit is readable from their permissions.
  static const CommandErrorCode COMMAND_ERROR_CODE_CONSTRAINT_VIOLATED =
      CommandErrorCode._(
          2, _omitEnumNames ? '' : 'COMMAND_ERROR_CODE_CONSTRAINT_VIOLATED');

  /// Malformed: no endpoint_id, an unknown parameters case, a cluster the device does not
  /// have. A client bug — log it, do not retry.
  static const CommandErrorCode COMMAND_ERROR_CODE_INVALID_COMMAND =
      CommandErrorCode._(
          3, _omitEnumNames ? '' : 'COMMAND_ERROR_CODE_INVALID_COMMAND');

  /// No route to the device right now: its connector is disconnected, or the device did
  /// not answer. Transient, retrying is reasonable. NOT a statement that the device is
  /// gone — that is webrtc.v1.DeviceRemoved.
  static const CommandErrorCode COMMAND_ERROR_CODE_UNREACHABLE =
      CommandErrorCode._(
          4, _omitEnumNames ? '' : 'COMMAND_ERROR_CODE_UNREACHABLE');

  /// The gateway's own deadline passed with no answer from the connector. The command MAY
  /// still have run: this is the one code that says nothing about what happened to the
  /// device, so it is never a reason to roll back a displayed value.
  static const CommandErrorCode COMMAND_ERROR_CODE_TIMEOUT =
      CommandErrorCode._(5, _omitEnumNames ? '' : 'COMMAND_ERROR_CODE_TIMEOUT');

  /// The connector or the device refused it for a reason of its own — a mode the hardware
  /// will not accept, a locked device. Read message for specifics.
  static const CommandErrorCode COMMAND_ERROR_CODE_REJECTED_BY_DEVICE =
      CommandErrorCode._(
          6, _omitEnumNames ? '' : 'COMMAND_ERROR_CODE_REJECTED_BY_DEVICE');

  /// Gateway-side fault. Not the app's doing; retry cautiously.
  static const CommandErrorCode COMMAND_ERROR_CODE_INTERNAL =
      CommandErrorCode._(
          7, _omitEnumNames ? '' : 'COMMAND_ERROR_CODE_INTERNAL');

  static const $core.List<CommandErrorCode> values = <CommandErrorCode>[
    COMMAND_ERROR_CODE_UNSPECIFIED,
    COMMAND_ERROR_CODE_NOT_ENTITLED,
    COMMAND_ERROR_CODE_CONSTRAINT_VIOLATED,
    COMMAND_ERROR_CODE_INVALID_COMMAND,
    COMMAND_ERROR_CODE_UNREACHABLE,
    COMMAND_ERROR_CODE_TIMEOUT,
    COMMAND_ERROR_CODE_REJECTED_BY_DEVICE,
    COMMAND_ERROR_CODE_INTERNAL,
  ];

  static final $core.List<CommandErrorCode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static CommandErrorCode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CommandErrorCode._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
