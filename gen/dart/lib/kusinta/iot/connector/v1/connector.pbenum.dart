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

class ReinitializeOutcome extends $pb.ProtobufEnum {
  /// Not stated, or a value this gateway's schema does not know. Read as FAILED.
  static const ReinitializeOutcome REINITIALIZE_OUTCOME_UNSPECIFIED =
      ReinitializeOutcome._(
          0, _omitEnumNames ? '' : 'REINITIALIZE_OUTCOME_UNSPECIFIED');

  /// The connection was dropped and an attempt to establish it again has finished. Its
  /// outcome is the BackendHealthReport sent just before.
  static const ReinitializeOutcome REINITIALIZE_OUTCOME_DONE =
      ReinitializeOutcome._(
          1, _omitEnumNames ? '' : 'REINITIALIZE_OUTCOME_DONE');

  /// The connector could not attempt it at all — no configuration to reconnect with, a fault
  /// of its own. Health is unchanged and no report precedes this.
  static const ReinitializeOutcome REINITIALIZE_OUTCOME_FAILED =
      ReinitializeOutcome._(
          2, _omitEnumNames ? '' : 'REINITIALIZE_OUTCOME_FAILED');

  /// The connector has no backend connection it can re-initialise. A connector that answers
  /// this should not declare supports_backend_reinitialize, but the gateway must handle it.
  static const ReinitializeOutcome REINITIALIZE_OUTCOME_NOT_SUPPORTED =
      ReinitializeOutcome._(
          3, _omitEnumNames ? '' : 'REINITIALIZE_OUTCOME_NOT_SUPPORTED');

  static const $core.List<ReinitializeOutcome> values = <ReinitializeOutcome>[
    REINITIALIZE_OUTCOME_UNSPECIFIED,
    REINITIALIZE_OUTCOME_DONE,
    REINITIALIZE_OUTCOME_FAILED,
    REINITIALIZE_OUTCOME_NOT_SUPPORTED,
  ];

  static final $core.List<ReinitializeOutcome?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ReinitializeOutcome? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ReinitializeOutcome._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
