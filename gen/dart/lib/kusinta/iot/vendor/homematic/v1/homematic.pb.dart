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
    ..a<$core.double>(
        2, _omitFieldNames ? '' : 'boostTimePeriod', $pb.PbFieldType.OF)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'controlMode', $pb.PbFieldType.OU3)
    ..aOB(4, _omitFieldNames ? '' : 'frostProtection')
    ..a<$core.double>(
        5, _omitFieldNames ? '' : 'currentProfilePeriod', $pb.PbFieldType.OF)
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
}

enum HomematicVendorExtension_HomematicProps { hmThermostat, notSet }

/// Top-level vendor extension attached to Device.properties field 50.
/// Carries the CCU3 device address + aiohomematic type string + device-type-specific props.
class HomematicVendorExtension extends $pb.GeneratedMessage {
  factory HomematicVendorExtension({
    $core.String? homematicAddress,
    $core.String? homematicType,
    HmThermostatProps? hmThermostat,
  }) {
    final result = create();
    if (homematicAddress != null) result.homematicAddress = homematicAddress;
    if (homematicType != null) result.homematicType = homematicType;
    if (hmThermostat != null) result.hmThermostat = hmThermostat;
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
    0: HomematicVendorExtension_HomematicProps.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HomematicVendorExtension',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.vendor.homematic.v1'),
      createEmptyInstance: create)
    ..oo(0, [10])
    ..aOS(1, _omitFieldNames ? '' : 'homematicAddress')
    ..aOS(2, _omitFieldNames ? '' : 'homematicType')
    ..aOM<HmThermostatProps>(10, _omitFieldNames ? '' : 'hmThermostat',
        subBuilder: HmThermostatProps.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HomematicVendorExtension clone() =>
      HomematicVendorExtension()..mergeFromMessage(this);
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
  static $pb.PbList<HomematicVendorExtension> createRepeated() =>
      $pb.PbList<HomematicVendorExtension>();
  @$core.pragma('dart2js:noInline')
  static HomematicVendorExtension getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HomematicVendorExtension>(create);
  static HomematicVendorExtension? _defaultInstance;

  HomematicVendorExtension_HomematicProps whichHomematicProps() =>
      _HomematicVendorExtension_HomematicPropsByTag[$_whichOneof(0)]!;
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
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
