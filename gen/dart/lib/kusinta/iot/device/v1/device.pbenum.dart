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

/// The value set of HeatSourceReadings.producing: what a heat source is producing now. Not a
/// field type — producing is a uint32 like every enum-valued reading, so it keeps explicit
/// presence — but the named constants for its numbers. A connector maps its maker's codes onto
/// these; a code none of them names is OTHER.
class HeatSourceProduction extends $pb.ProtobufEnum {
  /// Never sent; an unreported state is an absent field.
  static const HeatSourceProduction HEAT_SOURCE_PRODUCTION_UNSPECIFIED =
      HeatSourceProduction._(
          0, _omitEnumNames ? '' : 'HEAT_SOURCE_PRODUCTION_UNSPECIFIED');

  /// Producing nothing.
  static const HeatSourceProduction HEAT_SOURCE_PRODUCTION_OFF =
      HeatSourceProduction._(
          1, _omitEnumNames ? '' : 'HEAT_SOURCE_PRODUCTION_OFF');

  /// Heating the building: its climate systems.
  static const HeatSourceProduction HEAT_SOURCE_PRODUCTION_SPACE_HEATING =
      HeatSourceProduction._(
          2, _omitEnumNames ? '' : 'HEAT_SOURCE_PRODUCTION_SPACE_HEATING');

  /// Making hot water.
  static const HeatSourceProduction HEAT_SOURCE_PRODUCTION_HOT_WATER =
      HeatSourceProduction._(
          3, _omitEnumNames ? '' : 'HEAT_SOURCE_PRODUCTION_HOT_WATER');

  /// Heating a pool.
  static const HeatSourceProduction HEAT_SOURCE_PRODUCTION_POOL =
      HeatSourceProduction._(
          4, _omitEnumNames ? '' : 'HEAT_SOURCE_PRODUCTION_POOL');

  /// Cooling.
  static const HeatSourceProduction HEAT_SOURCE_PRODUCTION_COOLING =
      HeatSourceProduction._(
          5, _omitEnumNames ? '' : 'HEAT_SOURCE_PRODUCTION_COOLING');

  /// Something none of the above names, such as a transfer between stores.
  static const HeatSourceProduction HEAT_SOURCE_PRODUCTION_OTHER =
      HeatSourceProduction._(
          6, _omitEnumNames ? '' : 'HEAT_SOURCE_PRODUCTION_OTHER');

  static const $core.List<HeatSourceProduction> values = <HeatSourceProduction>[
    HEAT_SOURCE_PRODUCTION_UNSPECIFIED,
    HEAT_SOURCE_PRODUCTION_OFF,
    HEAT_SOURCE_PRODUCTION_SPACE_HEATING,
    HEAT_SOURCE_PRODUCTION_HOT_WATER,
    HEAT_SOURCE_PRODUCTION_POOL,
    HEAT_SOURCE_PRODUCTION_COOLING,
    HEAT_SOURCE_PRODUCTION_OTHER,
  ];

  static final $core.List<HeatSourceProduction?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static HeatSourceProduction? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatSourceProduction._(super.value, super.name);
}

/// The value set of HeatSourceReadings.compressor_state, as the named constants for its
/// numbers. Starting and stopping are kept apart from running and stopped: while a compressor
/// starts, the heat it makes has not yet reached the supply, and readings then are not yet what
/// it runs at.
class CompressorState extends $pb.ProtobufEnum {
  /// Never sent; an unreported state is an absent field.
  static const CompressorState COMPRESSOR_STATE_UNSPECIFIED = CompressorState._(
      0, _omitEnumNames ? '' : 'COMPRESSOR_STATE_UNSPECIFIED');
  static const CompressorState COMPRESSOR_STATE_STOPPED =
      CompressorState._(1, _omitEnumNames ? '' : 'COMPRESSOR_STATE_STOPPED');
  static const CompressorState COMPRESSOR_STATE_STARTING =
      CompressorState._(2, _omitEnumNames ? '' : 'COMPRESSOR_STATE_STARTING');
  static const CompressorState COMPRESSOR_STATE_RUNNING =
      CompressorState._(3, _omitEnumNames ? '' : 'COMPRESSOR_STATE_RUNNING');
  static const CompressorState COMPRESSOR_STATE_STOPPING =
      CompressorState._(4, _omitEnumNames ? '' : 'COMPRESSOR_STATE_STOPPING');

  static const $core.List<CompressorState> values = <CompressorState>[
    COMPRESSOR_STATE_UNSPECIFIED,
    COMPRESSOR_STATE_STOPPED,
    COMPRESSOR_STATE_STARTING,
    COMPRESSOR_STATE_RUNNING,
    COMPRESSOR_STATE_STOPPING,
  ];

  static final $core.List<CompressorState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static CompressorState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CompressorState._(super.value, super.name);
}

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
