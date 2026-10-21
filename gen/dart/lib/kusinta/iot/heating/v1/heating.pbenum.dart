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

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
