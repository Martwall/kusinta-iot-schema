// This is a generated file - do not edit.
//
// Generated from kusinta/iot/vendor/homematic/v1/homematic.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Who a HomeMatic device is, in its own terms. Identity, not readings — it describes the
/// physical device, so it hangs off device.v1.DeviceDescriptor rather than off any one
/// endpoint.
class HomematicDeviceIdentity extends $pb.GeneratedMessage {
  factory HomematicDeviceIdentity({
    $core.String? address,
    $core.String? type,
  }) {
    final result = create();
    if (address != null) result.address = address;
    if (type != null) result.type = type;
    return result;
  }

  HomematicDeviceIdentity._();

  factory HomematicDeviceIdentity.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HomematicDeviceIdentity.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HomematicDeviceIdentity',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.vendor.homematic.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'address')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HomematicDeviceIdentity clone() =>
      HomematicDeviceIdentity()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HomematicDeviceIdentity copyWith(
          void Function(HomematicDeviceIdentity) updates) =>
      super.copyWith((message) => updates(message as HomematicDeviceIdentity))
          as HomematicDeviceIdentity;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HomematicDeviceIdentity create() => HomematicDeviceIdentity._();
  @$core.override
  HomematicDeviceIdentity createEmptyInstance() => create();
  static $pb.PbList<HomematicDeviceIdentity> createRepeated() =>
      $pb.PbList<HomematicDeviceIdentity>();
  @$core.pragma('dart2js:noInline')
  static HomematicDeviceIdentity getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HomematicDeviceIdentity>(create);
  static HomematicDeviceIdentity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);
}

/// HomeMatic thermostat parameters with no Matter equivalent, carried on the same endpoint
/// as that thermostat's Matter properties rather than instead of them.
///
/// Battery state is deliberately NOT here. LOW_BAT and OPERATING_VOLTAGE are Matter's
/// PowerSource cluster, which every battery device from every technology needs, so they
/// belong on a Power Source endpoint. See device/v1/properties.proto.
///
/// Every field is `optional`, for the same reason as device/v1/properties.proto: these are
/// assembled from a PropertyUpdate stream, and zero is a real reading here too — boost_mode
/// false means not boosting, control_mode 0 is an HmIP ControlMode value. Absent means never
/// reported; present means a reading, including zero.
///
/// Add new fields at the next available number — never reuse a removed one.
class HmThermostatProps extends $pb.GeneratedMessage {
  factory HmThermostatProps({
    $core.bool? boostMode,
    $core.double? boostTimePeriod,
    $core.int? controlMode,
    $core.bool? frostProtection,
    $core.double? currentProfilePeriod,
    $core.double? level,
    $core.int? windowState,
    $core.int? valveState,
  }) {
    final result = create();
    if (boostMode != null) result.boostMode = boostMode;
    if (boostTimePeriod != null) result.boostTimePeriod = boostTimePeriod;
    if (controlMode != null) result.controlMode = controlMode;
    if (frostProtection != null) result.frostProtection = frostProtection;
    if (currentProfilePeriod != null)
      result.currentProfilePeriod = currentProfilePeriod;
    if (level != null) result.level = level;
    if (windowState != null) result.windowState = windowState;
    if (valveState != null) result.valveState = valveState;
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
    ..a<$core.double>(
        2, _omitFieldNames ? '' : 'boostTimePeriod', $pb.PbFieldType.OF)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'controlMode', $pb.PbFieldType.OU3)
    ..aOB(4, _omitFieldNames ? '' : 'frostProtection')
    ..a<$core.double>(
        5, _omitFieldNames ? '' : 'currentProfilePeriod', $pb.PbFieldType.OF)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'level', $pb.PbFieldType.OF)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'windowState', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'valveState', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmThermostatProps clone() => HmThermostatProps()..mergeFromMessage(this);
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
  static $pb.PbList<HmThermostatProps> createRepeated() =>
      $pb.PbList<HmThermostatProps>();
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

  /// Valve position, 0.0-1.0 — how far the radiator valve is actually open. The reading
  /// this extension exists for: it has no Matter equivalent, and it is what an automatic
  /// or learned control strategy needs.
  @$pb.TagNumber(6)
  $core.double get level => $_getN(5);
  @$pb.TagNumber(6)
  set level($core.double value) => $_setFloat(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearLevel() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get windowState => $_getIZ(6);
  @$pb.TagNumber(7)
  set windowState($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasWindowState() => $_has(6);
  @$pb.TagNumber(7)
  void clearWindowState() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get valveState => $_getIZ(7);
  @$pb.TagNumber(8)
  set valveState($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasValveState() => $_has(7);
  @$pb.TagNumber(8)
  void clearValveState() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
