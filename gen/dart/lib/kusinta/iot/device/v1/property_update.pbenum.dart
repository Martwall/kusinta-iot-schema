// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/property_update.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// ValueProvenance says where a reported value came from and how much its producer
/// believes it. Without it an optimistically-applied value and a genuine device reading
/// are indistinguishable, and a consumer's only options are to present an unconfirmed
/// value as settled or to hardcode a settle window chasing a rollback timer in someone
/// else's codebase.
class ValueProvenance extends $pb.ProtobufEnum {
  /// No claim. This is what a producer that says nothing means, and it is the meaning
  /// every update carried before this field existed — treat it as "unknown", not as
  /// "confirmed".
  static const ValueProvenance VALUE_PROVENANCE_UNSPECIFIED = ValueProvenance._(
      0, _omitEnumNames ? '' : 'VALUE_PROVENANCE_UNSPECIFIED');

  /// The device itself reported this value. The default for any connector whose upstream
  /// only publishes what it has actually read.
  static const ValueProvenance VALUE_PROVENANCE_CONFIRMED =
      ValueProvenance._(1, _omitEnumNames ? '' : 'VALUE_PROVENANCE_CONFIRMED');

  /// Written and accepted, not yet confirmed by the device. An upstream system applied
  /// the value optimistically and started its own rollback timer; the device may be
  /// asleep and may never take it. A consumer SHOULD render this as provisional.
  static const ValueProvenance VALUE_PROVENANCE_OPTIMISTIC =
      ValueProvenance._(2, _omitEnumNames ? '' : 'VALUE_PROVENANCE_OPTIMISTIC');

  /// An optimistic value that did not hold: the device never confirmed and the upstream
  /// system restored the previous value. Deliberately distinct from CONFIRMED — a
  /// restored value is the producer's belief, not a fresh device reading, and conflating
  /// the two rebuilds the same ambiguity one level down. It is what lets a consumer show
  /// a rollback as a rollback rather than as a value that inexplicably moved.
  static const ValueProvenance VALUE_PROVENANCE_CORRECTED =
      ValueProvenance._(3, _omitEnumNames ? '' : 'VALUE_PROVENANCE_CORRECTED');

  static const $core.List<ValueProvenance> values = <ValueProvenance>[
    VALUE_PROVENANCE_UNSPECIFIED,
    VALUE_PROVENANCE_CONFIRMED,
    VALUE_PROVENANCE_OPTIMISTIC,
    VALUE_PROVENANCE_CORRECTED,
  ];

  static final $core.List<ValueProvenance?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ValueProvenance? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ValueProvenance._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
