// This is a generated file - do not edit.
//
// Generated from kusinta/iot/vendor/homematic/v1/homematic.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// HomeMatic-specific thermostat properties not available in Matter Thermostat cluster.
/// Add new fields at the next available field number — never reuse a removed number.
class HmThermostatProps extends $pb.GeneratedMessage {
  factory HmThermostatProps({
    $core.bool? boostMode,
    $core.double? boostTimePeriod,
    $core.int? controlMode,
    $core.bool? frostProtection,
    $core.double? currentProfilePeriod,
  }) {
    final result = create();
    if (boostMode != null) result.boostMode = boostMode;
    if (boostTimePeriod != null) result.boostTimePeriod = boostTimePeriod;
    if (controlMode != null) result.controlMode = controlMode;
    if (frostProtection != null) result.frostProtection = frostProtection;
    if (currentProfilePeriod != null)
      result.currentProfilePeriod = currentProfilePeriod;
    return result;
  }

  HmThermostatProps._();

  factory HmThermostatProps.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HmThermostatProps.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HmThermostatProps',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.vendor.homematic.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'boostMode')
    ..aD(2, _omitFieldNames ? '' : 'boostTimePeriod',
        fieldType: $pb.PbFieldType.OF)
    ..aI(3, _omitFieldNames ? '' : 'controlMode',
        fieldType: $pb.PbFieldType.OU3)
    ..aOB(4, _omitFieldNames ? '' : 'frostProtection')
    ..aD(5, _omitFieldNames ? '' : 'currentProfilePeriod',
        fieldType: $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmThermostatProps clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmThermostatProps copyWith(void Function(HmThermostatProps) updates) =>
      super.copyWith((message) => updates(message as HmThermostatProps))
          as HmThermostatProps;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HmThermostatProps create() => HmThermostatProps._();
  @$core.override
  HmThermostatProps createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HmThermostatProps getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HmThermostatProps>(create);
  static HmThermostatProps? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get boostMode => $_getBF(0);
  @$pb.TagNumber(1)
  set boostMode($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBoostMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoostMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get boostTimePeriod => $_getN(1);
  @$pb.TagNumber(2)
  set boostTimePeriod($core.double value) => $_setFloat(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoostTimePeriod() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoostTimePeriod() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get controlMode => $_getIZ(2);
  @$pb.TagNumber(3)
  set controlMode($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasControlMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearControlMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get frostProtection => $_getBF(3);
  @$pb.TagNumber(4)
  set frostProtection($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFrostProtection() => $_has(3);
  @$pb.TagNumber(4)
  void clearFrostProtection() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get currentProfilePeriod => $_getN(4);
  @$pb.TagNumber(5)
  set currentProfilePeriod($core.double value) => $_setFloat(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCurrentProfilePeriod() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentProfilePeriod() => $_clearField(5);
}

/// HomeMatic wall thermostat (HmIP-WTH series).
class HmWallThermostatProps extends $pb.GeneratedMessage {
  factory HmWallThermostatProps({
    $core.int? displayMode,
  }) {
    final result = create();
    if (displayMode != null) result.displayMode = displayMode;
    return result;
  }

  HmWallThermostatProps._();

  factory HmWallThermostatProps.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HmWallThermostatProps.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HmWallThermostatProps',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.vendor.homematic.v1'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'displayMode',
        fieldType: $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmWallThermostatProps clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmWallThermostatProps copyWith(
          void Function(HmWallThermostatProps) updates) =>
      super.copyWith((message) => updates(message as HmWallThermostatProps))
          as HmWallThermostatProps;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HmWallThermostatProps create() => HmWallThermostatProps._();
  @$core.override
  HmWallThermostatProps createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HmWallThermostatProps getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HmWallThermostatProps>(create);
  static HmWallThermostatProps? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get displayMode => $_getIZ(0);
  @$pb.TagNumber(1)
  set displayMode($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDisplayMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearDisplayMode() => $_clearField(1);
}

/// HomeMatic window actuator (HmIP-FROLL/BROLL).
class HmWindowActuatorProps extends $pb.GeneratedMessage {
  factory HmWindowActuatorProps({
    $core.int? driveState,
    $core.bool? errorEfuse,
    $core.bool? errorMotorCoilsTemp,
  }) {
    final result = create();
    if (driveState != null) result.driveState = driveState;
    if (errorEfuse != null) result.errorEfuse = errorEfuse;
    if (errorMotorCoilsTemp != null)
      result.errorMotorCoilsTemp = errorMotorCoilsTemp;
    return result;
  }

  HmWindowActuatorProps._();

  factory HmWindowActuatorProps.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HmWindowActuatorProps.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HmWindowActuatorProps',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.vendor.homematic.v1'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'driveState', fieldType: $pb.PbFieldType.OU3)
    ..aOB(2, _omitFieldNames ? '' : 'errorEfuse')
    ..aOB(3, _omitFieldNames ? '' : 'errorMotorCoilsTemp')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmWindowActuatorProps clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmWindowActuatorProps copyWith(
          void Function(HmWindowActuatorProps) updates) =>
      super.copyWith((message) => updates(message as HmWindowActuatorProps))
          as HmWindowActuatorProps;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HmWindowActuatorProps create() => HmWindowActuatorProps._();
  @$core.override
  HmWindowActuatorProps createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HmWindowActuatorProps getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HmWindowActuatorProps>(create);
  static HmWindowActuatorProps? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get driveState => $_getIZ(0);
  @$pb.TagNumber(1)
  set driveState($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDriveState() => $_has(0);
  @$pb.TagNumber(1)
  void clearDriveState() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get errorEfuse => $_getBF(1);
  @$pb.TagNumber(2)
  set errorEfuse($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasErrorEfuse() => $_has(1);
  @$pb.TagNumber(2)
  void clearErrorEfuse() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get errorMotorCoilsTemp => $_getBF(2);
  @$pb.TagNumber(3)
  set errorMotorCoilsTemp($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasErrorMotorCoilsTemp() => $_has(2);
  @$pb.TagNumber(3)
  void clearErrorMotorCoilsTemp() => $_clearField(3);
}

/// HomeMatic door/window sensor (HmIP-SWDO/SWDM).
class HmDoorSensorProps extends $pb.GeneratedMessage {
  factory HmDoorSensorProps({
    $core.bool? sabotage,
    $core.bool? lowBattery,
  }) {
    final result = create();
    if (sabotage != null) result.sabotage = sabotage;
    if (lowBattery != null) result.lowBattery = lowBattery;
    return result;
  }

  HmDoorSensorProps._();

  factory HmDoorSensorProps.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HmDoorSensorProps.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HmDoorSensorProps',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.vendor.homematic.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'sabotage')
    ..aOB(2, _omitFieldNames ? '' : 'lowBattery')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmDoorSensorProps clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmDoorSensorProps copyWith(void Function(HmDoorSensorProps) updates) =>
      super.copyWith((message) => updates(message as HmDoorSensorProps))
          as HmDoorSensorProps;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HmDoorSensorProps create() => HmDoorSensorProps._();
  @$core.override
  HmDoorSensorProps createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HmDoorSensorProps getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HmDoorSensorProps>(create);
  static HmDoorSensorProps? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get sabotage => $_getBF(0);
  @$pb.TagNumber(1)
  set sabotage($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSabotage() => $_has(0);
  @$pb.TagNumber(1)
  void clearSabotage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get lowBattery => $_getBF(1);
  @$pb.TagNumber(2)
  set lowBattery($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLowBattery() => $_has(1);
  @$pb.TagNumber(2)
  void clearLowBattery() => $_clearField(2);
}

/// HomeMatic smoke detector (HmIP-SWSD).
class HmSmokeDetectorProps extends $pb.GeneratedMessage {
  factory HmSmokeDetectorProps({
    $core.bool? alarmTriggered,
    $core.bool? lowBattery,
  }) {
    final result = create();
    if (alarmTriggered != null) result.alarmTriggered = alarmTriggered;
    if (lowBattery != null) result.lowBattery = lowBattery;
    return result;
  }

  HmSmokeDetectorProps._();

  factory HmSmokeDetectorProps.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HmSmokeDetectorProps.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HmSmokeDetectorProps',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.vendor.homematic.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'alarmTriggered')
    ..aOB(2, _omitFieldNames ? '' : 'lowBattery')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmSmokeDetectorProps clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmSmokeDetectorProps copyWith(void Function(HmSmokeDetectorProps) updates) =>
      super.copyWith((message) => updates(message as HmSmokeDetectorProps))
          as HmSmokeDetectorProps;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HmSmokeDetectorProps create() => HmSmokeDetectorProps._();
  @$core.override
  HmSmokeDetectorProps createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HmSmokeDetectorProps getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HmSmokeDetectorProps>(create);
  static HmSmokeDetectorProps? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get alarmTriggered => $_getBF(0);
  @$pb.TagNumber(1)
  set alarmTriggered($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAlarmTriggered() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlarmTriggered() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get lowBattery => $_getBF(1);
  @$pb.TagNumber(2)
  set lowBattery($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLowBattery() => $_has(1);
  @$pb.TagNumber(2)
  void clearLowBattery() => $_clearField(2);
}

enum HomematicVendorExtension_HomematicProps {
  hmThermostat,
  hmWallThermostat,
  hmWindowActuator,
  hmDoorSensor,
  hmSmokeDetector,
  notSet
}

/// Top-level vendor extension attached to Device.properties field 50.
/// Carries the CCU3 device address + aiohomematic type string + device-type-specific props.
class HomematicVendorExtension extends $pb.GeneratedMessage {
  factory HomematicVendorExtension({
    $core.String? homematicAddress,
    $core.String? homematicType,
    HmThermostatProps? hmThermostat,
    HmWallThermostatProps? hmWallThermostat,
    HmWindowActuatorProps? hmWindowActuator,
    HmDoorSensorProps? hmDoorSensor,
    HmSmokeDetectorProps? hmSmokeDetector,
  }) {
    final result = create();
    if (homematicAddress != null) result.homematicAddress = homematicAddress;
    if (homematicType != null) result.homematicType = homematicType;
    if (hmThermostat != null) result.hmThermostat = hmThermostat;
    if (hmWallThermostat != null) result.hmWallThermostat = hmWallThermostat;
    if (hmWindowActuator != null) result.hmWindowActuator = hmWindowActuator;
    if (hmDoorSensor != null) result.hmDoorSensor = hmDoorSensor;
    if (hmSmokeDetector != null) result.hmSmokeDetector = hmSmokeDetector;
    return result;
  }

  HomematicVendorExtension._();

  factory HomematicVendorExtension.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HomematicVendorExtension.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, HomematicVendorExtension_HomematicProps>
      _HomematicVendorExtension_HomematicPropsByTag = {
    10: HomematicVendorExtension_HomematicProps.hmThermostat,
    11: HomematicVendorExtension_HomematicProps.hmWallThermostat,
    12: HomematicVendorExtension_HomematicProps.hmWindowActuator,
    13: HomematicVendorExtension_HomematicProps.hmDoorSensor,
    14: HomematicVendorExtension_HomematicProps.hmSmokeDetector,
    0: HomematicVendorExtension_HomematicProps.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HomematicVendorExtension',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.vendor.homematic.v1'),
      createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13, 14])
    ..aOS(1, _omitFieldNames ? '' : 'homematicAddress')
    ..aOS(2, _omitFieldNames ? '' : 'homematicType')
    ..aOM<HmThermostatProps>(10, _omitFieldNames ? '' : 'hmThermostat',
        subBuilder: HmThermostatProps.create)
    ..aOM<HmWallThermostatProps>(11, _omitFieldNames ? '' : 'hmWallThermostat',
        subBuilder: HmWallThermostatProps.create)
    ..aOM<HmWindowActuatorProps>(12, _omitFieldNames ? '' : 'hmWindowActuator',
        subBuilder: HmWindowActuatorProps.create)
    ..aOM<HmDoorSensorProps>(13, _omitFieldNames ? '' : 'hmDoorSensor',
        subBuilder: HmDoorSensorProps.create)
    ..aOM<HmSmokeDetectorProps>(14, _omitFieldNames ? '' : 'hmSmokeDetector',
        subBuilder: HmSmokeDetectorProps.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HomematicVendorExtension clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HomematicVendorExtension copyWith(
          void Function(HomematicVendorExtension) updates) =>
      super.copyWith((message) => updates(message as HomematicVendorExtension))
          as HomematicVendorExtension;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HomematicVendorExtension create() => HomematicVendorExtension._();
  @$core.override
  HomematicVendorExtension createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HomematicVendorExtension getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HomematicVendorExtension>(create);
  static HomematicVendorExtension? _defaultInstance;

  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  HomematicVendorExtension_HomematicProps whichHomematicProps() =>
      _HomematicVendorExtension_HomematicPropsByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(10)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  void clearHomematicProps() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get homematicAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set homematicAddress($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHomematicAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomematicAddress() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get homematicType => $_getSZ(1);
  @$pb.TagNumber(2)
  set homematicType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHomematicType() => $_has(1);
  @$pb.TagNumber(2)
  void clearHomematicType() => $_clearField(2);

  @$pb.TagNumber(10)
  HmThermostatProps get hmThermostat => $_getN(2);
  @$pb.TagNumber(10)
  set hmThermostat(HmThermostatProps value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasHmThermostat() => $_has(2);
  @$pb.TagNumber(10)
  void clearHmThermostat() => $_clearField(10);
  @$pb.TagNumber(10)
  HmThermostatProps ensureHmThermostat() => $_ensure(2);

  @$pb.TagNumber(11)
  HmWallThermostatProps get hmWallThermostat => $_getN(3);
  @$pb.TagNumber(11)
  set hmWallThermostat(HmWallThermostatProps value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasHmWallThermostat() => $_has(3);
  @$pb.TagNumber(11)
  void clearHmWallThermostat() => $_clearField(11);
  @$pb.TagNumber(11)
  HmWallThermostatProps ensureHmWallThermostat() => $_ensure(3);

  @$pb.TagNumber(12)
  HmWindowActuatorProps get hmWindowActuator => $_getN(4);
  @$pb.TagNumber(12)
  set hmWindowActuator(HmWindowActuatorProps value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasHmWindowActuator() => $_has(4);
  @$pb.TagNumber(12)
  void clearHmWindowActuator() => $_clearField(12);
  @$pb.TagNumber(12)
  HmWindowActuatorProps ensureHmWindowActuator() => $_ensure(4);

  @$pb.TagNumber(13)
  HmDoorSensorProps get hmDoorSensor => $_getN(5);
  @$pb.TagNumber(13)
  set hmDoorSensor(HmDoorSensorProps value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasHmDoorSensor() => $_has(5);
  @$pb.TagNumber(13)
  void clearHmDoorSensor() => $_clearField(13);
  @$pb.TagNumber(13)
  HmDoorSensorProps ensureHmDoorSensor() => $_ensure(5);

  @$pb.TagNumber(14)
  HmSmokeDetectorProps get hmSmokeDetector => $_getN(6);
  @$pb.TagNumber(14)
  set hmSmokeDetector(HmSmokeDetectorProps value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasHmSmokeDetector() => $_has(6);
  @$pb.TagNumber(14)
  void clearHmSmokeDetector() => $_clearField(14);
  @$pb.TagNumber(14)
  HmSmokeDetectorProps ensureHmSmokeDetector() => $_ensure(6);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
