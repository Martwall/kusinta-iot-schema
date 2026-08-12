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

import '../../../../google/protobuf/timestamp.pb.dart' as $2;
import '../../vendor/homematic/v1/homematic.pb.dart' as $3;
import 'descriptor.pb.dart' as $0;
import 'properties.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum Device_Properties {
  thermostat,
  temperatureSensor,
  humiditySensor,
  occupancySensor,
  contactSensor,
  windowCovering,
  doorLock,
  onOffLight,
  dimmableLight,
  colorTempLight,
  energySensor,
  pressureSensor,
  homematic,
  notSet
}

/// Device combines a DeviceDescriptor with a strongly-typed oneof for its current state.
/// Field number convention: 1 = descriptor, 2-49 = standard Matter device types,
/// 50-99 = vendor extensions, 20+ = timestamps.
///
/// Selecting the properties case
///
/// Each non-vendor case's message type declares the Matter device type it models in
/// (matter_device_type), so the mapping from DeviceDescriptor.matter_device_type_id to a
/// case is read from the descriptor rather than hard-coded. See matter_options.proto, and
/// property_update.proto for the full resolution rule.
///
/// matter_device_type_id stays a bare uint32: a connector must be able to report a device
/// type this schema does not model. Such a device is legitimate — it exists, it belongs in
/// a device list, it simply carries no typed properties. A consumer that cannot match the
/// device type leaves the properties oneof unset and keeps the Device; it MUST NOT drop the
/// device or substitute a nearby case. An unset oneof therefore means either "not modelled"
/// or "modelled but nothing reported yet", which are indistinguishable here on purpose;
/// distinguish them by re-resolving matter_device_type_id if you need to.
///
/// Adding a case: annotate the new *Properties message with its (matter_device_type). A case
/// without one resolves for nobody.
class Device extends $pb.GeneratedMessage {
  factory Device({
    $0.DeviceDescriptor? descriptor,
    $1.ThermostatProperties? thermostat,
    $1.TemperatureSensorProperties? temperatureSensor,
    $1.HumiditySensorProperties? humiditySensor,
    $1.OccupancySensorProperties? occupancySensor,
    $1.ContactSensorProperties? contactSensor,
    $1.WindowCoveringProperties? windowCovering,
    $1.DoorLockProperties? doorLock,
    $1.OnOffLightProperties? onOffLight,
    $1.DimmableLightProperties? dimmableLight,
    $1.ColorTemperatureLightProperties? colorTempLight,
    $1.EnergySensorProperties? energySensor,
    $1.PressureSensorProperties? pressureSensor,
    $2.Timestamp? lastSeen,
    $2.Timestamp? lastUpdated,
    $3.HomematicVendorExtension? homematic,
  }) {
    final result = create();
    if (descriptor != null) result.descriptor = descriptor;
    if (thermostat != null) result.thermostat = thermostat;
    if (temperatureSensor != null) result.temperatureSensor = temperatureSensor;
    if (humiditySensor != null) result.humiditySensor = humiditySensor;
    if (occupancySensor != null) result.occupancySensor = occupancySensor;
    if (contactSensor != null) result.contactSensor = contactSensor;
    if (windowCovering != null) result.windowCovering = windowCovering;
    if (doorLock != null) result.doorLock = doorLock;
    if (onOffLight != null) result.onOffLight = onOffLight;
    if (dimmableLight != null) result.dimmableLight = dimmableLight;
    if (colorTempLight != null) result.colorTempLight = colorTempLight;
    if (energySensor != null) result.energySensor = energySensor;
    if (pressureSensor != null) result.pressureSensor = pressureSensor;
    if (lastSeen != null) result.lastSeen = lastSeen;
    if (lastUpdated != null) result.lastUpdated = lastUpdated;
    if (homematic != null) result.homematic = homematic;
    return result;
  }

  Device._();

  factory Device.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Device.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Device_Properties> _Device_PropertiesByTag =
      {
    2: Device_Properties.thermostat,
    3: Device_Properties.temperatureSensor,
    4: Device_Properties.humiditySensor,
    5: Device_Properties.occupancySensor,
    6: Device_Properties.contactSensor,
    7: Device_Properties.windowCovering,
    8: Device_Properties.doorLock,
    9: Device_Properties.onOffLight,
    10: Device_Properties.dimmableLight,
    11: Device_Properties.colorTempLight,
    12: Device_Properties.energySensor,
    13: Device_Properties.pressureSensor,
    50: Device_Properties.homematic,
    0: Device_Properties.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Device',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 50])
    ..aOM<$0.DeviceDescriptor>(1, _omitFieldNames ? '' : 'descriptor',
        subBuilder: $0.DeviceDescriptor.create)
    ..aOM<$1.ThermostatProperties>(2, _omitFieldNames ? '' : 'thermostat',
        subBuilder: $1.ThermostatProperties.create)
    ..aOM<$1.TemperatureSensorProperties>(
        3, _omitFieldNames ? '' : 'temperatureSensor',
        subBuilder: $1.TemperatureSensorProperties.create)
    ..aOM<$1.HumiditySensorProperties>(
        4, _omitFieldNames ? '' : 'humiditySensor',
        subBuilder: $1.HumiditySensorProperties.create)
    ..aOM<$1.OccupancySensorProperties>(
        5, _omitFieldNames ? '' : 'occupancySensor',
        subBuilder: $1.OccupancySensorProperties.create)
    ..aOM<$1.ContactSensorProperties>(6, _omitFieldNames ? '' : 'contactSensor',
        subBuilder: $1.ContactSensorProperties.create)
    ..aOM<$1.WindowCoveringProperties>(
        7, _omitFieldNames ? '' : 'windowCovering',
        subBuilder: $1.WindowCoveringProperties.create)
    ..aOM<$1.DoorLockProperties>(8, _omitFieldNames ? '' : 'doorLock',
        subBuilder: $1.DoorLockProperties.create)
    ..aOM<$1.OnOffLightProperties>(9, _omitFieldNames ? '' : 'onOffLight',
        subBuilder: $1.OnOffLightProperties.create)
    ..aOM<$1.DimmableLightProperties>(
        10, _omitFieldNames ? '' : 'dimmableLight',
        subBuilder: $1.DimmableLightProperties.create)
    ..aOM<$1.ColorTemperatureLightProperties>(
        11, _omitFieldNames ? '' : 'colorTempLight',
        subBuilder: $1.ColorTemperatureLightProperties.create)
    ..aOM<$1.EnergySensorProperties>(12, _omitFieldNames ? '' : 'energySensor',
        subBuilder: $1.EnergySensorProperties.create)
    ..aOM<$1.PressureSensorProperties>(
        13, _omitFieldNames ? '' : 'pressureSensor',
        subBuilder: $1.PressureSensorProperties.create)
    ..aOM<$2.Timestamp>(20, _omitFieldNames ? '' : 'lastSeen',
        subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(21, _omitFieldNames ? '' : 'lastUpdated',
        subBuilder: $2.Timestamp.create)
    ..aOM<$3.HomematicVendorExtension>(50, _omitFieldNames ? '' : 'homematic',
        subBuilder: $3.HomematicVendorExtension.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Device clone() => Device()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Device copyWith(void Function(Device) updates) =>
      super.copyWith((message) => updates(message as Device)) as Device;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Device create() => Device._();
  @$core.override
  Device createEmptyInstance() => create();
  static $pb.PbList<Device> createRepeated() => $pb.PbList<Device>();
  @$core.pragma('dart2js:noInline')
  static Device getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Device>(create);
  static Device? _defaultInstance;

  Device_Properties whichProperties() =>
      _Device_PropertiesByTag[$_whichOneof(0)]!;
  void clearProperties() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $0.DeviceDescriptor get descriptor => $_getN(0);
  @$pb.TagNumber(1)
  set descriptor($0.DeviceDescriptor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDescriptor() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescriptor() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceDescriptor ensureDescriptor() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.ThermostatProperties get thermostat => $_getN(1);
  @$pb.TagNumber(2)
  set thermostat($1.ThermostatProperties value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasThermostat() => $_has(1);
  @$pb.TagNumber(2)
  void clearThermostat() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.ThermostatProperties ensureThermostat() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.TemperatureSensorProperties get temperatureSensor => $_getN(2);
  @$pb.TagNumber(3)
  set temperatureSensor($1.TemperatureSensorProperties value) =>
      $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTemperatureSensor() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemperatureSensor() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.TemperatureSensorProperties ensureTemperatureSensor() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.HumiditySensorProperties get humiditySensor => $_getN(3);
  @$pb.TagNumber(4)
  set humiditySensor($1.HumiditySensorProperties value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasHumiditySensor() => $_has(3);
  @$pb.TagNumber(4)
  void clearHumiditySensor() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.HumiditySensorProperties ensureHumiditySensor() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.OccupancySensorProperties get occupancySensor => $_getN(4);
  @$pb.TagNumber(5)
  set occupancySensor($1.OccupancySensorProperties value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasOccupancySensor() => $_has(4);
  @$pb.TagNumber(5)
  void clearOccupancySensor() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.OccupancySensorProperties ensureOccupancySensor() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.ContactSensorProperties get contactSensor => $_getN(5);
  @$pb.TagNumber(6)
  set contactSensor($1.ContactSensorProperties value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasContactSensor() => $_has(5);
  @$pb.TagNumber(6)
  void clearContactSensor() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.ContactSensorProperties ensureContactSensor() => $_ensure(5);

  @$pb.TagNumber(7)
  $1.WindowCoveringProperties get windowCovering => $_getN(6);
  @$pb.TagNumber(7)
  set windowCovering($1.WindowCoveringProperties value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasWindowCovering() => $_has(6);
  @$pb.TagNumber(7)
  void clearWindowCovering() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.WindowCoveringProperties ensureWindowCovering() => $_ensure(6);

  @$pb.TagNumber(8)
  $1.DoorLockProperties get doorLock => $_getN(7);
  @$pb.TagNumber(8)
  set doorLock($1.DoorLockProperties value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasDoorLock() => $_has(7);
  @$pb.TagNumber(8)
  void clearDoorLock() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.DoorLockProperties ensureDoorLock() => $_ensure(7);

  @$pb.TagNumber(9)
  $1.OnOffLightProperties get onOffLight => $_getN(8);
  @$pb.TagNumber(9)
  set onOffLight($1.OnOffLightProperties value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasOnOffLight() => $_has(8);
  @$pb.TagNumber(9)
  void clearOnOffLight() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.OnOffLightProperties ensureOnOffLight() => $_ensure(8);

  @$pb.TagNumber(10)
  $1.DimmableLightProperties get dimmableLight => $_getN(9);
  @$pb.TagNumber(10)
  set dimmableLight($1.DimmableLightProperties value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasDimmableLight() => $_has(9);
  @$pb.TagNumber(10)
  void clearDimmableLight() => $_clearField(10);
  @$pb.TagNumber(10)
  $1.DimmableLightProperties ensureDimmableLight() => $_ensure(9);

  @$pb.TagNumber(11)
  $1.ColorTemperatureLightProperties get colorTempLight => $_getN(10);
  @$pb.TagNumber(11)
  set colorTempLight($1.ColorTemperatureLightProperties value) =>
      $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasColorTempLight() => $_has(10);
  @$pb.TagNumber(11)
  void clearColorTempLight() => $_clearField(11);
  @$pb.TagNumber(11)
  $1.ColorTemperatureLightProperties ensureColorTempLight() => $_ensure(10);

  @$pb.TagNumber(12)
  $1.EnergySensorProperties get energySensor => $_getN(11);
  @$pb.TagNumber(12)
  set energySensor($1.EnergySensorProperties value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasEnergySensor() => $_has(11);
  @$pb.TagNumber(12)
  void clearEnergySensor() => $_clearField(12);
  @$pb.TagNumber(12)
  $1.EnergySensorProperties ensureEnergySensor() => $_ensure(11);

  @$pb.TagNumber(13)
  $1.PressureSensorProperties get pressureSensor => $_getN(12);
  @$pb.TagNumber(13)
  set pressureSensor($1.PressureSensorProperties value) =>
      $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasPressureSensor() => $_has(12);
  @$pb.TagNumber(13)
  void clearPressureSensor() => $_clearField(13);
  @$pb.TagNumber(13)
  $1.PressureSensorProperties ensurePressureSensor() => $_ensure(12);

  /// When the gateway last had evidence this device exists and is reachable — the
  /// most recent PropertyUpdate, announcement, or command result concerning it.
  /// Gateway-observed, not connector-reported: no message on either leg carries a
  /// per-device liveness timestamp, so this is as precise as the device's own report
  /// interval. A device that reports every 15 minutes looks stale for 15 minutes.
  ///
  /// Survives a connector reconnect. Losing the route to a device is not evidence the
  /// device is gone, so last_seen keeps its value; only fresh evidence advances it.
  ///
  /// Advisory, for showing staleness in a UI. It is not a removal signal — that is
  /// webrtc.v1.DeviceRemoved, sent only when a connector reports the device gone.
  @$pb.TagNumber(20)
  $2.Timestamp get lastSeen => $_getN(13);
  @$pb.TagNumber(20)
  set lastSeen($2.Timestamp value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasLastSeen() => $_has(13);
  @$pb.TagNumber(20)
  void clearLastSeen() => $_clearField(20);
  @$pb.TagNumber(20)
  $2.Timestamp ensureLastSeen() => $_ensure(13);

  /// When any field of this Device last changed value.
  @$pb.TagNumber(21)
  $2.Timestamp get lastUpdated => $_getN(14);
  @$pb.TagNumber(21)
  set lastUpdated($2.Timestamp value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasLastUpdated() => $_has(14);
  @$pb.TagNumber(21)
  void clearLastUpdated() => $_clearField(21);
  @$pb.TagNumber(21)
  $2.Timestamp ensureLastUpdated() => $_ensure(14);

  /// Vendor extensions (fields 50-99)
  @$pb.TagNumber(50)
  $3.HomematicVendorExtension get homematic => $_getN(15);
  @$pb.TagNumber(50)
  set homematic($3.HomematicVendorExtension value) => $_setField(50, value);
  @$pb.TagNumber(50)
  $core.bool hasHomematic() => $_has(15);
  @$pb.TagNumber(50)
  void clearHomematic() => $_clearField(50);
  @$pb.TagNumber(50)
  $3.HomematicVendorExtension ensureHomematic() => $_ensure(15);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
