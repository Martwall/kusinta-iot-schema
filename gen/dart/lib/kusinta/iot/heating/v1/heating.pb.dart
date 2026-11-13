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

import '../../../../google/protobuf/timestamp.pb.dart' as $3;
import '../../access/v1/acl.pb.dart' as $1;
import '../../access/v1/roles.pbenum.dart' as $4;
import '../../climate/v1/climate.pbenum.dart' as $5;
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
    $core.Iterable<PriceRuleChange>? priceRules,
    $fixnum.Int64? priceRulesRevision,
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
    if (priceRules != null) result.priceRules.addAll(priceRules);
    if (priceRulesRevision != null)
      result.priceRulesRevision = priceRulesRevision;
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
    ..pc<PriceRuleChange>(
        9, _omitFieldNames ? '' : 'priceRules', $pb.PbFieldType.PM,
        subBuilder: PriceRuleChange.create)
    ..a<$fixnum.Int64>(
        10, _omitFieldNames ? '' : 'priceRulesRevision', $pb.PbFieldType.OU6,
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
  /// hot-water state — when it has one; its temperatures are the device's
  /// device.v1.HeatSourceReadings. Read only: the gateway drives a heat source through the
  /// plant's control, never through this device.
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

  /// Every price rule the gateway runs for this plant, each once, with its mode as it stands:
  /// the latest change of each (PriceRuleChange), OFF included. A rule not listed is one the
  /// gateway does not run for this plant, and a client offers no switch for it. A rule whose mode
  /// was never set is listed OFF, with at, set_by_role and set_by unset.
  ///
  /// Read-only: set with webrtc.v1.SetPriceRuleMode, never in a put, which keeps them and ignores
  /// them, and does not bump revision. Sent to whoever is given the plant, set_by as
  /// PriceRuleChange says. An app tells a gateway that predates price rules by an empty list with
  /// price_rules_revision 0, and offers no switch.
  @$pb.TagNumber(9)
  $pb.PbList<PriceRuleChange> get priceRules => $_getList(8);

  /// Set by the gateway and bumped by every change of price_rules; see webrtc.v1.SetPriceRuleMode.
  @$pb.TagNumber(10)
  $fixnum.Int64 get priceRulesRevision => $_getI64(9);
  @$pb.TagNumber(10)
  set priceRulesRevision($fixnum.Int64 value) => $_setInt64(9, value);
  @$pb.TagNumber(10)
  $core.bool hasPriceRulesRevision() => $_has(9);
  @$pb.TagNumber(10)
  void clearPriceRulesRevision() => $_clearField(10);
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

  /// Probes on the supply (after mixing) and the return. Each names the Matter Temperature
  /// Measurement cluster's MeasuredValue (cluster 0x0402, attribute 0x0000, in centidegrees) on
  /// the probe's endpoint; a put naming any other attribute, or a vendor parameter, is refused as
  /// INVALID_REQUEST, so that every reading of a probe is a temperature in one unit.
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
    $3.Timestamp? uncontrolledSince,
    $0.UserId? uncontrolledBy,
  }) {
    final result = create();
    if (zoneId != null) result.zoneId = zoneId;
    if (circuitId != null) result.circuitId = circuitId;
    if (name != null) result.name = name;
    if (output != null) result.output = output;
    if (rooms != null) result.rooms.addAll(rooms);
    if (controlRoomId != null) result.controlRoomId = controlRoomId;
    if (revision != null) result.revision = revision;
    if (uncontrolledSince != null) result.uncontrolledSince = uncontrolledSince;
    if (uncontrolledBy != null) result.uncontrolledBy = uncontrolledBy;
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
    ..aOM<$3.Timestamp>(8, _omitFieldNames ? '' : 'uncontrolledSince',
        subBuilder: $3.Timestamp.create)
    ..aOM<$0.UserId>(9, _omitFieldNames ? '' : 'uncontrolledBy',
        subBuilder: $0.UserId.create)
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
  /// be heated by several zones. A put names at least one; empty only for a zone whose rooms
  /// were all deleted, which is uncontrolled (see the file comment, UNCONTROLLED ZONES).
  @$pb.TagNumber(5)
  $pb.PbList<FloorZoneRoom> get rooms => $_getList(4);

  /// One of rooms. Only its error, its sensor and its open window steer the zone. A put names
  /// one; unset only once a deletion cleared it, and always while rooms is empty. A zone
  /// without one is uncontrolled (see the file comment, UNCONTROLLED ZONES).
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

  /// While the zone is uncontrolled — no room, or no control room (see the file comment,
  /// UNCONTROLLED ZONES): since when it has been so, and the user whose change left it so — the
  /// deletion of its control room or its last room; uncontrolled_by is unset where no user's
  /// change did. Both unset while the zone is controlled. Read-only: set by the gateway, ignored
  /// in a put. A put that names a control room among its rooms ends it.
  ///
  /// uncontrolled_by is erased at the home's wipe with the record of who did what in the home
  /// (webrtc.v1 household.proto, WIPE); uncontrolled_since stays with the zone, which describes
  /// the house.
  ///
  /// For a home's zone — one left uncontrolled stays whose it was — sent only to the home's
  /// household admins (access.v1.MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN) and an installer under a
  /// commissioning grant on the home, and unset for the home's other residents; never sent to
  /// service. Unset, too, when it dates from before the recipient's current residency in the
  /// home, or from a home they did not live in at the time (see access.v1.MembershipRelation).
  /// While the home is empty (webrtc.v1 household.proto, EMPTY HOME), the property owner and the
  /// gateway administrators who reach it are sent uncontrolled_since, never uncontrolled_by (see
  /// the file comment).
  /// For a zone outside homes, sent to whoever is given the zone. That rooms is empty, or
  /// control_room_id unset, is what says the zone is uncontrolled; these say only since when
  /// and by whom, where the recipient is given them.
  @$pb.TagNumber(8)
  $3.Timestamp get uncontrolledSince => $_getN(7);
  @$pb.TagNumber(8)
  set uncontrolledSince($3.Timestamp value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasUncontrolledSince() => $_has(7);
  @$pb.TagNumber(8)
  void clearUncontrolledSince() => $_clearField(8);
  @$pb.TagNumber(8)
  $3.Timestamp ensureUncontrolledSince() => $_ensure(7);

  @$pb.TagNumber(9)
  $0.UserId get uncontrolledBy => $_getN(8);
  @$pb.TagNumber(9)
  set uncontrolledBy($0.UserId value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasUncontrolledBy() => $_has(8);
  @$pb.TagNumber(9)
  void clearUncontrolledBy() => $_clearField(9);
  @$pb.TagNumber(9)
  $0.UserId ensureUncontrolledBy() => $_ensure(8);
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

/// One change of a price rule's mode on a plant (PRICE RULES, WHO SWITCHES THEM); as
/// HeatingPlant.price_rules, the mode the latest change left the rule in.
class PriceRuleChange extends $pb.GeneratedMessage {
  factory PriceRuleChange({
    PriceRule? rule,
    PriceRuleMode? mode,
    PriceRuleMode? previousMode,
    $3.Timestamp? at,
    $4.Role? setByRole,
    $0.UserId? setBy,
  }) {
    final result = create();
    if (rule != null) result.rule = rule;
    if (mode != null) result.mode = mode;
    if (previousMode != null) result.previousMode = previousMode;
    if (at != null) result.at = at;
    if (setByRole != null) result.setByRole = setByRole;
    if (setBy != null) result.setBy = setBy;
    return result;
  }

  PriceRuleChange._();

  factory PriceRuleChange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PriceRuleChange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PriceRuleChange',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..e<PriceRule>(1, _omitFieldNames ? '' : 'rule', $pb.PbFieldType.OE,
        defaultOrMaker: PriceRule.PRICE_RULE_UNSPECIFIED,
        valueOf: PriceRule.valueOf,
        enumValues: PriceRule.values)
    ..e<PriceRuleMode>(2, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE,
        defaultOrMaker: PriceRuleMode.PRICE_RULE_MODE_UNSPECIFIED,
        valueOf: PriceRuleMode.valueOf,
        enumValues: PriceRuleMode.values)
    ..e<PriceRuleMode>(
        3, _omitFieldNames ? '' : 'previousMode', $pb.PbFieldType.OE,
        defaultOrMaker: PriceRuleMode.PRICE_RULE_MODE_UNSPECIFIED,
        valueOf: PriceRuleMode.valueOf,
        enumValues: PriceRuleMode.values)
    ..aOM<$3.Timestamp>(4, _omitFieldNames ? '' : 'at',
        subBuilder: $3.Timestamp.create)
    ..e<$4.Role>(5, _omitFieldNames ? '' : 'setByRole', $pb.PbFieldType.OE,
        defaultOrMaker: $4.Role.ROLE_UNSPECIFIED,
        valueOf: $4.Role.valueOf,
        enumValues: $4.Role.values)
    ..aOM<$0.UserId>(6, _omitFieldNames ? '' : 'setBy',
        subBuilder: $0.UserId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PriceRuleChange clone() => PriceRuleChange()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PriceRuleChange copyWith(void Function(PriceRuleChange) updates) =>
      super.copyWith((message) => updates(message as PriceRuleChange))
          as PriceRuleChange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriceRuleChange create() => PriceRuleChange._();
  @$core.override
  PriceRuleChange createEmptyInstance() => create();
  static $pb.PbList<PriceRuleChange> createRepeated() =>
      $pb.PbList<PriceRuleChange>();
  @$core.pragma('dart2js:noInline')
  static PriceRuleChange getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PriceRuleChange>(create);
  static PriceRuleChange? _defaultInstance;

  @$pb.TagNumber(1)
  PriceRule get rule => $_getN(0);
  @$pb.TagNumber(1)
  set rule(PriceRule value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRule() => $_has(0);
  @$pb.TagNumber(1)
  void clearRule() => $_clearField(1);

  /// The mode it set, and the mode before it: OFF before a rule's first change.
  @$pb.TagNumber(2)
  PriceRuleMode get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(PriceRuleMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => $_clearField(2);

  @$pb.TagNumber(3)
  PriceRuleMode get previousMode => $_getN(2);
  @$pb.TagNumber(3)
  set previousMode(PriceRuleMode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPreviousMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearPreviousMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $3.Timestamp get at => $_getN(3);
  @$pb.TagNumber(4)
  set at($3.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureAt() => $_ensure(3);

  /// The role its setter acted in: ROLE_RESIDENT for a household admin of the home,
  /// ROLE_TECHNICIAN for an installer under a commissioning grant, otherwise ROLE_PROPERTY_OWNER
  /// where they hold it, else ROLE_GATEWAY_ADMIN. UNSPECIFIED, with set_by unset, for a change the
  /// gateway made itself: a home's wipe taking a LIVE rule back to SHADOW (webrtc.v1
  /// household.proto, WIPE).
  @$pb.TagNumber(5)
  $4.Role get setByRole => $_getN(4);
  @$pb.TagNumber(5)
  set setByRole($4.Role value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSetByRole() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetByRole() => $_clearField(5);

  /// Who set it. For a plant in a home, given to its residents, and unset when it dates from
  /// before their current residency; to an installer, only on a change of their own. For a plant
  /// outside homes, given to the property owner and the gateway administrators. Unset to anyone
  /// else, set_by_role kept.
  @$pb.TagNumber(6)
  $0.UserId get setBy => $_getN(5);
  @$pb.TagNumber(6)
  set setBy($0.UserId value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSetBy() => $_has(5);
  @$pb.TagNumber(6)
  void clearSetBy() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.UserId ensureSetBy() => $_ensure(5);
}

/// One heat block (HEAT BLOCKS).
class HeatBlock extends $pb.GeneratedMessage {
  factory HeatBlock({
    $core.String? blockId,
    PriceRule? rule,
    PriceRuleMode? mode,
    $5.ClimateExplanationKind? reason,
    $3.Timestamp? startedAt,
    $3.Timestamp? plannedEndAt,
    $3.Timestamp? endedAt,
    HeatBlockEnd? end,
  }) {
    final result = create();
    if (blockId != null) result.blockId = blockId;
    if (rule != null) result.rule = rule;
    if (mode != null) result.mode = mode;
    if (reason != null) result.reason = reason;
    if (startedAt != null) result.startedAt = startedAt;
    if (plannedEndAt != null) result.plannedEndAt = plannedEndAt;
    if (endedAt != null) result.endedAt = endedAt;
    if (end != null) result.end = end;
    return result;
  }

  HeatBlock._();

  factory HeatBlock.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatBlock.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatBlock',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'blockId')
    ..e<PriceRule>(2, _omitFieldNames ? '' : 'rule', $pb.PbFieldType.OE,
        defaultOrMaker: PriceRule.PRICE_RULE_UNSPECIFIED,
        valueOf: PriceRule.valueOf,
        enumValues: PriceRule.values)
    ..e<PriceRuleMode>(3, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE,
        defaultOrMaker: PriceRuleMode.PRICE_RULE_MODE_UNSPECIFIED,
        valueOf: PriceRuleMode.valueOf,
        enumValues: PriceRuleMode.values)
    ..e<$5.ClimateExplanationKind>(
        4, _omitFieldNames ? '' : 'reason', $pb.PbFieldType.OE,
        defaultOrMaker:
            $5.ClimateExplanationKind.CLIMATE_EXPLANATION_KIND_UNSPECIFIED,
        valueOf: $5.ClimateExplanationKind.valueOf,
        enumValues: $5.ClimateExplanationKind.values)
    ..aOM<$3.Timestamp>(5, _omitFieldNames ? '' : 'startedAt',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(6, _omitFieldNames ? '' : 'plannedEndAt',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(7, _omitFieldNames ? '' : 'endedAt',
        subBuilder: $3.Timestamp.create)
    ..e<HeatBlockEnd>(8, _omitFieldNames ? '' : 'end', $pb.PbFieldType.OE,
        defaultOrMaker: HeatBlockEnd.HEAT_BLOCK_END_UNSPECIFIED,
        valueOf: HeatBlockEnd.valueOf,
        enumValues: HeatBlockEnd.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatBlock clone() => HeatBlock()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatBlock copyWith(void Function(HeatBlock) updates) =>
      super.copyWith((message) => updates(message as HeatBlock)) as HeatBlock;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatBlock create() => HeatBlock._();
  @$core.override
  HeatBlock createEmptyInstance() => create();
  static $pb.PbList<HeatBlock> createRepeated() => $pb.PbList<HeatBlock>();
  @$core.pragma('dart2js:noInline')
  static HeatBlock getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeatBlock>(create);
  static HeatBlock? _defaultInstance;

  /// Assigned by the gateway, opaque.
  @$pb.TagNumber(1)
  $core.String get blockId => $_getSZ(0);
  @$pb.TagNumber(1)
  set blockId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBlockId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockId() => $_clearField(1);

  /// The rule that started it, and its mode then: LIVE held the input, SHADOW only decided to.
  @$pb.TagNumber(2)
  PriceRule get rule => $_getN(1);
  @$pb.TagNumber(2)
  set rule(PriceRule value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRule() => $_has(1);
  @$pb.TagNumber(2)
  void clearRule() => $_clearField(2);

  @$pb.TagNumber(3)
  PriceRuleMode get mode => $_getN(2);
  @$pb.TagNumber(3)
  set mode(PriceRuleMode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMode() => $_clearField(3);

  /// Why it started, as a room's explanation names the cause (climate.v1.ClimateExplanationKind;
  /// subject ADD_ON_HEATER for the add-on heater): PRICE_HIGH for dear hours. A kind the client
  /// does not know is shown as a block without a cause.
  @$pb.TagNumber(4)
  $5.ClimateExplanationKind get reason => $_getN(3);
  @$pb.TagNumber(4)
  set reason($5.ClimateExplanationKind value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => $_clearField(4);

  @$pb.TagNumber(5)
  $3.Timestamp get startedAt => $_getN(4);
  @$pb.TagNumber(5)
  set startedAt($3.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasStartedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearStartedAt() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.Timestamp ensureStartedAt() => $_ensure(4);

  /// The end its rule planned for it, within "plant.max_block_minutes".
  @$pb.TagNumber(6)
  $3.Timestamp get plannedEndAt => $_getN(5);
  @$pb.TagNumber(6)
  set plannedEndAt($3.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPlannedEndAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlannedEndAt() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.Timestamp ensurePlannedEndAt() => $_ensure(5);

  /// When it ended, and how. Both unset while it is under way.
  @$pb.TagNumber(7)
  $3.Timestamp get endedAt => $_getN(6);
  @$pb.TagNumber(7)
  set endedAt($3.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasEndedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndedAt() => $_clearField(7);
  @$pb.TagNumber(7)
  $3.Timestamp ensureEndedAt() => $_ensure(6);

  @$pb.TagNumber(8)
  HeatBlockEnd get end => $_getN(7);
  @$pb.TagNumber(8)
  set end(HeatBlockEnd value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasEnd() => $_has(7);
  @$pb.TagNumber(8)
  void clearEnd() => $_clearField(8);
}

/// One release of a plant's blocks by hand (webrtc.v1.ReleaseHeatBlock), and the hold it set.
class HeatBlockRelease extends $pb.GeneratedMessage {
  factory HeatBlockRelease({
    $3.Timestamp? at,
    $3.Timestamp? holdUntil,
    $core.Iterable<$core.String>? endedBlockIds,
    $4.Role? setByRole,
    $0.UserId? setBy,
  }) {
    final result = create();
    if (at != null) result.at = at;
    if (holdUntil != null) result.holdUntil = holdUntil;
    if (endedBlockIds != null) result.endedBlockIds.addAll(endedBlockIds);
    if (setByRole != null) result.setByRole = setByRole;
    if (setBy != null) result.setBy = setBy;
    return result;
  }

  HeatBlockRelease._();

  factory HeatBlockRelease.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatBlockRelease.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatBlockRelease',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOM<$3.Timestamp>(1, _omitFieldNames ? '' : 'at',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(2, _omitFieldNames ? '' : 'holdUntil',
        subBuilder: $3.Timestamp.create)
    ..pPS(3, _omitFieldNames ? '' : 'endedBlockIds')
    ..e<$4.Role>(4, _omitFieldNames ? '' : 'setByRole', $pb.PbFieldType.OE,
        defaultOrMaker: $4.Role.ROLE_UNSPECIFIED,
        valueOf: $4.Role.valueOf,
        enumValues: $4.Role.values)
    ..aOM<$0.UserId>(5, _omitFieldNames ? '' : 'setBy',
        subBuilder: $0.UserId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatBlockRelease clone() => HeatBlockRelease()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatBlockRelease copyWith(void Function(HeatBlockRelease) updates) =>
      super.copyWith((message) => updates(message as HeatBlockRelease))
          as HeatBlockRelease;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatBlockRelease create() => HeatBlockRelease._();
  @$core.override
  HeatBlockRelease createEmptyInstance() => create();
  static $pb.PbList<HeatBlockRelease> createRepeated() =>
      $pb.PbList<HeatBlockRelease>();
  @$core.pragma('dart2js:noInline')
  static HeatBlockRelease getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatBlockRelease>(create);
  static HeatBlockRelease? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Timestamp get at => $_getN(0);
  @$pb.TagNumber(1)
  set at($3.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearAt() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Timestamp ensureAt() => $_ensure(0);

  /// Until when the plant's blocking rules start no LIVE block. Unset: the release ended a hold
  /// early, and blocks may start again as the rules plan them.
  @$pb.TagNumber(2)
  $3.Timestamp get holdUntil => $_getN(1);
  @$pb.TagNumber(2)
  set holdUntil($3.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasHoldUntil() => $_has(1);
  @$pb.TagNumber(2)
  void clearHoldUntil() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureHoldUntil() => $_ensure(1);

  /// The blocks under way that it ended (HeatBlock.block_id).
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get endedBlockIds => $_getList(2);

  /// The role its maker acted in — ROLE_RESIDENT on a plant in a home; ROLE_PROPERTY_OWNER,
  /// ROLE_GATEWAY_ADMIN or ROLE_TECHNICIAN on one outside homes — and who they are, given as
  /// PriceRuleChange.set_by is.
  @$pb.TagNumber(4)
  $4.Role get setByRole => $_getN(3);
  @$pb.TagNumber(4)
  set setByRole($4.Role value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSetByRole() => $_has(3);
  @$pb.TagNumber(4)
  void clearSetByRole() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.UserId get setBy => $_getN(4);
  @$pb.TagNumber(5)
  set setBy($0.UserId value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSetBy() => $_has(4);
  @$pb.TagNumber(5)
  void clearSetBy() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.UserId ensureSetBy() => $_ensure(4);
}

/// A plant's blocks as they stand now: what is blocked, by which rule and why, and the hold a
/// release set. Given as WHO SEES THEM says, in reply to webrtc.v1.ListHeatBlockStatus and
/// webrtc.v1.ReleaseHeatBlock, and pushed (webrtc.v1 GatewayMessage.heat_block_status) to the
/// sessions given it whenever a block starts or ends, or a hold begins, changes or ends. Apply as
/// an upsert keyed on plant_id.
class HeatBlockStatus extends $pb.GeneratedMessage {
  factory HeatBlockStatus({
    $core.String? plantId,
    $0.SpaceId? spaceId,
    $core.String? plantName,
    $core.Iterable<HeatBlock>? current,
    HeatBlockRelease? hold,
    $core.Iterable<PriceRuleChange>? priceRules,
  }) {
    final result = create();
    if (plantId != null) result.plantId = plantId;
    if (spaceId != null) result.spaceId = spaceId;
    if (plantName != null) result.plantName = plantName;
    if (current != null) result.current.addAll(current);
    if (hold != null) result.hold = hold;
    if (priceRules != null) result.priceRules.addAll(priceRules);
    return result;
  }

  HeatBlockStatus._();

  factory HeatBlockStatus.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatBlockStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatBlockStatus',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'plantId')
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..aOS(3, _omitFieldNames ? '' : 'plantName')
    ..pc<HeatBlock>(4, _omitFieldNames ? '' : 'current', $pb.PbFieldType.PM,
        subBuilder: HeatBlock.create)
    ..aOM<HeatBlockRelease>(5, _omitFieldNames ? '' : 'hold',
        subBuilder: HeatBlockRelease.create)
    ..pc<PriceRuleChange>(
        6, _omitFieldNames ? '' : 'priceRules', $pb.PbFieldType.PM,
        subBuilder: PriceRuleChange.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatBlockStatus clone() => HeatBlockStatus()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatBlockStatus copyWith(void Function(HeatBlockStatus) updates) =>
      super.copyWith((message) => updates(message as HeatBlockStatus))
          as HeatBlockStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatBlockStatus create() => HeatBlockStatus._();
  @$core.override
  HeatBlockStatus createEmptyInstance() => create();
  static $pb.PbList<HeatBlockStatus> createRepeated() =>
      $pb.PbList<HeatBlockStatus>();
  @$core.pragma('dart2js:noInline')
  static HeatBlockStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatBlockStatus>(create);
  static HeatBlockStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get plantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set plantId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPlantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlantId() => $_clearField(1);

  /// The plant's space and name, so that a technician who is not given the plant record knows
  /// which plant it is.
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
  $core.String get plantName => $_getSZ(2);
  @$pb.TagNumber(3)
  set plantName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPlantName() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlantName() => $_clearField(3);

  /// The blocks under way, LIVE and SHADOW, at most one per rule and mode. Empty: none.
  @$pb.TagNumber(4)
  $pb.PbList<HeatBlock> get current => $_getList(3);

  /// The release whose hold runs now. Unset: none.
  @$pb.TagNumber(5)
  HeatBlockRelease get hold => $_getN(4);
  @$pb.TagNumber(5)
  set hold(HeatBlockRelease value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasHold() => $_has(4);
  @$pb.TagNumber(5)
  void clearHold() => $_clearField(5);
  @$pb.TagNumber(5)
  HeatBlockRelease ensureHold() => $_ensure(4);

  /// The plant's rules and their modes, as HeatingPlant.price_rules, so that whoever may release
  /// a block is told whether a rule is LIVE.
  @$pb.TagNumber(6)
  $pb.PbList<PriceRuleChange> get priceRules => $_getList(5);
}

/// The answer to webrtc.v1.ListHeatBlockStatus.
class HeatBlockStatuses extends $pb.GeneratedMessage {
  factory HeatBlockStatuses({
    $core.Iterable<HeatBlockStatus>? statuses,
  }) {
    final result = create();
    if (statuses != null) result.statuses.addAll(statuses);
    return result;
  }

  HeatBlockStatuses._();

  factory HeatBlockStatuses.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatBlockStatuses.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatBlockStatuses',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..pc<HeatBlockStatus>(
        1, _omitFieldNames ? '' : 'statuses', $pb.PbFieldType.PM,
        subBuilder: HeatBlockStatus.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatBlockStatuses clone() => HeatBlockStatuses()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatBlockStatuses copyWith(void Function(HeatBlockStatuses) updates) =>
      super.copyWith((message) => updates(message as HeatBlockStatuses))
          as HeatBlockStatuses;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatBlockStatuses create() => HeatBlockStatuses._();
  @$core.override
  HeatBlockStatuses createEmptyInstance() => create();
  static $pb.PbList<HeatBlockStatuses> createRepeated() =>
      $pb.PbList<HeatBlockStatuses>();
  @$core.pragma('dart2js:noInline')
  static HeatBlockStatuses getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatBlockStatuses>(create);
  static HeatBlockStatuses? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<HeatBlockStatus> get statuses => $_getList(0);
}

/// A plant's blocks, releases and changes of mode over a range, in reply to
/// webrtc.v1.GetHeatBlockHistory. Blocks in order of started_at, releases and changes in order
/// of at.
class HeatBlockHistory extends $pb.GeneratedMessage {
  factory HeatBlockHistory({
    $core.String? plantId,
    $3.Timestamp? keptFrom,
    $core.Iterable<HeatBlock>? blocks,
    $core.Iterable<HeatBlockRelease>? releases,
    $core.Iterable<PriceRuleChange>? ruleChanges,
  }) {
    final result = create();
    if (plantId != null) result.plantId = plantId;
    if (keptFrom != null) result.keptFrom = keptFrom;
    if (blocks != null) result.blocks.addAll(blocks);
    if (releases != null) result.releases.addAll(releases);
    if (ruleChanges != null) result.ruleChanges.addAll(ruleChanges);
    return result;
  }

  HeatBlockHistory._();

  factory HeatBlockHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatBlockHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatBlockHistory',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'plantId')
    ..aOM<$3.Timestamp>(2, _omitFieldNames ? '' : 'keptFrom',
        subBuilder: $3.Timestamp.create)
    ..pc<HeatBlock>(3, _omitFieldNames ? '' : 'blocks', $pb.PbFieldType.PM,
        subBuilder: HeatBlock.create)
    ..pc<HeatBlockRelease>(
        4, _omitFieldNames ? '' : 'releases', $pb.PbFieldType.PM,
        subBuilder: HeatBlockRelease.create)
    ..pc<PriceRuleChange>(
        5, _omitFieldNames ? '' : 'ruleChanges', $pb.PbFieldType.PM,
        subBuilder: PriceRuleChange.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatBlockHistory clone() => HeatBlockHistory()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatBlockHistory copyWith(void Function(HeatBlockHistory) updates) =>
      super.copyWith((message) => updates(message as HeatBlockHistory))
          as HeatBlockHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatBlockHistory create() => HeatBlockHistory._();
  @$core.override
  HeatBlockHistory createEmptyInstance() => create();
  static $pb.PbList<HeatBlockHistory> createRepeated() =>
      $pb.PbList<HeatBlockHistory>();
  @$core.pragma('dart2js:noInline')
  static HeatBlockHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatBlockHistory>(create);
  static HeatBlockHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get plantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set plantId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPlantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlantId() => $_clearField(1);

  /// The earliest time the gateway still holds of this plant's records that the recipient may
  /// read: for a plant in a home, no earlier than the start of their current residency, nor than
  /// the home's last Clear history (space.v1.Space.climate_history_cleared_at). Nothing before it
  /// is returned.
  @$pb.TagNumber(2)
  $3.Timestamp get keptFrom => $_getN(1);
  @$pb.TagNumber(2)
  set keptFrom($3.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKeptFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeptFrom() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureKeptFrom() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<HeatBlock> get blocks => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<HeatBlockRelease> get releases => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<PriceRuleChange> get ruleChanges => $_getList(4);
}

/// One day of one price rule scored against one comfort band (ShadowBandSeries): what the rule,
/// had it been live with that band, would have saved, and what it would have cost in comfort. A
/// day is the building's local date (space.v1.Space.time_zone), cut as
/// climate.v1.CLIMATE_SUMMARY_PERIOD_DAY is, and given only once the gateway has scored it, never
/// before it ends. A day on which the building's time zone was unknown is not scored.
class ShadowDay extends $pb.GeneratedMessage {
  factory ShadowDay({
    $core.String? date,
    $fixnum.Int64? netSavingMicroEur,
    $fixnum.Int64? recoveryCostMicroEur,
    $core.int? blockedQuarters,
    $core.int? breachQuarters,
    $core.int? overheatQuarters,
    $core.int? noPriceQuarters,
  }) {
    final result = create();
    if (date != null) result.date = date;
    if (netSavingMicroEur != null) result.netSavingMicroEur = netSavingMicroEur;
    if (recoveryCostMicroEur != null)
      result.recoveryCostMicroEur = recoveryCostMicroEur;
    if (blockedQuarters != null) result.blockedQuarters = blockedQuarters;
    if (breachQuarters != null) result.breachQuarters = breachQuarters;
    if (overheatQuarters != null) result.overheatQuarters = overheatQuarters;
    if (noPriceQuarters != null) result.noPriceQuarters = noPriceQuarters;
    return result;
  }

  ShadowDay._();

  factory ShadowDay.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShadowDay.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShadowDay',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'netSavingMicroEur', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'recoveryCostMicroEur', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'blockedQuarters', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'breachQuarters', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'overheatQuarters', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'noPriceQuarters', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShadowDay clone() => ShadowDay()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShadowDay copyWith(void Function(ShadowDay) updates) =>
      super.copyWith((message) => updates(message as ShadowDay)) as ShadowDay;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShadowDay create() => ShadowDay._();
  @$core.override
  ShadowDay createEmptyInstance() => create();
  static $pb.PbList<ShadowDay> createRepeated() => $pb.PbList<ShadowDay>();
  @$core.pragma('dart2js:noInline')
  static ShadowDay getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShadowDay>(create);
  static ShadowDay? _defaultInstance;

  /// The local date, as an ISO 8601 calendar date (YYYY-MM-DD).
  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => $_clearField(1);

  /// The saving, in millionths of a euro, the currency day-ahead prices are in
  /// (planning.v1.PriceInterval): the cost of the energy the rule would have moved or avoided, at
  /// the prices it decided by, with the recovery cost already taken off. Negative: it would have
  /// cost more than it saved. A client converts it as it converts prices
  /// (planning.v1.ExchangeRate).
  @$pb.TagNumber(2)
  $fixnum.Int64 get netSavingMicroEur => $_getI64(1);
  @$pb.TagNumber(2)
  set netSavingMicroEur($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNetSavingMicroEur() => $_has(1);
  @$pb.TagNumber(2)
  void clearNetSavingMicroEur() => $_clearField(2);

  /// The cost, in millionths of a euro, of making up afterwards for what was blocked or coasted:
  /// already taken off net_saving_micro_eur, and told so that a client may show both.
  @$pb.TagNumber(3)
  $fixnum.Int64 get recoveryCostMicroEur => $_getI64(2);
  @$pb.TagNumber(3)
  set recoveryCostMicroEur($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRecoveryCostMicroEur() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecoveryCostMicroEur() => $_clearField(3);

  /// The quarter hours of the day the rule would have blocked or coasted.
  @$pb.TagNumber(4)
  $core.int get blockedQuarters => $_getIZ(3);
  @$pb.TagNumber(4)
  set blockedQuarters($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBlockedQuarters() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlockedQuarters() => $_clearField(4);

  /// The quarter hours of the day in which at least one room the rule judges was, or was
  /// predicted to be, below the band's low edge (a breach), and above its high edge
  /// (overheated). A quarter hour in which a room's window was open is not counted for that room.
  @$pb.TagNumber(5)
  $core.int get breachQuarters => $_getIZ(4);
  @$pb.TagNumber(5)
  set breachQuarters($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBreachQuarters() => $_has(4);
  @$pb.TagNumber(5)
  void clearBreachQuarters() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get overheatQuarters => $_getIZ(5);
  @$pb.TagNumber(6)
  set overheatQuarters($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasOverheatQuarters() => $_has(5);
  @$pb.TagNumber(6)
  void clearOverheatQuarters() => $_clearField(6);

  /// The quarter hours of the day that had no price, in which the rule decided nothing: all of
  /// them on a day with no price at all, when every other count is 0.
  @$pb.TagNumber(7)
  $core.int get noPriceQuarters => $_getIZ(6);
  @$pb.TagNumber(7)
  set noPriceQuarters($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasNoPriceQuarters() => $_has(6);
  @$pb.TagNumber(7)
  void clearNoPriceQuarters() => $_clearField(7);
}

/// One price rule of one plant of a home, scored day by day against one comfort band.
class ShadowBandSeries extends $pb.GeneratedMessage {
  factory ShadowBandSeries({
    $core.String? plantId,
    PriceRule? rule,
    $core.int? belowTargetCentidegrees,
    $core.int? aboveTargetCentidegrees,
    $core.Iterable<ShadowDay>? days,
  }) {
    final result = create();
    if (plantId != null) result.plantId = plantId;
    if (rule != null) result.rule = rule;
    if (belowTargetCentidegrees != null)
      result.belowTargetCentidegrees = belowTargetCentidegrees;
    if (aboveTargetCentidegrees != null)
      result.aboveTargetCentidegrees = aboveTargetCentidegrees;
    if (days != null) result.days.addAll(days);
    return result;
  }

  ShadowBandSeries._();

  factory ShadowBandSeries.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShadowBandSeries.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShadowBandSeries',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'plantId')
    ..e<PriceRule>(2, _omitFieldNames ? '' : 'rule', $pb.PbFieldType.OE,
        defaultOrMaker: PriceRule.PRICE_RULE_UNSPECIFIED,
        valueOf: PriceRule.valueOf,
        enumValues: PriceRule.values)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'belowTargetCentidegrees',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'aboveTargetCentidegrees',
        $pb.PbFieldType.OU3)
    ..pc<ShadowDay>(5, _omitFieldNames ? '' : 'days', $pb.PbFieldType.PM,
        subBuilder: ShadowDay.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShadowBandSeries clone() => ShadowBandSeries()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShadowBandSeries copyWith(void Function(ShadowBandSeries) updates) =>
      super.copyWith((message) => updates(message as ShadowBandSeries))
          as ShadowBandSeries;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShadowBandSeries create() => ShadowBandSeries._();
  @$core.override
  ShadowBandSeries createEmptyInstance() => create();
  static $pb.PbList<ShadowBandSeries> createRepeated() =>
      $pb.PbList<ShadowBandSeries>();
  @$core.pragma('dart2js:noInline')
  static ShadowBandSeries getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShadowBandSeries>(create);
  static ShadowBandSeries? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get plantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set plantId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPlantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlantId() => $_clearField(1);

  @$pb.TagNumber(2)
  PriceRule get rule => $_getN(1);
  @$pb.TagNumber(2)
  set rule(PriceRule value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRule() => $_has(1);
  @$pb.TagNumber(2)
  void clearRule() => $_clearField(2);

  /// The band scored, as a comfort preference gives one (climate.v1.ComfortPreference, THE
  /// BAND), in centidegrees. Which bands are scored is the gateway's choice, the same for every
  /// home; the presets' among them.
  @$pb.TagNumber(3)
  $core.int get belowTargetCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set belowTargetCentidegrees($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBelowTargetCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearBelowTargetCentidegrees() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get aboveTargetCentidegrees => $_getIZ(3);
  @$pb.TagNumber(4)
  set aboveTargetCentidegrees($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAboveTargetCentidegrees() => $_has(3);
  @$pb.TagNumber(4)
  void clearAboveTargetCentidegrees() => $_clearField(4);

  /// In order of date.
  @$pb.TagNumber(5)
  $pb.PbList<ShadowDay> get days => $_getList(4);
}

/// What a home's price rules would have saved, and cost in comfort, under each band the gateway
/// scores, so that the household can choose its comfort preference knowing what each would bring
/// (climate.v1.ComfortPreference). In reply to webrtc.v1.GetShadowSummary. The household's data,
/// given as WHO SEES THEM says of a plant in a home: to the home's residents only, never to
/// service, the property owner, the gateway's administrators, an installer under a commissioning
/// grant or another home; erased by the household's Clear history and by the home's wipe.
class ShadowSummary extends $pb.GeneratedMessage {
  factory ShadowSummary({
    $0.SpaceId? homeId,
    $core.String? keptFrom,
    $core.Iterable<ShadowBandSeries>? series,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (keptFrom != null) result.keptFrom = keptFrom;
    if (series != null) result.series.addAll(series);
    return result;
  }

  ShadowSummary._();

  factory ShadowSummary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ShadowSummary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ShadowSummary',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..aOS(2, _omitFieldNames ? '' : 'keptFrom')
    ..pc<ShadowBandSeries>(
        3, _omitFieldNames ? '' : 'series', $pb.PbFieldType.PM,
        subBuilder: ShadowBandSeries.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShadowSummary clone() => ShadowSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ShadowSummary copyWith(void Function(ShadowSummary) updates) =>
      super.copyWith((message) => updates(message as ShadowSummary))
          as ShadowSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShadowSummary create() => ShadowSummary._();
  @$core.override
  ShadowSummary createEmptyInstance() => create();
  static $pb.PbList<ShadowSummary> createRepeated() =>
      $pb.PbList<ShadowSummary>();
  @$core.pragma('dart2js:noInline')
  static ShadowSummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ShadowSummary>(create);
  static ShadowSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get homeId => $_getN(0);
  @$pb.TagNumber(1)
  set homeId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHomeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearHomeId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureHomeId() => $_ensure(0);

  /// The earliest date still held that the recipient may read: no earlier than the first whole
  /// day of their current residency, nor than the first whole day after the home's last Clear
  /// history. An ISO 8601 calendar date; empty where nothing is held for them.
  @$pb.TagNumber(2)
  $core.String get keptFrom => $_getSZ(1);
  @$pb.TagNumber(2)
  set keptFrom($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKeptFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeptFrom() => $_clearField(2);

  /// One per plant, rule and band scored, ordered by plant, rule, then below_target: of the home's
  /// own plants (HeatingPlant.space_id the home) only, each rule while it ran in SHADOW or LIVE.
  /// A plant outside homes is scored for no home. Empty where none is held.
  @$pb.TagNumber(3)
  $pb.PbList<ShadowBandSeries> get series => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
