// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/properties.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Matter Thermostat cluster (0x0201) — device type 0x0301
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
    ..aI(1, _omitFieldNames ? '' : 'localTemperature',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(2, _omitFieldNames ? '' : 'occupiedHeatingSetpoint',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(3, _omitFieldNames ? '' : 'occupiedCoolingSetpoint',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(4, _omitFieldNames ? '' : 'minHeatSetpointLimit',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(5, _omitFieldNames ? '' : 'maxHeatSetpointLimit',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(6, _omitFieldNames ? '' : 'minCoolSetpointLimit',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(7, _omitFieldNames ? '' : 'maxCoolSetpointLimit',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(8, _omitFieldNames ? '' : 'controlSequenceOfOperation',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(9, _omitFieldNames ? '' : 'systemMode', fieldType: $pb.PbFieldType.OU3)
    ..aI(10, _omitFieldNames ? '' : 'thermostatRunningMode',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ThermostatProperties clone() => deepCopy();
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

  @$pb.TagNumber(4)
  $core.int get minHeatSetpointLimit => $_getIZ(3);
  @$pb.TagNumber(4)
  set minHeatSetpointLimit($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMinHeatSetpointLimit() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinHeatSetpointLimit() => $_clearField(4);

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

/// Matter Temperature Measurement cluster (0x0402) — device type 0x0302
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
    ..aI(1, _omitFieldNames ? '' : 'measuredValue',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(2, _omitFieldNames ? '' : 'minMeasuredValue',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(3, _omitFieldNames ? '' : 'maxMeasuredValue',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(4, _omitFieldNames ? '' : 'tolerance', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TemperatureSensorProperties clone() => deepCopy();
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

/// Matter Relative Humidity Measurement cluster (0x0405) — device type 0x0307
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
    ..aI(1, _omitFieldNames ? '' : 'measuredValue',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'minMeasuredValue',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'maxMeasuredValue',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'tolerance', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HumiditySensorProperties clone() => deepCopy();
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
  @$core.pragma('dart2js:noInline')
  static HumiditySensorProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HumiditySensorProperties>(create);
  static HumiditySensorProperties? _defaultInstance;

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

/// Matter Occupancy Sensing cluster (0x0406) — device type 0x0107
class OccupancySensorProperties extends $pb.GeneratedMessage {
  factory OccupancySensorProperties({
    $core.int? occupancy,
    $core.int? occupancySensorType,
    $core.int? occupancySensorTypeBitmap,
    $core.int? pirOccToUnoccDelay,
    $core.int? pirUnoccToOccDelay,
  }) {
    final result = create();
    if (occupancy != null) result.occupancy = occupancy;
    if (occupancySensorType != null)
      result.occupancySensorType = occupancySensorType;
    if (occupancySensorTypeBitmap != null)
      result.occupancySensorTypeBitmap = occupancySensorTypeBitmap;
    if (pirOccToUnoccDelay != null)
      result.pirOccToUnoccDelay = pirOccToUnoccDelay;
    if (pirUnoccToOccDelay != null)
      result.pirUnoccToOccDelay = pirUnoccToOccDelay;
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
    ..aI(1, _omitFieldNames ? '' : 'occupancy', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'occupancySensorType',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'occupancySensorTypeBitmap',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'pirOccToUnoccDelay',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'pirUnoccToOccDelay',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OccupancySensorProperties clone() => deepCopy();
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
  @$core.pragma('dart2js:noInline')
  static OccupancySensorProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OccupancySensorProperties>(create);
  static OccupancySensorProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get occupancy => $_getIZ(0);
  @$pb.TagNumber(1)
  set occupancy($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOccupancy() => $_has(0);
  @$pb.TagNumber(1)
  void clearOccupancy() => $_clearField(1);

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
  $core.int get pirOccToUnoccDelay => $_getIZ(3);
  @$pb.TagNumber(4)
  set pirOccToUnoccDelay($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPirOccToUnoccDelay() => $_has(3);
  @$pb.TagNumber(4)
  void clearPirOccToUnoccDelay() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get pirUnoccToOccDelay => $_getIZ(4);
  @$pb.TagNumber(5)
  set pirUnoccToOccDelay($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPirUnoccToOccDelay() => $_has(4);
  @$pb.TagNumber(5)
  void clearPirUnoccToOccDelay() => $_clearField(5);
}

/// Matter Boolean State cluster (0x0045) — device type 0x0015 (Contact Sensor)
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
  ContactSensorProperties clone() => deepCopy();
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

/// Matter Window Covering cluster (0x0102) — device type 0x0202
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
    ..aI(1, _omitFieldNames ? '' : 'coveringType',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'currentPositionLiftPercent100ths',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'currentPositionTiltPercent100ths',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'targetPositionLiftPercent100ths',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'targetPositionTiltPercent100ths',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'operationalStatus',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'endProductType',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'mode', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WindowCoveringProperties clone() => deepCopy();
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
  @$core.pragma('dart2js:noInline')
  static WindowCoveringProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WindowCoveringProperties>(create);
  static WindowCoveringProperties? _defaultInstance;

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

/// Matter Door Lock cluster (0x0101) — device type 0x000A
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
    ..aI(1, _omitFieldNames ? '' : 'lockState', fieldType: $pb.PbFieldType.OU3)
    ..aI(2, _omitFieldNames ? '' : 'lockType', fieldType: $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'actuatorEnabled')
    ..aI(4, _omitFieldNames ? '' : 'doorState', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'operatingMode',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DoorLockProperties clone() => deepCopy();
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
  @$core.pragma('dart2js:noInline')
  static DoorLockProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DoorLockProperties>(create);
  static DoorLockProperties? _defaultInstance;

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

/// Matter On/Off cluster (0x0006) — device type 0x0100 (On/Off Light)
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
    ..aI(3, _omitFieldNames ? '' : 'onTime', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'offWaitTime',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'startUpOnOff',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnOffLightProperties clone() => deepCopy();
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

/// Matter On/Off + Level Control cluster (0x0008) — device type 0x010B (Dimmable Light)
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
    ..aI(2, _omitFieldNames ? '' : 'currentLevel',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'minLevel', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'maxLevel', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'onLevel', fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'startUpCurrentLevel',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'remainingTime',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DimmableLightProperties clone() => deepCopy();
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

/// Matter On/Off + Level + Color Control cluster (0x0300) — device type 0x010C
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
    ..aI(2, _omitFieldNames ? '' : 'currentLevel',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'colorTemperatureMireds',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'colorTempPhysicalMinMireds',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'colorTempPhysicalMaxMireds',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(6, _omitFieldNames ? '' : 'startupColorTemperatureMireds',
        fieldType: $pb.PbFieldType.OU3)
    ..aI(7, _omitFieldNames ? '' : 'colorMode', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColorTemperatureLightProperties clone() => deepCopy();
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

/// Matter Electrical Measurement cluster (0x0B04) — device type 0x0510
class EnergySensorProperties extends $pb.GeneratedMessage {
  factory EnergySensorProperties({
    $core.int? activePower,
    $core.int? rmsVoltage,
    $core.int? rmsCurrent,
    $core.int? acFrequency,
  }) {
    final result = create();
    if (activePower != null) result.activePower = activePower;
    if (rmsVoltage != null) result.rmsVoltage = rmsVoltage;
    if (rmsCurrent != null) result.rmsCurrent = rmsCurrent;
    if (acFrequency != null) result.acFrequency = acFrequency;
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
    ..aI(1, _omitFieldNames ? '' : 'activePower')
    ..aI(2, _omitFieldNames ? '' : 'rmsVoltage', fieldType: $pb.PbFieldType.OU3)
    ..aI(3, _omitFieldNames ? '' : 'rmsCurrent', fieldType: $pb.PbFieldType.OU3)
    ..aI(4, _omitFieldNames ? '' : 'acFrequency',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnergySensorProperties clone() => deepCopy();
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
  @$core.pragma('dart2js:noInline')
  static EnergySensorProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnergySensorProperties>(create);
  static EnergySensorProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get activePower => $_getIZ(0);
  @$pb.TagNumber(1)
  set activePower($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasActivePower() => $_has(0);
  @$pb.TagNumber(1)
  void clearActivePower() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get rmsVoltage => $_getIZ(1);
  @$pb.TagNumber(2)
  set rmsVoltage($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRmsVoltage() => $_has(1);
  @$pb.TagNumber(2)
  void clearRmsVoltage() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get rmsCurrent => $_getIZ(2);
  @$pb.TagNumber(3)
  set rmsCurrent($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRmsCurrent() => $_has(2);
  @$pb.TagNumber(3)
  void clearRmsCurrent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get acFrequency => $_getIZ(3);
  @$pb.TagNumber(4)
  set acFrequency($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAcFrequency() => $_has(3);
  @$pb.TagNumber(4)
  void clearAcFrequency() => $_clearField(4);
}

/// Matter Pressure Measurement cluster (0x0403) — device type 0x0305
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
    ..aI(1, _omitFieldNames ? '' : 'measuredValue',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(2, _omitFieldNames ? '' : 'minMeasuredValue',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(3, _omitFieldNames ? '' : 'maxMeasuredValue',
        fieldType: $pb.PbFieldType.OS3)
    ..aI(4, _omitFieldNames ? '' : 'tolerance', fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PressureSensorProperties clone() => deepCopy();
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
  @$core.pragma('dart2js:noInline')
  static PressureSensorProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PressureSensorProperties>(create);
  static PressureSensorProperties? _defaultInstance;

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

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
