// This is a generated file - do not edit.
//
// Generated from kusinta/iot/heating/v1/heating.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Whether a binding has passed its commissioning test: the gateway drives the output away
/// from rest under a short lease and sees the contact report the change and return to rest
/// when the lease runs out.
///
/// A binding that has not passed is never driven. Binding a different device or output,
/// replacing the device, or changing what a floor zone heats (its rooms or its control
/// room) returns it to NOT_TESTED until it passes again. Changing area shares does not.
class CommissioningState extends $pb.ProtobufEnum {
  /// Not stated.
  static const CommissioningState COMMISSIONING_STATE_UNSPECIFIED =
      CommissioningState._(
          0, _omitEnumNames ? '' : 'COMMISSIONING_STATE_UNSPECIFIED');
  static const CommissioningState COMMISSIONING_STATE_NOT_TESTED =
      CommissioningState._(
          1, _omitEnumNames ? '' : 'COMMISSIONING_STATE_NOT_TESTED');
  static const CommissioningState COMMISSIONING_STATE_PASSED =
      CommissioningState._(
          2, _omitEnumNames ? '' : 'COMMISSIONING_STATE_PASSED');

  /// The last test failed; the binding is not driven until one passes.
  static const CommissioningState COMMISSIONING_STATE_FAILED =
      CommissioningState._(
          3, _omitEnumNames ? '' : 'COMMISSIONING_STATE_FAILED');

  static const $core.List<CommissioningState> values = <CommissioningState>[
    COMMISSIONING_STATE_UNSPECIFIED,
    COMMISSIONING_STATE_NOT_TESTED,
    COMMISSIONING_STATE_PASSED,
    COMMISSIONING_STATE_FAILED,
  ];

  static final $core.List<CommissioningState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static CommissioningState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CommissioningState._(super.value, super.name);
}

class HeatSourceKind extends $pb.ProtobufEnum {
  static const HeatSourceKind HEAT_SOURCE_KIND_UNSPECIFIED =
      HeatSourceKind._(0, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_UNSPECIFIED');
  static const HeatSourceKind HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP =
      HeatSourceKind._(
          1, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP');
  static const HeatSourceKind HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP =
      HeatSourceKind._(
          2, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP');
  static const HeatSourceKind HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP =
      HeatSourceKind._(
          3, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP');
  static const HeatSourceKind HEAT_SOURCE_KIND_DISTRICT_HEATING =
      HeatSourceKind._(
          4, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_DISTRICT_HEATING');
  static const HeatSourceKind HEAT_SOURCE_KIND_ELECTRIC_BOILER =
      HeatSourceKind._(
          5, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_ELECTRIC_BOILER');

  /// Oil or pellets.
  static const HeatSourceKind HEAT_SOURCE_KIND_FUEL_BOILER =
      HeatSourceKind._(6, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_FUEL_BOILER');

  static const $core.List<HeatSourceKind> values = <HeatSourceKind>[
    HEAT_SOURCE_KIND_UNSPECIFIED,
    HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP,
    HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP,
    HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP,
    HEAT_SOURCE_KIND_DISTRICT_HEATING,
    HEAT_SOURCE_KIND_ELECTRIC_BOILER,
    HEAT_SOURCE_KIND_FUEL_BOILER,
  ];

  static final $core.List<HeatSourceKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static HeatSourceKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatSourceKind._(super.value, super.name);
}

class CircuitKind extends $pb.ProtobufEnum {
  static const CircuitKind CIRCUIT_KIND_UNSPECIFIED =
      CircuitKind._(0, _omitEnumNames ? '' : 'CIRCUIT_KIND_UNSPECIFIED');
  static const CircuitKind CIRCUIT_KIND_RADIATOR =
      CircuitKind._(1, _omitEnumNames ? '' : 'CIRCUIT_KIND_RADIATOR');

  /// Hydronic floor heating, with its own pump, mixing and supply cap.
  static const CircuitKind CIRCUIT_KIND_FLOOR =
      CircuitKind._(2, _omitEnumNames ? '' : 'CIRCUIT_KIND_FLOOR');

  static const $core.List<CircuitKind> values = <CircuitKind>[
    CIRCUIT_KIND_UNSPECIFIED,
    CIRCUIT_KIND_RADIATOR,
    CIRCUIT_KIND_FLOOR,
  ];

  static final $core.List<CircuitKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static CircuitKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CircuitKind._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
