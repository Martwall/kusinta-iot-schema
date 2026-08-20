// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/properties.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Matter Thermostat cluster (0x0201)
class ThermostatProperties extends $pb.GeneratedMessage {
  factory ThermostatProperties({
    $core.int? localTemperature,
    $core.int? occupiedHeatingSetpoint,
    $core.int? occupiedCoolingSetpoint,
    $core.int? minHeatSetpointLimit,
    $core.int? maxHeatSetpointLimit,
    $core.int? minCoolSetpointLimit,
    $core.int? maxCoolSetpointLimit,
    $core.int? controlSequenceOfOperation,
    $core.int? systemMode,
    $core.int? thermostatRunningMode,
  }) {
    final result = create();
    if (localTemperature != null) result.localTemperature = localTemperature;
    if (occupiedHeatingSetpoint != null)
      result.occupiedHeatingSetpoint = occupiedHeatingSetpoint;
    if (occupiedCoolingSetpoint != null)
      result.occupiedCoolingSetpoint = occupiedCoolingSetpoint;
    if (minHeatSetpointLimit != null)
      result.minHeatSetpointLimit = minHeatSetpointLimit;
    if (maxHeatSetpointLimit != null)
      result.maxHeatSetpointLimit = maxHeatSetpointLimit;
    if (minCoolSetpointLimit != null)
      result.minCoolSetpointLimit = minCoolSetpointLimit;
    if (maxCoolSetpointLimit != null)
      result.maxCoolSetpointLimit = maxCoolSetpointLimit;
    if (controlSequenceOfOperation != null)
      result.controlSequenceOfOperation = controlSequenceOfOperation;
    if (systemMode != null) result.systemMode = systemMode;
    if (thermostatRunningMode != null)
      result.thermostatRunningMode = thermostatRunningMode;
    return result;
  }

  ThermostatProperties._();

  factory ThermostatProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ThermostatProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ThermostatProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'localTemperature', $pb.PbFieldType.OS3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'occupiedHeatingSetpoint',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'occupiedCoolingSetpoint',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'minHeatSetpointLimit', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'maxHeatSetpointLimit', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'minCoolSetpointLimit', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'maxCoolSetpointLimit', $pb.PbFieldType.OS3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'controlSequenceOfOperation',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'systemMode', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        10, _omitFieldNames ? '' : 'thermostatRunningMode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThermostatProperties clone() =>
      ThermostatProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThermostatProperties copyWith(void Function(ThermostatProperties) updates) =>
      super.copyWith((message) => updates(message as ThermostatProperties))
          as ThermostatProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ThermostatProperties create() => ThermostatProperties._();
  @$core.override
  ThermostatProperties createEmptyInstance() => create();
  static $pb.PbList<ThermostatProperties> createRepeated() =>
      $pb.PbList<ThermostatProperties>();
  @$core.pragma('dart2js:noInline')
  static ThermostatProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ThermostatProperties>(create);
  static ThermostatProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get localTemperature => $_getIZ(0);
  @$pb.TagNumber(1)
  set localTemperature($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLocalTemperature() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalTemperature() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get occupiedHeatingSetpoint => $_getIZ(1);
  @$pb.TagNumber(2)
  set occupiedHeatingSetpoint($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOccupiedHeatingSetpoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearOccupiedHeatingSetpoint() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get occupiedCoolingSetpoint => $_getIZ(2);
  @$pb.TagNumber(3)
  set occupiedCoolingSetpoint($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOccupiedCoolingSetpoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearOccupiedCoolingSetpoint() => $_clearField(3);

  /// Property-owner constraint
  @$pb.TagNumber(4)
  $core.int get minHeatSetpointLimit => $_getIZ(3);
  @$pb.TagNumber(4)
  set minHeatSetpointLimit($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMinHeatSetpointLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinHeatSetpointLimit() => $_clearField(4);

  /// Property-owner constraint
  @$pb.TagNumber(5)
  $core.int get maxHeatSetpointLimit => $_getIZ(4);
  @$pb.TagNumber(5)
  set maxHeatSetpointLimit($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMaxHeatSetpointLimit() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaxHeatSetpointLimit() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get minCoolSetpointLimit => $_getIZ(5);
  @$pb.TagNumber(6)
  set minCoolSetpointLimit($core.int value) => $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMinCoolSetpointLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearMinCoolSetpointLimit() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get maxCoolSetpointLimit => $_getIZ(6);
  @$pb.TagNumber(7)
  set maxCoolSetpointLimit($core.int value) => $_setSignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMaxCoolSetpointLimit() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxCoolSetpointLimit() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get controlSequenceOfOperation => $_getIZ(7);
  @$pb.TagNumber(8)
  set controlSequenceOfOperation($core.int value) =>
      $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasControlSequenceOfOperation() => $_has(7);
  @$pb.TagNumber(8)
  void clearControlSequenceOfOperation() => $_clearField(8);

  /// SystemMode: Off=0,Auto=1,Cool=3,Heat=4,EmHeat=5
  @$pb.TagNumber(9)
  $core.int get systemMode => $_getIZ(8);
  @$pb.TagNumber(9)
  set systemMode($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSystemMode() => $_has(8);
  @$pb.TagNumber(9)
  void clearSystemMode() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get thermostatRunningMode => $_getIZ(9);
  @$pb.TagNumber(10)
  set thermostatRunningMode($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasThermostatRunningMode() => $_has(9);
  @$pb.TagNumber(10)
  void clearThermostatRunningMode() => $_clearField(10);
}

/// Matter Temperature Measurement cluster (0x0402)
class TemperatureSensorProperties extends $pb.GeneratedMessage {
  factory TemperatureSensorProperties({
    $core.int? measuredValue,
    $core.int? minMeasuredValue,
    $core.int? maxMeasuredValue,
    $core.int? tolerance,
  }) {
    final result = create();
    if (measuredValue != null) result.measuredValue = measuredValue;
    if (minMeasuredValue != null) result.minMeasuredValue = minMeasuredValue;
    if (maxMeasuredValue != null) result.maxMeasuredValue = maxMeasuredValue;
    if (tolerance != null) result.tolerance = tolerance;
    return result;
  }

  TemperatureSensorProperties._();

  factory TemperatureSensorProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TemperatureSensorProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TemperatureSensorProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'measuredValue', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'minMeasuredValue', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'maxMeasuredValue', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'tolerance', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemperatureSensorProperties clone() =>
      TemperatureSensorProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemperatureSensorProperties copyWith(
          void Function(TemperatureSensorProperties) updates) =>
      super.copyWith(
              (message) => updates(message as TemperatureSensorProperties))
          as TemperatureSensorProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TemperatureSensorProperties create() =>
      TemperatureSensorProperties._();
  @$core.override
  TemperatureSensorProperties createEmptyInstance() => create();
  static $pb.PbList<TemperatureSensorProperties> createRepeated() =>
      $pb.PbList<TemperatureSensorProperties>();
  @$core.pragma('dart2js:noInline')
  static TemperatureSensorProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TemperatureSensorProperties>(create);
  static TemperatureSensorProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get measuredValue => $_getIZ(0);
  @$pb.TagNumber(1)
  set measuredValue($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMeasuredValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeasuredValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get minMeasuredValue => $_getIZ(1);
  @$pb.TagNumber(2)
  set minMeasuredValue($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinMeasuredValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinMeasuredValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxMeasuredValue => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxMeasuredValue($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxMeasuredValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxMeasuredValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get tolerance => $_getIZ(3);
  @$pb.TagNumber(4)
  set tolerance($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTolerance() => $_has(3);
  @$pb.TagNumber(4)
  void clearTolerance() => $_clearField(4);
}

/// Matter Relative Humidity Measurement cluster (0x0405)
class HumiditySensorProperties extends $pb.GeneratedMessage {
  factory HumiditySensorProperties({
    $core.int? measuredValue,
    $core.int? minMeasuredValue,
    $core.int? maxMeasuredValue,
    $core.int? tolerance,
  }) {
    final result = create();
    if (measuredValue != null) result.measuredValue = measuredValue;
    if (minMeasuredValue != null) result.minMeasuredValue = minMeasuredValue;
    if (maxMeasuredValue != null) result.maxMeasuredValue = maxMeasuredValue;
    if (tolerance != null) result.tolerance = tolerance;
    return result;
  }

  HumiditySensorProperties._();

  factory HumiditySensorProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HumiditySensorProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HumiditySensorProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'measuredValue', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'minMeasuredValue', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'maxMeasuredValue', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'tolerance', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HumiditySensorProperties clone() =>
      HumiditySensorProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HumiditySensorProperties copyWith(
          void Function(HumiditySensorProperties) updates) =>
      super.copyWith((message) => updates(message as HumiditySensorProperties))
          as HumiditySensorProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HumiditySensorProperties create() => HumiditySensorProperties._();
  @$core.override
  HumiditySensorProperties createEmptyInstance() => create();
  static $pb.PbList<HumiditySensorProperties> createRepeated() =>
      $pb.PbList<HumiditySensorProperties>();
  @$core.pragma('dart2js:noInline')
  static HumiditySensorProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HumiditySensorProperties>(create);
  static HumiditySensorProperties? _defaultInstance;

  /// % × 100, 0–10000
  @$pb.TagNumber(1)
  $core.int get measuredValue => $_getIZ(0);
  @$pb.TagNumber(1)
  set measuredValue($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMeasuredValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeasuredValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get minMeasuredValue => $_getIZ(1);
  @$pb.TagNumber(2)
  set minMeasuredValue($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinMeasuredValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinMeasuredValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxMeasuredValue => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxMeasuredValue($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxMeasuredValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxMeasuredValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get tolerance => $_getIZ(3);
  @$pb.TagNumber(4)
  set tolerance($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTolerance() => $_has(3);
  @$pb.TagNumber(4)
  void clearTolerance() => $_clearField(4);
}

/// Matter Occupancy Sensing cluster (0x0406)
class OccupancySensorProperties extends $pb.GeneratedMessage {
  factory OccupancySensorProperties({
    $core.int? occupancy,
    $core.int? occupancySensorType,
    $core.int? occupancySensorTypeBitmap,
    $core.int? pirOccupiedToUnoccupiedDelay,
    $core.int? pirUnoccupiedToOccupiedDelay,
  }) {
    final result = create();
    if (occupancy != null) result.occupancy = occupancy;
    if (occupancySensorType != null)
      result.occupancySensorType = occupancySensorType;
    if (occupancySensorTypeBitmap != null)
      result.occupancySensorTypeBitmap = occupancySensorTypeBitmap;
    if (pirOccupiedToUnoccupiedDelay != null)
      result.pirOccupiedToUnoccupiedDelay = pirOccupiedToUnoccupiedDelay;
    if (pirUnoccupiedToOccupiedDelay != null)
      result.pirUnoccupiedToOccupiedDelay = pirUnoccupiedToOccupiedDelay;
    return result;
  }

  OccupancySensorProperties._();

  factory OccupancySensorProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OccupancySensorProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OccupancySensorProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'occupancy', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'occupancySensorType', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'occupancySensorTypeBitmap',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'pirOccupiedToUnoccupiedDelay',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'pirUnoccupiedToOccupiedDelay',
        $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OccupancySensorProperties clone() =>
      OccupancySensorProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OccupancySensorProperties copyWith(
          void Function(OccupancySensorProperties) updates) =>
      super.copyWith((message) => updates(message as OccupancySensorProperties))
          as OccupancySensorProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OccupancySensorProperties create() => OccupancySensorProperties._();
  @$core.override
  OccupancySensorProperties createEmptyInstance() => create();
  static $pb.PbList<OccupancySensorProperties> createRepeated() =>
      $pb.PbList<OccupancySensorProperties>();
  @$core.pragma('dart2js:noInline')
  static OccupancySensorProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OccupancySensorProperties>(create);
  static OccupancySensorProperties? _defaultInstance;

  /// Occupancy bitmask: bit 0 = occupied
  @$pb.TagNumber(1)
  $core.int get occupancy => $_getIZ(0);
  @$pb.TagNumber(1)
  set occupancy($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOccupancy() => $_has(0);
  @$pb.TagNumber(1)
  void clearOccupancy() => $_clearField(1);

  /// OccupancySensorType: PIR=0,Ultrasonic=1,PIRandUS=2,PhysicalContact=3
  @$pb.TagNumber(2)
  $core.int get occupancySensorType => $_getIZ(1);
  @$pb.TagNumber(2)
  set occupancySensorType($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOccupancySensorType() => $_has(1);
  @$pb.TagNumber(2)
  void clearOccupancySensorType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get occupancySensorTypeBitmap => $_getIZ(2);
  @$pb.TagNumber(3)
  set occupancySensorTypeBitmap($core.int value) =>
      $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOccupancySensorTypeBitmap() => $_has(2);
  @$pb.TagNumber(3)
  void clearOccupancySensorTypeBitmap() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get pirOccupiedToUnoccupiedDelay => $_getIZ(3);
  @$pb.TagNumber(4)
  set pirOccupiedToUnoccupiedDelay($core.int value) =>
      $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPirOccupiedToUnoccupiedDelay() => $_has(3);
  @$pb.TagNumber(4)
  void clearPirOccupiedToUnoccupiedDelay() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get pirUnoccupiedToOccupiedDelay => $_getIZ(4);
  @$pb.TagNumber(5)
  set pirUnoccupiedToOccupiedDelay($core.int value) =>
      $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPirUnoccupiedToOccupiedDelay() => $_has(4);
  @$pb.TagNumber(5)
  void clearPirUnoccupiedToOccupiedDelay() => $_clearField(5);
}

/// Matter Boolean State cluster (0x0045)
class ContactSensorProperties extends $pb.GeneratedMessage {
  factory ContactSensorProperties({
    $core.bool? stateValue,
  }) {
    final result = create();
    if (stateValue != null) result.stateValue = stateValue;
    return result;
  }

  ContactSensorProperties._();

  factory ContactSensorProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContactSensorProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContactSensorProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'stateValue')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContactSensorProperties clone() =>
      ContactSensorProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContactSensorProperties copyWith(
          void Function(ContactSensorProperties) updates) =>
      super.copyWith((message) => updates(message as ContactSensorProperties))
          as ContactSensorProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContactSensorProperties create() => ContactSensorProperties._();
  @$core.override
  ContactSensorProperties createEmptyInstance() => create();
  static $pb.PbList<ContactSensorProperties> createRepeated() =>
      $pb.PbList<ContactSensorProperties>();
  @$core.pragma('dart2js:noInline')
  static ContactSensorProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContactSensorProperties>(create);
  static ContactSensorProperties? _defaultInstance;

  /// StateValue: false = contact open (alarm), true = contact closed (normal)
  @$pb.TagNumber(1)
  $core.bool get stateValue => $_getBF(0);
  @$pb.TagNumber(1)
  set stateValue($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStateValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearStateValue() => $_clearField(1);
}

/// Matter Window Covering cluster (0x0102)
class WindowCoveringProperties extends $pb.GeneratedMessage {
  factory WindowCoveringProperties({
    $core.int? coveringType,
    $core.int? currentPositionLiftPercent100ths,
    $core.int? currentPositionTiltPercent100ths,
    $core.int? targetPositionLiftPercent100ths,
    $core.int? targetPositionTiltPercent100ths,
    $core.int? operationalStatus,
    $core.int? endProductType,
    $core.int? mode,
  }) {
    final result = create();
    if (coveringType != null) result.coveringType = coveringType;
    if (currentPositionLiftPercent100ths != null)
      result.currentPositionLiftPercent100ths =
          currentPositionLiftPercent100ths;
    if (currentPositionTiltPercent100ths != null)
      result.currentPositionTiltPercent100ths =
          currentPositionTiltPercent100ths;
    if (targetPositionLiftPercent100ths != null)
      result.targetPositionLiftPercent100ths = targetPositionLiftPercent100ths;
    if (targetPositionTiltPercent100ths != null)
      result.targetPositionTiltPercent100ths = targetPositionTiltPercent100ths;
    if (operationalStatus != null) result.operationalStatus = operationalStatus;
    if (endProductType != null) result.endProductType = endProductType;
    if (mode != null) result.mode = mode;
    return result;
  }

  WindowCoveringProperties._();

  factory WindowCoveringProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WindowCoveringProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WindowCoveringProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'coveringType', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'currentPositionLiftPercent100ths',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'currentPositionTiltPercent100ths',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'targetPositionLiftPercent100ths',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'targetPositionTiltPercent100ths',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'operationalStatus', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'endProductType', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WindowCoveringProperties clone() =>
      WindowCoveringProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WindowCoveringProperties copyWith(
          void Function(WindowCoveringProperties) updates) =>
      super.copyWith((message) => updates(message as WindowCoveringProperties))
          as WindowCoveringProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WindowCoveringProperties create() => WindowCoveringProperties._();
  @$core.override
  WindowCoveringProperties createEmptyInstance() => create();
  static $pb.PbList<WindowCoveringProperties> createRepeated() =>
      $pb.PbList<WindowCoveringProperties>();
  @$core.pragma('dart2js:noInline')
  static WindowCoveringProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WindowCoveringProperties>(create);
  static WindowCoveringProperties? _defaultInstance;

  /// The Matter attribute is the bare "Type"; the field keeps a qualified name because
  /// `type` is a poor field name and keyword-adjacent in several target languages. The
  /// mapping is in (matter_attribute), so the divergence costs consumers nothing.
  @$pb.TagNumber(1)
  $core.int get coveringType => $_getIZ(0);
  @$pb.TagNumber(1)
  set coveringType($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCoveringType() => $_has(0);
  @$pb.TagNumber(1)
  void clearCoveringType() => $_clearField(1);

  /// current_position_lift_percent100ths is the primary attribute in Matter 1.5.1 (0–10000)
  @$pb.TagNumber(2)
  $core.int get currentPositionLiftPercent100ths => $_getIZ(1);
  @$pb.TagNumber(2)
  set currentPositionLiftPercent100ths($core.int value) =>
      $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentPositionLiftPercent100ths() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentPositionLiftPercent100ths() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get currentPositionTiltPercent100ths => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentPositionTiltPercent100ths($core.int value) =>
      $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCurrentPositionTiltPercent100ths() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentPositionTiltPercent100ths() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get targetPositionLiftPercent100ths => $_getIZ(3);
  @$pb.TagNumber(4)
  set targetPositionLiftPercent100ths($core.int value) =>
      $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTargetPositionLiftPercent100ths() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetPositionLiftPercent100ths() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get targetPositionTiltPercent100ths => $_getIZ(4);
  @$pb.TagNumber(5)
  set targetPositionTiltPercent100ths($core.int value) =>
      $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTargetPositionTiltPercent100ths() => $_has(4);
  @$pb.TagNumber(5)
  void clearTargetPositionTiltPercent100ths() => $_clearField(5);

  /// bitmask: global, lift, tilt
  @$pb.TagNumber(6)
  $core.int get operationalStatus => $_getIZ(5);
  @$pb.TagNumber(6)
  set operationalStatus($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasOperationalStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearOperationalStatus() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get endProductType => $_getIZ(6);
  @$pb.TagNumber(7)
  set endProductType($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasEndProductType() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndProductType() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get mode => $_getIZ(7);
  @$pb.TagNumber(8)
  set mode($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMode() => $_has(7);
  @$pb.TagNumber(8)
  void clearMode() => $_clearField(8);
}

/// Matter Door Lock cluster (0x0101 — a cluster ID, not the 0x0101 Dimmable Light device type)
class DoorLockProperties extends $pb.GeneratedMessage {
  factory DoorLockProperties({
    $core.int? lockState,
    $core.int? lockType,
    $core.bool? actuatorEnabled,
    $core.int? doorState,
    $core.int? operatingMode,
  }) {
    final result = create();
    if (lockState != null) result.lockState = lockState;
    if (lockType != null) result.lockType = lockType;
    if (actuatorEnabled != null) result.actuatorEnabled = actuatorEnabled;
    if (doorState != null) result.doorState = doorState;
    if (operatingMode != null) result.operatingMode = operatingMode;
    return result;
  }

  DoorLockProperties._();

  factory DoorLockProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DoorLockProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DoorLockProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'lockState', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'lockType', $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'actuatorEnabled')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'doorState', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'operatingMode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoorLockProperties clone() => DoorLockProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoorLockProperties copyWith(void Function(DoorLockProperties) updates) =>
      super.copyWith((message) => updates(message as DoorLockProperties))
          as DoorLockProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DoorLockProperties create() => DoorLockProperties._();
  @$core.override
  DoorLockProperties createEmptyInstance() => create();
  static $pb.PbList<DoorLockProperties> createRepeated() =>
      $pb.PbList<DoorLockProperties>();
  @$core.pragma('dart2js:noInline')
  static DoorLockProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoorLockProperties>(create);
  static DoorLockProperties? _defaultInstance;

  /// LockState: NotFullyLocked=0,Locked=1,Unlocked=2,Unlatched=3
  @$pb.TagNumber(1)
  $core.int get lockState => $_getIZ(0);
  @$pb.TagNumber(1)
  set lockState($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLockState() => $_has(0);
  @$pb.TagNumber(1)
  void clearLockState() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get lockType => $_getIZ(1);
  @$pb.TagNumber(2)
  set lockType($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLockType() => $_has(1);
  @$pb.TagNumber(2)
  void clearLockType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get actuatorEnabled => $_getBF(2);
  @$pb.TagNumber(3)
  set actuatorEnabled($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasActuatorEnabled() => $_has(2);
  @$pb.TagNumber(3)
  void clearActuatorEnabled() => $_clearField(3);

  /// Requires door sensor hardware
  @$pb.TagNumber(4)
  $core.int get doorState => $_getIZ(3);
  @$pb.TagNumber(4)
  set doorState($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDoorState() => $_has(3);
  @$pb.TagNumber(4)
  void clearDoorState() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get operatingMode => $_getIZ(4);
  @$pb.TagNumber(5)
  set operatingMode($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOperatingMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearOperatingMode() => $_clearField(5);
}

/// Matter On/Off cluster (0x0006)
class OnOffLightProperties extends $pb.GeneratedMessage {
  factory OnOffLightProperties({
    $core.bool? onOff,
    $core.bool? globalSceneControl,
    $core.int? onTime,
    $core.int? offWaitTime,
    $core.int? startUpOnOff,
  }) {
    final result = create();
    if (onOff != null) result.onOff = onOff;
    if (globalSceneControl != null)
      result.globalSceneControl = globalSceneControl;
    if (onTime != null) result.onTime = onTime;
    if (offWaitTime != null) result.offWaitTime = offWaitTime;
    if (startUpOnOff != null) result.startUpOnOff = startUpOnOff;
    return result;
  }

  OnOffLightProperties._();

  factory OnOffLightProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OnOffLightProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OnOffLightProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'onOff')
    ..aOB(2, _omitFieldNames ? '' : 'globalSceneControl')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'onTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'offWaitTime', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'startUpOnOff', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnOffLightProperties clone() =>
      OnOffLightProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnOffLightProperties copyWith(void Function(OnOffLightProperties) updates) =>
      super.copyWith((message) => updates(message as OnOffLightProperties))
          as OnOffLightProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OnOffLightProperties create() => OnOffLightProperties._();
  @$core.override
  OnOffLightProperties createEmptyInstance() => create();
  static $pb.PbList<OnOffLightProperties> createRepeated() =>
      $pb.PbList<OnOffLightProperties>();
  @$core.pragma('dart2js:noInline')
  static OnOffLightProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OnOffLightProperties>(create);
  static OnOffLightProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get onOff => $_getBF(0);
  @$pb.TagNumber(1)
  set onOff($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOnOff() => $_has(0);
  @$pb.TagNumber(1)
  void clearOnOff() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get globalSceneControl => $_getBF(1);
  @$pb.TagNumber(2)
  set globalSceneControl($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGlobalSceneControl() => $_has(1);
  @$pb.TagNumber(2)
  void clearGlobalSceneControl() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get onTime => $_getIZ(2);
  @$pb.TagNumber(3)
  set onTime($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOnTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearOnTime() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get offWaitTime => $_getIZ(3);
  @$pb.TagNumber(4)
  set offWaitTime($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasOffWaitTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearOffWaitTime() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get startUpOnOff => $_getIZ(4);
  @$pb.TagNumber(5)
  set startUpOnOff($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStartUpOnOff() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartUpOnOff() => $_clearField(5);
}

/// Matter On/Off (0x0006) + Level Control (0x0008) clusters
class DimmableLightProperties extends $pb.GeneratedMessage {
  factory DimmableLightProperties({
    $core.bool? onOff,
    $core.int? currentLevel,
    $core.int? minLevel,
    $core.int? maxLevel,
    $core.int? onLevel,
    $core.int? startUpCurrentLevel,
    $core.int? remainingTime,
  }) {
    final result = create();
    if (onOff != null) result.onOff = onOff;
    if (currentLevel != null) result.currentLevel = currentLevel;
    if (minLevel != null) result.minLevel = minLevel;
    if (maxLevel != null) result.maxLevel = maxLevel;
    if (onLevel != null) result.onLevel = onLevel;
    if (startUpCurrentLevel != null)
      result.startUpCurrentLevel = startUpCurrentLevel;
    if (remainingTime != null) result.remainingTime = remainingTime;
    return result;
  }

  DimmableLightProperties._();

  factory DimmableLightProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DimmableLightProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DimmableLightProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'onOff')
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'currentLevel', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'minLevel', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'maxLevel', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'onLevel', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'startUpCurrentLevel', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'remainingTime', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DimmableLightProperties clone() =>
      DimmableLightProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DimmableLightProperties copyWith(
          void Function(DimmableLightProperties) updates) =>
      super.copyWith((message) => updates(message as DimmableLightProperties))
          as DimmableLightProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DimmableLightProperties create() => DimmableLightProperties._();
  @$core.override
  DimmableLightProperties createEmptyInstance() => create();
  static $pb.PbList<DimmableLightProperties> createRepeated() =>
      $pb.PbList<DimmableLightProperties>();
  @$core.pragma('dart2js:noInline')
  static DimmableLightProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DimmableLightProperties>(create);
  static DimmableLightProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get onOff => $_getBF(0);
  @$pb.TagNumber(1)
  set onOff($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOnOff() => $_has(0);
  @$pb.TagNumber(1)
  void clearOnOff() => $_clearField(1);

  /// CurrentLevel (0–254)
  @$pb.TagNumber(2)
  $core.int get currentLevel => $_getIZ(1);
  @$pb.TagNumber(2)
  set currentLevel($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentLevel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get minLevel => $_getIZ(2);
  @$pb.TagNumber(3)
  set minLevel($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMinLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinLevel() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get maxLevel => $_getIZ(3);
  @$pb.TagNumber(4)
  set maxLevel($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMaxLevel() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxLevel() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get onLevel => $_getIZ(4);
  @$pb.TagNumber(5)
  set onLevel($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOnLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearOnLevel() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get startUpCurrentLevel => $_getIZ(5);
  @$pb.TagNumber(6)
  set startUpCurrentLevel($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStartUpCurrentLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartUpCurrentLevel() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get remainingTime => $_getIZ(6);
  @$pb.TagNumber(7)
  set remainingTime($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRemainingTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearRemainingTime() => $_clearField(7);
}

/// Matter On/Off (0x0006) + Level Control (0x0008) + Color Control (0x0300) clusters
class ColorTemperatureLightProperties extends $pb.GeneratedMessage {
  factory ColorTemperatureLightProperties({
    $core.bool? onOff,
    $core.int? currentLevel,
    $core.int? colorTemperatureMireds,
    $core.int? colorTempPhysicalMinMireds,
    $core.int? colorTempPhysicalMaxMireds,
    $core.int? startupColorTemperatureMireds,
    $core.int? colorMode,
  }) {
    final result = create();
    if (onOff != null) result.onOff = onOff;
    if (currentLevel != null) result.currentLevel = currentLevel;
    if (colorTemperatureMireds != null)
      result.colorTemperatureMireds = colorTemperatureMireds;
    if (colorTempPhysicalMinMireds != null)
      result.colorTempPhysicalMinMireds = colorTempPhysicalMinMireds;
    if (colorTempPhysicalMaxMireds != null)
      result.colorTempPhysicalMaxMireds = colorTempPhysicalMaxMireds;
    if (startupColorTemperatureMireds != null)
      result.startupColorTemperatureMireds = startupColorTemperatureMireds;
    if (colorMode != null) result.colorMode = colorMode;
    return result;
  }

  ColorTemperatureLightProperties._();

  factory ColorTemperatureLightProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ColorTemperatureLightProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorTemperatureLightProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'onOff')
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'currentLevel', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'colorTemperatureMireds', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'colorTempPhysicalMinMireds',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'colorTempPhysicalMaxMireds',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'startupColorTemperatureMireds',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'colorMode', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColorTemperatureLightProperties clone() =>
      ColorTemperatureLightProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColorTemperatureLightProperties copyWith(
          void Function(ColorTemperatureLightProperties) updates) =>
      super.copyWith(
              (message) => updates(message as ColorTemperatureLightProperties))
          as ColorTemperatureLightProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorTemperatureLightProperties create() =>
      ColorTemperatureLightProperties._();
  @$core.override
  ColorTemperatureLightProperties createEmptyInstance() => create();
  static $pb.PbList<ColorTemperatureLightProperties> createRepeated() =>
      $pb.PbList<ColorTemperatureLightProperties>();
  @$core.pragma('dart2js:noInline')
  static ColorTemperatureLightProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ColorTemperatureLightProperties>(
          create);
  static ColorTemperatureLightProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get onOff => $_getBF(0);
  @$pb.TagNumber(1)
  set onOff($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOnOff() => $_has(0);
  @$pb.TagNumber(1)
  void clearOnOff() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get currentLevel => $_getIZ(1);
  @$pb.TagNumber(2)
  set currentLevel($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCurrentLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentLevel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get colorTemperatureMireds => $_getIZ(2);
  @$pb.TagNumber(3)
  set colorTemperatureMireds($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasColorTemperatureMireds() => $_has(2);
  @$pb.TagNumber(3)
  void clearColorTemperatureMireds() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get colorTempPhysicalMinMireds => $_getIZ(3);
  @$pb.TagNumber(4)
  set colorTempPhysicalMinMireds($core.int value) =>
      $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasColorTempPhysicalMinMireds() => $_has(3);
  @$pb.TagNumber(4)
  void clearColorTempPhysicalMinMireds() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get colorTempPhysicalMaxMireds => $_getIZ(4);
  @$pb.TagNumber(5)
  set colorTempPhysicalMaxMireds($core.int value) =>
      $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasColorTempPhysicalMaxMireds() => $_has(4);
  @$pb.TagNumber(5)
  void clearColorTempPhysicalMaxMireds() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get startupColorTemperatureMireds => $_getIZ(5);
  @$pb.TagNumber(6)
  set startupColorTemperatureMireds($core.int value) =>
      $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasStartupColorTemperatureMireds() => $_has(5);
  @$pb.TagNumber(6)
  void clearStartupColorTemperatureMireds() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get colorMode => $_getIZ(6);
  @$pb.TagNumber(7)
  set colorMode($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasColorMode() => $_has(6);
  @$pb.TagNumber(7)
  void clearColorMode() => $_clearField(7);
}

/// Matter Electrical Power Measurement cluster (0x0090)
///
/// Was Zigbee ElectricalMeasurement (0x0B04) with that cluster's RMS* attribute names;
/// 0x0B04 does not exist in Matter, so a Matter connector could never have produced a
/// PropertyUpdate that resolved here.
///
/// Values are Matter's own units and width: sint64 in mW / mV / mA / mHz. A connector
/// forwards what the cluster reports without rescaling, which is the point — the earlier
/// int32/uint32 fields used this schema's own scaling (whole watts, volts × 10, amps × 1000,
/// Hz × 100) while their (matter_attribute) claimed to carry the Matter attribute, so every
/// connector had to divide, every consumer trusting the annotation was wrong by 10× to 1000×,
/// and sub-watt resolution was gone before the value reached the wire. In Matter's mW an
/// int32 caps at ~2.1 kW, so the unit and the width had to move together.
///
/// Signed throughout, matching the cluster: active_power and active_current go negative on
/// export. sint64 rather than int64 because zigzag keeps negatives at 1-5 bytes instead of
/// the fixed 10 that int64 spends on any negative value.
///
/// Matter types these as nullable. This schema has no presence anywhere in properties, so 0
/// still means "not reported" rather than "measured zero" — unchanged, and untidy for a
/// quantity that can legitimately read zero. Treat 0 as absent for these four; introducing
/// presence is a schema-wide decision, not a per-message one.
class EnergySensorProperties extends $pb.GeneratedMessage {
  factory EnergySensorProperties({
    $fixnum.Int64? activePower,
    $fixnum.Int64? voltage,
    $fixnum.Int64? activeCurrent,
    $fixnum.Int64? frequency,
  }) {
    final result = create();
    if (activePower != null) result.activePower = activePower;
    if (voltage != null) result.voltage = voltage;
    if (activeCurrent != null) result.activeCurrent = activeCurrent;
    if (frequency != null) result.frequency = frequency;
    return result;
  }

  EnergySensorProperties._();

  factory EnergySensorProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnergySensorProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnergySensorProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'activePower', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, _omitFieldNames ? '' : 'voltage', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'activeCurrent', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'frequency', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnergySensorProperties clone() =>
      EnergySensorProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnergySensorProperties copyWith(
          void Function(EnergySensorProperties) updates) =>
      super.copyWith((message) => updates(message as EnergySensorProperties))
          as EnergySensorProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnergySensorProperties create() => EnergySensorProperties._();
  @$core.override
  EnergySensorProperties createEmptyInstance() => create();
  static $pb.PbList<EnergySensorProperties> createRepeated() =>
      $pb.PbList<EnergySensorProperties>();
  @$core.pragma('dart2js:noInline')
  static EnergySensorProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnergySensorProperties>(create);
  static EnergySensorProperties? _defaultInstance;

  /// Milliwatts, negative on export
  @$pb.TagNumber(5)
  $fixnum.Int64 get activePower => $_getI64(0);
  @$pb.TagNumber(5)
  set activePower($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(5)
  $core.bool hasActivePower() => $_has(0);
  @$pb.TagNumber(5)
  void clearActivePower() => $_clearField(5);

  /// Millivolts
  @$pb.TagNumber(6)
  $fixnum.Int64 get voltage => $_getI64(1);
  @$pb.TagNumber(6)
  set voltage($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(6)
  $core.bool hasVoltage() => $_has(1);
  @$pb.TagNumber(6)
  void clearVoltage() => $_clearField(6);

  /// Milliamps, negative on export
  @$pb.TagNumber(7)
  $fixnum.Int64 get activeCurrent => $_getI64(2);
  @$pb.TagNumber(7)
  set activeCurrent($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(7)
  $core.bool hasActiveCurrent() => $_has(2);
  @$pb.TagNumber(7)
  void clearActiveCurrent() => $_clearField(7);

  /// Millihertz
  @$pb.TagNumber(8)
  $fixnum.Int64 get frequency => $_getI64(3);
  @$pb.TagNumber(8)
  set frequency($fixnum.Int64 value) => $_setInt64(3, value);
  @$pb.TagNumber(8)
  $core.bool hasFrequency() => $_has(3);
  @$pb.TagNumber(8)
  void clearFrequency() => $_clearField(8);
}

/// Matter Pressure Measurement cluster (0x0403)
class PressureSensorProperties extends $pb.GeneratedMessage {
  factory PressureSensorProperties({
    $core.int? measuredValue,
    $core.int? minMeasuredValue,
    $core.int? maxMeasuredValue,
    $core.int? tolerance,
  }) {
    final result = create();
    if (measuredValue != null) result.measuredValue = measuredValue;
    if (minMeasuredValue != null) result.minMeasuredValue = minMeasuredValue;
    if (maxMeasuredValue != null) result.maxMeasuredValue = maxMeasuredValue;
    if (tolerance != null) result.tolerance = tolerance;
    return result;
  }

  PressureSensorProperties._();

  factory PressureSensorProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PressureSensorProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PressureSensorProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'measuredValue', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'minMeasuredValue', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'maxMeasuredValue', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'tolerance', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureSensorProperties clone() =>
      PressureSensorProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureSensorProperties copyWith(
          void Function(PressureSensorProperties) updates) =>
      super.copyWith((message) => updates(message as PressureSensorProperties))
          as PressureSensorProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PressureSensorProperties create() => PressureSensorProperties._();
  @$core.override
  PressureSensorProperties createEmptyInstance() => create();
  static $pb.PbList<PressureSensorProperties> createRepeated() =>
      $pb.PbList<PressureSensorProperties>();
  @$core.pragma('dart2js:noInline')
  static PressureSensorProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PressureSensorProperties>(create);
  static PressureSensorProperties? _defaultInstance;

  /// kPa × 10
  @$pb.TagNumber(1)
  $core.int get measuredValue => $_getIZ(0);
  @$pb.TagNumber(1)
  set measuredValue($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMeasuredValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearMeasuredValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get minMeasuredValue => $_getIZ(1);
  @$pb.TagNumber(2)
  set minMeasuredValue($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinMeasuredValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinMeasuredValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxMeasuredValue => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxMeasuredValue($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxMeasuredValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxMeasuredValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get tolerance => $_getIZ(3);
  @$pb.TagNumber(4)
  set tolerance($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTolerance() => $_has(3);
  @$pb.TagNumber(4)
  void clearTolerance() => $_clearField(4);
}

/// Matter Power Source cluster (0x002F)
///
/// Its own device type, carried on its own endpoint — which is where Matter puts it, and
/// why battery has no home on a single-device-type model: a battery valve is already a
/// Thermostat. Almost any battery device is also a Power Source.
///
/// Values are Matter's own units and width, following EnergySensorProperties: a connector
/// forwards what the cluster reports without rescaling.
class PowerSourceProperties extends $pb.GeneratedMessage {
  factory PowerSourceProperties({
    $core.int? batPercentRemaining,
    $core.int? batChargeLevel,
    $core.bool? batReplacementNeeded,
    $core.int? batVoltage,
    $core.int? status,
  }) {
    final result = create();
    if (batPercentRemaining != null)
      result.batPercentRemaining = batPercentRemaining;
    if (batChargeLevel != null) result.batChargeLevel = batChargeLevel;
    if (batReplacementNeeded != null)
      result.batReplacementNeeded = batReplacementNeeded;
    if (batVoltage != null) result.batVoltage = batVoltage;
    if (status != null) result.status = status;
    return result;
  }

  PowerSourceProperties._();

  factory PowerSourceProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PowerSourceProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PowerSourceProperties',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'batPercentRemaining', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'batChargeLevel', $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'batReplacementNeeded')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'batVoltage', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PowerSourceProperties clone() =>
      PowerSourceProperties()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PowerSourceProperties copyWith(
          void Function(PowerSourceProperties) updates) =>
      super.copyWith((message) => updates(message as PowerSourceProperties))
          as PowerSourceProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PowerSourceProperties create() => PowerSourceProperties._();
  @$core.override
  PowerSourceProperties createEmptyInstance() => create();
  static $pb.PbList<PowerSourceProperties> createRepeated() =>
      $pb.PbList<PowerSourceProperties>();
  @$core.pragma('dart2js:noInline')
  static PowerSourceProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PowerSourceProperties>(create);
  static PowerSourceProperties? _defaultInstance;

  /// HALF-percent, 0-200 — Matter reports twice the percentage, so 200 is a full battery
  /// and 150 is 75%. Divide by two for display; do not rescale on the wire.
  @$pb.TagNumber(1)
  $core.int get batPercentRemaining => $_getIZ(0);
  @$pb.TagNumber(1)
  set batPercentRemaining($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBatPercentRemaining() => $_has(0);
  @$pb.TagNumber(1)
  void clearBatPercentRemaining() => $_clearField(1);

  /// BatChargeLevelEnum: OK=0, Warning=1, Critical=2
  @$pb.TagNumber(2)
  $core.int get batChargeLevel => $_getIZ(1);
  @$pb.TagNumber(2)
  set batChargeLevel($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBatChargeLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearBatChargeLevel() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get batReplacementNeeded => $_getBF(2);
  @$pb.TagNumber(3)
  set batReplacementNeeded($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBatReplacementNeeded() => $_has(2);
  @$pb.TagNumber(3)
  void clearBatReplacementNeeded() => $_clearField(3);

  /// Millivolts
  @$pb.TagNumber(4)
  $core.int get batVoltage => $_getIZ(3);
  @$pb.TagNumber(4)
  set batVoltage($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBatVoltage() => $_has(3);
  @$pb.TagNumber(4)
  void clearBatVoltage() => $_clearField(4);

  /// PowerSourceStatusEnum: Unspec=0, Active=1, Standby=2, Unavailable=3
  @$pb.TagNumber(5)
  $core.int get status => $_getIZ(4);
  @$pb.TagNumber(5)
  set status($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
