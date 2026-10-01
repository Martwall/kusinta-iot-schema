// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/device.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// The value set of RadioLink.quality: how well a link is doing, as the device's
/// connector rates it. Not a field type — quality is a uint32 like every enum-valued
/// reading, so it keeps explicit presence — but the named constants for its numbers.
/// Defined here, unlike the HomeMatic enum parameters, because this vocabulary is the
/// schema's own rather than an upstream system's.
///
/// The rating is radio-specific and made by the connector that reaches the device, from
/// whatever its technology measures; the thresholds behind it are not part of this
/// contract and may differ between technologies. A consumer shows the rating, and treats
/// the raw readings as detail.
class RadioQuality extends $pb.ProtobufEnum {
  /// Never sent; an unreported quality is an absent field.
  static const RadioQuality RADIO_QUALITY_UNSPECIFIED =
      RadioQuality._(0, _omitEnumNames ? '' : 'RADIO_QUALITY_UNSPECIFIED');
  static const RadioQuality RADIO_QUALITY_GOOD =
      RadioQuality._(1, _omitEnumNames ? '' : 'RADIO_QUALITY_GOOD');
  static const RadioQuality RADIO_QUALITY_FAIR =
      RadioQuality._(2, _omitEnumNames ? '' : 'RADIO_QUALITY_FAIR');
  static const RadioQuality RADIO_QUALITY_POOR =
      RadioQuality._(3, _omitEnumNames ? '' : 'RADIO_QUALITY_POOR');

  static const $core.List<RadioQuality> values = <RadioQuality>[
    RADIO_QUALITY_UNSPECIFIED,
    RADIO_QUALITY_GOOD,
    RADIO_QUALITY_FAIR,
    RADIO_QUALITY_POOR,
  ];

  static final $core.List<RadioQuality?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static RadioQuality? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RadioQuality._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
