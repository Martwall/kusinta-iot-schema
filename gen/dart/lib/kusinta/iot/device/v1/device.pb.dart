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

import '../../../../google/protobuf/timestamp.pb.dart' as $3;
import '../../vendor/homematic/v1/homematic.pb.dart' as $1;
import 'descriptor.pb.dart' as $2;
import 'properties.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum Endpoint_MatterProperties {
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
  powerSource,
  notSet
}

enum Endpoint_VendorProperties { hmThermostat, notSet }

/// The state one Matter endpoint reports.
///
/// Matter nodes present several endpoints, each with its own device type, and real
/// devices need it — a wall thermostat is a Thermostat AND a Humidity Sensor, a
/// 4-channel actuator is four On/Off Lights, almost any battery device is also a Power
/// Source. Endpoints are the only thing that buys; filing, ownership and DeviceId stay
/// per physical device, so a device is still one row, one claim, one placement.
///
/// Field numbers: 1-2 identity, 3-49 standard Matter device types, 50-99 vendor
/// extensions.
///
/// endpoint_id is Matter's own endpoint number, and it is scoped to ONE DEVICE — not
/// global, and nothing coordinates numbering between devices. Endpoint 1 on one valve and
/// endpoint 1 on another are unrelated; what identifies an endpoint is the pair
/// (DeviceId, endpoint_id). PropertyUpdate carries device_id for exactly that reason.
///
/// Endpoint 0 is the Matter root node and carries BasicInformation, which DeviceDescriptor
/// already holds — so 0 never appears here and a producer emitting it is wrong. Device
/// endpoints are 1..n.
///
/// Two producer obligations, neither enforceable by the schema:
///
///  1. UNIQUE within the device. Two entries sharing an endpoint_id make step 1 of the
///     resolution rule ambiguous, and nothing rejects it.
///  2. STABLE for the life of the device. This is the one that bites. Access grants and
///     property constraints reference (DeviceId, endpoint_id) — see access/v1/acl.proto —
///     so a connector that renumbers across a restart does not fail loudly, it silently
///     retargets permissions: a grant on channel 1 starts applying to channel 3. A
///     duplicate id produces visible nonsense quickly; renumbering produces a working
///     system with the wrong permissions.
///
/// Where the number comes from depends on what is behind the connector. A Matter device
/// declares its own: endpoint 0's Descriptor cluster carries a PartsList, and each
/// endpoint's Descriptor a DeviceTypeList. A bridged non-Matter device has no Matter
/// endpoints at all, so the connector must synthesise them — derive from something the
/// upstream system holds stable, typically its own channel number, never from enumeration
/// order.
///
/// matter_properties and vendor_properties are separate oneofs on purpose. An endpoint
/// carries its typed Matter properties AND its vendor extension — one oneof spanning both
/// would make them mutually exclusive, which left every vendor field unreachable in
/// practice. Named in parallel because they are the same kind of thing addressed through
/// two annotation namespaces: (matter_attribute) resolves one, (vendor_attribute) the
/// other. See property_update.proto for the two branches.
class Endpoint extends $pb.GeneratedMessage {
  factory Endpoint({
    $core.int? endpointId,
    $core.int? matterDeviceTypeId,
    $0.ThermostatProperties? thermostat,
    $0.TemperatureSensorProperties? temperatureSensor,
    $0.HumiditySensorProperties? humiditySensor,
    $0.OccupancySensorProperties? occupancySensor,
    $0.ContactSensorProperties? contactSensor,
    $0.WindowCoveringProperties? windowCovering,
    $0.DoorLockProperties? doorLock,
    $0.OnOffLightProperties? onOffLight,
    $0.DimmableLightProperties? dimmableLight,
    $0.ColorTemperatureLightProperties? colorTempLight,
    $0.EnergySensorProperties? energySensor,
    $0.PressureSensorProperties? pressureSensor,
    $0.PowerSourceProperties? powerSource,
    $1.HmThermostatProps? hmThermostat,
  }) {
    final result = create();
    if (endpointId != null) result.endpointId = endpointId;
    if (matterDeviceTypeId != null)
      result.matterDeviceTypeId = matterDeviceTypeId;
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
    if (powerSource != null) result.powerSource = powerSource;
    if (hmThermostat != null) result.hmThermostat = hmThermostat;
    return result;
  }

  Endpoint._();

  factory Endpoint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Endpoint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Endpoint_MatterProperties>
      _Endpoint_MatterPropertiesByTag = {
    3: Endpoint_MatterProperties.thermostat,
    4: Endpoint_MatterProperties.temperatureSensor,
    5: Endpoint_MatterProperties.humiditySensor,
    6: Endpoint_MatterProperties.occupancySensor,
    7: Endpoint_MatterProperties.contactSensor,
    8: Endpoint_MatterProperties.windowCovering,
    9: Endpoint_MatterProperties.doorLock,
    10: Endpoint_MatterProperties.onOffLight,
    11: Endpoint_MatterProperties.dimmableLight,
    12: Endpoint_MatterProperties.colorTempLight,
    13: Endpoint_MatterProperties.energySensor,
    14: Endpoint_MatterProperties.pressureSensor,
    15: Endpoint_MatterProperties.powerSource,
    0: Endpoint_MatterProperties.notSet
  };
  static const $core.Map<$core.int, Endpoint_VendorProperties>
      _Endpoint_VendorPropertiesByTag = {
    50: Endpoint_VendorProperties.hmThermostat,
    0: Endpoint_VendorProperties.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Endpoint',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    ..oo(1, [50])
    ..a<$core.int>(1, _omitFieldNames ? '' : 'endpointId', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'matterDeviceTypeId', $pb.PbFieldType.OU3)
    ..aOM<$0.ThermostatProperties>(3, _omitFieldNames ? '' : 'thermostat',
        subBuilder: $0.ThermostatProperties.create)
    ..aOM<$0.TemperatureSensorProperties>(
        4, _omitFieldNames ? '' : 'temperatureSensor',
        subBuilder: $0.TemperatureSensorProperties.create)
    ..aOM<$0.HumiditySensorProperties>(
        5, _omitFieldNames ? '' : 'humiditySensor',
        subBuilder: $0.HumiditySensorProperties.create)
    ..aOM<$0.OccupancySensorProperties>(
        6, _omitFieldNames ? '' : 'occupancySensor',
        subBuilder: $0.OccupancySensorProperties.create)
    ..aOM<$0.ContactSensorProperties>(7, _omitFieldNames ? '' : 'contactSensor',
        subBuilder: $0.ContactSensorProperties.create)
    ..aOM<$0.WindowCoveringProperties>(
        8, _omitFieldNames ? '' : 'windowCovering',
        subBuilder: $0.WindowCoveringProperties.create)
    ..aOM<$0.DoorLockProperties>(9, _omitFieldNames ? '' : 'doorLock',
        subBuilder: $0.DoorLockProperties.create)
    ..aOM<$0.OnOffLightProperties>(10, _omitFieldNames ? '' : 'onOffLight',
        subBuilder: $0.OnOffLightProperties.create)
    ..aOM<$0.DimmableLightProperties>(
        11, _omitFieldNames ? '' : 'dimmableLight',
        subBuilder: $0.DimmableLightProperties.create)
    ..aOM<$0.ColorTemperatureLightProperties>(
        12, _omitFieldNames ? '' : 'colorTempLight',
        subBuilder: $0.ColorTemperatureLightProperties.create)
    ..aOM<$0.EnergySensorProperties>(13, _omitFieldNames ? '' : 'energySensor',
        subBuilder: $0.EnergySensorProperties.create)
    ..aOM<$0.PressureSensorProperties>(
        14, _omitFieldNames ? '' : 'pressureSensor',
        subBuilder: $0.PressureSensorProperties.create)
    ..aOM<$0.PowerSourceProperties>(15, _omitFieldNames ? '' : 'powerSource',
        subBuilder: $0.PowerSourceProperties.create)
    ..aOM<$1.HmThermostatProps>(50, _omitFieldNames ? '' : 'hmThermostat',
        subBuilder: $1.HmThermostatProps.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Endpoint clone() => Endpoint()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Endpoint copyWith(void Function(Endpoint) updates) =>
      super.copyWith((message) => updates(message as Endpoint)) as Endpoint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Endpoint create() => Endpoint._();
  @$core.override
  Endpoint createEmptyInstance() => create();
  static $pb.PbList<Endpoint> createRepeated() => $pb.PbList<Endpoint>();
  @$core.pragma('dart2js:noInline')
  static Endpoint getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Endpoint>(create);
  static Endpoint? _defaultInstance;

  Endpoint_MatterProperties whichMatterProperties() =>
      _Endpoint_MatterPropertiesByTag[$_whichOneof(0)]!;
  void clearMatterProperties() => $_clearField($_whichOneof(0));

  Endpoint_VendorProperties whichVendorProperties() =>
      _Endpoint_VendorPropertiesByTag[$_whichOneof(1)]!;
  void clearVendorProperties() => $_clearField($_whichOneof(1));

  @$pb.TagNumber(1)
  $core.int get endpointId => $_getIZ(0);
  @$pb.TagNumber(1)
  set endpointId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEndpointId() => $_has(0);
  @$pb.TagNumber(1)
  void clearEndpointId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get matterDeviceTypeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set matterDeviceTypeId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMatterDeviceTypeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMatterDeviceTypeId() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.ThermostatProperties get thermostat => $_getN(2);
  @$pb.TagNumber(3)
  set thermostat($0.ThermostatProperties value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasThermostat() => $_has(2);
  @$pb.TagNumber(3)
  void clearThermostat() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.ThermostatProperties ensureThermostat() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.TemperatureSensorProperties get temperatureSensor => $_getN(3);
  @$pb.TagNumber(4)
  set temperatureSensor($0.TemperatureSensorProperties value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTemperatureSensor() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemperatureSensor() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.TemperatureSensorProperties ensureTemperatureSensor() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.HumiditySensorProperties get humiditySensor => $_getN(4);
  @$pb.TagNumber(5)
  set humiditySensor($0.HumiditySensorProperties value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasHumiditySensor() => $_has(4);
  @$pb.TagNumber(5)
  void clearHumiditySensor() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.HumiditySensorProperties ensureHumiditySensor() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.OccupancySensorProperties get occupancySensor => $_getN(5);
  @$pb.TagNumber(6)
  set occupancySensor($0.OccupancySensorProperties value) =>
      $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasOccupancySensor() => $_has(5);
  @$pb.TagNumber(6)
  void clearOccupancySensor() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.OccupancySensorProperties ensureOccupancySensor() => $_ensure(5);

  @$pb.TagNumber(7)
  $0.ContactSensorProperties get contactSensor => $_getN(6);
  @$pb.TagNumber(7)
  set contactSensor($0.ContactSensorProperties value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasContactSensor() => $_has(6);
  @$pb.TagNumber(7)
  void clearContactSensor() => $_clearField(7);
  @$pb.TagNumber(7)
  $0.ContactSensorProperties ensureContactSensor() => $_ensure(6);

  @$pb.TagNumber(8)
  $0.WindowCoveringProperties get windowCovering => $_getN(7);
  @$pb.TagNumber(8)
  set windowCovering($0.WindowCoveringProperties value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasWindowCovering() => $_has(7);
  @$pb.TagNumber(8)
  void clearWindowCovering() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.WindowCoveringProperties ensureWindowCovering() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.DoorLockProperties get doorLock => $_getN(8);
  @$pb.TagNumber(9)
  set doorLock($0.DoorLockProperties value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasDoorLock() => $_has(8);
  @$pb.TagNumber(9)
  void clearDoorLock() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.DoorLockProperties ensureDoorLock() => $_ensure(8);

  @$pb.TagNumber(10)
  $0.OnOffLightProperties get onOffLight => $_getN(9);
  @$pb.TagNumber(10)
  set onOffLight($0.OnOffLightProperties value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasOnOffLight() => $_has(9);
  @$pb.TagNumber(10)
  void clearOnOffLight() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.OnOffLightProperties ensureOnOffLight() => $_ensure(9);

  @$pb.TagNumber(11)
  $0.DimmableLightProperties get dimmableLight => $_getN(10);
  @$pb.TagNumber(11)
  set dimmableLight($0.DimmableLightProperties value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasDimmableLight() => $_has(10);
  @$pb.TagNumber(11)
  void clearDimmableLight() => $_clearField(11);
  @$pb.TagNumber(11)
  $0.DimmableLightProperties ensureDimmableLight() => $_ensure(10);

  @$pb.TagNumber(12)
  $0.ColorTemperatureLightProperties get colorTempLight => $_getN(11);
  @$pb.TagNumber(12)
  set colorTempLight($0.ColorTemperatureLightProperties value) =>
      $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasColorTempLight() => $_has(11);
  @$pb.TagNumber(12)
  void clearColorTempLight() => $_clearField(12);
  @$pb.TagNumber(12)
  $0.ColorTemperatureLightProperties ensureColorTempLight() => $_ensure(11);

  @$pb.TagNumber(13)
  $0.EnergySensorProperties get energySensor => $_getN(12);
  @$pb.TagNumber(13)
  set energySensor($0.EnergySensorProperties value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasEnergySensor() => $_has(12);
  @$pb.TagNumber(13)
  void clearEnergySensor() => $_clearField(13);
  @$pb.TagNumber(13)
  $0.EnergySensorProperties ensureEnergySensor() => $_ensure(12);

  @$pb.TagNumber(14)
  $0.PressureSensorProperties get pressureSensor => $_getN(13);
  @$pb.TagNumber(14)
  set pressureSensor($0.PressureSensorProperties value) =>
      $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasPressureSensor() => $_has(13);
  @$pb.TagNumber(14)
  void clearPressureSensor() => $_clearField(14);
  @$pb.TagNumber(14)
  $0.PressureSensorProperties ensurePressureSensor() => $_ensure(13);

  @$pb.TagNumber(15)
  $0.PowerSourceProperties get powerSource => $_getN(14);
  @$pb.TagNumber(15)
  set powerSource($0.PowerSourceProperties value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasPowerSource() => $_has(14);
  @$pb.TagNumber(15)
  void clearPowerSource() => $_clearField(15);
  @$pb.TagNumber(15)
  $0.PowerSourceProperties ensurePowerSource() => $_ensure(14);

  @$pb.TagNumber(50)
  $1.HmThermostatProps get hmThermostat => $_getN(15);
  @$pb.TagNumber(50)
  set hmThermostat($1.HmThermostatProps value) => $_setField(50, value);
  @$pb.TagNumber(50)
  $core.bool hasHmThermostat() => $_has(15);
  @$pb.TagNumber(50)
  void clearHmThermostat() => $_clearField(50);
  @$pb.TagNumber(50)
  $1.HmThermostatProps ensureHmThermostat() => $_ensure(15);
}

/// Device is a DeviceDescriptor plus the endpoints it presents.
///
/// It travels on BOTH legs — a connector announces one with connector.v1.DeviceAnnouncement,
/// and the gateway sends one to the app. One shape everywhere, so the endpoint list has a
/// single home and nothing has to be kept in step with a parallel copy.
///
/// Resolving an endpoint's device type to a properties case is read from the descriptor via
/// (matter_device_type), never hard-coded. property_update.proto states the rule normatively;
/// matter_options.proto defines the annotations.
///
/// An empty endpoints list means the device presents nothing this schema models, or has
/// reported nothing yet. Keep the Device either way — it exists and belongs in a list.
class Device extends $pb.GeneratedMessage {
  factory Device({
    $2.DeviceDescriptor? descriptor,
    $core.Iterable<Endpoint>? endpoints,
    $3.Timestamp? lastSeen,
    $3.Timestamp? lastUpdated,
  }) {
    final result = create();
    if (descriptor != null) result.descriptor = descriptor;
    if (endpoints != null) result.endpoints.addAll(endpoints);
    if (lastSeen != null) result.lastSeen = lastSeen;
    if (lastUpdated != null) result.lastUpdated = lastUpdated;
    return result;
  }

  Device._();

  factory Device.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Device.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Device',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..aOM<$2.DeviceDescriptor>(1, _omitFieldNames ? '' : 'descriptor',
        subBuilder: $2.DeviceDescriptor.create)
    ..pc<Endpoint>(14, _omitFieldNames ? '' : 'endpoints', $pb.PbFieldType.PM,
        subBuilder: Endpoint.create)
    ..aOM<$3.Timestamp>(20, _omitFieldNames ? '' : 'lastSeen',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(21, _omitFieldNames ? '' : 'lastUpdated',
        subBuilder: $3.Timestamp.create)
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

  @$pb.TagNumber(1)
  $2.DeviceDescriptor get descriptor => $_getN(0);
  @$pb.TagNumber(1)
  set descriptor($2.DeviceDescriptor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDescriptor() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescriptor() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.DeviceDescriptor ensureDescriptor() => $_ensure(0);

  /// 15-19 are free; 20+ is the timestamp band.
  @$pb.TagNumber(14)
  $pb.PbList<Endpoint> get endpoints => $_getList(1);

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
  $3.Timestamp get lastSeen => $_getN(2);
  @$pb.TagNumber(20)
  set lastSeen($3.Timestamp value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasLastSeen() => $_has(2);
  @$pb.TagNumber(20)
  void clearLastSeen() => $_clearField(20);
  @$pb.TagNumber(20)
  $3.Timestamp ensureLastSeen() => $_ensure(2);

  /// When any field of this Device last changed value.
  @$pb.TagNumber(21)
  $3.Timestamp get lastUpdated => $_getN(3);
  @$pb.TagNumber(21)
  set lastUpdated($3.Timestamp value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasLastUpdated() => $_has(3);
  @$pb.TagNumber(21)
  void clearLastUpdated() => $_clearField(21);
  @$pb.TagNumber(21)
  $3.Timestamp ensureLastUpdated() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
