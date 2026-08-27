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
/// "No Matter equivalent" is the entry test, and it is the one to apply before adding a
/// field here. Valve position failed it: LEVEL is Thermostat/PIHeatingDemand, and it lived
/// here for a while under the claim that Matter had nothing for it. It is now
/// device.v1.ThermostatProperties.pi_heating_demand, and field 6 is burned.
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
/// Enum parameters cross the wire as the CCU's own index, not as a type this schema defines,
/// so each one lists its values in its comment. The order is the CCU's; do not renumber it.
///
/// Add new fields at the next available number — never reuse a removed one.
class HmThermostatProps extends $pb.GeneratedMessage {
  factory HmThermostatProps({
    $core.bool? boostMode,
    $core.int? boostTimeRemaining,
    $core.int? controlMode,
    $core.bool? frostProtection,
    $core.bool? partyMode,
    $core.int? windowState,
    $core.int? valveState,
    $core.int? setPointMode,
    $core.int? activeProfile,
    $core.int? actualTemperatureStatus,
    $core.bool? valveAdaption,
  }) {
    final result = create();
    if (boostMode != null) result.boostMode = boostMode;
    if (boostTimeRemaining != null)
      result.boostTimeRemaining = boostTimeRemaining;
    if (controlMode != null) result.controlMode = controlMode;
    if (frostProtection != null) result.frostProtection = frostProtection;
    if (partyMode != null) result.partyMode = partyMode;
    if (windowState != null) result.windowState = windowState;
    if (valveState != null) result.valveState = valveState;
    if (setPointMode != null) result.setPointMode = setPointMode;
    if (activeProfile != null) result.activeProfile = activeProfile;
    if (actualTemperatureStatus != null)
      result.actualTemperatureStatus = actualTemperatureStatus;
    if (valveAdaption != null) result.valveAdaption = valveAdaption;
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
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'boostTimeRemaining', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'controlMode', $pb.PbFieldType.OU3)
    ..aOB(4, _omitFieldNames ? '' : 'frostProtection')
    ..aOB(5, _omitFieldNames ? '' : 'partyMode')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'windowState', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'valveState', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        9, _omitFieldNames ? '' : 'setPointMode', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        10, _omitFieldNames ? '' : 'activeProfile', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'actualTemperatureStatus',
        $pb.PbFieldType.OU3)
    ..aOB(12, _omitFieldNames ? '' : 'valveAdaption')
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

  /// Seconds remaining, 0-2048 — the CCU counts boost in whole seconds, not minutes.
  /// Default boost is 5 min (300), maximum 30 min (1800).
  @$pb.TagNumber(2)
  $core.int get boostTimeRemaining => $_getIZ(1);
  @$pb.TagNumber(2)
  set boostTimeRemaining($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBoostTimeRemaining() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoostTimeRemaining() => $_clearField(2);

  /// Write-only on the CCU: it accepts a ControlMode and never reports one back. Carried
  /// here for a future write path, not as a reading — a connector that emits it as a
  /// PropertyUpdate is sending a value the device never gave. 0-3.
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

  /// Party mode active. A boolean, whatever the old field name suggested.
  @$pb.TagNumber(5)
  $core.bool get partyMode => $_getBF(4);
  @$pb.TagNumber(5)
  set partyMode($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPartyMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearPartyMode() => $_clearField(5);

  /// CLOSED = 0, OPEN = 1
  @$pb.TagNumber(7)
  $core.int get windowState => $_getIZ(5);
  @$pb.TagNumber(7)
  set windowState($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(7)
  $core.bool hasWindowState() => $_has(5);
  @$pb.TagNumber(7)
  void clearWindowState() => $_clearField(7);

  /// Valve fault and adaption state, nine CCU-defined values. Radiator valves only — a wall
  /// thermostat drives no valve and never reports it.
  @$pb.TagNumber(8)
  $core.int get valveState => $_getIZ(6);
  @$pb.TagNumber(8)
  set valveState($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(8)
  $core.bool hasValveState() => $_has(6);
  @$pb.TagNumber(8)
  void clearValveState() => $_clearField(8);

  /// Which schedule the thermostat is following: AUTO = 0, MANU = 1, AWAY = 2, plus a
  /// fourth CCU value. NOT webrtc.v1.SetpointAdjustMode, which names which setpoint a
  /// command targets — a different enum over a different set of concepts.
  @$pb.TagNumber(9)
  $core.int get setPointMode => $_getIZ(7);
  @$pb.TagNumber(9)
  set setPointMode($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(9)
  $core.bool hasSetPointMode() => $_has(7);
  @$pb.TagNumber(9)
  void clearSetPointMode() => $_clearField(9);

  /// The active weekly profile: 1-3 on a radiator valve, 1-6 on a wall thermostat. The
  /// upper bound is the device's, not the protocol's.
  @$pb.TagNumber(10)
  $core.int get activeProfile => $_getIZ(8);
  @$pb.TagNumber(10)
  set activeProfile($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(10)
  $core.bool hasActiveProfile() => $_has(8);
  @$pb.TagNumber(10)
  void clearActiveProfile() => $_clearField(10);

  /// Whether the measured temperature is usable: NORMAL = 0, UNKNOWN = 1, OVERFLOW = 2,
  /// UNDERFLOW = 3. A reading beside ACTUAL_TEMPERATURE, not a substitute for it.
  @$pb.TagNumber(11)
  $core.int get actualTemperatureStatus => $_getIZ(9);
  @$pb.TagNumber(11)
  set actualTemperatureStatus($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(11)
  $core.bool hasActualTemperatureStatus() => $_has(9);
  @$pb.TagNumber(11)
  void clearActualTemperatureStatus() => $_clearField(11);

  /// Valve adaption run: writing true starts the valve's stroke calibration.
  @$pb.TagNumber(12)
  $core.bool get valveAdaption => $_getBF(10);
  @$pb.TagNumber(12)
  set valveAdaption($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(12)
  $core.bool hasValveAdaption() => $_has(10);
  @$pb.TagNumber(12)
  void clearValveAdaption() => $_clearField(12);
}

/// The maintenance channel every HomeMatic device carries — device health and radio state,
/// not what the device measures or controls.
///
/// It is device-agnostic: a radiator valve, a wall thermostat and a switch actuator all
/// report the same core set on the same channel, which is why this is one message rather
/// than a per-device-type one. Which of these a given device actually has is model-
/// dependent, and stated per device in device.v1.Endpoint.vendor_attribute_names — SABOTAGE
/// especially, where "no tamper detected" and "cannot detect tamper" must not render alike.
///
/// Not a Matter endpoint of its own: the maintenance channel is channel 0 upstream, and
/// Matter reserves endpoint 0 for the root node. A connector puts these readings on the
/// endpoint whose Matter properties they belong beside — the Power Source endpoint, whose
/// battery attributes are derived from this same channel's LOW_BAT and OPERATING_VOLTAGE.
///
/// LOW_BAT, OPERATING_VOLTAGE and OPERATING_VOLTAGE_LEVEL are deliberately absent: they are
/// Matter's PowerSource cluster, and PowerSourceProperties carries them. Only the derived
/// Matter value has a home there, so the raw OPERATING_VOLTAGE_STATUS enum is kept here.
///
/// Every field is `optional`, for the reason HmThermostatProps gives: ERROR_CODE 0 is "no
/// error", a reading, and SABOTAGE false is a safety claim.
class HmMaintenanceProps extends $pb.GeneratedMessage {
  factory HmMaintenanceProps({
    $core.int? errorCode,
    $core.bool? sabotage,
    $core.int? rssiDevice,
    $core.int? rssiPeer,
    $core.int? operatingVoltageStatus,
    $core.bool? unreach,
    $core.bool? configPending,
  }) {
    final result = create();
    if (errorCode != null) result.errorCode = errorCode;
    if (sabotage != null) result.sabotage = sabotage;
    if (rssiDevice != null) result.rssiDevice = rssiDevice;
    if (rssiPeer != null) result.rssiPeer = rssiPeer;
    if (operatingVoltageStatus != null)
      result.operatingVoltageStatus = operatingVoltageStatus;
    if (unreach != null) result.unreach = unreach;
    if (configPending != null) result.configPending = configPending;
    return result;
  }

  HmMaintenanceProps._();

  factory HmMaintenanceProps.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HmMaintenanceProps.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HmMaintenanceProps',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.vendor.homematic.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'errorCode', $pb.PbFieldType.OU3)
    ..aOB(2, _omitFieldNames ? '' : 'sabotage')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'rssiDevice', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'rssiPeer', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'operatingVoltageStatus', $pb.PbFieldType.OU3)
    ..aOB(6, _omitFieldNames ? '' : 'unreach')
    ..aOB(7, _omitFieldNames ? '' : 'configPending')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmMaintenanceProps clone() => HmMaintenanceProps()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HmMaintenanceProps copyWith(void Function(HmMaintenanceProps) updates) =>
      super.copyWith((message) => updates(message as HmMaintenanceProps))
          as HmMaintenanceProps;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HmMaintenanceProps create() => HmMaintenanceProps._();
  @$core.override
  HmMaintenanceProps createEmptyInstance() => create();
  static $pb.PbList<HmMaintenanceProps> createRepeated() =>
      $pb.PbList<HmMaintenanceProps>();
  @$core.pragma('dart2js:noInline')
  static HmMaintenanceProps getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HmMaintenanceProps>(create);
  static HmMaintenanceProps? _defaultInstance;

  /// Device-defined fault code, 0-255, where 0 is no error. Present only on models that
  /// have one.
  @$pb.TagNumber(1)
  $core.int get errorCode => $_getIZ(0);
  @$pb.TagNumber(1)
  set errorCode($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasErrorCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrorCode() => $_clearField(1);

  /// Tamper detection: true means the device reports having been removed or opened. Present
  /// only on models with the hardware for it.
  @$pb.TagNumber(2)
  $core.bool get sabotage => $_getBF(1);
  @$pb.TagNumber(2)
  set sabotage($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSabotage() => $_has(1);
  @$pb.TagNumber(2)
  void clearSabotage() => $_clearField(2);

  /// Received signal strength in dBm, -128 to 127, as this device measures it.
  ///
  /// sint32, not uint32: these are negative in normal operation, and an unsigned field would
  /// carry -72 dBm as 4294967224.
  @$pb.TagNumber(3)
  $core.int get rssiDevice => $_getIZ(2);
  @$pb.TagNumber(3)
  set rssiDevice($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRssiDevice() => $_has(2);
  @$pb.TagNumber(3)
  void clearRssiDevice() => $_clearField(3);

  /// The same measurement made at the other end of the link, as reported back.
  @$pb.TagNumber(4)
  $core.int get rssiPeer => $_getIZ(3);
  @$pb.TagNumber(4)
  set rssiPeer($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRssiPeer() => $_has(3);
  @$pb.TagNumber(4)
  void clearRssiPeer() => $_clearField(4);

  /// Supply state as the CCU reports it: NORMAL = 0, UNKNOWN = 1, OVERFLOW = 2,
  /// EXTERNAL = 3. The raw enum; PowerSourceProperties.status carries the Matter
  /// PowerSourceStatusEnum value derived from it, and the two are not interchangeable.
  @$pb.TagNumber(5)
  $core.int get operatingVoltageStatus => $_getIZ(4);
  @$pb.TagNumber(5)
  set operatingVoltageStatus($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOperatingVoltageStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearOperatingVoltageStatus() => $_clearField(5);

  /// True when the gateway has lost contact with the device. Reachability as the upstream
  /// system sees it, which is not the same claim as device.v1.Device.last_seen — that is
  /// when the gateway last had evidence of the device, observed one hop further out.
  @$pb.TagNumber(6)
  $core.bool get unreach => $_getBF(5);
  @$pb.TagNumber(6)
  set unreach($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUnreach() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnreach() => $_clearField(6);

  /// True while a configuration change is queued for a device that has not yet woken to
  /// take it. A battery device can sit here for its whole report interval.
  @$pb.TagNumber(7)
  $core.bool get configPending => $_getBF(6);
  @$pb.TagNumber(7)
  set configPending($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasConfigPending() => $_has(6);
  @$pb.TagNumber(7)
  void clearConfigPending() => $_clearField(7);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
