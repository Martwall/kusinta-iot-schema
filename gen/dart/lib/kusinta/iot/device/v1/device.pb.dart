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

import '../../../../google/protobuf/timestamp.pb.dart' as $4;
import '../../vendor/homematic/v1/homematic.pb.dart' as $2;
import 'cluster_state.pb.dart' as $1;
import 'descriptor.pb.dart' as $3;
import 'properties.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'device.pbenum.dart';

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

enum Endpoint_VendorProperties { hmThermostat, hmMaintenance, notSet }

/// The state one Matter endpoint reports.
///
/// Matter nodes present several endpoints, each with its own device type, and real
/// devices need it — a wall thermostat is a Thermostat AND a Humidity Sensor, a
/// 4-channel actuator is four On/Off Lights, almost any battery device is also a Power
/// Source. Endpoints are the only thing that buys; filing, ownership and DeviceId stay
/// per physical device, so a device is still one row, one claim, one placement.
///
/// Field numbers: 1-2 identity, 3-49 standard Matter device types, 50-99 vendor
/// extensions — the vendor_properties cases, and radio_link (52), heat_source (53) and
/// attention (54) outside that oneof.
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
/// A typed case and the generic clusters list are not alternatives. An endpoint uses its
/// typed case for the attributes this schema models and clusters for everything else,
/// including cluster metadata for the modelled ones. See cluster_state.proto.
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
    $core.Iterable<$1.ClusterState>? clusters,
    $core.Iterable<$core.String>? vendorAttributeNames,
    $core.Iterable<$core.MapEntry<$core.String, $1.AttributeBehaviour>>?
        vendorAttributeBehaviours,
    $2.HmThermostatProps? hmThermostat,
    $2.HmMaintenanceProps? hmMaintenance,
    RadioLink? radioLink,
    HeatSourceReadings? heatSource,
    DeviceAttention? attention,
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
    if (clusters != null) result.clusters.addAll(clusters);
    if (vendorAttributeNames != null)
      result.vendorAttributeNames.addAll(vendorAttributeNames);
    if (vendorAttributeBehaviours != null)
      result.vendorAttributeBehaviours.addEntries(vendorAttributeBehaviours);
    if (hmThermostat != null) result.hmThermostat = hmThermostat;
    if (hmMaintenance != null) result.hmMaintenance = hmMaintenance;
    if (radioLink != null) result.radioLink = radioLink;
    if (heatSource != null) result.heatSource = heatSource;
    if (attention != null) result.attention = attention;
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
    51: Endpoint_VendorProperties.hmMaintenance,
    0: Endpoint_VendorProperties.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Endpoint',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15])
    ..oo(1, [50, 51])
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
    ..pc<$1.ClusterState>(
        16, _omitFieldNames ? '' : 'clusters', $pb.PbFieldType.PM,
        subBuilder: $1.ClusterState.create)
    ..pPS(17, _omitFieldNames ? '' : 'vendorAttributeNames')
    ..m<$core.String, $1.AttributeBehaviour>(
        18, _omitFieldNames ? '' : 'vendorAttributeBehaviours',
        entryClassName: 'Endpoint.VendorAttributeBehavioursEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: $1.AttributeBehaviour.create,
        valueDefaultOrMaker: $1.AttributeBehaviour.getDefault,
        packageName: const $pb.PackageName('kusinta.iot.device.v1'))
    ..aOM<$2.HmThermostatProps>(50, _omitFieldNames ? '' : 'hmThermostat',
        subBuilder: $2.HmThermostatProps.create)
    ..aOM<$2.HmMaintenanceProps>(51, _omitFieldNames ? '' : 'hmMaintenance',
        subBuilder: $2.HmMaintenanceProps.create)
    ..aOM<RadioLink>(52, _omitFieldNames ? '' : 'radioLink',
        subBuilder: RadioLink.create)
    ..aOM<HeatSourceReadings>(53, _omitFieldNames ? '' : 'heatSource',
        subBuilder: HeatSourceReadings.create)
    ..aOM<DeviceAttention>(54, _omitFieldNames ? '' : 'attention',
        subBuilder: DeviceAttention.create)
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

  /// Every cluster this endpoint hosts: what it supports, and any attribute value that has
  /// no typed field above. This is what makes a device the schema does not model usable
  /// rather than silent — and what carries the optional clusters the Matter specification
  /// lets an endpoint add beyond its device type's set.
  ///
  /// Field 16 rather than a one-byte number: 1-15 are spent on identity and the typed
  /// cases, and a ClusterState's tag is amortised over the attributes it carries.
  @$pb.TagNumber(16)
  $pb.PbList<$1.ClusterState> get clusters => $_getList(15);

  /// Which vendor parameters this endpoint's vendor extensions actually implement, in the
  /// vendor's own spelling — "SABOTAGE", matching (vendor_attribute) byte for byte.
  ///
  /// The vendor mirror of ClusterState.attribute_ids, and it needs its own field because a
  /// vendor parameter has no cluster and so no ClusterState to be listed in. A name list
  /// rather than an id list because the vendor branch addresses by name. A bare list
  /// rather than a per-extension map because an endpoint carries at most one
  /// vendor_properties case and at most a radio_link, a heat_source and an attention beside it,
  /// and the schema keeps the attribute names of radio_link, heat_source, attention and every
  /// vendor_properties case disjoint — a test enforces it — so a name here never needs its
  /// extension to be read. radio_link's, heat_source's and attention's parameters are listed
  /// here the same way as a vendor's.
  ///
  /// Same reading as the Matter side: named here with no value = implemented, not yet
  /// reported. Absent from the list = this device does not have it. Empty = not stated,
  /// which is not a claim that the device implements nothing.
  ///
  /// This is what separates "no tamper detected" from "cannot detect tamper" — presence
  /// alone cannot, and for SABOTAGE the difference is a safety claim. A connector fills it
  /// at announcement from the parameter description its upstream system already holds.
  @$pb.TagNumber(17)
  $pb.PbList<$core.String> get vendorAttributeNames => $_getList(16);

  /// What a write to each vendor parameter leaves behind, and how late its reports arrive,
  /// keyed by the parameter's vendor name as vendor_attribute_names spells it. The vendor
  /// mirror of ClusterState.attribute_behaviours, with the same rules: an absent key is
  /// "not stated", and not stated is read as the worst case. For a parameter reached through
  /// a vendor's service, the name is the vendor's stable parameter id where it has one,
  /// never a display name that is translated or renamed between firmware versions.
  @$pb.TagNumber(18)
  $pb.PbMap<$core.String, $1.AttributeBehaviour>
      get vendorAttributeBehaviours => $_getMap(17);

  @$pb.TagNumber(50)
  $2.HmThermostatProps get hmThermostat => $_getN(18);
  @$pb.TagNumber(50)
  set hmThermostat($2.HmThermostatProps value) => $_setField(50, value);
  @$pb.TagNumber(50)
  $core.bool hasHmThermostat() => $_has(18);
  @$pb.TagNumber(50)
  void clearHmThermostat() => $_clearField(50);
  @$pb.TagNumber(50)
  $2.HmThermostatProps ensureHmThermostat() => $_ensure(18);

  @$pb.TagNumber(51)
  $2.HmMaintenanceProps get hmMaintenance => $_getN(19);
  @$pb.TagNumber(51)
  set hmMaintenance($2.HmMaintenanceProps value) => $_setField(51, value);
  @$pb.TagNumber(51)
  $core.bool hasHmMaintenance() => $_has(19);
  @$pb.TagNumber(51)
  void clearHmMaintenance() => $_clearField(51);
  @$pb.TagNumber(51)
  $2.HmMaintenanceProps ensureHmMaintenance() => $_ensure(19);

  /// How well this device's radio link is doing, on whichever endpoint its connector
  /// reports it. Outside vendor_properties on purpose: it is not a vendor's extension of
  /// one device type but a reading any radio device has, so it must be able to sit beside
  /// whichever vendor case the endpoint already carries — on a HomeMatic device's Power
  /// Source endpoint, beside hm_maintenance. Selected by the vendor branch like a
  /// vendor_properties case, by its (vendor_extension) key "kusinta.radio".
  @$pb.TagNumber(52)
  RadioLink get radioLink => $_getN(20);
  @$pb.TagNumber(52)
  set radioLink(RadioLink value) => $_setField(52, value);
  @$pb.TagNumber(52)
  $core.bool hasRadioLink() => $_has(20);
  @$pb.TagNumber(52)
  void clearRadioLink() => $_clearField(52);
  @$pb.TagNumber(52)
  RadioLink ensureRadioLink() => $_ensure(20);

  /// A heat source's own readings, on the endpoint its connector reports them on. Outside
  /// vendor_properties for the reason radio_link is: they are not one vendor's extension but
  /// readings any heat source may have, whoever made it, and they must be able to sit beside a
  /// vendor case the same endpoint carries. Selected by the vendor branch by its
  /// (vendor_extension) key "kusinta.heat_source".
  @$pb.TagNumber(53)
  HeatSourceReadings get heatSource => $_getN(21);
  @$pb.TagNumber(53)
  set heatSource(HeatSourceReadings value) => $_setField(53, value);
  @$pb.TagNumber(53)
  $core.bool hasHeatSource() => $_has(21);
  @$pb.TagNumber(53)
  void clearHeatSource() => $_clearField(53);
  @$pb.TagNumber(53)
  HeatSourceReadings ensureHeatSource() => $_ensure(21);

  /// What the device needs before it works as it should, on the endpoint its connector reports
  /// it on. Outside vendor_properties for the reason radio_link is: any connector may report it,
  /// beside whichever vendor case the endpoint carries. Selected by the vendor branch by its
  /// (vendor_extension) key "kusinta.attention".
  @$pb.TagNumber(54)
  DeviceAttention get attention => $_getN(22);
  @$pb.TagNumber(54)
  set attention(DeviceAttention value) => $_setField(54, value);
  @$pb.TagNumber(54)
  $core.bool hasAttention() => $_has(22);
  @$pb.TagNumber(54)
  void clearAttention() => $_clearField(54);
  @$pb.TagNumber(54)
  DeviceAttention ensureAttention() => $_ensure(22);
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
    $3.DeviceDescriptor? descriptor,
    $core.Iterable<Endpoint>? endpoints,
    $core.int? minWriteIntervalSeconds,
    $core.int? maxWriteDelaySeconds,
    $4.Timestamp? lastSeen,
    $4.Timestamp? lastUpdated,
  }) {
    final result = create();
    if (descriptor != null) result.descriptor = descriptor;
    if (endpoints != null) result.endpoints.addAll(endpoints);
    if (minWriteIntervalSeconds != null)
      result.minWriteIntervalSeconds = minWriteIntervalSeconds;
    if (maxWriteDelaySeconds != null)
      result.maxWriteDelaySeconds = maxWriteDelaySeconds;
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
    ..aOM<$3.DeviceDescriptor>(1, _omitFieldNames ? '' : 'descriptor',
        subBuilder: $3.DeviceDescriptor.create)
    ..pc<Endpoint>(14, _omitFieldNames ? '' : 'endpoints', $pb.PbFieldType.PM,
        subBuilder: Endpoint.create)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'minWriteIntervalSeconds',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        16, _omitFieldNames ? '' : 'maxWriteDelaySeconds', $pb.PbFieldType.OU3)
    ..aOM<$4.Timestamp>(20, _omitFieldNames ? '' : 'lastSeen',
        subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(21, _omitFieldNames ? '' : 'lastUpdated',
        subBuilder: $4.Timestamp.create)
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
  $3.DeviceDescriptor get descriptor => $_getN(0);
  @$pb.TagNumber(1)
  set descriptor($3.DeviceDescriptor value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDescriptor() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescriptor() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.DeviceDescriptor ensureDescriptor() => $_ensure(0);

  /// 17-19 are free; 20+ is the timestamp band.
  @$pb.TagNumber(14)
  $pb.PbList<Endpoint> get endpoints => $_getList(1);

  /// The fewest seconds this device needs between two writes, to any of its attributes on
  /// any endpoint, without dropping one: a radio limited to a share of airtime, a battery
  /// device that wakes on a schedule. A device-wide budget rather than a per-attribute one,
  /// because two attributes each written at their own pace still share one radio. Stated by
  /// the producer at announcement. Absent: not stated, never zero.
  ///
  /// A lower bound, not the whole budget: devices behind one radio gateway or one hub share
  /// its airtime, and a vendor's service limits an account rather than a device, so a writer
  /// may have to space writes further apart than this says.
  @$pb.TagNumber(15)
  $core.int get minWriteIntervalSeconds => $_getIZ(2);
  @$pb.TagNumber(15)
  set minWriteIntervalSeconds($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(15)
  $core.bool hasMinWriteIntervalSeconds() => $_has(2);
  @$pb.TagNumber(15)
  void clearMinWriteIntervalSeconds() => $_clearField(15);

  /// The longest a write can take to reach the device: a device that listens only after
  /// its own report takes a write at its next one. Stated by the producer at announcement.
  /// Absent: not stated, never zero. A writer that renews a lease renews it this long, plus
  /// a margin, before the lease runs out, or the output lapses between renewals.
  @$pb.TagNumber(16)
  $core.int get maxWriteDelaySeconds => $_getIZ(3);
  @$pb.TagNumber(16)
  set maxWriteDelaySeconds($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(16)
  $core.bool hasMaxWriteDelaySeconds() => $_has(3);
  @$pb.TagNumber(16)
  void clearMaxWriteDelaySeconds() => $_clearField(16);

  /// When the gateway last had evidence this device itself — the
  /// most recent PropertyUpdate (wheter or not the property changed) or command
  /// result concerning it. Should not be advanced on a device announcement: a
  /// connector typically re-announces from its own device list, so a device with a
  /// flat battery would otherwise keep looking freshly seen.
  /// Gateway-observed, not connector-reported: no message on either leg carries a
  /// per-device liveness timestamp, so this is as precise as the device's own report
  /// interval. A device that reports every 15 minutes looks stale for 15 minutes.
  ///
  /// Survives a connector reconnect. Losing the route to a device is not evidence the
  /// device is gone, so last_seen keeps its value; only fresh evidence advances it.
  ///
  /// Advisory, for showing staleness in a UI. It is not a removal signal — that is
  /// webrtc.v1.DeviceRemoved, sent only when a connector reports the device gone.
  ///
  /// Unset in a service view (access.v1.DeviceAcl.relation SERVICE): a device that reports on
  /// change would give away each opening and each turn of a knob. Service learns whether it
  /// is reachable from webrtc.v1.ServiceStatus.
  @$pb.TagNumber(20)
  $4.Timestamp get lastSeen => $_getN(4);
  @$pb.TagNumber(20)
  set lastSeen($4.Timestamp value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasLastSeen() => $_has(4);
  @$pb.TagNumber(20)
  void clearLastSeen() => $_clearField(20);
  @$pb.TagNumber(20)
  $4.Timestamp ensureLastSeen() => $_ensure(4);

  /// When any field of this Device last changed value. Unset in a service view, for the
  /// reason last_seen is. Both are also unset when they date from before the recipient's
  /// current residency in the home, or from a home they did not live in at the time (see
  /// access.v1.MembershipRelation).
  /// Whether such a device is reachable is still told by its webrtc.v1.ServiceStatus.
  @$pb.TagNumber(21)
  $4.Timestamp get lastUpdated => $_getN(5);
  @$pb.TagNumber(21)
  set lastUpdated($4.Timestamp value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasLastUpdated() => $_has(5);
  @$pb.TagNumber(21)
  void clearLastUpdated() => $_clearField(21);
  @$pb.TagNumber(21)
  $4.Timestamp ensureLastUpdated() => $_ensure(5);
}

/// A heat source's own readings: the temperatures its controller measures and works out, and
/// its run state — what it is producing, its compressor, its degree minutes, its alarm — and
/// its own settings (how it is set to run, its add-on's limits, its curve, its hot water's
/// periodic increase), as its connector reads them from the heat source or the maker's service.
/// What heating.v1.HeatingPlant.readings_device_id reads a plant's heat source by.
///
/// Travels as vendor-branch PropertyUpdates with vendor_extension "kusinta.heat_source" and
/// these attribute names, the value case following the field type as everywhere on the vendor
/// branch. A temperature is in centidegrees (°C × 100) as int_value, as temperatures are
/// throughout this schema: a connector converts what the heat source gives — degrees with a
/// decimal, a maker's register scale — into centidegrees and rounds it no further. An
/// enum-valued reading travels as its number in uint_value, as RadioLink.quality does, and
/// keeps explicit presence: its UNSPECIFIED is never sent, since an unreported one is an
/// absent field.
///
/// Vendor-neutral on purpose: the same message for every heat source, a heat pump, a boiler
/// or a district-heating substation, so that whoever reads a plant reads one shape. Which of
/// the maker's points carries each reading, and how its codes map onto the values here, is
/// the connector's mapping and not part of this contract; a reading the heat source has no
/// sensor or state for is never sent, never sent as zero.
///
/// Every field is `optional`, for the reason vendor readings always are: absent means never
/// reported, present means a reading, 0 °C included. Read only: a heat source is steered
/// through its plant's control inputs (heating.v1.HeatPumpControl), never by writing these.
///
/// Who is sent them follows the device, as for any device's readings
/// (access.v1.MembershipRelation), whoever owns the heat source (common.v1.AssetOwner decides
/// nothing of who sees what). A heat source filed in a home is household data there: its
/// readings go to the home's residents and never to service (access.v1.DeviceAcl.relation
/// SERVICE), who are given of it only what a webrtc.v1.ServiceStatus carries, within the
/// service signals (access.v1.ServiceSignal): an alarm as a fault (alarm_active), and never
/// alarm_code or any other reading here.
class HeatSourceReadings extends $pb.GeneratedMessage {
  factory HeatSourceReadings({
    $core.int? outdoorCentidegrees,
    $core.int? supplyCentidegrees,
    $core.int? returnCentidegrees,
    $core.int? hotWaterTopCentidegrees,
    $core.int? hotWaterChargingCentidegrees,
    $core.int? calculatedSupplyCentidegrees,
    $core.int? producing,
    $core.int? compressorState,
    $core.int? degreeMinutes,
    $core.bool? alarmActive,
    $core.int? alarmCode,
    $core.int? addOnHeatWatts,
    $core.int? operatingMode,
    $core.int? heatingStopOutdoorCentidegrees,
    $core.int? addOnStopOutdoorCentidegrees,
    $core.int? outdoorFilterHours,
    $core.int? addOnMaxWatts,
    $core.int? heatingCurve,
    $core.int? heatingCurveOffset,
    $core.int? minSupplyCentidegrees,
    $core.int? ownCurveSupplyPlus30Centidegrees,
    $core.int? ownCurveSupplyPlus20Centidegrees,
    $core.int? ownCurveSupplyPlus10Centidegrees,
    $core.int? ownCurveSupply0Centidegrees,
    $core.int? ownCurveSupplyMinus10Centidegrees,
    $core.int? ownCurveSupplyMinus20Centidegrees,
    $core.int? ownCurveSupplyMinus30Centidegrees,
    $core.int? curvePointOutdoorCentidegrees,
    $core.int? curvePointOffsetCentidegrees,
    $core.bool? externalAdjustmentActive,
    $core.bool? ownCurveInForce,
    $core.int? compressorStarts,
    $core.int? compressorOperatingHours,
    $core.int? compressorHotWaterOperatingHours,
    $core.bool? periodicIncreaseEnabled,
    $core.int? periodicIncreaseIntervalDays,
    $core.int? periodicIncreaseStopCentidegrees,
  }) {
    final result = create();
    if (outdoorCentidegrees != null)
      result.outdoorCentidegrees = outdoorCentidegrees;
    if (supplyCentidegrees != null)
      result.supplyCentidegrees = supplyCentidegrees;
    if (returnCentidegrees != null)
      result.returnCentidegrees = returnCentidegrees;
    if (hotWaterTopCentidegrees != null)
      result.hotWaterTopCentidegrees = hotWaterTopCentidegrees;
    if (hotWaterChargingCentidegrees != null)
      result.hotWaterChargingCentidegrees = hotWaterChargingCentidegrees;
    if (calculatedSupplyCentidegrees != null)
      result.calculatedSupplyCentidegrees = calculatedSupplyCentidegrees;
    if (producing != null) result.producing = producing;
    if (compressorState != null) result.compressorState = compressorState;
    if (degreeMinutes != null) result.degreeMinutes = degreeMinutes;
    if (alarmActive != null) result.alarmActive = alarmActive;
    if (alarmCode != null) result.alarmCode = alarmCode;
    if (addOnHeatWatts != null) result.addOnHeatWatts = addOnHeatWatts;
    if (operatingMode != null) result.operatingMode = operatingMode;
    if (heatingStopOutdoorCentidegrees != null)
      result.heatingStopOutdoorCentidegrees = heatingStopOutdoorCentidegrees;
    if (addOnStopOutdoorCentidegrees != null)
      result.addOnStopOutdoorCentidegrees = addOnStopOutdoorCentidegrees;
    if (outdoorFilterHours != null)
      result.outdoorFilterHours = outdoorFilterHours;
    if (addOnMaxWatts != null) result.addOnMaxWatts = addOnMaxWatts;
    if (heatingCurve != null) result.heatingCurve = heatingCurve;
    if (heatingCurveOffset != null)
      result.heatingCurveOffset = heatingCurveOffset;
    if (minSupplyCentidegrees != null)
      result.minSupplyCentidegrees = minSupplyCentidegrees;
    if (ownCurveSupplyPlus30Centidegrees != null)
      result.ownCurveSupplyPlus30Centidegrees =
          ownCurveSupplyPlus30Centidegrees;
    if (ownCurveSupplyPlus20Centidegrees != null)
      result.ownCurveSupplyPlus20Centidegrees =
          ownCurveSupplyPlus20Centidegrees;
    if (ownCurveSupplyPlus10Centidegrees != null)
      result.ownCurveSupplyPlus10Centidegrees =
          ownCurveSupplyPlus10Centidegrees;
    if (ownCurveSupply0Centidegrees != null)
      result.ownCurveSupply0Centidegrees = ownCurveSupply0Centidegrees;
    if (ownCurveSupplyMinus10Centidegrees != null)
      result.ownCurveSupplyMinus10Centidegrees =
          ownCurveSupplyMinus10Centidegrees;
    if (ownCurveSupplyMinus20Centidegrees != null)
      result.ownCurveSupplyMinus20Centidegrees =
          ownCurveSupplyMinus20Centidegrees;
    if (ownCurveSupplyMinus30Centidegrees != null)
      result.ownCurveSupplyMinus30Centidegrees =
          ownCurveSupplyMinus30Centidegrees;
    if (curvePointOutdoorCentidegrees != null)
      result.curvePointOutdoorCentidegrees = curvePointOutdoorCentidegrees;
    if (curvePointOffsetCentidegrees != null)
      result.curvePointOffsetCentidegrees = curvePointOffsetCentidegrees;
    if (externalAdjustmentActive != null)
      result.externalAdjustmentActive = externalAdjustmentActive;
    if (ownCurveInForce != null) result.ownCurveInForce = ownCurveInForce;
    if (compressorStarts != null) result.compressorStarts = compressorStarts;
    if (compressorOperatingHours != null)
      result.compressorOperatingHours = compressorOperatingHours;
    if (compressorHotWaterOperatingHours != null)
      result.compressorHotWaterOperatingHours =
          compressorHotWaterOperatingHours;
    if (periodicIncreaseEnabled != null)
      result.periodicIncreaseEnabled = periodicIncreaseEnabled;
    if (periodicIncreaseIntervalDays != null)
      result.periodicIncreaseIntervalDays = periodicIncreaseIntervalDays;
    if (periodicIncreaseStopCentidegrees != null)
      result.periodicIncreaseStopCentidegrees =
          periodicIncreaseStopCentidegrees;
    return result;
  }

  HeatSourceReadings._();

  factory HeatSourceReadings.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatSourceReadings.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatSourceReadings',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'outdoorCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'supplyCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'returnCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'hotWaterTopCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'hotWaterChargingCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'calculatedSupplyCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'producing', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        8, _omitFieldNames ? '' : 'compressorState', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        9, _omitFieldNames ? '' : 'degreeMinutes', $pb.PbFieldType.OS3)
    ..aOB(10, _omitFieldNames ? '' : 'alarmActive')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'alarmCode', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        12, _omitFieldNames ? '' : 'addOnHeatWatts', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        13, _omitFieldNames ? '' : 'operatingMode', $pb.PbFieldType.OU3)
    ..a<$core.int>(14, _omitFieldNames ? '' : 'heatingStopOutdoorCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'addOnStopOutdoorCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(
        16, _omitFieldNames ? '' : 'outdoorFilterHours', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        17, _omitFieldNames ? '' : 'addOnMaxWatts', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        18, _omitFieldNames ? '' : 'heatingCurve', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        19, _omitFieldNames ? '' : 'heatingCurveOffset', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        20, _omitFieldNames ? '' : 'minSupplyCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        21,
        _omitFieldNames ? '' : 'ownCurveSupplyPlus30Centidegrees',
        $pb.PbFieldType.OS3,
        protoName: 'own_curve_supply_plus_30_centidegrees')
    ..a<$core.int>(
        22,
        _omitFieldNames ? '' : 'ownCurveSupplyPlus20Centidegrees',
        $pb.PbFieldType.OS3,
        protoName: 'own_curve_supply_plus_20_centidegrees')
    ..a<$core.int>(
        23,
        _omitFieldNames ? '' : 'ownCurveSupplyPlus10Centidegrees',
        $pb.PbFieldType.OS3,
        protoName: 'own_curve_supply_plus_10_centidegrees')
    ..a<$core.int>(24, _omitFieldNames ? '' : 'ownCurveSupply0Centidegrees',
        $pb.PbFieldType.OS3,
        protoName: 'own_curve_supply_0_centidegrees')
    ..a<$core.int>(
        25,
        _omitFieldNames ? '' : 'ownCurveSupplyMinus10Centidegrees',
        $pb.PbFieldType.OS3,
        protoName: 'own_curve_supply_minus_10_centidegrees')
    ..a<$core.int>(
        26,
        _omitFieldNames ? '' : 'ownCurveSupplyMinus20Centidegrees',
        $pb.PbFieldType.OS3,
        protoName: 'own_curve_supply_minus_20_centidegrees')
    ..a<$core.int>(
        27,
        _omitFieldNames ? '' : 'ownCurveSupplyMinus30Centidegrees',
        $pb.PbFieldType.OS3,
        protoName: 'own_curve_supply_minus_30_centidegrees')
    ..a<$core.int>(28, _omitFieldNames ? '' : 'curvePointOutdoorCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(29, _omitFieldNames ? '' : 'curvePointOffsetCentidegrees',
        $pb.PbFieldType.OS3)
    ..aOB(30, _omitFieldNames ? '' : 'externalAdjustmentActive')
    ..aOB(31, _omitFieldNames ? '' : 'ownCurveInForce')
    ..a<$core.int>(
        32, _omitFieldNames ? '' : 'compressorStarts', $pb.PbFieldType.OU3)
    ..a<$core.int>(33, _omitFieldNames ? '' : 'compressorOperatingHours',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        34,
        _omitFieldNames ? '' : 'compressorHotWaterOperatingHours',
        $pb.PbFieldType.OU3)
    ..aOB(35, _omitFieldNames ? '' : 'periodicIncreaseEnabled')
    ..a<$core.int>(36, _omitFieldNames ? '' : 'periodicIncreaseIntervalDays',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        37,
        _omitFieldNames ? '' : 'periodicIncreaseStopCentidegrees',
        $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatSourceReadings clone() => HeatSourceReadings()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatSourceReadings copyWith(void Function(HeatSourceReadings) updates) =>
      super.copyWith((message) => updates(message as HeatSourceReadings))
          as HeatSourceReadings;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatSourceReadings create() => HeatSourceReadings._();
  @$core.override
  HeatSourceReadings createEmptyInstance() => create();
  static $pb.PbList<HeatSourceReadings> createRepeated() =>
      $pb.PbList<HeatSourceReadings>();
  @$core.pragma('dart2js:noInline')
  static HeatSourceReadings getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatSourceReadings>(create);
  static HeatSourceReadings? _defaultInstance;

  /// The heat source's own outdoor sensor: the outdoor temperature its heating curve works
  /// from.
  @$pb.TagNumber(1)
  $core.int get outdoorCentidegrees => $_getIZ(0);
  @$pb.TagNumber(1)
  set outdoorCentidegrees($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOutdoorCentidegrees() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutdoorCentidegrees() => $_clearField(1);

  /// The supply (flow) line from the heat source to its climate system, at its own sensor —
  /// its first climate system where it serves several. Where radiators and a floor circuit
  /// share it, this is the shared supply, before the floor circuit's own mixing
  /// (heating.v1.FloorCircuit.supply_probe reads after it).
  @$pb.TagNumber(2)
  $core.int get supplyCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set supplyCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupplyCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupplyCentidegrees() => $_clearField(2);

  /// The return line into the heat source, at its own sensor: the combined return of
  /// everything it heats.
  @$pb.TagNumber(3)
  $core.int get returnCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set returnCentidegrees($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasReturnCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearReturnCentidegrees() => $_clearField(3);

  /// The top of the hot-water tank: how hot the water available to draw is.
  @$pb.TagNumber(4)
  $core.int get hotWaterTopCentidegrees => $_getIZ(3);
  @$pb.TagNumber(4)
  set hotWaterTopCentidegrees($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHotWaterTopCentidegrees() => $_has(3);
  @$pb.TagNumber(4)
  void clearHotWaterTopCentidegrees() => $_clearField(4);

  /// The hot-water tank's charging sensor: the one the heat source starts and stops making
  /// hot water by.
  @$pb.TagNumber(5)
  $core.int get hotWaterChargingCentidegrees => $_getIZ(4);
  @$pb.TagNumber(5)
  set hotWaterChargingCentidegrees($core.int value) =>
      $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHotWaterChargingCentidegrees() => $_has(4);
  @$pb.TagNumber(5)
  void clearHotWaterChargingCentidegrees() => $_clearField(5);

  /// The supply temperature the heat source's own control is aiming for on the line
  /// supply_centidegrees reads, as it has worked it out from its heating curve and the
  /// outdoor temperature, with whatever offsets it applies. Its target, not a measurement.
  @$pb.TagNumber(6)
  $core.int get calculatedSupplyCentidegrees => $_getIZ(5);
  @$pb.TagNumber(6)
  set calculatedSupplyCentidegrees($core.int value) =>
      $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCalculatedSupplyCentidegrees() => $_has(5);
  @$pb.TagNumber(6)
  void clearCalculatedSupplyCentidegrees() => $_clearField(6);

  /// What the heat source is producing now (HeatSourceProduction), as its number. While it
  /// makes hot water its supply and return say nothing of the space heating, which is what a
  /// consumer reading them for the heating sets aside. A connector that cannot tell what its
  /// heat source is producing sends none, rather than a guess or OTHER: OTHER is a state the
  /// heat source reports, not a reading the connector lacks.
  @$pb.TagNumber(7)
  $core.int get producing => $_getIZ(6);
  @$pb.TagNumber(7)
  set producing($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasProducing() => $_has(6);
  @$pb.TagNumber(7)
  void clearProducing() => $_clearField(7);

  /// Its compressor's state (CompressorState), as its number — its first compressor, where it
  /// has several. Absent for a heat source with none.
  @$pb.TagNumber(8)
  $core.int get compressorState => $_getIZ(7);
  @$pb.TagNumber(8)
  set compressorState($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCompressorState() => $_has(7);
  @$pb.TagNumber(8)
  void clearCompressorState() => $_clearField(8);

  /// Its degree minutes, in whole degree-minutes (°C × minutes), rounded to the nearest: the
  /// running sum over time of how far the supply has been from calculated_supply_centidegrees,
  /// negative while it has run below it. What a heat source that keeps one starts its
  /// compressor and its add-on heat by, at thresholds of its own. Absent for a heat source
  /// that keeps none.
  @$pb.TagNumber(9)
  $core.int get degreeMinutes => $_getIZ(8);
  @$pb.TagNumber(9)
  set degreeMinutes($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasDegreeMinutes() => $_has(8);
  @$pb.TagNumber(9)
  void clearDegreeMinutes() => $_clearField(9);

  /// Whether the heat source reports an alarm now. An error it reports in its own operation:
  /// service is given it as webrtc.v1.SERVICE_FAULT_ERROR (access.v1.SERVICE_SIGNAL_FAULT), as
  /// any device's error, and nothing more of it.
  @$pb.TagNumber(10)
  $core.bool get alarmActive => $_getBF(9);
  @$pb.TagNumber(10)
  set alarmActive($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasAlarmActive() => $_has(9);
  @$pb.TagNumber(10)
  void clearAlarmActive() => $_clearField(10);

  /// The maker's own number for its most severe current alarm, for whoever looks it up in the
  /// maker's documentation. Vendor-specific: it means nothing without the product, and no
  /// consumer decides anything by it. Present only while alarm_active is true; a connector
  /// sends a null value (PropertyUpdate.null_value) when the alarm ends. Never sent to service,
  /// in a home or out of one.
  @$pb.TagNumber(11)
  $core.int get alarmCode => $_getIZ(10);
  @$pb.TagNumber(11)
  set alarmCode($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasAlarmCode() => $_has(10);
  @$pb.TagNumber(11)
  void clearAlarmCode() => $_clearField(11);

  /// The power its internal electric add-on heat (an immersion heater or an electric boiler
  /// inside the heat source) draws now, in watts: 0 while it is off or blocked. Absent for a
  /// heat source without one, or whose connector cannot read it.
  @$pb.TagNumber(12)
  $core.int get addOnHeatWatts => $_getIZ(11);
  @$pb.TagNumber(12)
  set addOnHeatWatts($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasAddOnHeatWatts() => $_has(11);
  @$pb.TagNumber(12)
  void clearAddOnHeatWatts() => $_clearField(12);

  /// How the heat source is set to run (HeatSourceOperatingMode), as its number: automatic,
  /// manual, or its add-on heat alone. In add-on only its compressor makes no heat, so a block
  /// of the add-on stops all of it.
  @$pb.TagNumber(13)
  $core.int get operatingMode => $_getIZ(12);
  @$pb.TagNumber(13)
  set operatingMode($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasOperatingMode() => $_has(12);
  @$pb.TagNumber(13)
  void clearOperatingMode() => $_clearField(13);

  /// The outdoor temperature at and above which it stops heating its first climate system
  /// while it runs automatically, judged against its averaged outdoor temperature
  /// (outdoor_filter_hours).
  @$pb.TagNumber(14)
  $core.int get heatingStopOutdoorCentidegrees => $_getIZ(13);
  @$pb.TagNumber(14)
  set heatingStopOutdoorCentidegrees($core.int value) =>
      $_setSignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasHeatingStopOutdoorCentidegrees() => $_has(13);
  @$pb.TagNumber(14)
  void clearHeatingStopOutdoorCentidegrees() => $_clearField(14);

  /// The outdoor temperature at and above which its add-on heat may not run while it runs
  /// automatically, judged against its averaged outdoor temperature. Above it, blocking the
  /// add-on moves no energy.
  @$pb.TagNumber(15)
  $core.int get addOnStopOutdoorCentidegrees => $_getIZ(14);
  @$pb.TagNumber(15)
  set addOnStopOutdoorCentidegrees($core.int value) =>
      $_setSignedInt32(14, value);
  @$pb.TagNumber(15)
  $core.bool hasAddOnStopOutdoorCentidegrees() => $_has(14);
  @$pb.TagNumber(15)
  void clearAddOnStopOutdoorCentidegrees() => $_clearField(15);

  /// Over how many hours it averages the outdoor temperature that the two stops above are
  /// judged against.
  @$pb.TagNumber(16)
  $core.int get outdoorFilterHours => $_getIZ(15);
  @$pb.TagNumber(16)
  set outdoorFilterHours($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasOutdoorFilterHours() => $_has(15);
  @$pb.TagNumber(16)
  void clearOutdoorFilterHours() => $_clearField(16);

  /// The limit set at the heat source for its internal electric add-on heater, in watts: the
  /// most add_on_heat_watts may draw, which may be below the heater's rated power. Its cap,
  /// not the size of its steps.
  @$pb.TagNumber(17)
  $core.int get addOnMaxWatts => $_getIZ(16);
  @$pb.TagNumber(17)
  set addOnMaxWatts($core.int value) => $_setUnsignedInt32(16, value);
  @$pb.TagNumber(17)
  $core.bool hasAddOnMaxWatts() => $_has(16);
  @$pb.TagNumber(17)
  void clearAddOnMaxWatts() => $_clearField(17);

  /// The numbered curve its first climate system is set to, by the heat source's own
  /// numbering: higher is steeper, and the shapes are the maker's, read with its product. In
  /// force while own_curve_in_force is false. A connector maps the maker's own-curve choice
  /// onto own_curve_in_force, never onto a number here.
  @$pb.TagNumber(18)
  $core.int get heatingCurve => $_getIZ(17);
  @$pb.TagNumber(18)
  set heatingCurve($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasHeatingCurve() => $_has(17);
  @$pb.TagNumber(18)
  void clearHeatingCurve() => $_clearField(18);

  /// The parallel offset of its first climate system's curve, in the heat source's own steps:
  /// positive raises the supply at every outdoor temperature. In force with heating_curve, and
  /// with the own curve too on a heat source that moves it by the offset: an own curve is meant
  /// with the offset at 0.
  @$pb.TagNumber(19)
  $core.int get heatingCurveOffset => $_getIZ(18);
  @$pb.TagNumber(19)
  set heatingCurveOffset($core.int value) => $_setSignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasHeatingCurveOffset() => $_has(18);
  @$pb.TagNumber(19)
  void clearHeatingCurveOffset() => $_clearField(19);

  /// The lowest supply temperature its first climate system is held at, whatever the curve
  /// says.
  @$pb.TagNumber(20)
  $core.int get minSupplyCentidegrees => $_getIZ(19);
  @$pb.TagNumber(20)
  set minSupplyCentidegrees($core.int value) => $_setSignedInt32(19, value);
  @$pb.TagNumber(20)
  $core.bool hasMinSupplyCentidegrees() => $_has(19);
  @$pb.TagNumber(20)
  void clearMinSupplyCentidegrees() => $_clearField(20);

  /// Its first climate system's own curve, as seven points: the supply set for an outdoor
  /// temperature of +30 °C. The six fields after it are the same at +20, +10, 0, −10, −20 and
  /// −30 °C. A heat source whose own curve has other points is mapped onto these by its
  /// connector, or sends none. In force while own_curve_in_force is true.
  @$pb.TagNumber(21)
  $core.int get ownCurveSupplyPlus30Centidegrees => $_getIZ(20);
  @$pb.TagNumber(21)
  set ownCurveSupplyPlus30Centidegrees($core.int value) =>
      $_setSignedInt32(20, value);
  @$pb.TagNumber(21)
  $core.bool hasOwnCurveSupplyPlus30Centidegrees() => $_has(20);
  @$pb.TagNumber(21)
  void clearOwnCurveSupplyPlus30Centidegrees() => $_clearField(21);

  /// Its own curve's supply at +20 °C outdoors.
  @$pb.TagNumber(22)
  $core.int get ownCurveSupplyPlus20Centidegrees => $_getIZ(21);
  @$pb.TagNumber(22)
  set ownCurveSupplyPlus20Centidegrees($core.int value) =>
      $_setSignedInt32(21, value);
  @$pb.TagNumber(22)
  $core.bool hasOwnCurveSupplyPlus20Centidegrees() => $_has(21);
  @$pb.TagNumber(22)
  void clearOwnCurveSupplyPlus20Centidegrees() => $_clearField(22);

  /// Its own curve's supply at +10 °C outdoors.
  @$pb.TagNumber(23)
  $core.int get ownCurveSupplyPlus10Centidegrees => $_getIZ(22);
  @$pb.TagNumber(23)
  set ownCurveSupplyPlus10Centidegrees($core.int value) =>
      $_setSignedInt32(22, value);
  @$pb.TagNumber(23)
  $core.bool hasOwnCurveSupplyPlus10Centidegrees() => $_has(22);
  @$pb.TagNumber(23)
  void clearOwnCurveSupplyPlus10Centidegrees() => $_clearField(23);

  /// Its own curve's supply at 0 °C outdoors.
  @$pb.TagNumber(24)
  $core.int get ownCurveSupply0Centidegrees => $_getIZ(23);
  @$pb.TagNumber(24)
  set ownCurveSupply0Centidegrees($core.int value) =>
      $_setSignedInt32(23, value);
  @$pb.TagNumber(24)
  $core.bool hasOwnCurveSupply0Centidegrees() => $_has(23);
  @$pb.TagNumber(24)
  void clearOwnCurveSupply0Centidegrees() => $_clearField(24);

  /// Its own curve's supply at −10 °C outdoors.
  @$pb.TagNumber(25)
  $core.int get ownCurveSupplyMinus10Centidegrees => $_getIZ(24);
  @$pb.TagNumber(25)
  set ownCurveSupplyMinus10Centidegrees($core.int value) =>
      $_setSignedInt32(24, value);
  @$pb.TagNumber(25)
  $core.bool hasOwnCurveSupplyMinus10Centidegrees() => $_has(24);
  @$pb.TagNumber(25)
  void clearOwnCurveSupplyMinus10Centidegrees() => $_clearField(25);

  /// Its own curve's supply at −20 °C outdoors.
  @$pb.TagNumber(26)
  $core.int get ownCurveSupplyMinus20Centidegrees => $_getIZ(25);
  @$pb.TagNumber(26)
  set ownCurveSupplyMinus20Centidegrees($core.int value) =>
      $_setSignedInt32(25, value);
  @$pb.TagNumber(26)
  $core.bool hasOwnCurveSupplyMinus20Centidegrees() => $_has(25);
  @$pb.TagNumber(26)
  void clearOwnCurveSupplyMinus20Centidegrees() => $_clearField(26);

  /// Its own curve's supply at −30 °C outdoors.
  @$pb.TagNumber(27)
  $core.int get ownCurveSupplyMinus30Centidegrees => $_getIZ(26);
  @$pb.TagNumber(27)
  set ownCurveSupplyMinus30Centidegrees($core.int value) =>
      $_setSignedInt32(26, value);
  @$pb.TagNumber(27)
  $core.bool hasOwnCurveSupplyMinus30Centidegrees() => $_has(26);
  @$pb.TagNumber(27)
  void clearOwnCurveSupplyMinus30Centidegrees() => $_clearField(27);

  /// Where its first climate system's curve is bent at one outdoor temperature: that outdoor
  /// temperature. Read with curve_point_offset_centidegrees.
  @$pb.TagNumber(28)
  $core.int get curvePointOutdoorCentidegrees => $_getIZ(27);
  @$pb.TagNumber(28)
  set curvePointOutdoorCentidegrees($core.int value) =>
      $_setSignedInt32(27, value);
  @$pb.TagNumber(28)
  $core.bool hasCurvePointOutdoorCentidegrees() => $_has(27);
  @$pb.TagNumber(28)
  void clearCurvePointOutdoorCentidegrees() => $_clearField(28);

  /// How far the supply of its first climate system is moved at
  /// curve_point_outdoor_centidegrees: 0 for no bend.
  @$pb.TagNumber(29)
  $core.int get curvePointOffsetCentidegrees => $_getIZ(28);
  @$pb.TagNumber(29)
  set curvePointOffsetCentidegrees($core.int value) =>
      $_setSignedInt32(28, value);
  @$pb.TagNumber(29)
  $core.bool hasCurvePointOffsetCentidegrees() => $_has(28);
  @$pb.TagNumber(29)
  void clearCurvePointOffsetCentidegrees() => $_clearField(29);

  /// Whether an external input moves its first climate system's curve now: while true, its
  /// calculated supply is off its curve (the settings below) by the adjustment set for that input. A state,
  /// sent when it changes, like the run state above.
  @$pb.TagNumber(30)
  $core.bool get externalAdjustmentActive => $_getBF(29);
  @$pb.TagNumber(30)
  set externalAdjustmentActive($core.bool value) => $_setBool(29, value);
  @$pb.TagNumber(30)
  $core.bool hasExternalAdjustmentActive() => $_has(29);
  @$pb.TagNumber(30)
  void clearExternalAdjustmentActive() => $_clearField(30);

  /// Which curve its first climate system follows: true, the seven points set below
  /// (own_curve_supply_*); false, a numbered curve (heating_curve) with its offset. Either way
  /// min_supply_centidegrees and the bend (curve_point_*) apply on top. Absent: not known,
  /// and neither curve's fields should be read as the one in force.
  @$pb.TagNumber(31)
  $core.bool get ownCurveInForce => $_getBF(30);
  @$pb.TagNumber(31)
  set ownCurveInForce($core.bool value) => $_setBool(30, value);
  @$pb.TagNumber(31)
  $core.bool hasOwnCurveInForce() => $_has(30);
  @$pb.TagNumber(31)
  void clearOwnCurveInForce() => $_clearField(31);

  /// How many times its compressor has started, in all: a running total kept by the heat
  /// source, of its first compressor where it has several. A total lower than the one before
  /// means the heat source's count was reset (as at service, or when its control board is
  /// replaced), never a negative count of starts. Absent for a heat source that keeps none.
  @$pb.TagNumber(32)
  $core.int get compressorStarts => $_getIZ(31);
  @$pb.TagNumber(32)
  set compressorStarts($core.int value) => $_setUnsignedInt32(31, value);
  @$pb.TagNumber(32)
  $core.bool hasCompressorStarts() => $_has(31);
  @$pb.TagNumber(32)
  void clearCompressorStarts() => $_clearField(32);

  /// How long its compressor has run, in all, in whole hours: a running total kept by the
  /// heat source, read as compressor_starts is (a lower total is a reset). Absent for a heat
  /// source that keeps none.
  @$pb.TagNumber(33)
  $core.int get compressorOperatingHours => $_getIZ(32);
  @$pb.TagNumber(33)
  set compressorOperatingHours($core.int value) =>
      $_setUnsignedInt32(32, value);
  @$pb.TagNumber(33)
  $core.bool hasCompressorOperatingHours() => $_has(32);
  @$pb.TagNumber(33)
  void clearCompressorOperatingHours() => $_clearField(33);

  /// The part of compressor_operating_hours spent making hot water, in whole hours: a running
  /// total kept by the heat source, read as compressor_starts is (a lower total is a reset).
  /// Absent for a heat source that keeps none.
  @$pb.TagNumber(34)
  $core.int get compressorHotWaterOperatingHours => $_getIZ(33);
  @$pb.TagNumber(34)
  set compressorHotWaterOperatingHours($core.int value) =>
      $_setUnsignedInt32(33, value);
  @$pb.TagNumber(34)
  $core.bool hasCompressorHotWaterOperatingHours() => $_has(33);
  @$pb.TagNumber(34)
  void clearCompressorHotWaterOperatingHours() => $_clearField(34);

  /// Whether it raises its hot-water tank on a schedule of its own against legionella (a
  /// periodic increase), as set at the heat source. Where reported, read over the answer to
  /// commissioning.v1 "hot_water.periodic_increase", being the heat source's actual setting.
  /// Absent for a heat source without a tank, or whose connector cannot read it.
  @$pb.TagNumber(35)
  $core.bool get periodicIncreaseEnabled => $_getBF(34);
  @$pb.TagNumber(35)
  set periodicIncreaseEnabled($core.bool value) => $_setBool(34, value);
  @$pb.TagNumber(35)
  $core.bool hasPeriodicIncreaseEnabled() => $_has(34);
  @$pb.TagNumber(35)
  void clearPeriodicIncreaseEnabled() => $_clearField(35);

  /// Every how many days its periodic increase runs, 1 to 90, as set at the heat source; sent
  /// whether or not periodic_increase_enabled is true. Where reported, read over the answer to
  /// commissioning.v1 "hot_water.periodic_increase_interval_days". A connector sends none for a
  /// value outside that range.
  @$pb.TagNumber(36)
  $core.int get periodicIncreaseIntervalDays => $_getIZ(35);
  @$pb.TagNumber(36)
  set periodicIncreaseIntervalDays($core.int value) =>
      $_setUnsignedInt32(35, value);
  @$pb.TagNumber(36)
  $core.bool hasPeriodicIncreaseIntervalDays() => $_has(35);
  @$pb.TagNumber(36)
  void clearPeriodicIncreaseIntervalDays() => $_clearField(36);

  /// The tank temperature its periodic increase heats to before it stops, as set at the heat
  /// source: what a step is seen by in the tank's readings. No commissioning fact stands for it.
  @$pb.TagNumber(37)
  $core.int get periodicIncreaseStopCentidegrees => $_getIZ(36);
  @$pb.TagNumber(37)
  set periodicIncreaseStopCentidegrees($core.int value) =>
      $_setSignedInt32(36, value);
  @$pb.TagNumber(37)
  $core.bool hasPeriodicIncreaseStopCentidegrees() => $_has(36);
  @$pb.TagNumber(37)
  void clearPeriodicIncreaseStopCentidegrees() => $_clearField(37);
}

/// What a device needs before it works as it should, as its connector judges it from the
/// device's own reports. Technology-agnostic: the same message for any connector.
///
/// Travels as vendor-branch PropertyUpdates with vendor_extension "kusinta.attention" and the
/// attribute name "attention_reason", as uint_value. A connector sends the most pressing reason
/// that holds — the one lowest in AttentionReason's order, which is its order of priority — and
/// a null value (PropertyUpdate.null_value) once none holds.
///
/// Who is given it: as a fault (access.v1.SERVICE_SIGNAL_FAULT), service as well as the
/// device's residents, as webrtc.v1.ServiceStatus.attention and a
/// reporting.v1.PROBLEM_KIND_DEVICE_NEEDS_ATTENTION problem. It says what the device needs and
/// nothing of the room or of the people in it. A reason can follow from what someone did — a
/// valve refitted, its battery changed — and service learns that within the quarter hour, as it
/// does of a fault.
class DeviceAttention extends $pb.GeneratedMessage {
  factory DeviceAttention({
    $core.int? attentionReason,
  }) {
    final result = create();
    if (attentionReason != null) result.attentionReason = attentionReason;
    return result;
  }

  DeviceAttention._();

  factory DeviceAttention.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceAttention.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceAttention',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'attentionReason', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAttention clone() => DeviceAttention()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAttention copyWith(void Function(DeviceAttention) updates) =>
      super.copyWith((message) => updates(message as DeviceAttention))
          as DeviceAttention;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceAttention create() => DeviceAttention._();
  @$core.override
  DeviceAttention createEmptyInstance() => create();
  static $pb.PbList<DeviceAttention> createRepeated() =>
      $pb.PbList<DeviceAttention>();
  @$core.pragma('dart2js:noInline')
  static DeviceAttention getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceAttention>(create);
  static DeviceAttention? _defaultInstance;

  /// Why, as an AttentionReason number; 0 is not used. A number, not the name, as every
  /// enum-valued reading travels.
  @$pb.TagNumber(1)
  $core.int get attentionReason => $_getIZ(0);
  @$pb.TagNumber(1)
  set attentionReason($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAttentionReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttentionReason() => $_clearField(1);
}

/// A device's radio link, as its connector reports it.
///
/// Travels as vendor-branch PropertyUpdates with vendor_extension "kusinta.radio" and
/// these attribute names, the value case following the field type as everywhere on the
/// vendor branch: "quality" as uint_value, "rssi_dbm" as int_value, "snr_db" as
/// float_value.
///
/// Every field is `optional`, for the reason vendor readings always are: absent means
/// never reported, present means a reading.
///
/// Technology-agnostic: the same message for every radio. A vendor's own raw radio
/// readings, such as HmMaintenanceProps.rssi_device, stay in that vendor's extension.
class RadioLink extends $pb.GeneratedMessage {
  factory RadioLink({
    $core.int? quality,
    $core.int? rssiDbm,
    $core.double? snrDb,
  }) {
    final result = create();
    if (quality != null) result.quality = quality;
    if (rssiDbm != null) result.rssiDbm = rssiDbm;
    if (snrDb != null) result.snrDb = snrDb;
    return result;
  }

  RadioLink._();

  factory RadioLink.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadioLink.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadioLink',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'quality', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'rssiDbm', $pb.PbFieldType.OS3)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'snrDb', $pb.PbFieldType.OF)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadioLink clone() => RadioLink()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadioLink copyWith(void Function(RadioLink) updates) =>
      super.copyWith((message) => updates(message as RadioLink)) as RadioLink;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadioLink create() => RadioLink._();
  @$core.override
  RadioLink createEmptyInstance() => create();
  static $pb.PbList<RadioLink> createRepeated() => $pb.PbList<RadioLink>();
  @$core.pragma('dart2js:noInline')
  static RadioLink getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RadioLink>(create);
  static RadioLink? _defaultInstance;

  /// The connector's rating: GOOD = 1, FAIR = 2, POOR = 3 (RadioQuality); 0 is not used.
  /// A number, not the name, as every enum-valued reading travels.
  @$pb.TagNumber(1)
  $core.int get quality => $_getIZ(0);
  @$pb.TagNumber(1)
  set quality($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasQuality() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuality() => $_clearField(1);

  /// Received signal strength in dBm. sint32: negative in normal operation.
  @$pb.TagNumber(2)
  $core.int get rssiDbm => $_getIZ(1);
  @$pb.TagNumber(2)
  set rssiDbm($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRssiDbm() => $_has(1);
  @$pb.TagNumber(2)
  void clearRssiDbm() => $_clearField(2);

  /// Signal-to-noise ratio in dB, for technologies that measure one — LoRaWAN does.
  /// Absent elsewhere. Negative values are normal for LoRa.
  @$pb.TagNumber(3)
  $core.double get snrDb => $_getN(2);
  @$pb.TagNumber(3)
  set snrDb($core.double value) => $_setFloat(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSnrDb() => $_has(2);
  @$pb.TagNumber(3)
  void clearSnrDb() => $_clearField(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
