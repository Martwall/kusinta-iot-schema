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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../access/v1/acl.pb.dart' as $1;
import '../../device/v1/cluster_state.pb.dart' as $2;
import '../../identity/v1/identity.pb.dart' as $0;
import 'heating.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'heating.pbenum.dart';

/// One attribute of one device: what a role reads or writes. Endpoint_id is required on the
/// Matter branch of the attribute here — an absent endpoint is refused, never read as the
/// root node.
class DeviceAttribute extends $pb.GeneratedMessage {
  factory DeviceAttribute({
    $0.DeviceId? deviceId,
    $1.AttributeRef? attribute,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (attribute != null) result.attribute = attribute;
    return result;
  }

  DeviceAttribute._();

  factory DeviceAttribute.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceAttribute.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceAttribute',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOM<$1.AttributeRef>(2, _omitFieldNames ? '' : 'attribute',
        subBuilder: $1.AttributeRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAttribute clone() => DeviceAttribute()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAttribute copyWith(void Function(DeviceAttribute) updates) =>
      super.copyWith((message) => updates(message as DeviceAttribute))
          as DeviceAttribute;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceAttribute create() => DeviceAttribute._();
  @$core.override
  DeviceAttribute createEmptyInstance() => create();
  static $pb.PbList<DeviceAttribute> createRepeated() =>
      $pb.PbList<DeviceAttribute>();
  @$core.pragma('dart2js:noInline')
  static DeviceAttribute getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceAttribute>(create);
  static DeviceAttribute? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.AttributeRef get attribute => $_getN(1);
  @$pb.TagNumber(2)
  set attribute($1.AttributeRef value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAttribute() => $_has(1);
  @$pb.TagNumber(2)
  void clearAttribute() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.AttributeRef ensureAttribute() => $_ensure(1);
}

/// One device output switching one contact on the heating side: a floor zone's thermostat
/// input, a heat-source input, a comfort load's supply.
class ContactBinding extends $pb.GeneratedMessage {
  factory ContactBinding({
    DeviceAttribute? output,
    $2.AttributeValue? closedValue,
  }) {
    final result = create();
    if (output != null) result.output = output;
    if (closedValue != null) result.closedValue = closedValue;
    return result;
  }

  ContactBinding._();

  factory ContactBinding.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ContactBinding.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ContactBinding',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOM<DeviceAttribute>(1, _omitFieldNames ? '' : 'output',
        subBuilder: DeviceAttribute.create)
    ..aOM<$2.AttributeValue>(2, _omitFieldNames ? '' : 'closedValue',
        subBuilder: $2.AttributeValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContactBinding clone() => ContactBinding()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContactBinding copyWith(void Function(ContactBinding) updates) =>
      super.copyWith((message) => updates(message as ContactBinding))
          as ContactBinding;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContactBinding create() => ContactBinding._();
  @$core.override
  ContactBinding createEmptyInstance() => create();
  static $pb.PbList<ContactBinding> createRepeated() =>
      $pb.PbList<ContactBinding>();
  @$core.pragma('dart2js:noInline')
  static ContactBinding getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ContactBinding>(create);
  static ContactBinding? _defaultInstance;

  /// OnOff on a relay channel, or a vendor parameter.
  @$pb.TagNumber(1)
  DeviceAttribute get output => $_getN(0);
  @$pb.TagNumber(1)
  set output(DeviceAttribute value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOutput() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutput() => $_clearField(1);
  @$pb.TagNumber(1)
  DeviceAttribute ensureOutput() => $_ensure(0);

  /// The value of the output with which the contact is closed. A wiring fact, not a device
  /// fact: a changeover relay wired through its normally closed contact closes it with the
  /// channel off, so OnOff false. The producer cannot know it; whoever wires the relay
  /// states it, and the gateway reads every state of the role through it — never from the
  /// output's value alone.
  ///
  /// Each role has a fixed rest state (see the role), and the output's lapse value
  /// (device.v1.LeasedWrite.lapse_value), read through this value, must leave the contact
  /// where the role rests. Every comparison with this value matches type as well as value:
  /// an int 0 is not a bool false.
  @$pb.TagNumber(2)
  $2.AttributeValue get closedValue => $_getN(1);
  @$pb.TagNumber(2)
  set closedValue($2.AttributeValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasClosedValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearClosedValue() => $_clearField(2);
  @$pb.TagNumber(2)
  $2.AttributeValue ensureClosedValue() => $_ensure(1);
}

enum HeatingPlant_Control { heatPump, notSet }

/// One heat source.
class HeatingPlant extends $pb.GeneratedMessage {
  factory HeatingPlant({
    $core.String? plantId,
    $0.SpaceId? spaceId,
    $core.String? name,
    HeatSourceKind? source,
    $0.DeviceId? readingsDeviceId,
    HeatPumpControl? heatPump,
    DeviceAttribute? meter,
    $fixnum.Int64? revision,
  }) {
    final result = create();
    if (plantId != null) result.plantId = plantId;
    if (spaceId != null) result.spaceId = spaceId;
    if (name != null) result.name = name;
    if (source != null) result.source = source;
    if (readingsDeviceId != null) result.readingsDeviceId = readingsDeviceId;
    if (heatPump != null) result.heatPump = heatPump;
    if (meter != null) result.meter = meter;
    if (revision != null) result.revision = revision;
    return result;
  }

  HeatingPlant._();

  factory HeatingPlant.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatingPlant.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, HeatingPlant_Control>
      _HeatingPlant_ControlByTag = {
    6: HeatingPlant_Control.heatPump,
    0: HeatingPlant_Control.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatingPlant',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..oo(0, [6])
    ..aOS(1, _omitFieldNames ? '' : 'plantId')
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..e<HeatSourceKind>(4, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE,
        defaultOrMaker: HeatSourceKind.HEAT_SOURCE_KIND_UNSPECIFIED,
        valueOf: HeatSourceKind.valueOf,
        enumValues: HeatSourceKind.values)
    ..aOM<$0.DeviceId>(5, _omitFieldNames ? '' : 'readingsDeviceId',
        subBuilder: $0.DeviceId.create)
    ..aOM<HeatPumpControl>(6, _omitFieldNames ? '' : 'heatPump',
        subBuilder: HeatPumpControl.create)
    ..aOM<DeviceAttribute>(7, _omitFieldNames ? '' : 'meter',
        subBuilder: DeviceAttribute.create)
    ..a<$fixnum.Int64>(
        8, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatingPlant clone() => HeatingPlant()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatingPlant copyWith(void Function(HeatingPlant) updates) =>
      super.copyWith((message) => updates(message as HeatingPlant))
          as HeatingPlant;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatingPlant create() => HeatingPlant._();
  @$core.override
  HeatingPlant createEmptyInstance() => create();
  static $pb.PbList<HeatingPlant> createRepeated() =>
      $pb.PbList<HeatingPlant>();
  @$core.pragma('dart2js:noInline')
  static HeatingPlant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatingPlant>(create);
  static HeatingPlant? _defaultInstance;

  HeatingPlant_Control whichControl() =>
      _HeatingPlant_ControlByTag[$_whichOneof(0)]!;
  void clearControl() => $_clearField($_whichOneof(0));

  /// Assigned by the gateway, unique among heating records; empty when creating.
  @$pb.TagNumber(1)
  $core.String get plantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set plantId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPlantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlantId() => $_clearField(1);

  /// The space the plant serves: a home, or a space outside homes for a central plant.
  @$pb.TagNumber(2)
  $0.SpaceId get spaceId => $_getN(1);
  @$pb.TagNumber(2)
  set spaceId($0.SpaceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpaceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.SpaceId ensureSpaceId() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  HeatSourceKind get source => $_getN(3);
  @$pb.TagNumber(4)
  set source(HeatSourceKind value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => $_clearField(4);

  /// The device the heat source's own readings come from — its temperatures, compressor and
  /// hot-water state — when it has one. Read only: the gateway drives a heat source through
  /// the plant's control, never through this device.
  @$pb.TagNumber(5)
  $0.DeviceId get readingsDeviceId => $_getN(4);
  @$pb.TagNumber(5)
  set readingsDeviceId($0.DeviceId value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasReadingsDeviceId() => $_has(4);
  @$pb.TagNumber(5)
  void clearReadingsDeviceId() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.DeviceId ensureReadingsDeviceId() => $_ensure(4);

  @$pb.TagNumber(6)
  HeatPumpControl get heatPump => $_getN(5);
  @$pb.TagNumber(6)
  set heatPump(HeatPumpControl value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasHeatPump() => $_has(5);
  @$pb.TagNumber(6)
  void clearHeatPump() => $_clearField(6);
  @$pb.TagNumber(6)
  HeatPumpControl ensureHeatPump() => $_ensure(5);

  /// The electricity or heat meter the plant is measured by.
  @$pb.TagNumber(7)
  DeviceAttribute get meter => $_getN(6);
  @$pb.TagNumber(7)
  set meter(DeviceAttribute value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasMeter() => $_has(6);
  @$pb.TagNumber(7)
  void clearMeter() => $_clearField(7);
  @$pb.TagNumber(7)
  DeviceAttribute ensureMeter() => $_ensure(6);

  /// See the file comment.
  @$pb.TagNumber(8)
  $fixnum.Int64 get revision => $_getI64(7);
  @$pb.TagNumber(8)
  set revision($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRevision() => $_has(7);
  @$pb.TagNumber(8)
  void clearRevision() => $_clearField(8);
}

/// A heat pump's control inputs.
class HeatPumpControl extends $pb.GeneratedMessage {
  factory HeatPumpControl({
    ContactBinding? sgReadyBlock,
    ContactBinding? sgReadyBoost,
    ContactBinding? addOnHeaterBlock,
  }) {
    final result = create();
    if (sgReadyBlock != null) result.sgReadyBlock = sgReadyBlock;
    if (sgReadyBoost != null) result.sgReadyBoost = sgReadyBoost;
    if (addOnHeaterBlock != null) result.addOnHeaterBlock = addOnHeaterBlock;
    return result;
  }

  HeatPumpControl._();

  factory HeatPumpControl.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatPumpControl.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatPumpControl',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOM<ContactBinding>(1, _omitFieldNames ? '' : 'sgReadyBlock',
        subBuilder: ContactBinding.create)
    ..aOM<ContactBinding>(2, _omitFieldNames ? '' : 'sgReadyBoost',
        subBuilder: ContactBinding.create)
    ..aOM<ContactBinding>(3, _omitFieldNames ? '' : 'addOnHeaterBlock',
        subBuilder: ContactBinding.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatPumpControl clone() => HeatPumpControl()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatPumpControl copyWith(void Function(HeatPumpControl) updates) =>
      super.copyWith((message) => updates(message as HeatPumpControl))
          as HeatPumpControl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatPumpControl create() => HeatPumpControl._();
  @$core.override
  HeatPumpControl createEmptyInstance() => create();
  static $pb.PbList<HeatPumpControl> createRepeated() =>
      $pb.PbList<HeatPumpControl>();
  @$core.pragma('dart2js:noInline')
  static HeatPumpControl getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatPumpControl>(create);
  static HeatPumpControl? _defaultInstance;

  /// The SG Ready inputs, by what each means closed alone: sg_ready_block closed alone
  /// blocks the heat pump, sg_ready_boost closed alone recommends running harder, both
  /// closed commands it to, and both open is normal operation. Both rest open, so a lapsed
  /// lease or a stopped gateway leaves the heat pump running normally. Bound together or not
  /// at all.
  ///
  /// They lapse separately, so their leases are ordered: while both are closed, the gateway
  /// gives sg_ready_block no longer a lease than sg_ready_boost, so the heat pump never passes
  /// through "blocked" on its way back to normal. In general, of two bound inputs, the one
  /// whose half-state blocks heat never lapses last.
  @$pb.TagNumber(1)
  ContactBinding get sgReadyBlock => $_getN(0);
  @$pb.TagNumber(1)
  set sgReadyBlock(ContactBinding value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSgReadyBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearSgReadyBlock() => $_clearField(1);
  @$pb.TagNumber(1)
  ContactBinding ensureSgReadyBlock() => $_ensure(0);

  @$pb.TagNumber(2)
  ContactBinding get sgReadyBoost => $_getN(1);
  @$pb.TagNumber(2)
  set sgReadyBoost(ContactBinding value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSgReadyBoost() => $_has(1);
  @$pb.TagNumber(2)
  void clearSgReadyBoost() => $_clearField(2);
  @$pb.TagNumber(2)
  ContactBinding ensureSgReadyBoost() => $_ensure(1);

  /// The input that blocks the heat pump's add-on (electric) heater while closed. Rests
  /// open: the add-on heater is allowed.
  @$pb.TagNumber(3)
  ContactBinding get addOnHeaterBlock => $_getN(2);
  @$pb.TagNumber(3)
  set addOnHeaterBlock(ContactBinding value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAddOnHeaterBlock() => $_has(2);
  @$pb.TagNumber(3)
  void clearAddOnHeaterBlock() => $_clearField(3);
  @$pb.TagNumber(3)
  ContactBinding ensureAddOnHeaterBlock() => $_ensure(2);
}

enum HeatingCircuit_Distribution { radiator, floor, notSet }

/// One heating circuit of a plant. Supply temperature and its cap are per circuit.
class HeatingCircuit extends $pb.GeneratedMessage {
  factory HeatingCircuit({
    $core.String? circuitId,
    $core.String? plantId,
    $core.String? name,
    RadiatorCircuit? radiator,
    FloorCircuit? floor,
    $fixnum.Int64? revision,
  }) {
    final result = create();
    if (circuitId != null) result.circuitId = circuitId;
    if (plantId != null) result.plantId = plantId;
    if (name != null) result.name = name;
    if (radiator != null) result.radiator = radiator;
    if (floor != null) result.floor = floor;
    if (revision != null) result.revision = revision;
    return result;
  }

  HeatingCircuit._();

  factory HeatingCircuit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatingCircuit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, HeatingCircuit_Distribution>
      _HeatingCircuit_DistributionByTag = {
    4: HeatingCircuit_Distribution.radiator,
    5: HeatingCircuit_Distribution.floor,
    0: HeatingCircuit_Distribution.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatingCircuit',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..oo(0, [4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'circuitId')
    ..aOS(2, _omitFieldNames ? '' : 'plantId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOM<RadiatorCircuit>(4, _omitFieldNames ? '' : 'radiator',
        subBuilder: RadiatorCircuit.create)
    ..aOM<FloorCircuit>(5, _omitFieldNames ? '' : 'floor',
        subBuilder: FloorCircuit.create)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatingCircuit clone() => HeatingCircuit()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatingCircuit copyWith(void Function(HeatingCircuit) updates) =>
      super.copyWith((message) => updates(message as HeatingCircuit))
          as HeatingCircuit;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatingCircuit create() => HeatingCircuit._();
  @$core.override
  HeatingCircuit createEmptyInstance() => create();
  static $pb.PbList<HeatingCircuit> createRepeated() =>
      $pb.PbList<HeatingCircuit>();
  @$core.pragma('dart2js:noInline')
  static HeatingCircuit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatingCircuit>(create);
  static HeatingCircuit? _defaultInstance;

  HeatingCircuit_Distribution whichDistribution() =>
      _HeatingCircuit_DistributionByTag[$_whichOneof(0)]!;
  void clearDistribution() => $_clearField($_whichOneof(0));

  /// Assigned by the gateway, unique among heating records; empty when creating.
  @$pb.TagNumber(1)
  $core.String get circuitId => $_getSZ(0);
  @$pb.TagNumber(1)
  set circuitId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCircuitId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCircuitId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get plantId => $_getSZ(1);
  @$pb.TagNumber(2)
  set plantId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPlantId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlantId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  RadiatorCircuit get radiator => $_getN(3);
  @$pb.TagNumber(4)
  set radiator(RadiatorCircuit value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRadiator() => $_has(3);
  @$pb.TagNumber(4)
  void clearRadiator() => $_clearField(4);
  @$pb.TagNumber(4)
  RadiatorCircuit ensureRadiator() => $_ensure(3);

  @$pb.TagNumber(5)
  FloorCircuit get floor => $_getN(4);
  @$pb.TagNumber(5)
  set floor(FloorCircuit value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFloor() => $_has(4);
  @$pb.TagNumber(5)
  void clearFloor() => $_clearField(5);
  @$pb.TagNumber(5)
  FloorCircuit ensureFloor() => $_ensure(4);

  /// See the file comment.
  @$pb.TagNumber(6)
  $fixnum.Int64 get revision => $_getI64(5);
  @$pb.TagNumber(6)
  set revision($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRevision() => $_has(5);
  @$pb.TagNumber(6)
  void clearRevision() => $_clearField(6);
}

/// A radiator circuit. Its valves belong to the rooms (climate.v1.RoomClimate).
class RadiatorCircuit extends $pb.GeneratedMessage {
  factory RadiatorCircuit() => create();

  RadiatorCircuit._();

  factory RadiatorCircuit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadiatorCircuit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadiatorCircuit',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadiatorCircuit clone() => RadiatorCircuit()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadiatorCircuit copyWith(void Function(RadiatorCircuit) updates) =>
      super.copyWith((message) => updates(message as RadiatorCircuit))
          as RadiatorCircuit;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadiatorCircuit create() => RadiatorCircuit._();
  @$core.override
  RadiatorCircuit createEmptyInstance() => create();
  static $pb.PbList<RadiatorCircuit> createRepeated() =>
      $pb.PbList<RadiatorCircuit>();
  @$core.pragma('dart2js:noInline')
  static RadiatorCircuit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadiatorCircuit>(create);
  static RadiatorCircuit? _defaultInstance;
}

/// Hydronic floor heating: its own pump, mixing and supply cap, and the floor zones on its
/// manifold.
class FloorCircuit extends $pb.GeneratedMessage {
  factory FloorCircuit({
    $core.bool? mixingValve,
    $core.int? supplyCapCentidegrees,
    DeviceAttribute? supplyProbe,
    DeviceAttribute? returnProbe,
  }) {
    final result = create();
    if (mixingValve != null) result.mixingValve = mixingValve;
    if (supplyCapCentidegrees != null)
      result.supplyCapCentidegrees = supplyCapCentidegrees;
    if (supplyProbe != null) result.supplyProbe = supplyProbe;
    if (returnProbe != null) result.returnProbe = returnProbe;
    return result;
  }

  FloorCircuit._();

  factory FloorCircuit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloorCircuit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloorCircuit',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'mixingValve')
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'supplyCapCentidegrees', $pb.PbFieldType.OS3)
    ..aOM<DeviceAttribute>(3, _omitFieldNames ? '' : 'supplyProbe',
        subBuilder: DeviceAttribute.create)
    ..aOM<DeviceAttribute>(4, _omitFieldNames ? '' : 'returnProbe',
        subBuilder: DeviceAttribute.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloorCircuit clone() => FloorCircuit()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloorCircuit copyWith(void Function(FloorCircuit) updates) =>
      super.copyWith((message) => updates(message as FloorCircuit))
          as FloorCircuit;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloorCircuit create() => FloorCircuit._();
  @$core.override
  FloorCircuit createEmptyInstance() => create();
  static $pb.PbList<FloorCircuit> createRepeated() =>
      $pb.PbList<FloorCircuit>();
  @$core.pragma('dart2js:noInline')
  static FloorCircuit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloorCircuit>(create);
  static FloorCircuit? _defaultInstance;

  /// Whether a mixing valve feeds the circuit.
  @$pb.TagNumber(1)
  $core.bool get mixingValve => $_getBF(0);
  @$pb.TagNumber(1)
  set mixingValve($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMixingValve() => $_has(0);
  @$pb.TagNumber(1)
  void clearMixingValve() => $_clearField(1);

  /// The supply temperature its self-acting limiter caps it at, in centidegrees. Absent: not
  /// known, never 0 °C.
  @$pb.TagNumber(2)
  $core.int get supplyCapCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set supplyCapCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupplyCapCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupplyCapCentidegrees() => $_clearField(2);

  /// Probes on the supply (after mixing) and the return.
  @$pb.TagNumber(3)
  DeviceAttribute get supplyProbe => $_getN(2);
  @$pb.TagNumber(3)
  set supplyProbe(DeviceAttribute value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSupplyProbe() => $_has(2);
  @$pb.TagNumber(3)
  void clearSupplyProbe() => $_clearField(3);
  @$pb.TagNumber(3)
  DeviceAttribute ensureSupplyProbe() => $_ensure(2);

  @$pb.TagNumber(4)
  DeviceAttribute get returnProbe => $_getN(3);
  @$pb.TagNumber(4)
  set returnProbe(DeviceAttribute value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasReturnProbe() => $_has(3);
  @$pb.TagNumber(4)
  void clearReturnProbe() => $_clearField(4);
  @$pb.TagNumber(4)
  DeviceAttribute ensureReturnProbe() => $_ensure(3);
}

/// One loop or group of loops on a floor circuit's manifold, switched by one output on its
/// wiring centre's thermostat input. The output's contact closed means the zone heats, and it
/// rests closed: when the gateway is gone the zone heats, capped only by the circuit's supply
/// limiter.
class FloorZone extends $pb.GeneratedMessage {
  factory FloorZone({
    $core.String? zoneId,
    $core.String? circuitId,
    $core.String? name,
    ContactBinding? output,
    $core.Iterable<FloorZoneRoom>? rooms,
    $0.SpaceId? controlRoomId,
    $fixnum.Int64? revision,
  }) {
    final result = create();
    if (zoneId != null) result.zoneId = zoneId;
    if (circuitId != null) result.circuitId = circuitId;
    if (name != null) result.name = name;
    if (output != null) result.output = output;
    if (rooms != null) result.rooms.addAll(rooms);
    if (controlRoomId != null) result.controlRoomId = controlRoomId;
    if (revision != null) result.revision = revision;
    return result;
  }

  FloorZone._();

  factory FloorZone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloorZone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloorZone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'zoneId')
    ..aOS(2, _omitFieldNames ? '' : 'circuitId')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOM<ContactBinding>(4, _omitFieldNames ? '' : 'output',
        subBuilder: ContactBinding.create)
    ..pc<FloorZoneRoom>(5, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM,
        subBuilder: FloorZoneRoom.create)
    ..aOM<$0.SpaceId>(6, _omitFieldNames ? '' : 'controlRoomId',
        subBuilder: $0.SpaceId.create)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloorZone clone() => FloorZone()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloorZone copyWith(void Function(FloorZone) updates) =>
      super.copyWith((message) => updates(message as FloorZone)) as FloorZone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloorZone create() => FloorZone._();
  @$core.override
  FloorZone createEmptyInstance() => create();
  static $pb.PbList<FloorZone> createRepeated() => $pb.PbList<FloorZone>();
  @$core.pragma('dart2js:noInline')
  static FloorZone getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloorZone>(create);
  static FloorZone? _defaultInstance;

  /// Assigned by the gateway, unique among heating records; empty when creating.
  @$pb.TagNumber(1)
  $core.String get zoneId => $_getSZ(0);
  @$pb.TagNumber(1)
  set zoneId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasZoneId() => $_has(0);
  @$pb.TagNumber(1)
  void clearZoneId() => $_clearField(1);

  /// A FLOOR circuit.
  @$pb.TagNumber(2)
  $core.String get circuitId => $_getSZ(1);
  @$pb.TagNumber(2)
  set circuitId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCircuitId() => $_has(1);
  @$pb.TagNumber(2)
  void clearCircuitId() => $_clearField(2);

  /// As marked on the manifold or the drawing ("SL 2").
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  /// Where several zones share one device whose timer is device-wide (one delay for all its
  /// channels), the gateway renews the leases of all those zones in one go.
  @$pb.TagNumber(4)
  ContactBinding get output => $_getN(3);
  @$pb.TagNumber(4)
  set output(ContactBinding value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOutput() => $_has(3);
  @$pb.TagNumber(4)
  void clearOutput() => $_clearField(4);
  @$pb.TagNumber(4)
  ContactBinding ensureOutput() => $_ensure(3);

  /// The rooms the zone heats, each a room within its plant's space, listed once, with a
  /// share above 0 and shares summing to 1000. A zone may heat several rooms and a room may
  /// be heated by several zones.
  @$pb.TagNumber(5)
  $pb.PbList<FloorZoneRoom> get rooms => $_getList(4);

  /// One of rooms. Only its error, its sensor and its open window steer the zone.
  @$pb.TagNumber(6)
  $0.SpaceId get controlRoomId => $_getN(5);
  @$pb.TagNumber(6)
  set controlRoomId($0.SpaceId value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasControlRoomId() => $_has(5);
  @$pb.TagNumber(6)
  void clearControlRoomId() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.SpaceId ensureControlRoomId() => $_ensure(5);

  /// See the file comment.
  @$pb.TagNumber(7)
  $fixnum.Int64 get revision => $_getI64(6);
  @$pb.TagNumber(7)
  set revision($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRevision() => $_has(6);
  @$pb.TagNumber(7)
  void clearRevision() => $_clearField(7);
}

class FloorZoneRoom extends $pb.GeneratedMessage {
  factory FloorZoneRoom({
    $0.SpaceId? roomId,
    $core.int? areaSharePermille,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (areaSharePermille != null) result.areaSharePermille = areaSharePermille;
    return result;
  }

  FloorZoneRoom._();

  factory FloorZoneRoom.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FloorZoneRoom.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FloorZoneRoom',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'roomId',
        subBuilder: $0.SpaceId.create)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'areaSharePermille', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloorZoneRoom clone() => FloorZoneRoom()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FloorZoneRoom copyWith(void Function(FloorZoneRoom) updates) =>
      super.copyWith((message) => updates(message as FloorZoneRoom))
          as FloorZoneRoom;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FloorZoneRoom create() => FloorZoneRoom._();
  @$core.override
  FloorZoneRoom createEmptyInstance() => create();
  static $pb.PbList<FloorZoneRoom> createRepeated() =>
      $pb.PbList<FloorZoneRoom>();
  @$core.pragma('dart2js:noInline')
  static FloorZoneRoom getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FloorZoneRoom>(create);
  static FloorZoneRoom? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get roomId => $_getN(0);
  @$pb.TagNumber(1)
  set roomId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureRoomId() => $_ensure(0);

  /// This room's share of the zone's loop area, in thousandths.
  @$pb.TagNumber(2)
  $core.int get areaSharePermille => $_getIZ(1);
  @$pb.TagNumber(2)
  set areaSharePermille($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAreaSharePermille() => $_has(1);
  @$pb.TagNumber(2)
  void clearAreaSharePermille() => $_clearField(2);
}

/// An electric load kept warm for comfort rather than heating a room to a target — a heated
/// bathroom floor, a towel heater — run inside its time windows. Its output's contact closed
/// means the load may heat under its own thermostat, and it rests closed: when the gateway is
/// gone the load works as it did before.
class ComfortLoad extends $pb.GeneratedMessage {
  factory ComfortLoad({
    $core.String? comfortLoadId,
    $0.SpaceId? roomId,
    $core.String? name,
    ContactBinding? output,
    $core.Iterable<ComfortWindow>? windows,
    $fixnum.Int64? revision,
    $fixnum.Int64? windowsRevision,
    $core.bool? windowsWithheld,
  }) {
    final result = create();
    if (comfortLoadId != null) result.comfortLoadId = comfortLoadId;
    if (roomId != null) result.roomId = roomId;
    if (name != null) result.name = name;
    if (output != null) result.output = output;
    if (windows != null) result.windows.addAll(windows);
    if (revision != null) result.revision = revision;
    if (windowsRevision != null) result.windowsRevision = windowsRevision;
    if (windowsWithheld != null) result.windowsWithheld = windowsWithheld;
    return result;
  }

  ComfortLoad._();

  factory ComfortLoad.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComfortLoad.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComfortLoad',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'comfortLoadId')
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'roomId',
        subBuilder: $0.SpaceId.create)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOM<ContactBinding>(4, _omitFieldNames ? '' : 'output',
        subBuilder: ContactBinding.create)
    ..pc<ComfortWindow>(5, _omitFieldNames ? '' : 'windows', $pb.PbFieldType.PM,
        subBuilder: ComfortWindow.create)
    ..a<$fixnum.Int64>(
        6, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'windowsRevision', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(8, _omitFieldNames ? '' : 'windowsWithheld')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComfortLoad clone() => ComfortLoad()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComfortLoad copyWith(void Function(ComfortLoad) updates) =>
      super.copyWith((message) => updates(message as ComfortLoad))
          as ComfortLoad;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComfortLoad create() => ComfortLoad._();
  @$core.override
  ComfortLoad createEmptyInstance() => create();
  static $pb.PbList<ComfortLoad> createRepeated() => $pb.PbList<ComfortLoad>();
  @$core.pragma('dart2js:noInline')
  static ComfortLoad getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComfortLoad>(create);
  static ComfortLoad? _defaultInstance;

  /// Assigned by the gateway, unique among heating records; empty when creating.
  @$pb.TagNumber(1)
  $core.String get comfortLoadId => $_getSZ(0);
  @$pb.TagNumber(1)
  set comfortLoadId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasComfortLoadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComfortLoadId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.SpaceId get roomId => $_getN(1);
  @$pb.TagNumber(2)
  set roomId($0.SpaceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRoomId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoomId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.SpaceId ensureRoomId() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  ContactBinding get output => $_getN(3);
  @$pb.TagNumber(4)
  set output(ContactBinding value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOutput() => $_has(3);
  @$pb.TagNumber(4)
  void clearOutput() => $_clearField(4);
  @$pb.TagNumber(4)
  ContactBinding ensureOutput() => $_ensure(3);

  /// When the load may heat: the union of its windows, at most 16. Empty: only when the
  /// plan allows it for price. Set with SetComfortWindows, never in a put, which keeps them.
  /// While the building's time zone is not known (space.v1.Space.time_zone unset) no window
  /// applies and the load is left at rest, heating under its own thermostat.
  @$pb.TagNumber(5)
  $pb.PbList<ComfortWindow> get windows => $_getList(4);

  /// See the file comment.
  @$pb.TagNumber(6)
  $fixnum.Int64 get revision => $_getI64(5);
  @$pb.TagNumber(6)
  set revision($fixnum.Int64 value) => $_setInt64(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRevision() => $_has(5);
  @$pb.TagNumber(6)
  void clearRevision() => $_clearField(6);

  /// Set by the gateway and bumped by every SetComfortWindows; see SetComfortWindows.
  @$pb.TagNumber(7)
  $fixnum.Int64 get windowsRevision => $_getI64(6);
  @$pb.TagNumber(7)
  set windowsRevision($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasWindowsRevision() => $_has(6);
  @$pb.TagNumber(7)
  void clearWindowsRevision() => $_clearField(7);

  /// Set when windows is left out for the recipient — an installer under a commissioning
  /// grant — so that an empty list is not read as "only when the plan allows it for price".
  @$pb.TagNumber(8)
  $core.bool get windowsWithheld => $_getBF(7);
  @$pb.TagNumber(8)
  set windowsWithheld($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWindowsWithheld() => $_has(7);
  @$pb.TagNumber(8)
  void clearWindowsWithheld() => $_clearField(8);
}

/// A recurring stretch of the building's local day (space.v1.Space.time_zone).
class ComfortWindow extends $pb.GeneratedMessage {
  factory ComfortWindow({
    $core.int? weekdays,
    $core.int? startMinute,
    $core.int? endMinute,
  }) {
    final result = create();
    if (weekdays != null) result.weekdays = weekdays;
    if (startMinute != null) result.startMinute = startMinute;
    if (endMinute != null) result.endMinute = endMinute;
    return result;
  }

  ComfortWindow._();

  factory ComfortWindow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComfortWindow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComfortWindow',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'weekdays', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'startMinute', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'endMinute', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComfortWindow clone() => ComfortWindow()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComfortWindow copyWith(void Function(ComfortWindow) updates) =>
      super.copyWith((message) => updates(message as ComfortWindow))
          as ComfortWindow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComfortWindow create() => ComfortWindow._();
  @$core.override
  ComfortWindow createEmptyInstance() => create();
  static $pb.PbList<ComfortWindow> createRepeated() =>
      $pb.PbList<ComfortWindow>();
  @$core.pragma('dart2js:noInline')
  static ComfortWindow getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComfortWindow>(create);
  static ComfortWindow? _defaultInstance;

  /// The days it starts on: bit 0 Monday through bit 6 Sunday, at least one, no higher bit.
  /// Not Matter's day bitmap, which starts on Sunday.
  @$pb.TagNumber(1)
  $core.int get weekdays => $_getIZ(0);
  @$pb.TagNumber(1)
  set weekdays($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWeekdays() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeekdays() => $_clearField(1);

  /// Minutes after local midnight: start 0–1439, end 1–1440 and exclusive, never equal, so 0
  /// to 1440 is a whole day. A window whose end is before its start runs past midnight into
  /// the next day.
  ///
  /// On a day that changes to or from daylight saving, minutes are local wall-clock time: a
  /// start or end in the skipped hour falls at the first minute after it, and a repeated
  /// hour counts once, at its first occurrence.
  @$pb.TagNumber(2)
  $core.int get startMinute => $_getIZ(1);
  @$pb.TagNumber(2)
  set startMinute($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStartMinute() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartMinute() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get endMinute => $_getIZ(2);
  @$pb.TagNumber(3)
  set endMinute($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndMinute() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndMinute() => $_clearField(3);
}

/// The heating records a caller may see under a space, in reply to ListHeating.
class HeatingLayout extends $pb.GeneratedMessage {
  factory HeatingLayout({
    $core.Iterable<HeatingPlant>? plants,
    $core.Iterable<HeatingCircuit>? circuits,
    $core.Iterable<FloorZone>? floorZones,
    $core.Iterable<ComfortLoad>? comfortLoads,
  }) {
    final result = create();
    if (plants != null) result.plants.addAll(plants);
    if (circuits != null) result.circuits.addAll(circuits);
    if (floorZones != null) result.floorZones.addAll(floorZones);
    if (comfortLoads != null) result.comfortLoads.addAll(comfortLoads);
    return result;
  }

  HeatingLayout._();

  factory HeatingLayout.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatingLayout.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatingLayout',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..pc<HeatingPlant>(1, _omitFieldNames ? '' : 'plants', $pb.PbFieldType.PM,
        subBuilder: HeatingPlant.create)
    ..pc<HeatingCircuit>(
        2, _omitFieldNames ? '' : 'circuits', $pb.PbFieldType.PM,
        subBuilder: HeatingCircuit.create)
    ..pc<FloorZone>(3, _omitFieldNames ? '' : 'floorZones', $pb.PbFieldType.PM,
        subBuilder: FloorZone.create)
    ..pc<ComfortLoad>(
        4, _omitFieldNames ? '' : 'comfortLoads', $pb.PbFieldType.PM,
        subBuilder: ComfortLoad.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatingLayout clone() => HeatingLayout()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatingLayout copyWith(void Function(HeatingLayout) updates) =>
      super.copyWith((message) => updates(message as HeatingLayout))
          as HeatingLayout;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatingLayout create() => HeatingLayout._();
  @$core.override
  HeatingLayout createEmptyInstance() => create();
  static $pb.PbList<HeatingLayout> createRepeated() =>
      $pb.PbList<HeatingLayout>();
  @$core.pragma('dart2js:noInline')
  static HeatingLayout getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatingLayout>(create);
  static HeatingLayout? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<HeatingPlant> get plants => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<HeatingCircuit> get circuits => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<FloorZone> get floorZones => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<ComfortLoad> get comfortLoads => $_getList(3);
}

enum HeatingRecord_Record { plant, circuit, floorZone, comfortLoad, notSet }

/// One heating record as stored, in reply to a put.
class HeatingRecord extends $pb.GeneratedMessage {
  factory HeatingRecord({
    HeatingPlant? plant,
    HeatingCircuit? circuit,
    FloorZone? floorZone,
    ComfortLoad? comfortLoad,
  }) {
    final result = create();
    if (plant != null) result.plant = plant;
    if (circuit != null) result.circuit = circuit;
    if (floorZone != null) result.floorZone = floorZone;
    if (comfortLoad != null) result.comfortLoad = comfortLoad;
    return result;
  }

  HeatingRecord._();

  factory HeatingRecord.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatingRecord.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, HeatingRecord_Record>
      _HeatingRecord_RecordByTag = {
    1: HeatingRecord_Record.plant,
    2: HeatingRecord_Record.circuit,
    3: HeatingRecord_Record.floorZone,
    4: HeatingRecord_Record.comfortLoad,
    0: HeatingRecord_Record.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatingRecord',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<HeatingPlant>(1, _omitFieldNames ? '' : 'plant',
        subBuilder: HeatingPlant.create)
    ..aOM<HeatingCircuit>(2, _omitFieldNames ? '' : 'circuit',
        subBuilder: HeatingCircuit.create)
    ..aOM<FloorZone>(3, _omitFieldNames ? '' : 'floorZone',
        subBuilder: FloorZone.create)
    ..aOM<ComfortLoad>(4, _omitFieldNames ? '' : 'comfortLoad',
        subBuilder: ComfortLoad.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatingRecord clone() => HeatingRecord()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatingRecord copyWith(void Function(HeatingRecord) updates) =>
      super.copyWith((message) => updates(message as HeatingRecord))
          as HeatingRecord;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatingRecord create() => HeatingRecord._();
  @$core.override
  HeatingRecord createEmptyInstance() => create();
  static $pb.PbList<HeatingRecord> createRepeated() =>
      $pb.PbList<HeatingRecord>();
  @$core.pragma('dart2js:noInline')
  static HeatingRecord getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatingRecord>(create);
  static HeatingRecord? _defaultInstance;

  HeatingRecord_Record whichRecord() =>
      _HeatingRecord_RecordByTag[$_whichOneof(0)]!;
  void clearRecord() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  HeatingPlant get plant => $_getN(0);
  @$pb.TagNumber(1)
  set plant(HeatingPlant value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPlant() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlant() => $_clearField(1);
  @$pb.TagNumber(1)
  HeatingPlant ensurePlant() => $_ensure(0);

  @$pb.TagNumber(2)
  HeatingCircuit get circuit => $_getN(1);
  @$pb.TagNumber(2)
  set circuit(HeatingCircuit value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCircuit() => $_has(1);
  @$pb.TagNumber(2)
  void clearCircuit() => $_clearField(2);
  @$pb.TagNumber(2)
  HeatingCircuit ensureCircuit() => $_ensure(1);

  @$pb.TagNumber(3)
  FloorZone get floorZone => $_getN(2);
  @$pb.TagNumber(3)
  set floorZone(FloorZone value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFloorZone() => $_has(2);
  @$pb.TagNumber(3)
  void clearFloorZone() => $_clearField(3);
  @$pb.TagNumber(3)
  FloorZone ensureFloorZone() => $_ensure(2);

  @$pb.TagNumber(4)
  ComfortLoad get comfortLoad => $_getN(3);
  @$pb.TagNumber(4)
  set comfortLoad(ComfortLoad value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasComfortLoad() => $_has(3);
  @$pb.TagNumber(4)
  void clearComfortLoad() => $_clearField(4);
  @$pb.TagNumber(4)
  ComfortLoad ensureComfortLoad() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
