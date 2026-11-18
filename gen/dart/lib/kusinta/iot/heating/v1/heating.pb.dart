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
import '../../access/v1/roles.pbenum.dart' as $6;
import '../../climate/v1/climate.pbenum.dart' as $7;
import '../../device/v1/cluster_state.pb.dart' as $2;
import '../../device/v1/device.pb.dart' as $5;
import '../../identity/v1/identity.pb.dart' as $0;
import '../../planning/v1/planning.pb.dart' as $4;
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
  /// was never set is listed in the mode it started in — OFF, or SHADOW as the rollout note under
  /// PRICE RULES (WHO SWITCHES THEM) says — with at, set_by_role and set_by unset.
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
    ContactBinding? hotWaterBlock,
    ContactBinding? curveAdjustment,
  }) {
    final result = create();
    if (sgReadyBlock != null) result.sgReadyBlock = sgReadyBlock;
    if (sgReadyBoost != null) result.sgReadyBoost = sgReadyBoost;
    if (addOnHeaterBlock != null) result.addOnHeaterBlock = addOnHeaterBlock;
    if (hotWaterBlock != null) result.hotWaterBlock = hotWaterBlock;
    if (curveAdjustment != null) result.curveAdjustment = curveAdjustment;
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
    ..aOM<ContactBinding>(4, _omitFieldNames ? '' : 'hotWaterBlock',
        subBuilder: ContactBinding.create)
    ..aOM<ContactBinding>(5, _omitFieldNames ? '' : 'curveAdjustment',
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
  /// through "blocked" on its way back to normal. In general, of inputs held together, one that
  /// holds heat back never lapses after one that asks for more. Holding heat back are
  /// sg_ready_block, hot_water_block, add_on_heater_block, and curve_adjustment where its steps
  /// are negative; asking for more are sg_ready_boost, and curve_adjustment where its steps are
  /// positive. So hot_water_block, like sg_ready_block, is given no longer a lease than a boost
  /// or a positive curve_adjustment held with it, and a negative curve_adjustment no longer a
  /// lease than a boost. The one exception is add_on_heater_block against sg_ready_boost, which
  /// are not ordered: a boost is only used where it brings in no add-on heater. Against a
  /// positive curve_adjustment add_on_heater_block is ordered as the rule says. Among inputs that
  /// only hold heat back the order is free: each lapse alone gives back what it held.
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

  /// The input that blocks the heat source's hot-water production while closed: no charge of
  /// its tank starts, and one under way stops, while space heating runs on. Rests open: hot
  /// water is made as the heat source decides. A blocking input (HEAT BLOCKS). Stopping a
  /// charge under way may stop the compressor, so it is held to the rules of a block that
  /// stops it (commissioning.v1, BLOCKS ON A COMPRESSOR).
  @$pb.TagNumber(4)
  ContactBinding get hotWaterBlock => $_getN(3);
  @$pb.TagNumber(4)
  set hotWaterBlock(ContactBinding value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasHotWaterBlock() => $_has(3);
  @$pb.TagNumber(4)
  void clearHotWaterBlock() => $_clearField(4);
  @$pb.TagNumber(4)
  ContactBinding ensureHotWaterBlock() => $_ensure(3);

  /// The input that moves the heat source's curve by its external adjustment while closed:
  /// the supply it aims for shifts by the steps set at the heat source for that input
  /// ("plant.curve_adjustment_steps", commissioning.v1), up or down as they are signed. Rests
  /// open: the curve as set. Not a blocking input, so none of a block's bounds applies to it,
  /// though negative steps hold heat back: a rule that drives it states its own longest hold
  /// and its release. The heat source's own report of it, where it gives one, is
  /// device.v1.HeatSourceReadings.external_adjustment_active.
  @$pb.TagNumber(5)
  ContactBinding get curveAdjustment => $_getN(4);
  @$pb.TagNumber(5)
  set curveAdjustment(ContactBinding value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCurveAdjustment() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurveAdjustment() => $_clearField(5);
  @$pb.TagNumber(5)
  ContactBinding ensureCurveAdjustment() => $_ensure(4);
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
  factory RadiatorCircuit({
    CircuitMixing? mixing,
    DeviceAttribute? supplyProbe,
  }) {
    final result = create();
    if (mixing != null) result.mixing = mixing;
    if (supplyProbe != null) result.supplyProbe = supplyProbe;
    return result;
  }

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
    ..e<CircuitMixing>(1, _omitFieldNames ? '' : 'mixing', $pb.PbFieldType.OE,
        defaultOrMaker: CircuitMixing.CIRCUIT_MIXING_UNSPECIFIED,
        valueOf: CircuitMixing.valueOf,
        enumValues: CircuitMixing.values)
    ..aOM<DeviceAttribute>(2, _omitFieldNames ? '' : 'supplyProbe',
        subBuilder: DeviceAttribute.create)
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

  /// As stated by its installer (CircuitMixing, SUPPLY). Usually UNMIXED, and read so while not
  /// stated.
  @$pb.TagNumber(1)
  CircuitMixing get mixing => $_getN(0);
  @$pb.TagNumber(1)
  set mixing(CircuitMixing value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMixing() => $_has(0);
  @$pb.TagNumber(1)
  void clearMixing() => $_clearField(1);

  /// A probe on the supply after the mixer, as FloorCircuit.supply_probe names one: needed only
  /// where the circuit is stated MIXED, for its supply to be known.
  @$pb.TagNumber(2)
  DeviceAttribute get supplyProbe => $_getN(1);
  @$pb.TagNumber(2)
  set supplyProbe(DeviceAttribute value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSupplyProbe() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupplyProbe() => $_clearField(2);
  @$pb.TagNumber(2)
  DeviceAttribute ensureSupplyProbe() => $_ensure(1);
}

/// Hydronic floor heating: its own pump, mixing and supply cap, and the floor zones on its
/// manifold.
class FloorCircuit extends $pb.GeneratedMessage {
  factory FloorCircuit({
    $core.bool? mixingValve,
    $core.int? supplyCapCentidegrees,
    DeviceAttribute? supplyProbe,
    DeviceAttribute? returnProbe,
    CircuitMixing? mixing,
  }) {
    final result = create();
    if (mixingValve != null) result.mixingValve = mixingValve;
    if (supplyCapCentidegrees != null)
      result.supplyCapCentidegrees = supplyCapCentidegrees;
    if (supplyProbe != null) result.supplyProbe = supplyProbe;
    if (returnProbe != null) result.returnProbe = returnProbe;
    if (mixing != null) result.mixing = mixing;
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
    ..e<CircuitMixing>(5, _omitFieldNames ? '' : 'mixing', $pb.PbFieldType.OE,
        defaultOrMaker: CircuitMixing.CIRCUIT_MIXING_UNSPECIFIED,
        valueOf: CircuitMixing.valueOf,
        enumValues: CircuitMixing.values)
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

  /// Whether a mixing valve feeds the circuit. Superseded by mixing, which can also say that it is
  /// not stated: a client that sets mixing sets this to mixing == MIXED, and a gateway reading a
  /// circuit whose mixing is UNSPECIFIED takes this true as MIXED and false as not stated, never as
  /// UNMIXED, since false is also what a client that never asked sends.
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

  /// As stated by its installer (CircuitMixing, SUPPLY).
  @$pb.TagNumber(5)
  CircuitMixing get mixing => $_getN(4);
  @$pb.TagNumber(5)
  set mixing(CircuitMixing value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasMixing() => $_has(4);
  @$pb.TagNumber(5)
  void clearMixing() => $_clearField(5);
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
    $6.Role? setByRole,
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
    ..e<$6.Role>(5, _omitFieldNames ? '' : 'setByRole', $pb.PbFieldType.OE,
        defaultOrMaker: $6.Role.ROLE_UNSPECIFIED,
        valueOf: $6.Role.valueOf,
        enumValues: $6.Role.values)
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

  /// The mode it set, and the mode before it: before a rule's first change, the mode it started in
  /// (WHO SWITCHES THEM).
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
  $6.Role get setByRole => $_getN(4);
  @$pb.TagNumber(5)
  set setByRole($6.Role value) => $_setField(5, value);
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
    $7.ClimateExplanationKind? reason,
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
    ..e<$7.ClimateExplanationKind>(
        4, _omitFieldNames ? '' : 'reason', $pb.PbFieldType.OE,
        defaultOrMaker:
            $7.ClimateExplanationKind.CLIMATE_EXPLANATION_KIND_UNSPECIFIED,
        valueOf: $7.ClimateExplanationKind.valueOf,
        enumValues: $7.ClimateExplanationKind.values)
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
  /// subject ADD_ON_HEATER for the add-on heater): PRICE_HIGH for dear hours, a hot-water block's
  /// too. What was blocked is told by rule (HOT_WATER for the hot water), since no explanation
  /// subject names it. A kind the client does not know is shown as a block without a cause.
  @$pb.TagNumber(4)
  $7.ClimateExplanationKind get reason => $_getN(3);
  @$pb.TagNumber(4)
  set reason($7.ClimateExplanationKind value) => $_setField(4, value);
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
    $6.Role? setByRole,
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
    ..e<$6.Role>(4, _omitFieldNames ? '' : 'setByRole', $pb.PbFieldType.OE,
        defaultOrMaker: $6.Role.ROLE_UNSPECIFIED,
        valueOf: $6.Role.valueOf,
        enumValues: $6.Role.values)
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
  $6.Role get setByRole => $_getN(3);
  @$pb.TagNumber(4)
  set setByRole($6.Role value) => $_setField(4, value);
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
    $fixnum.Int64? cautiousNetSavingMicroEur,
    $core.int? savingSharePermille,
    $core.int? cautiousSavingSharePermille,
    $core.bool? countsOnly,
    $fixnum.Int64? shareWeight,
    ShadowPriceBasis? priceBasis,
    EnergyPriceAdderSource? adderSource,
    $core.String? ratePublishedOn,
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
    if (cautiousNetSavingMicroEur != null)
      result.cautiousNetSavingMicroEur = cautiousNetSavingMicroEur;
    if (savingSharePermille != null)
      result.savingSharePermille = savingSharePermille;
    if (cautiousSavingSharePermille != null)
      result.cautiousSavingSharePermille = cautiousSavingSharePermille;
    if (countsOnly != null) result.countsOnly = countsOnly;
    if (shareWeight != null) result.shareWeight = shareWeight;
    if (priceBasis != null) result.priceBasis = priceBasis;
    if (adderSource != null) result.adderSource = adderSource;
    if (ratePublishedOn != null) result.ratePublishedOn = ratePublishedOn;
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
    ..a<$fixnum.Int64>(8, _omitFieldNames ? '' : 'cautiousNetSavingMicroEur',
        $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(
        9, _omitFieldNames ? '' : 'savingSharePermille', $pb.PbFieldType.OS3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'cautiousSavingSharePermille',
        $pb.PbFieldType.OS3)
    ..aOB(11, _omitFieldNames ? '' : 'countsOnly')
    ..a<$fixnum.Int64>(
        12, _omitFieldNames ? '' : 'shareWeight', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<ShadowPriceBasis>(
        13, _omitFieldNames ? '' : 'priceBasis', $pb.PbFieldType.OE,
        defaultOrMaker: ShadowPriceBasis.SHADOW_PRICE_BASIS_UNSPECIFIED,
        valueOf: ShadowPriceBasis.valueOf,
        enumValues: ShadowPriceBasis.values)
    ..e<EnergyPriceAdderSource>(
        14, _omitFieldNames ? '' : 'adderSource', $pb.PbFieldType.OE,
        defaultOrMaker:
            EnergyPriceAdderSource.ENERGY_PRICE_ADDER_SOURCE_UNSPECIFIED,
        valueOf: EnergyPriceAdderSource.valueOf,
        enumValues: EnergyPriceAdderSource.values)
    ..aOS(15, _omitFieldNames ? '' : 'ratePublishedOn')
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
  /// (planning.v1.PriceInterval): the cost of the energy the rule would have moved or avoided, on
  /// the day's price basis (price_basis), with the recovery cost already taken off. Negative: it
  /// would have cost more than it saved. A client converts it as it converts prices
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
  /// already taken off net_saving_micro_eur, and told so that a client may show both. Extra
  /// energy (PRICE BASIS).
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

  /// The cautious saving, in millionths of a euro: as net_saving_micro_eur, but with what was
  /// blocked or coasted made up at its full electric energy, crediting a heat pump's efficiency
  /// only in quarter hours its compressor is known to have had capacity to spare. It is the
  /// figure to judge a rule by before relying on it. Unset where the saving is not known in
  /// money (saving_share_permille), or on a day kept before it was computed.
  @$pb.TagNumber(8)
  $fixnum.Int64 get cautiousNetSavingMicroEur => $_getI64(7);
  @$pb.TagNumber(8)
  set cautiousNetSavingMicroEur($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCautiousNetSavingMicroEur() => $_has(7);
  @$pb.TagNumber(8)
  void clearCautiousNetSavingMicroEur() => $_clearField(8);

  /// Where the saving is not known in money, for a rule whose energy is known only relative to
  /// its own heating: the saving as thousandths of the heat cost of what it decides that day,
  /// recovery taken off; negative where it would have cost more. Where set,
  /// net_saving_micro_eur and recovery_cost_micro_eur are 0 and say nothing; a client shows the
  /// share instead. Unset where the saving is in money.
  @$pb.TagNumber(9)
  $core.int get savingSharePermille => $_getIZ(8);
  @$pb.TagNumber(9)
  set savingSharePermille($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasSavingSharePermille() => $_has(8);
  @$pb.TagNumber(9)
  void clearSavingSharePermille() => $_clearField(9);

  /// The cautious figure as a share, for a rule whose saving is given as saving_share_permille:
  /// made up at full electric energy as cautious_net_saving_micro_eur is, never above the share.
  /// Unset where the saving is in money, or on a day kept before it was computed.
  @$pb.TagNumber(10)
  $core.int get cautiousSavingSharePermille => $_getIZ(9);
  @$pb.TagNumber(10)
  set cautiousSavingSharePermille($core.int value) =>
      $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCautiousSavingSharePermille() => $_has(9);
  @$pb.TagNumber(10)
  void clearCautiousSavingSharePermille() => $_clearField(10);

  /// A day given for its counts alone: a share-scored rule's day whose share could not be known
  /// (its heat cost too near zero to divide by). Then saving_share_permille and
  /// cautious_saving_share_permille are unset and the money fields 0, and a client shows its
  /// breaches and overheats only, never a saving of 0.
  @$pb.TagNumber(11)
  $core.bool get countsOnly => $_getBF(10);
  @$pb.TagNumber(11)
  set countsOnly($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasCountsOnly() => $_has(10);
  @$pb.TagNumber(11)
  void clearCountsOnly() => $_clearField(11);

  /// What the day's share is a share of, in a unit of the gateway's that is comparable only
  /// between days of one series (its plant, rule and band), so that a client weighs days' shares
  /// into a share over a span: the sum of share × weight over the sum of weight, and the
  /// cautious share (cautious_saving_share_permille) by the same weight, so that it stays no
  /// higher than the share over the span. Where a day of the span has the share but no weight (a
  /// day kept before the weight, or an older gateway), a client takes the plain mean of the span's
  /// shares; a span whose weights sum to 0 has no share, and a client shows its counts. Set where
  /// saving_share_permille is; never shown.
  @$pb.TagNumber(12)
  $fixnum.Int64 get shareWeight => $_getI64(11);
  @$pb.TagNumber(12)
  set shareWeight($fixnum.Int64 value) => $_setInt64(11, value);
  @$pb.TagNumber(12)
  $core.bool hasShareWeight() => $_has(11);
  @$pb.TagNumber(12)
  void clearShareWeight() => $_clearField(12);

  /// The basis the day's money figures and shares are on (PRICE BASIS); UNSPECIFIED is read as
  /// SPOT.
  @$pb.TagNumber(13)
  ShadowPriceBasis get priceBasis => $_getN(12);
  @$pb.TagNumber(13)
  set priceBasis(ShadowPriceBasis value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasPriceBasis() => $_has(12);
  @$pb.TagNumber(13)
  void clearPriceBasis() => $_clearField(13);

  /// On PAYER, whether the adder the day was priced with was the gateway's default or the payer's
  /// own, so that a client can say a figure on the default is approximate. UNSPECIFIED on SPOT.
  @$pb.TagNumber(14)
  EnergyPriceAdderSource get adderSource => $_getN(13);
  @$pb.TagNumber(14)
  set adderSource(EnergyPriceAdderSource value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasAdderSource() => $_has(13);
  @$pb.TagNumber(14)
  void clearAdderSource() => $_clearField(14);

  /// On PAYER, the exchange rate the day's energy tax and adder were converted with, by its
  /// planning.v1.ExchangeRate.published_on (PRICE BASIS, WHAT THE GATEWAY SUPPLIES): a client
  /// converts the day's figures at that rate, listed in ShadowSummary.exchange_rates, and never at
  /// another. Empty on SPOT, and then a client converts the day at the rate in force on it.
  @$pb.TagNumber(15)
  $core.String get ratePublishedOn => $_getSZ(14);
  @$pb.TagNumber(15)
  set ratePublishedOn($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasRatePublishedOn() => $_has(14);
  @$pb.TagNumber(15)
  void clearRatePublishedOn() => $_clearField(15);
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
  /// BAND), in centidegrees. Which bands are scored is the gateway's choice: a set the same for
  /// every home, the presets' among them, and besides it the home's own chosen band where that
  /// is outside the set, from the day it is chosen. A band the home chose before and no longer
  /// holds keeps the days scored while it held it, as long as any band's days are kept.
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
    $core.Iterable<$4.ExchangeRate>? exchangeRates,
    $core.Iterable<EnergyPriceTerms>? priceTerms,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (keptFrom != null) result.keptFrom = keptFrom;
    if (series != null) result.series.addAll(series);
    if (exchangeRates != null) result.exchangeRates.addAll(exchangeRates);
    if (priceTerms != null) result.priceTerms.addAll(priceTerms);
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
    ..pc<$4.ExchangeRate>(
        4, _omitFieldNames ? '' : 'exchangeRates', $pb.PbFieldType.PM,
        subBuilder: $4.ExchangeRate.create)
    ..pc<EnergyPriceTerms>(
        5, _omitFieldNames ? '' : 'priceTerms', $pb.PbFieldType.PM,
        subBuilder: EnergyPriceTerms.create)
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

  /// The reference rates a client converts the savings at, as webrtc.v1.DayAheadPrices gives
  /// them for prices: every rate the gateway holds from kept_from on, the last one before it, and
  /// any older rate a day given names (ShadowDay.rate_published_on), oldest first. A day that names
  /// a rate is converted at it; any other day at the rate in force on it. Empty where it holds
  /// none; a client then shows euros.
  @$pb.TagNumber(4)
  $pb.PbList<$4.ExchangeRate> get exchangeRates => $_getList(3);

  /// The terms the gateway priced PAYER days with (PRICE BASIS, WHAT THE GATEWAY SUPPLIES), so that
  /// a client can say what the figures include: every set it priced a day from kept_from on with,
  /// and the last one before it, oldest first, whatever price area the home had then. A PAYER day
  /// was priced with the set in force on its date (EnergyPriceTerms.valid_from). Empty where none
  /// is held, and from a gateway that predates price bases.
  @$pb.TagNumber(5)
  $pb.PbList<EnergyPriceTerms> get priceTerms => $_getList(4);
}

/// The terms the gateway supplies itself for a price area's country, from one date on (PRICE
/// BASIS, WHAT THE GATEWAY SUPPLIES). In force from valid_from until the next set's.
class EnergyPriceTerms extends $pb.GeneratedMessage {
  factory EnergyPriceTerms({
    $core.String? validFrom,
    $core.int? vatPermille,
    $core.String? currency,
    $core.int? energyTaxMicroPerKwh,
    $core.int? adderMaxMicroPerKwh,
  }) {
    final result = create();
    if (validFrom != null) result.validFrom = validFrom;
    if (vatPermille != null) result.vatPermille = vatPermille;
    if (currency != null) result.currency = currency;
    if (energyTaxMicroPerKwh != null)
      result.energyTaxMicroPerKwh = energyTaxMicroPerKwh;
    if (adderMaxMicroPerKwh != null)
      result.adderMaxMicroPerKwh = adderMaxMicroPerKwh;
    return result;
  }

  EnergyPriceTerms._();

  factory EnergyPriceTerms.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnergyPriceTerms.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnergyPriceTerms',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'validFrom')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'vatPermille', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'currency')
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'energyTaxMicroPerKwh', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'adderMaxMicroPerKwh', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnergyPriceTerms clone() => EnergyPriceTerms()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnergyPriceTerms copyWith(void Function(EnergyPriceTerms) updates) =>
      super.copyWith((message) => updates(message as EnergyPriceTerms))
          as EnergyPriceTerms;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnergyPriceTerms create() => EnergyPriceTerms._();
  @$core.override
  EnergyPriceTerms createEmptyInstance() => create();
  static $pb.PbList<EnergyPriceTerms> createRepeated() =>
      $pb.PbList<EnergyPriceTerms>();
  @$core.pragma('dart2js:noInline')
  static EnergyPriceTerms getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnergyPriceTerms>(create);
  static EnergyPriceTerms? _defaultInstance;

  /// The building's local date from which the gateway prices with them, as an ISO 8601 calendar
  /// date (YYYY-MM-DD): the date they take effect, or where the gateway took them up only after it
  /// had scored a day from that date on, the first day it scored with them. So a day already
  /// scored is never listed under terms it was not priced with.
  @$pb.TagNumber(1)
  $core.String get validFrom => $_getSZ(0);
  @$pb.TagNumber(1)
  set validFrom($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValidFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearValidFrom() => $_clearField(1);

  /// The VAT rate, in thousandths: 250 for 25 %.
  @$pb.TagNumber(2)
  $core.int get vatPermille => $_getIZ(1);
  @$pb.TagNumber(2)
  set vatPermille($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVatPermille() => $_has(1);
  @$pb.TagNumber(2)
  void clearVatPermille() => $_clearField(2);

  /// The currency the energy tax and the adder are in, as ISO 4217 names it: "SEK".
  @$pb.TagNumber(3)
  $core.String get currency => $_getSZ(2);
  @$pb.TagNumber(3)
  set currency($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCurrency() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrency() => $_clearField(3);

  /// The energy tax per kWh, excluding VAT, in millionths of currency: 360000 for 0.36 SEK.
  @$pb.TagNumber(4)
  $core.int get energyTaxMicroPerKwh => $_getIZ(3);
  @$pb.TagNumber(4)
  set energyTaxMicroPerKwh($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasEnergyTaxMicroPerKwh() => $_has(3);
  @$pb.TagNumber(4)
  void clearEnergyTaxMicroPerKwh() => $_clearField(4);

  /// The highest adder the gateway takes in this currency (EnergyPriceAdder.micro_per_kwh), in the
  /// same unit: a bound against a mistyped value, well above any real grid fee and markup, never a
  /// price. The lowest is 0.
  @$pb.TagNumber(5)
  $core.int get adderMaxMicroPerKwh => $_getIZ(4);
  @$pb.TagNumber(5)
  set adderMaxMicroPerKwh($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAdderMaxMicroPerKwh() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdderMaxMicroPerKwh() => $_clearField(5);
}

enum EnergyPricePayer_Payer { homeId, plantId, notSet }

/// Whose energy price adder (ENERGY PRICE ADDER): a home, for the home's own plants, or a plant
/// outside homes.
class EnergyPricePayer extends $pb.GeneratedMessage {
  factory EnergyPricePayer({
    $0.SpaceId? homeId,
    $core.String? plantId,
  }) {
    final result = create();
    if (homeId != null) result.homeId = homeId;
    if (plantId != null) result.plantId = plantId;
    return result;
  }

  EnergyPricePayer._();

  factory EnergyPricePayer.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnergyPricePayer.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, EnergyPricePayer_Payer>
      _EnergyPricePayer_PayerByTag = {
    1: EnergyPricePayer_Payer.homeId,
    2: EnergyPricePayer_Payer.plantId,
    0: EnergyPricePayer_Payer.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnergyPricePayer',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..aOS(2, _omitFieldNames ? '' : 'plantId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnergyPricePayer clone() => EnergyPricePayer()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnergyPricePayer copyWith(void Function(EnergyPricePayer) updates) =>
      super.copyWith((message) => updates(message as EnergyPricePayer))
          as EnergyPricePayer;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnergyPricePayer create() => EnergyPricePayer._();
  @$core.override
  EnergyPricePayer createEmptyInstance() => create();
  static $pb.PbList<EnergyPricePayer> createRepeated() =>
      $pb.PbList<EnergyPricePayer>();
  @$core.pragma('dart2js:noInline')
  static EnergyPricePayer getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnergyPricePayer>(create);
  static EnergyPricePayer? _defaultInstance;

  EnergyPricePayer_Payer whichPayer() =>
      _EnergyPricePayer_PayerByTag[$_whichOneof(0)]!;
  void clearPayer() => $_clearField($_whichOneof(0));

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

  @$pb.TagNumber(2)
  $core.String get plantId => $_getSZ(1);
  @$pb.TagNumber(2)
  set plantId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPlantId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlantId() => $_clearField(2);
}

/// A payer's energy price adder as it stands (ENERGY PRICE ADDER), in reply to
/// webrtc.v1.GetEnergyPriceAdder and SetEnergyPriceAdder. Given as WHO SEES IT says.
class EnergyPriceAdder extends $pb.GeneratedMessage {
  factory EnergyPriceAdder({
    EnergyPricePayer? payer,
    EnergyPriceTerms? terms,
    $core.int? microPerKwh,
    EnergyPriceAdderSource? source,
    $core.int? defaultMicroPerKwh,
  }) {
    final result = create();
    if (payer != null) result.payer = payer;
    if (terms != null) result.terms = terms;
    if (microPerKwh != null) result.microPerKwh = microPerKwh;
    if (source != null) result.source = source;
    if (defaultMicroPerKwh != null)
      result.defaultMicroPerKwh = defaultMicroPerKwh;
    return result;
  }

  EnergyPriceAdder._();

  factory EnergyPriceAdder.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EnergyPriceAdder.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EnergyPriceAdder',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOM<EnergyPricePayer>(1, _omitFieldNames ? '' : 'payer',
        subBuilder: EnergyPricePayer.create)
    ..aOM<EnergyPriceTerms>(2, _omitFieldNames ? '' : 'terms',
        subBuilder: EnergyPriceTerms.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'microPerKwh', $pb.PbFieldType.OU3)
    ..e<EnergyPriceAdderSource>(
        4, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE,
        defaultOrMaker:
            EnergyPriceAdderSource.ENERGY_PRICE_ADDER_SOURCE_UNSPECIFIED,
        valueOf: EnergyPriceAdderSource.valueOf,
        enumValues: EnergyPriceAdderSource.values)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'defaultMicroPerKwh', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnergyPriceAdder clone() => EnergyPriceAdder()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EnergyPriceAdder copyWith(void Function(EnergyPriceAdder) updates) =>
      super.copyWith((message) => updates(message as EnergyPriceAdder))
          as EnergyPriceAdder;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EnergyPriceAdder create() => EnergyPriceAdder._();
  @$core.override
  EnergyPriceAdder createEmptyInstance() => create();
  static $pb.PbList<EnergyPriceAdder> createRepeated() =>
      $pb.PbList<EnergyPriceAdder>();
  @$core.pragma('dart2js:noInline')
  static EnergyPriceAdder getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EnergyPriceAdder>(create);
  static EnergyPriceAdder? _defaultInstance;

  @$pb.TagNumber(1)
  EnergyPricePayer get payer => $_getN(0);
  @$pb.TagNumber(1)
  set payer(EnergyPricePayer value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPayer() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayer() => $_clearField(1);
  @$pb.TagNumber(1)
  EnergyPricePayer ensurePayer() => $_ensure(0);

  /// The terms in force now for the price area's country: the adder is in their currency, and a
  /// set names it. Unset where the building has no price area, or one whose country the gateway
  /// holds no terms for: then no adder applies, source is UNSPECIFIED, and the figures are on
  /// SPOT.
  @$pb.TagNumber(2)
  EnergyPriceTerms get terms => $_getN(1);
  @$pb.TagNumber(2)
  set terms(EnergyPriceTerms value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTerms() => $_has(1);
  @$pb.TagNumber(2)
  void clearTerms() => $_clearField(2);
  @$pb.TagNumber(2)
  EnergyPriceTerms ensureTerms() => $_ensure(1);

  /// The adder in force: the grid fee's variable part plus the supplier's markup per kWh,
  /// excluding VAT, in millionths of the terms' currency: 450000 for 0.45 SEK, 45 öre. From 0 to
  /// terms.adder_max_micro_per_kwh. Millionths, so that one shape serves every currency, on the
  /// scale of the figures it prices (millionths of a euro), and an invoice's fraction of an öre is
  /// held exactly. Excluding VAT, since the gateway adds VAT to the whole price once (PRICE
  /// BASIS): a value with VAT in it would carry it twice. An invoice to a household usually states
  /// the grid fee with VAT; a client that takes it so divides it by 1 + terms.vat_permille / 1000
  /// before setting it.
  @$pb.TagNumber(3)
  $core.int get microPerKwh => $_getIZ(2);
  @$pb.TagNumber(3)
  set microPerKwh($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMicroPerKwh() => $_has(2);
  @$pb.TagNumber(3)
  void clearMicroPerKwh() => $_clearField(3);

  /// DEFAULT until the payer states one, and again once they reset it; STATED once they have.
  /// A stated value equal to the default is STATED: it is the payer's own.
  @$pb.TagNumber(4)
  EnergyPriceAdderSource get source => $_getN(3);
  @$pb.TagNumber(4)
  set source(EnergyPriceAdderSource value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSource() => $_clearField(4);

  /// The gateway's default for the country, so that a client can show what a reset would put in
  /// force. Unset where terms is; 0 is a default of no grid fee or markup.
  @$pb.TagNumber(5)
  $core.int get defaultMicroPerKwh => $_getIZ(4);
  @$pb.TagNumber(5)
  set defaultMicroPerKwh($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDefaultMicroPerKwh() => $_has(4);
  @$pb.TagNumber(5)
  void clearDefaultMicroPerKwh() => $_clearField(5);
}

/// The zone that limits a heat curve in one outdoor band, and why (HEAT CURVE, WHAT IT SHOWS).
class HeatCurveLimit extends $pb.GeneratedMessage {
  factory HeatCurveLimit({
    HeatCurveLimitReason? reason,
    $core.int? openingPermille,
    $core.bool? hasHeadroom,
    $0.SpaceId? roomId,
    $core.String? floorZoneId,
    $core.bool? homeWithheld,
    HeatCurveZoneKind? zoneKind,
    $core.Iterable<$core.String>? floorZoneIdsTogether,
  }) {
    final result = create();
    if (reason != null) result.reason = reason;
    if (openingPermille != null) result.openingPermille = openingPermille;
    if (hasHeadroom != null) result.hasHeadroom = hasHeadroom;
    if (roomId != null) result.roomId = roomId;
    if (floorZoneId != null) result.floorZoneId = floorZoneId;
    if (homeWithheld != null) result.homeWithheld = homeWithheld;
    if (zoneKind != null) result.zoneKind = zoneKind;
    if (floorZoneIdsTogether != null)
      result.floorZoneIdsTogether.addAll(floorZoneIdsTogether);
    return result;
  }

  HeatCurveLimit._();

  factory HeatCurveLimit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveLimit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveLimit',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..e<HeatCurveLimitReason>(
        1, _omitFieldNames ? '' : 'reason', $pb.PbFieldType.OE,
        defaultOrMaker:
            HeatCurveLimitReason.HEAT_CURVE_LIMIT_REASON_UNSPECIFIED,
        valueOf: HeatCurveLimitReason.valueOf,
        enumValues: HeatCurveLimitReason.values)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'openingPermille', $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'hasHeadroom')
    ..aOM<$0.SpaceId>(4, _omitFieldNames ? '' : 'roomId',
        subBuilder: $0.SpaceId.create)
    ..aOS(5, _omitFieldNames ? '' : 'floorZoneId')
    ..aOB(6, _omitFieldNames ? '' : 'homeWithheld')
    ..e<HeatCurveZoneKind>(
        7, _omitFieldNames ? '' : 'zoneKind', $pb.PbFieldType.OE,
        defaultOrMaker: HeatCurveZoneKind.HEAT_CURVE_ZONE_KIND_UNSPECIFIED,
        valueOf: HeatCurveZoneKind.valueOf,
        enumValues: HeatCurveZoneKind.values)
    ..pPS(8, _omitFieldNames ? '' : 'floorZoneIdsTogether')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveLimit clone() => HeatCurveLimit()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveLimit copyWith(void Function(HeatCurveLimit) updates) =>
      super.copyWith((message) => updates(message as HeatCurveLimit))
          as HeatCurveLimit;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveLimit create() => HeatCurveLimit._();
  @$core.override
  HeatCurveLimit createEmptyInstance() => create();
  static $pb.PbList<HeatCurveLimit> createRepeated() =>
      $pb.PbList<HeatCurveLimit>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveLimit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveLimit>(create);
  static HeatCurveLimit? _defaultInstance;

  @$pb.TagNumber(1)
  HeatCurveLimitReason get reason => $_getN(0);
  @$pb.TagNumber(1)
  set reason(HeatCurveLimitReason value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => $_clearField(1);

  /// The zone's opening at the view's percentile (HeatCurveView.opening_percentile), in
  /// thousandths. Unset where the zone lies in a home the recipient is not given (home_withheld).
  @$pb.TagNumber(2)
  $core.int get openingPermille => $_getIZ(1);
  @$pb.TagNumber(2)
  set openingPermille($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOpeningPermille() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpeningPermille() => $_clearField(2);

  /// Whether that opening is at most HeatCurveView.threshold_permille: the zone has headroom, and
  /// in the coldest band seen the curve could come down. Given whoever the limit is given to,
  /// home_withheld or not.
  @$pb.TagNumber(3)
  $core.bool get hasHeadroom => $_getBF(2);
  @$pb.TagNumber(3)
  set hasHeadroom($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHasHeadroom() => $_has(2);
  @$pb.TagNumber(3)
  void clearHasHeadroom() => $_clearField(3);

  /// The room the zone heats: a radiator valve's room, or a floor zone's control room
  /// (FloorZone.control_room_id). For floor zones judged as one (FLOOR_ZONES_TOGETHER), set only
  /// where they share a control room. Unset where home_withheld.
  @$pb.TagNumber(4)
  $0.SpaceId get roomId => $_getN(3);
  @$pb.TagNumber(4)
  set roomId($0.SpaceId value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRoomId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoomId() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.SpaceId ensureRoomId() => $_ensure(3);

  /// The floor zone (FloorZone.zone_id) where the opening is one floor zone's duty
  /// (HEAT_CURVE_ZONE_KIND_FLOOR_ZONE). Empty for a radiator valve, for floor zones judged as one
  /// (floor_zone_ids_together names them), and where home_withheld: zone_kind tells which.
  @$pb.TagNumber(5)
  $core.String get floorZoneId => $_getSZ(4);
  @$pb.TagNumber(5)
  set floorZoneId($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFloorZoneId() => $_has(4);
  @$pb.TagNumber(5)
  void clearFloorZoneId() => $_clearField(5);

  /// Set where the zone lies in a home the recipient is not given (HEAT CURVE, WHO SEES IT): the
  /// limit says that a home limits, and the reason, and nothing of which.
  @$pb.TagNumber(6)
  $core.bool get homeWithheld => $_getBF(5);
  @$pb.TagNumber(6)
  set homeWithheld($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHomeWithheld() => $_has(5);
  @$pb.TagNumber(6)
  void clearHomeWithheld() => $_clearField(6);

  /// What kind of zone limits. UNSPECIFIED where home_withheld, as floor_zone_ids_together is
  /// empty there: which homes have floor heating can say which home limits.
  @$pb.TagNumber(7)
  HeatCurveZoneKind get zoneKind => $_getN(6);
  @$pb.TagNumber(7)
  set zoneKind(HeatCurveZoneKind value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasZoneKind() => $_has(6);
  @$pb.TagNumber(7)
  void clearZoneKind() => $_clearField(7);

  /// The floor zones (FloorZone.zone_id) judged as one, where zone_kind is FLOOR_ZONES_TOGETHER:
  /// zones whose outputs switch together count once (WHAT IT SHOWS). Empty otherwise, and where
  /// home_withheld.
  @$pb.TagNumber(8)
  $pb.PbList<$core.String> get floorZoneIdsTogether => $_getList(7);
}

/// One band of outdoor temperature of a heat curve view, over the view's window.
class HeatCurveBand extends $pb.GeneratedMessage {
  factory HeatCurveBand({
    $core.int? outdoorFromCentidegrees,
    $core.int? outdoorToCentidegrees,
    $core.int? quarters,
    $core.int? calculatedSupplyCentidegrees,
    $core.int? supplyCentidegrees,
    $core.int? addOnHeatWh,
    $core.int? addOnRunningPermille,
    HeatCurveLimit? limit,
  }) {
    final result = create();
    if (outdoorFromCentidegrees != null)
      result.outdoorFromCentidegrees = outdoorFromCentidegrees;
    if (outdoorToCentidegrees != null)
      result.outdoorToCentidegrees = outdoorToCentidegrees;
    if (quarters != null) result.quarters = quarters;
    if (calculatedSupplyCentidegrees != null)
      result.calculatedSupplyCentidegrees = calculatedSupplyCentidegrees;
    if (supplyCentidegrees != null)
      result.supplyCentidegrees = supplyCentidegrees;
    if (addOnHeatWh != null) result.addOnHeatWh = addOnHeatWh;
    if (addOnRunningPermille != null)
      result.addOnRunningPermille = addOnRunningPermille;
    if (limit != null) result.limit = limit;
    return result;
  }

  HeatCurveBand._();

  factory HeatCurveBand.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveBand.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveBand',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'outdoorFromCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'outdoorToCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'quarters', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'calculatedSupplyCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'supplyCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'addOnHeatWh', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'addOnRunningPermille', $pb.PbFieldType.OU3)
    ..aOM<HeatCurveLimit>(8, _omitFieldNames ? '' : 'limit',
        subBuilder: HeatCurveLimit.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveBand clone() => HeatCurveBand()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveBand copyWith(void Function(HeatCurveBand) updates) =>
      super.copyWith((message) => updates(message as HeatCurveBand))
          as HeatCurveBand;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveBand create() => HeatCurveBand._();
  @$core.override
  HeatCurveBand createEmptyInstance() => create();
  static $pb.PbList<HeatCurveBand> createRepeated() =>
      $pb.PbList<HeatCurveBand>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveBand getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveBand>(create);
  static HeatCurveBand? _defaultInstance;

  /// The band, in centidegrees, half-open: [outdoor_from, outdoor_to), by the outdoor mean of
  /// each quarter hour (climate.v1.PlantHistorySample.outdoor_centidegrees). Band edges and width
  /// are the gateway's choice, the same for every plant.
  @$pb.TagNumber(1)
  $core.int get outdoorFromCentidegrees => $_getIZ(0);
  @$pb.TagNumber(1)
  set outdoorFromCentidegrees($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOutdoorFromCentidegrees() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutdoorFromCentidegrees() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get outdoorToCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set outdoorToCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOutdoorToCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutdoorToCentidegrees() => $_clearField(2);

  /// The quarter hours of the window whose outdoor mean fell in the band, leaving out those in
  /// which an external input moved the curve and those in the 24 hours after a change to the
  /// curve settings (WHAT IT SHOWS).
  @$pb.TagNumber(3)
  $core.int get quarters => $_getIZ(2);
  @$pb.TagNumber(3)
  set quarters($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasQuarters() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuarters() => $_clearField(3);

  /// The median over the band's quarter hours of the calculated supply and of the measured
  /// supply, in centidegrees, as the heat source reads them (device.v1.HeatSourceReadings), each
  /// leaving out the quarter hours in which the heat source made hot water (WHAT IT SHOWS). Unset
  /// where not known, and where figures are withheld (HeatCurveView.figures_withheld).
  @$pb.TagNumber(4)
  $core.int get calculatedSupplyCentidegrees => $_getIZ(3);
  @$pb.TagNumber(4)
  set calculatedSupplyCentidegrees($core.int value) =>
      $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCalculatedSupplyCentidegrees() => $_has(3);
  @$pb.TagNumber(4)
  void clearCalculatedSupplyCentidegrees() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get supplyCentidegrees => $_getIZ(4);
  @$pb.TagNumber(5)
  set supplyCentidegrees($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSupplyCentidegrees() => $_has(4);
  @$pb.TagNumber(5)
  void clearSupplyCentidegrees() => $_clearField(5);

  /// The add-on heat's energy over the band's quarter hours, in watt-hours, and the share of them
  /// in which it drew, in thousandths (device.v1.HeatSourceReadings.add_on_heat_watts). Unset
  /// where not known, and where figures are withheld.
  @$pb.TagNumber(6)
  $core.int get addOnHeatWh => $_getIZ(5);
  @$pb.TagNumber(6)
  set addOnHeatWh($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAddOnHeatWh() => $_has(5);
  @$pb.TagNumber(6)
  void clearAddOnHeatWh() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get addOnRunningPermille => $_getIZ(6);
  @$pb.TagNumber(7)
  set addOnRunningPermille($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAddOnRunningPermille() => $_has(6);
  @$pb.TagNumber(7)
  void clearAddOnRunningPermille() => $_clearField(7);

  /// The zone that limits the curve in this band. Unset where none is known: no zone with an
  /// opening read in the band, too few quarter hours in it for the gateway to judge; in a home's
  /// reading of a plant outside it, a band its home does not limit; and, to the owner
  /// organisation, a limit in a home on a plant fewer than three homes share (WHO SEES IT,
  /// FEWER THAN THREE HOMES). A client reads each the same: no limit known.
  @$pb.TagNumber(8)
  HeatCurveLimit get limit => $_getN(7);
  @$pb.TagNumber(8)
  set limit(HeatCurveLimit value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasLimit() => $_has(7);
  @$pb.TagNumber(8)
  void clearLimit() => $_clearField(8);
  @$pb.TagNumber(8)
  HeatCurveLimit ensureLimit() => $_ensure(7);
}

/// One plant's heating curve against what its zones draw (HEAT CURVE). Given as WHO SEES IT says.
class HeatCurveView extends $pb.GeneratedMessage {
  factory HeatCurveView({
    $core.String? plantId,
    $core.String? plantName,
    $3.Timestamp? windowFrom,
    $3.Timestamp? windowTo,
    $core.Iterable<HeatCurveBand>? bands,
    $core.int? thresholdPermille,
    $core.int? openingPercentile,
    $5.HeatSourceReadings? curveSettings,
    $3.Timestamp? curveSettingsChangedAt,
    $core.bool? figuresWithheld,
    HeatCurveOptimised? optimised,
    HeatCurveSuggestion? suggestion,
    HeatCurveApplied? lastApplied,
    HeatCurveAutomaticSavings? automaticSavings,
    $core.Iterable<HeatCurveRoomTargetSuggestion>? roomTargetSuggestions,
    $core.Iterable<HeatCurveHistoryEntry>? history,
    HeatCurveNoSuggestionReason? noSuggestionReason,
    CompressorWear? compressorWear,
  }) {
    final result = create();
    if (plantId != null) result.plantId = plantId;
    if (plantName != null) result.plantName = plantName;
    if (windowFrom != null) result.windowFrom = windowFrom;
    if (windowTo != null) result.windowTo = windowTo;
    if (bands != null) result.bands.addAll(bands);
    if (thresholdPermille != null) result.thresholdPermille = thresholdPermille;
    if (openingPercentile != null) result.openingPercentile = openingPercentile;
    if (curveSettings != null) result.curveSettings = curveSettings;
    if (curveSettingsChangedAt != null)
      result.curveSettingsChangedAt = curveSettingsChangedAt;
    if (figuresWithheld != null) result.figuresWithheld = figuresWithheld;
    if (optimised != null) result.optimised = optimised;
    if (suggestion != null) result.suggestion = suggestion;
    if (lastApplied != null) result.lastApplied = lastApplied;
    if (automaticSavings != null) result.automaticSavings = automaticSavings;
    if (roomTargetSuggestions != null)
      result.roomTargetSuggestions.addAll(roomTargetSuggestions);
    if (history != null) result.history.addAll(history);
    if (noSuggestionReason != null)
      result.noSuggestionReason = noSuggestionReason;
    if (compressorWear != null) result.compressorWear = compressorWear;
    return result;
  }

  HeatCurveView._();

  factory HeatCurveView.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveView.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveView',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'plantId')
    ..aOS(2, _omitFieldNames ? '' : 'plantName')
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'windowFrom',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(4, _omitFieldNames ? '' : 'windowTo',
        subBuilder: $3.Timestamp.create)
    ..pc<HeatCurveBand>(5, _omitFieldNames ? '' : 'bands', $pb.PbFieldType.PM,
        subBuilder: HeatCurveBand.create)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'thresholdPermille', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'openingPercentile', $pb.PbFieldType.OU3)
    ..aOM<$5.HeatSourceReadings>(8, _omitFieldNames ? '' : 'curveSettings',
        subBuilder: $5.HeatSourceReadings.create)
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'curveSettingsChangedAt',
        subBuilder: $3.Timestamp.create)
    ..aOB(10, _omitFieldNames ? '' : 'figuresWithheld')
    ..aOM<HeatCurveOptimised>(11, _omitFieldNames ? '' : 'optimised',
        subBuilder: HeatCurveOptimised.create)
    ..aOM<HeatCurveSuggestion>(12, _omitFieldNames ? '' : 'suggestion',
        subBuilder: HeatCurveSuggestion.create)
    ..aOM<HeatCurveApplied>(13, _omitFieldNames ? '' : 'lastApplied',
        subBuilder: HeatCurveApplied.create)
    ..e<HeatCurveAutomaticSavings>(
        14, _omitFieldNames ? '' : 'automaticSavings', $pb.PbFieldType.OE,
        defaultOrMaker:
            HeatCurveAutomaticSavings.HEAT_CURVE_AUTOMATIC_SAVINGS_UNSPECIFIED,
        valueOf: HeatCurveAutomaticSavings.valueOf,
        enumValues: HeatCurveAutomaticSavings.values)
    ..pc<HeatCurveRoomTargetSuggestion>(
        15, _omitFieldNames ? '' : 'roomTargetSuggestions', $pb.PbFieldType.PM,
        subBuilder: HeatCurveRoomTargetSuggestion.create)
    ..pc<HeatCurveHistoryEntry>(
        16, _omitFieldNames ? '' : 'history', $pb.PbFieldType.PM,
        subBuilder: HeatCurveHistoryEntry.create)
    ..e<HeatCurveNoSuggestionReason>(
        17, _omitFieldNames ? '' : 'noSuggestionReason', $pb.PbFieldType.OE,
        defaultOrMaker: HeatCurveNoSuggestionReason
            .HEAT_CURVE_NO_SUGGESTION_REASON_UNSPECIFIED,
        valueOf: HeatCurveNoSuggestionReason.valueOf,
        enumValues: HeatCurveNoSuggestionReason.values)
    ..aOM<CompressorWear>(18, _omitFieldNames ? '' : 'compressorWear',
        subBuilder: CompressorWear.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveView clone() => HeatCurveView()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveView copyWith(void Function(HeatCurveView) updates) =>
      super.copyWith((message) => updates(message as HeatCurveView))
          as HeatCurveView;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveView create() => HeatCurveView._();
  @$core.override
  HeatCurveView createEmptyInstance() => create();
  static $pb.PbList<HeatCurveView> createRepeated() =>
      $pb.PbList<HeatCurveView>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveView getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveView>(create);
  static HeatCurveView? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get plantId => $_getSZ(0);
  @$pb.TagNumber(1)
  set plantId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPlantId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlantId() => $_clearField(1);

  /// The plant's name, so that one who is not given the plant record knows which plant it is.
  @$pb.TagNumber(2)
  $core.String get plantName => $_getSZ(1);
  @$pb.TagNumber(2)
  set plantName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPlantName() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlantName() => $_clearField(2);

  /// The quarter hours counted, [window_from, window_to): a window of the gateway's choice, such
  /// as the last 28 days. It spans changes to the curve settings, less the 24 hours after each
  /// (WHAT IT SHOWS).
  @$pb.TagNumber(3)
  $3.Timestamp get windowFrom => $_getN(2);
  @$pb.TagNumber(3)
  set windowFrom($3.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasWindowFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearWindowFrom() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureWindowFrom() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.Timestamp get windowTo => $_getN(3);
  @$pb.TagNumber(4)
  set windowTo($3.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasWindowTo() => $_has(3);
  @$pb.TagNumber(4)
  void clearWindowTo() => $_clearField(4);
  @$pb.TagNumber(4)
  $3.Timestamp ensureWindowTo() => $_ensure(3);

  /// Coldest first. A band with no quarter hour is not given. Empty where none is known: a plant
  /// without outdoor readings, or nothing kept in the window.
  @$pb.TagNumber(5)
  $pb.PbList<HeatCurveBand> get bands => $_getList(4);

  /// The opening, in thousandths, at most which the most demanding zone of the coldest band leaves
  /// the curve room to come down (HEAT CURVE, WHAT IT SHOWS): 850 for 85 %. The gateway's.
  @$pb.TagNumber(6)
  $core.int get thresholdPermille => $_getIZ(5);
  @$pb.TagNumber(6)
  set thresholdPermille($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasThresholdPermille() => $_has(5);
  @$pb.TagNumber(6)
  void clearThresholdPermille() => $_clearField(6);

  /// The percentile of a zone's openings over a band's quarter hours that a limit is judged by
  /// (HeatCurveLimit.opening_permille), such as 90. The gateway's.
  @$pb.TagNumber(7)
  $core.int get openingPercentile => $_getIZ(6);
  @$pb.TagNumber(7)
  set openingPercentile($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasOpeningPercentile() => $_has(6);
  @$pb.TagNumber(7)
  void clearOpeningPercentile() => $_clearField(7);

  /// The heat source's curve settings as last read, as its readings state them
  /// (device.v1.HeatSourceReadings, SETTINGS): only its curve's fields set — own_curve_in_force,
  /// heating_curve, heating_curve_offset, min_supply_centidegrees, own_curve_supply_* and
  /// curve_point_* — each where read, every other field unset. Which curve is in force is read as
  /// those readings say: without own_curve_in_force, neither the numbered curve nor the own
  /// curve's points is read as the one in force. Never external_adjustment_active, a state and
  /// not a setting. Unset where none is read, and where figures are withheld.
  @$pb.TagNumber(8)
  $5.HeatSourceReadings get curveSettings => $_getN(7);
  @$pb.TagNumber(8)
  set curveSettings($5.HeatSourceReadings value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCurveSettings() => $_has(7);
  @$pb.TagNumber(8)
  void clearCurveSettings() => $_clearField(8);
  @$pb.TagNumber(8)
  $5.HeatSourceReadings ensureCurveSettings() => $_ensure(7);

  /// When one of the fields curve_settings carries, own_curve_in_force included, was last seen to
  /// change. Unset where none was, or none is read, and where figures are withheld.
  @$pb.TagNumber(9)
  $3.Timestamp get curveSettingsChangedAt => $_getN(8);
  @$pb.TagNumber(9)
  set curveSettingsChangedAt($3.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCurveSettingsChangedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearCurveSettingsChangedAt() => $_clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureCurveSettingsChangedAt() => $_ensure(8);

  /// Set where the recipient is given the plant's limits alone (WHO SEES IT): the bands' supplies
  /// and add-on figures, the curve settings, the optimised curve, the suggestion and the last
  /// apply are left out, so that their absence is not read as not known.
  @$pb.TagNumber(10)
  $core.bool get figuresWithheld => $_getBF(9);
  @$pb.TagNumber(10)
  set figuresWithheld($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasFiguresWithheld() => $_has(9);
  @$pb.TagNumber(10)
  void clearFiguresWithheld() => $_clearField(10);

  /// What the curve could be (OPTIMISED CURVE). Unset where the gateway cannot work one out yet,
  /// as with no band judged, and where figures are withheld.
  @$pb.TagNumber(11)
  HeatCurveOptimised get optimised => $_getN(10);
  @$pb.TagNumber(11)
  set optimised(HeatCurveOptimised value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasOptimised() => $_has(10);
  @$pb.TagNumber(11)
  void clearOptimised() => $_clearField(11);
  @$pb.TagNumber(11)
  HeatCurveOptimised ensureOptimised() => $_ensure(10);

  /// What the gateway suggests setting (SUGGESTION). Unset where it suggests nothing: the curve
  /// in force is as the optimised one would set it, or no change would save; and where figures
  /// are withheld. A declined suggestion is still given, marked so (HeatCurveSuggestion.declined).
  @$pb.TagNumber(12)
  HeatCurveSuggestion get suggestion => $_getN(11);
  @$pb.TagNumber(12)
  set suggestion(HeatCurveSuggestion value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasSuggestion() => $_has(11);
  @$pb.TagNumber(12)
  void clearSuggestion() => $_clearField(12);
  @$pb.TagNumber(12)
  HeatCurveSuggestion ensureSuggestion() => $_ensure(11);

  /// The last curve applied to the heat source, and whether it is verified (APPLYING). Unset
  /// where none was, and where figures are withheld.
  @$pb.TagNumber(13)
  HeatCurveApplied get lastApplied => $_getN(12);
  @$pb.TagNumber(13)
  set lastApplied(HeatCurveApplied value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasLastApplied() => $_has(12);
  @$pb.TagNumber(13)
  void clearLastApplied() => $_clearField(13);
  @$pb.TagNumber(13)
  HeatCurveApplied ensureLastApplied() => $_ensure(12);

  /// Whether the gateway applies suggestions itself (AUTOMATIC SAVINGS). Unspecified where
  /// figures are withheld.
  @$pb.TagNumber(14)
  HeatCurveAutomaticSavings get automaticSavings => $_getN(13);
  @$pb.TagNumber(14)
  set automaticSavings(HeatCurveAutomaticSavings value) =>
      $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasAutomaticSavings() => $_has(13);
  @$pb.TagNumber(14)
  void clearAutomaticSavings() => $_clearField(14);

  /// Where a room's own target holds the curve up, what lowering it would let the curve do (ROOM
  /// TARGETS). Given only as ROOM TARGETS, WHO SEES THEM says: empty for anyone else, figures
  /// withheld or not.
  @$pb.TagNumber(15)
  $pb.PbList<HeatCurveRoomTargetSuggestion> get roomTargetSuggestions =>
      $_getList(14);

  /// The plant's past suggestions, newest first (HISTORY). Empty where figures are withheld.
  @$pb.TagNumber(16)
  $pb.PbList<HeatCurveHistoryEntry> get history => $_getList(15);

  /// Why nothing is suggested (SUGGESTION). Unspecified where a suggestion is given, and where
  /// figures are withheld.
  @$pb.TagNumber(17)
  HeatCurveNoSuggestionReason get noSuggestionReason => $_getN(16);
  @$pb.TagNumber(17)
  set noSuggestionReason(HeatCurveNoSuggestionReason value) =>
      $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasNoSuggestionReason() => $_has(16);
  @$pb.TagNumber(17)
  void clearNoSuggestionReason() => $_clearField(17);

  /// How hard the compressor works (COMPRESSOR WEAR). Unset where figures are withheld, and for
  /// a heat source that keeps no running totals.
  @$pb.TagNumber(18)
  CompressorWear get compressorWear => $_getN(17);
  @$pb.TagNumber(18)
  set compressorWear(CompressorWear value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasCompressorWear() => $_has(17);
  @$pb.TagNumber(18)
  void clearCompressorWear() => $_clearField(18);
  @$pb.TagNumber(18)
  CompressorWear ensureCompressorWear() => $_ensure(17);
}

/// How hard a heat source's compressor works (COMPRESSOR WEAR).
class CompressorWear extends $pb.GeneratedMessage {
  factory CompressorWear({
    $core.Iterable<CompressorWearDay>? days,
    $core.int? lifetimeRunLengthMinutes,
    $core.bool? shortCycling,
  }) {
    final result = create();
    if (days != null) result.days.addAll(days);
    if (lifetimeRunLengthMinutes != null)
      result.lifetimeRunLengthMinutes = lifetimeRunLengthMinutes;
    if (shortCycling != null) result.shortCycling = shortCycling;
    return result;
  }

  CompressorWear._();

  factory CompressorWear.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CompressorWear.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompressorWear',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..pc<CompressorWearDay>(
        1, _omitFieldNames ? '' : 'days', $pb.PbFieldType.PM,
        subBuilder: CompressorWearDay.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'lifetimeRunLengthMinutes',
        $pb.PbFieldType.OU3)
    ..aOB(3, _omitFieldNames ? '' : 'shortCycling')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompressorWear clone() => CompressorWear()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompressorWear copyWith(void Function(CompressorWear) updates) =>
      super.copyWith((message) => updates(message as CompressorWear))
          as CompressorWear;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompressorWear create() => CompressorWear._();
  @$core.override
  CompressorWear createEmptyInstance() => create();
  static $pb.PbList<CompressorWear> createRepeated() =>
      $pb.PbList<CompressorWear>();
  @$core.pragma('dart2js:noInline')
  static CompressorWear getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompressorWear>(create);
  static CompressorWear? _defaultInstance;

  /// The last fourteen days of the building's local dates, newest first, today's included as
  /// far as it has gone (partial).
  @$pb.TagNumber(1)
  $pb.PbList<CompressorWearDay> get days => $_getList(0);

  /// The run length over the compressor's life as first heard: its hours × 60 / its starts,
  /// in whole minutes, as the totals stood when the gateway first heard them. Unset where no
  /// start was counted then.
  @$pb.TagNumber(2)
  $core.int get lifetimeRunLengthMinutes => $_getIZ(1);
  @$pb.TagNumber(2)
  set lifetimeRunLengthMinutes($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLifetimeRunLengthMinutes() => $_has(1);
  @$pb.TagNumber(2)
  void clearLifetimeRunLengthMinutes() => $_clearField(2);

  /// Whether the compressor short-cycles: over the last three whole days, more starts per day
  /// than the gateway's limit, or, with at least six hours run over them, runs shorter on
  /// average (their hours × 60 / their starts) than its limit. False where fewer than three
  /// whole days are held.
  @$pb.TagNumber(3)
  $core.bool get shortCycling => $_getBF(2);
  @$pb.TagNumber(3)
  set shortCycling($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasShortCycling() => $_has(2);
  @$pb.TagNumber(3)
  void clearShortCycling() => $_clearField(3);
}

/// One day of a compressor's work (COMPRESSOR WEAR). Its figures are unset where the day is
/// partial.
class CompressorWearDay extends $pb.GeneratedMessage {
  factory CompressorWearDay({
    $core.String? date,
    $core.int? starts,
    $core.int? hours,
    $core.int? hotWaterHours,
    $core.int? spaceHeatingHours,
    $core.bool? partial,
    $core.int? runLengthMinutes,
  }) {
    final result = create();
    if (date != null) result.date = date;
    if (starts != null) result.starts = starts;
    if (hours != null) result.hours = hours;
    if (hotWaterHours != null) result.hotWaterHours = hotWaterHours;
    if (spaceHeatingHours != null) result.spaceHeatingHours = spaceHeatingHours;
    if (partial != null) result.partial = partial;
    if (runLengthMinutes != null) result.runLengthMinutes = runLengthMinutes;
    return result;
  }

  CompressorWearDay._();

  factory CompressorWearDay.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CompressorWearDay.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CompressorWearDay',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'starts', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'hours', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'hotWaterHours', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'spaceHeatingHours', $pb.PbFieldType.OU3)
    ..aOB(6, _omitFieldNames ? '' : 'partial')
    ..a<$core.int>(
        7, _omitFieldNames ? '' : 'runLengthMinutes', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompressorWearDay clone() => CompressorWearDay()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CompressorWearDay copyWith(void Function(CompressorWearDay) updates) =>
      super.copyWith((message) => updates(message as CompressorWearDay))
          as CompressorWearDay;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CompressorWearDay create() => CompressorWearDay._();
  @$core.override
  CompressorWearDay createEmptyInstance() => create();
  static $pb.PbList<CompressorWearDay> createRepeated() =>
      $pb.PbList<CompressorWearDay>();
  @$core.pragma('dart2js:noInline')
  static CompressorWearDay getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CompressorWearDay>(create);
  static CompressorWearDay? _defaultInstance;

  /// The local date, as an ISO 8601 calendar date (YYYY-MM-DD).
  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => $_clearField(1);

  /// Starts over the day.
  @$pb.TagNumber(2)
  $core.int get starts => $_getIZ(1);
  @$pb.TagNumber(2)
  set starts($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStarts() => $_has(1);
  @$pb.TagNumber(2)
  void clearStarts() => $_clearField(2);

  /// Hours run over the day, as the difference of whole-hour totals: off by up to an hour
  /// either way.
  @$pb.TagNumber(3)
  $core.int get hours => $_getIZ(2);
  @$pb.TagNumber(3)
  set hours($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHours() => $_has(2);
  @$pb.TagNumber(3)
  void clearHours() => $_clearField(3);

  /// The part of hours run on hot water, read as hours is.
  @$pb.TagNumber(4)
  $core.int get hotWaterHours => $_getIZ(3);
  @$pb.TagNumber(4)
  set hotWaterHours($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHotWaterHours() => $_has(3);
  @$pb.TagNumber(4)
  void clearHotWaterHours() => $_clearField(4);

  /// The part of hours run on space heating: hours less hot_water_hours.
  @$pb.TagNumber(5)
  $core.int get spaceHeatingHours => $_getIZ(4);
  @$pb.TagNumber(5)
  set spaceHeatingHours($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSpaceHeatingHours() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpaceHeatingHours() => $_clearField(5);

  /// Whether the totals were not heard throughout the day: its figures are then unset, and it
  /// is judged on nothing.
  @$pb.TagNumber(6)
  $core.bool get partial => $_getBF(5);
  @$pb.TagNumber(6)
  set partial($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPartial() => $_has(5);
  @$pb.TagNumber(6)
  void clearPartial() => $_clearField(6);

  /// hours × 60 / starts, in whole minutes, given only where hours is at least 6: below that
  /// a difference of whole-hour totals, off by up to an hour, says too little. Unset there.
  @$pb.TagNumber(7)
  $core.int get runLengthMinutes => $_getIZ(6);
  @$pb.TagNumber(7)
  set runLengthMinutes($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRunLengthMinutes() => $_has(6);
  @$pb.TagNumber(7)
  void clearRunLengthMinutes() => $_clearField(7);
}

/// The compressor before and after an applied suggestion (COMPRESSOR WEAR).
class HeatCurveCompressorEffect extends $pb.GeneratedMessage {
  factory HeatCurveCompressorEffect({
    $core.int? startsPerDayTenthsBefore,
    $core.int? startsPerDayTenthsAfter,
    $core.int? spaceHeatingRunLengthMinutesBefore,
    $core.int? spaceHeatingRunLengthMinutesAfter,
    $core.int? daysCompared,
    $core.bool? matchedOnHeatSourceOutdoor,
  }) {
    final result = create();
    if (startsPerDayTenthsBefore != null)
      result.startsPerDayTenthsBefore = startsPerDayTenthsBefore;
    if (startsPerDayTenthsAfter != null)
      result.startsPerDayTenthsAfter = startsPerDayTenthsAfter;
    if (spaceHeatingRunLengthMinutesBefore != null)
      result.spaceHeatingRunLengthMinutesBefore =
          spaceHeatingRunLengthMinutesBefore;
    if (spaceHeatingRunLengthMinutesAfter != null)
      result.spaceHeatingRunLengthMinutesAfter =
          spaceHeatingRunLengthMinutesAfter;
    if (daysCompared != null) result.daysCompared = daysCompared;
    if (matchedOnHeatSourceOutdoor != null)
      result.matchedOnHeatSourceOutdoor = matchedOnHeatSourceOutdoor;
    return result;
  }

  HeatCurveCompressorEffect._();

  factory HeatCurveCompressorEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveCompressorEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveCompressorEffect',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'startsPerDayTenthsBefore',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'startsPerDayTenthsAfter',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        3,
        _omitFieldNames ? '' : 'spaceHeatingRunLengthMinutesBefore',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        4,
        _omitFieldNames ? '' : 'spaceHeatingRunLengthMinutesAfter',
        $pb.PbFieldType.OU3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'daysCompared', $pb.PbFieldType.OU3)
    ..aOB(6, _omitFieldNames ? '' : 'matchedOnHeatSourceOutdoor')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveCompressorEffect clone() =>
      HeatCurveCompressorEffect()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveCompressorEffect copyWith(
          void Function(HeatCurveCompressorEffect) updates) =>
      super.copyWith((message) => updates(message as HeatCurveCompressorEffect))
          as HeatCurveCompressorEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveCompressorEffect create() => HeatCurveCompressorEffect._();
  @$core.override
  HeatCurveCompressorEffect createEmptyInstance() => create();
  static $pb.PbList<HeatCurveCompressorEffect> createRepeated() =>
      $pb.PbList<HeatCurveCompressorEffect>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveCompressorEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveCompressorEffect>(create);
  static HeatCurveCompressorEffect? _defaultInstance;

  /// The mean starts per day over the days compared before and after it, in tenths of a start.
  @$pb.TagNumber(1)
  $core.int get startsPerDayTenthsBefore => $_getIZ(0);
  @$pb.TagNumber(1)
  set startsPerDayTenthsBefore($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStartsPerDayTenthsBefore() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartsPerDayTenthsBefore() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get startsPerDayTenthsAfter => $_getIZ(1);
  @$pb.TagNumber(2)
  set startsPerDayTenthsAfter($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStartsPerDayTenthsAfter() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartsPerDayTenthsAfter() => $_clearField(2);

  /// The run length on space heating over the days compared before and after it: their space
  /// heating hours × 60 / their starts, in whole minutes. Unset where no start was counted.
  @$pb.TagNumber(3)
  $core.int get spaceHeatingRunLengthMinutesBefore => $_getIZ(2);
  @$pb.TagNumber(3)
  set spaceHeatingRunLengthMinutesBefore($core.int value) =>
      $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSpaceHeatingRunLengthMinutesBefore() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpaceHeatingRunLengthMinutesBefore() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get spaceHeatingRunLengthMinutesAfter => $_getIZ(3);
  @$pb.TagNumber(4)
  set spaceHeatingRunLengthMinutesAfter($core.int value) =>
      $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSpaceHeatingRunLengthMinutesAfter() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpaceHeatingRunLengthMinutesAfter() => $_clearField(4);

  /// How many days are compared on each side: each whole day of the seven after the apply
  /// paired with a whole day of the seven before it whose mean outdoor temperature is within
  /// 2 °C, each day before used once; the rest are left out.
  @$pb.TagNumber(5)
  $core.int get daysCompared => $_getIZ(4);
  @$pb.TagNumber(5)
  set daysCompared($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDaysCompared() => $_has(4);
  @$pb.TagNumber(5)
  void clearDaysCompared() => $_clearField(5);

  /// Whether the days were paired on the heat source's own outdoor reading, where no weather
  /// for the building's place was held (planning.v1.ForecastPoint.temperature_centidegrees),
  /// rather than on that weather. A sensor in the sun reads high, so a pairing on it is weaker.
  @$pb.TagNumber(6)
  $core.bool get matchedOnHeatSourceOutdoor => $_getBF(5);
  @$pb.TagNumber(6)
  set matchedOnHeatSourceOutdoor($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMatchedOnHeatSourceOutdoor() => $_has(5);
  @$pb.TagNumber(6)
  void clearMatchedOnHeatSourceOutdoor() => $_clearField(6);
}

/// The answer to webrtc.v1.GetHeatCurveView.
class HeatCurveViews extends $pb.GeneratedMessage {
  factory HeatCurveViews({
    $core.Iterable<HeatCurveView>? views,
  }) {
    final result = create();
    if (views != null) result.views.addAll(views);
    return result;
  }

  HeatCurveViews._();

  factory HeatCurveViews.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveViews.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveViews',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..pc<HeatCurveView>(1, _omitFieldNames ? '' : 'views', $pb.PbFieldType.PM,
        subBuilder: HeatCurveView.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveViews clone() => HeatCurveViews()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveViews copyWith(void Function(HeatCurveViews) updates) =>
      super.copyWith((message) => updates(message as HeatCurveViews))
          as HeatCurveViews;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveViews create() => HeatCurveViews._();
  @$core.override
  HeatCurveViews createEmptyInstance() => create();
  static $pb.PbList<HeatCurveViews> createRepeated() =>
      $pb.PbList<HeatCurveViews>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveViews getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveViews>(create);
  static HeatCurveViews? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<HeatCurveView> get views => $_getList(0);
}

/// One point of an optimised curve.
class HeatCurvePoint extends $pb.GeneratedMessage {
  factory HeatCurvePoint({
    $core.int? outdoorCentidegrees,
    $core.int? supplyCentidegrees,
    $core.int? currentSupplyCentidegrees,
    HeatCurvePointConfidence? confidence,
  }) {
    final result = create();
    if (outdoorCentidegrees != null)
      result.outdoorCentidegrees = outdoorCentidegrees;
    if (supplyCentidegrees != null)
      result.supplyCentidegrees = supplyCentidegrees;
    if (currentSupplyCentidegrees != null)
      result.currentSupplyCentidegrees = currentSupplyCentidegrees;
    if (confidence != null) result.confidence = confidence;
    return result;
  }

  HeatCurvePoint._();

  factory HeatCurvePoint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurvePoint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurvePoint',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'outdoorCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'supplyCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'currentSupplyCentidegrees',
        $pb.PbFieldType.OS3)
    ..e<HeatCurvePointConfidence>(
        4, _omitFieldNames ? '' : 'confidence', $pb.PbFieldType.OE,
        defaultOrMaker:
            HeatCurvePointConfidence.HEAT_CURVE_POINT_CONFIDENCE_UNSPECIFIED,
        valueOf: HeatCurvePointConfidence.valueOf,
        enumValues: HeatCurvePointConfidence.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurvePoint clone() => HeatCurvePoint()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurvePoint copyWith(void Function(HeatCurvePoint) updates) =>
      super.copyWith((message) => updates(message as HeatCurvePoint))
          as HeatCurvePoint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurvePoint create() => HeatCurvePoint._();
  @$core.override
  HeatCurvePoint createEmptyInstance() => create();
  static $pb.PbList<HeatCurvePoint> createRepeated() =>
      $pb.PbList<HeatCurvePoint>();
  @$core.pragma('dart2js:noInline')
  static HeatCurvePoint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurvePoint>(create);
  static HeatCurvePoint? _defaultInstance;

  /// The outdoor temperature, in centidegrees: a multiple of 500 from −3000 to +3000.
  @$pb.TagNumber(1)
  $core.int get outdoorCentidegrees => $_getIZ(0);
  @$pb.TagNumber(1)
  set outdoorCentidegrees($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOutdoorCentidegrees() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutdoorCentidegrees() => $_clearField(1);

  /// The supply the optimised curve sets at it, in centidegrees, held between the heat source's
  /// lowest and highest supply and rounded up to a whole degree (OPTIMISED CURVE): a multiple of
  /// 100.
  @$pb.TagNumber(2)
  $core.int get supplyCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set supplyCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSupplyCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearSupplyCentidegrees() => $_clearField(2);

  /// The supply the curve in force sets at it, in centidegrees, as worked out from the curve
  /// settings read (HeatCurveView.curve_settings). Unset where not known: an estimated point is
  /// then not lowered (CONFIDENCE).
  @$pb.TagNumber(3)
  $core.int get currentSupplyCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentSupplyCentidegrees($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCurrentSupplyCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentSupplyCentidegrees() => $_clearField(3);

  @$pb.TagNumber(4)
  HeatCurvePointConfidence get confidence => $_getN(3);
  @$pb.TagNumber(4)
  set confidence(HeatCurvePointConfidence value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasConfidence() => $_has(3);
  @$pb.TagNumber(4)
  void clearConfidence() => $_clearField(4);
}

/// What a plant's curve could be (OPTIMISED CURVE).
class HeatCurveOptimised extends $pb.GeneratedMessage {
  factory HeatCurveOptimised({
    $core.Iterable<HeatCurvePoint>? points,
    $core.int? minSupplyCentidegrees,
    $core.int? maxSupplyCentidegrees,
  }) {
    final result = create();
    if (points != null) result.points.addAll(points);
    if (minSupplyCentidegrees != null)
      result.minSupplyCentidegrees = minSupplyCentidegrees;
    if (maxSupplyCentidegrees != null)
      result.maxSupplyCentidegrees = maxSupplyCentidegrees;
    return result;
  }

  HeatCurveOptimised._();

  factory HeatCurveOptimised.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveOptimised.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveOptimised',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..pc<HeatCurvePoint>(1, _omitFieldNames ? '' : 'points', $pb.PbFieldType.PM,
        subBuilder: HeatCurvePoint.create)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'minSupplyCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'maxSupplyCentidegrees', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveOptimised clone() => HeatCurveOptimised()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveOptimised copyWith(void Function(HeatCurveOptimised) updates) =>
      super.copyWith((message) => updates(message as HeatCurveOptimised))
          as HeatCurveOptimised;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveOptimised create() => HeatCurveOptimised._();
  @$core.override
  HeatCurveOptimised createEmptyInstance() => create();
  static $pb.PbList<HeatCurveOptimised> createRepeated() =>
      $pb.PbList<HeatCurveOptimised>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveOptimised getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveOptimised>(create);
  static HeatCurveOptimised? _defaultInstance;

  /// Coldest first, every 5 °C from −30 °C to +30 °C: thirteen points.
  @$pb.TagNumber(1)
  $pb.PbList<HeatCurvePoint> get points => $_getList(0);

  /// The lowest and the highest supply the curve is held between, in centidegrees: the heat
  /// source's, as it reports them (device.v1.HeatSourceReadings.min_supply_centidegrees), or as
  /// stated at its setup where it reports none (commissioning.v1 "plant.min_supply_centidegrees",
  /// "plant.max_supply_centidegrees"). For a plant whose emitters set a narrower range,
  /// as radiators alone do, theirs. Unset where not known: the curve is then not held at that
  /// end.
  @$pb.TagNumber(2)
  $core.int get minSupplyCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set minSupplyCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinSupplyCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinSupplyCentidegrees() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxSupplyCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxSupplyCentidegrees($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMaxSupplyCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxSupplyCentidegrees() => $_clearField(3);
}

/// What the gateway suggests setting on a plant's heat source (SUGGESTION).
class HeatCurveSuggestion extends $pb.GeneratedMessage {
  factory HeatCurveSuggestion({
    $core.String? suggestionId,
    HeatCurveSuggestionKind? kind,
    $5.HeatSourceReadings? settings,
    $core.bool? writable,
    $core.Iterable<$core.int>? newlyConfirmedOutdoorCentidegrees,
    $core.int? savingKwhPerYear,
    $fixnum.Int64? savingMicroEurPerYear,
    $core.int? savingPermille,
    $3.Timestamp? suggestedAt,
    $core.bool? declined,
    HeatCurveHandOver? handOver,
  }) {
    final result = create();
    if (suggestionId != null) result.suggestionId = suggestionId;
    if (kind != null) result.kind = kind;
    if (settings != null) result.settings = settings;
    if (writable != null) result.writable = writable;
    if (newlyConfirmedOutdoorCentidegrees != null)
      result.newlyConfirmedOutdoorCentidegrees
          .addAll(newlyConfirmedOutdoorCentidegrees);
    if (savingKwhPerYear != null) result.savingKwhPerYear = savingKwhPerYear;
    if (savingMicroEurPerYear != null)
      result.savingMicroEurPerYear = savingMicroEurPerYear;
    if (savingPermille != null) result.savingPermille = savingPermille;
    if (suggestedAt != null) result.suggestedAt = suggestedAt;
    if (declined != null) result.declined = declined;
    if (handOver != null) result.handOver = handOver;
    return result;
  }

  HeatCurveSuggestion._();

  factory HeatCurveSuggestion.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveSuggestion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveSuggestion',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'suggestionId')
    ..e<HeatCurveSuggestionKind>(
        2, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker:
            HeatCurveSuggestionKind.HEAT_CURVE_SUGGESTION_KIND_UNSPECIFIED,
        valueOf: HeatCurveSuggestionKind.valueOf,
        enumValues: HeatCurveSuggestionKind.values)
    ..aOM<$5.HeatSourceReadings>(3, _omitFieldNames ? '' : 'settings',
        subBuilder: $5.HeatSourceReadings.create)
    ..aOB(4, _omitFieldNames ? '' : 'writable')
    ..p<$core.int>(
        5,
        _omitFieldNames ? '' : 'newlyConfirmedOutdoorCentidegrees',
        $pb.PbFieldType.KS3)
    ..a<$core.int>(
        6, _omitFieldNames ? '' : 'savingKwhPerYear', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(
        7, _omitFieldNames ? '' : 'savingMicroEurPerYear', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(
        8, _omitFieldNames ? '' : 'savingPermille', $pb.PbFieldType.OU3)
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'suggestedAt',
        subBuilder: $3.Timestamp.create)
    ..aOB(10, _omitFieldNames ? '' : 'declined')
    ..aOM<HeatCurveHandOver>(11, _omitFieldNames ? '' : 'handOver',
        subBuilder: HeatCurveHandOver.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveSuggestion clone() => HeatCurveSuggestion()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveSuggestion copyWith(void Function(HeatCurveSuggestion) updates) =>
      super.copyWith((message) => updates(message as HeatCurveSuggestion))
          as HeatCurveSuggestion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveSuggestion create() => HeatCurveSuggestion._();
  @$core.override
  HeatCurveSuggestion createEmptyInstance() => create();
  static $pb.PbList<HeatCurveSuggestion> createRepeated() =>
      $pb.PbList<HeatCurveSuggestion>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveSuggestion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveSuggestion>(create);
  static HeatCurveSuggestion? _defaultInstance;

  /// New only on a material change (SUGGESTION); kept across a refresh that makes none. Named by
  /// webrtc.v1.ApplyHeatCurve and DeclineHeatCurve.
  @$pb.TagNumber(1)
  $core.String get suggestionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set suggestionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuggestionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggestionId() => $_clearField(1);

  @$pb.TagNumber(2)
  HeatCurveSuggestionKind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind(HeatCurveSuggestionKind value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  /// The heat source's curve settings that applying it sets, in the heat source's own format
  /// (device.v1.HeatSourceReadings, SETTINGS), only those fields set. For a curve:
  /// own_curve_in_force true, heating_curve_offset 0 and own_curve_supply_* at the seven points,
  /// each the optimised curve's supply at its outdoor temperature, a milder one raised where
  /// needed so that the line between two written points is nowhere below the optimised curve
  /// between them (OPTIMISED CURVE), and curve_point_offset_centidegrees 0, the bend's outdoor
  /// point left as it is. For a shift:
  /// heating_curve_offset, one step from the one in force.
  @$pb.TagNumber(3)
  $5.HeatSourceReadings get settings => $_getN(2);
  @$pb.TagNumber(3)
  set settings($5.HeatSourceReadings value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSettings() => $_has(2);
  @$pb.TagNumber(3)
  void clearSettings() => $_clearField(3);
  @$pb.TagNumber(3)
  $5.HeatSourceReadings ensureSettings() => $_ensure(2);

  /// Whether the heat source takes a write of settings, so that a client offers to write them;
  /// otherwise it guides setting them by hand, and asks for the confirmation.
  @$pb.TagNumber(4)
  $core.bool get writable => $_getBF(3);
  @$pb.TagNumber(4)
  set writable($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWritable() => $_has(3);
  @$pb.TagNumber(4)
  void clearWritable() => $_clearField(4);

  /// Where the suggestion follows an applied curve: the outdoor temperatures of the points
  /// confirmed since, whose supply it would set otherwise (SUGGESTION), coldest first, in
  /// centidegrees. Empty for a first suggestion.
  @$pb.TagNumber(5)
  $pb.PbList<$core.int> get newlyConfirmedOutdoorCentidegrees => $_getList(4);

  /// The saving in absolute terms, where the gateway has a basis for it, over a year of the
  /// outdoor temperatures it takes as typical for the building: in the heat source's electric
  /// energy, in kilowatt-hours, where it has an estimate of that energy; and in millionths of a
  /// euro, that energy priced as energy a rule avoids is (PRICE BASIS) at the window's mean price,
  /// where it has a price basis too. Each unset where not known.
  @$pb.TagNumber(6)
  $core.int get savingKwhPerYear => $_getIZ(5);
  @$pb.TagNumber(6)
  set savingKwhPerYear($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSavingKwhPerYear() => $_has(5);
  @$pb.TagNumber(6)
  void clearSavingKwhPerYear() => $_clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get savingMicroEurPerYear => $_getI64(6);
  @$pb.TagNumber(7)
  set savingMicroEurPerYear($fixnum.Int64 value) => $_setInt64(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSavingMicroEurPerYear() => $_has(6);
  @$pb.TagNumber(7)
  void clearSavingMicroEurPerYear() => $_clearField(7);

  /// The saving as thousandths of the plant's heating energy: the primary figure, which a client
  /// shows first. Unset where not known.
  @$pb.TagNumber(8)
  $core.int get savingPermille => $_getIZ(7);
  @$pb.TagNumber(8)
  set savingPermille($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSavingPermille() => $_has(7);
  @$pb.TagNumber(8)
  void clearSavingPermille() => $_clearField(8);

  /// When the suggestion was first made with its present settings.
  @$pb.TagNumber(9)
  $3.Timestamp get suggestedAt => $_getN(8);
  @$pb.TagNumber(9)
  set suggestedAt($3.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasSuggestedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearSuggestedAt() => $_clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureSuggestedAt() => $_ensure(8);

  /// Set once declined (webrtc.v1.DeclineHeatCurve), until the decline is withdrawn. It holds
  /// for this suggestion_id: a new one, given on a material change (SUGGESTION), is open again.
  /// For a heat source in a home, the home's wipe and a new household's residency clear it.
  @$pb.TagNumber(10)
  $core.bool get declined => $_getBF(9);
  @$pb.TagNumber(10)
  set declined($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDeclined() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeclined() => $_clearField(10);

  /// To whom the suggestion is handed, where it is (HAND-OVER). Unset where it is not, and to
  /// anyone the hand-over is not given to.
  @$pb.TagNumber(11)
  HeatCurveHandOver get handOver => $_getN(10);
  @$pb.TagNumber(11)
  set handOver(HeatCurveHandOver value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasHandOver() => $_has(10);
  @$pb.TagNumber(11)
  void clearHandOver() => $_clearField(11);
  @$pb.TagNumber(11)
  HeatCurveHandOver ensureHandOver() => $_ensure(10);
}

/// A suggestion handed to a technician (HAND-OVER).
class HeatCurveHandOver extends $pb.GeneratedMessage {
  factory HeatCurveHandOver({
    $0.UserId? technician,
    $3.Timestamp? since,
    $3.Timestamp? doneAt,
  }) {
    final result = create();
    if (technician != null) result.technician = technician;
    if (since != null) result.since = since;
    if (doneAt != null) result.doneAt = doneAt;
    return result;
  }

  HeatCurveHandOver._();

  factory HeatCurveHandOver.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveHandOver.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveHandOver',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'technician',
        subBuilder: $0.UserId.create)
    ..aOM<$3.Timestamp>(2, _omitFieldNames ? '' : 'since',
        subBuilder: $3.Timestamp.create)
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'doneAt',
        subBuilder: $3.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveHandOver clone() => HeatCurveHandOver()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveHandOver copyWith(void Function(HeatCurveHandOver) updates) =>
      super.copyWith((message) => updates(message as HeatCurveHandOver))
          as HeatCurveHandOver;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveHandOver create() => HeatCurveHandOver._();
  @$core.override
  HeatCurveHandOver createEmptyInstance() => create();
  static $pb.PbList<HeatCurveHandOver> createRepeated() =>
      $pb.PbList<HeatCurveHandOver>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveHandOver getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveHandOver>(create);
  static HeatCurveHandOver? _defaultInstance;

  /// The technician, by the sub of their token.
  @$pb.TagNumber(1)
  $0.UserId get technician => $_getN(0);
  @$pb.TagNumber(1)
  set technician($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTechnician() => $_has(0);
  @$pb.TagNumber(1)
  void clearTechnician() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureTechnician() => $_ensure(0);

  /// When it was handed to them.
  @$pb.TagNumber(2)
  $3.Timestamp get since => $_getN(1);
  @$pb.TagNumber(2)
  set since($3.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSince() => $_has(1);
  @$pb.TagNumber(2)
  void clearSince() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.Timestamp ensureSince() => $_ensure(1);

  /// When the suggestion was applied while handed to them, by anyone. Unset while it is not.
  @$pb.TagNumber(3)
  $3.Timestamp get doneAt => $_getN(2);
  @$pb.TagNumber(3)
  set doneAt($3.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDoneAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearDoneAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureDoneAt() => $_ensure(2);
}

/// One past suggestion of a plant (HISTORY).
class HeatCurveHistoryEntry extends $pb.GeneratedMessage {
  factory HeatCurveHistoryEntry({
    $core.String? suggestionId,
    HeatCurveSuggestionKind? kind,
    HeatCurveHistoryOutcome? outcome,
    $3.Timestamp? at,
    $5.HeatSourceReadings? settings,
    HeatCurveHandOver? handOver,
    $core.bool? stillCurrent,
    HeatCurveCompressorEffect? compressorEffect,
  }) {
    final result = create();
    if (suggestionId != null) result.suggestionId = suggestionId;
    if (kind != null) result.kind = kind;
    if (outcome != null) result.outcome = outcome;
    if (at != null) result.at = at;
    if (settings != null) result.settings = settings;
    if (handOver != null) result.handOver = handOver;
    if (stillCurrent != null) result.stillCurrent = stillCurrent;
    if (compressorEffect != null) result.compressorEffect = compressorEffect;
    return result;
  }

  HeatCurveHistoryEntry._();

  factory HeatCurveHistoryEntry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveHistoryEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveHistoryEntry',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'suggestionId')
    ..e<HeatCurveSuggestionKind>(
        2, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker:
            HeatCurveSuggestionKind.HEAT_CURVE_SUGGESTION_KIND_UNSPECIFIED,
        valueOf: HeatCurveSuggestionKind.valueOf,
        enumValues: HeatCurveSuggestionKind.values)
    ..e<HeatCurveHistoryOutcome>(
        3, _omitFieldNames ? '' : 'outcome', $pb.PbFieldType.OE,
        defaultOrMaker:
            HeatCurveHistoryOutcome.HEAT_CURVE_HISTORY_OUTCOME_UNSPECIFIED,
        valueOf: HeatCurveHistoryOutcome.valueOf,
        enumValues: HeatCurveHistoryOutcome.values)
    ..aOM<$3.Timestamp>(4, _omitFieldNames ? '' : 'at',
        subBuilder: $3.Timestamp.create)
    ..aOM<$5.HeatSourceReadings>(5, _omitFieldNames ? '' : 'settings',
        subBuilder: $5.HeatSourceReadings.create)
    ..aOM<HeatCurveHandOver>(6, _omitFieldNames ? '' : 'handOver',
        subBuilder: HeatCurveHandOver.create)
    ..aOB(7, _omitFieldNames ? '' : 'stillCurrent')
    ..aOM<HeatCurveCompressorEffect>(
        8, _omitFieldNames ? '' : 'compressorEffect',
        subBuilder: HeatCurveCompressorEffect.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveHistoryEntry clone() =>
      HeatCurveHistoryEntry()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveHistoryEntry copyWith(
          void Function(HeatCurveHistoryEntry) updates) =>
      super.copyWith((message) => updates(message as HeatCurveHistoryEntry))
          as HeatCurveHistoryEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveHistoryEntry create() => HeatCurveHistoryEntry._();
  @$core.override
  HeatCurveHistoryEntry createEmptyInstance() => create();
  static $pb.PbList<HeatCurveHistoryEntry> createRepeated() =>
      $pb.PbList<HeatCurveHistoryEntry>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveHistoryEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveHistoryEntry>(create);
  static HeatCurveHistoryEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get suggestionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set suggestionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuggestionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggestionId() => $_clearField(1);

  @$pb.TagNumber(2)
  HeatCurveSuggestionKind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind(HeatCurveSuggestionKind value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  @$pb.TagNumber(3)
  HeatCurveHistoryOutcome get outcome => $_getN(2);
  @$pb.TagNumber(3)
  set outcome(HeatCurveHistoryOutcome value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOutcome() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutcome() => $_clearField(3);

  /// When it was applied, set back, declined or superseded.
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

  /// What it set, or would have set (HeatCurveSuggestion.settings).
  @$pb.TagNumber(5)
  $5.HeatSourceReadings get settings => $_getN(4);
  @$pb.TagNumber(5)
  set settings($5.HeatSourceReadings value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSettings() => $_has(4);
  @$pb.TagNumber(5)
  void clearSettings() => $_clearField(5);
  @$pb.TagNumber(5)
  $5.HeatSourceReadings ensureSettings() => $_ensure(4);

  /// Its hand-over, where it had one, given as HeatCurveSuggestion.hand_over is.
  @$pb.TagNumber(6)
  HeatCurveHandOver get handOver => $_getN(5);
  @$pb.TagNumber(6)
  set handOver(HeatCurveHandOver value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasHandOver() => $_has(5);
  @$pb.TagNumber(6)
  void clearHandOver() => $_clearField(6);
  @$pb.TagNumber(6)
  HeatCurveHandOver ensureHandOver() => $_ensure(5);

  /// Set for a declined suggestion that is still the plant's suggestion: it is reopened by
  /// withdrawing its decline (HISTORY).
  @$pb.TagNumber(7)
  $core.bool get stillCurrent => $_getBF(6);
  @$pb.TagNumber(7)
  set stillCurrent($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStillCurrent() => $_has(6);
  @$pb.TagNumber(7)
  void clearStillCurrent() => $_clearField(7);

  /// For an applied one, the compressor before and after it (COMPRESSOR WEAR): set once seven
  /// whole days after the apply have passed, unset before, and unset where no day could be
  /// compared. Given as the view's figures are.
  @$pb.TagNumber(8)
  HeatCurveCompressorEffect get compressorEffect => $_getN(7);
  @$pb.TagNumber(8)
  set compressorEffect(HeatCurveCompressorEffect value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCompressorEffect() => $_has(7);
  @$pb.TagNumber(8)
  void clearCompressorEffect() => $_clearField(8);
  @$pb.TagNumber(8)
  HeatCurveCompressorEffect ensureCompressorEffect() => $_ensure(7);
}

/// One setting found otherwise than applied.
class HeatCurveMismatch extends $pb.GeneratedMessage {
  factory HeatCurveMismatch({
    HeatCurveMismatchKind? kind,
    $core.int? outdoorCentidegrees,
    $core.int? expectedSupplyCentidegrees,
    $core.int? foundSupplyCentidegrees,
    $core.int? foundOffset,
    $core.int? foundBendOffsetCentidegrees,
    $core.int? foundCurve,
  }) {
    final result = create();
    if (kind != null) result.kind = kind;
    if (outdoorCentidegrees != null)
      result.outdoorCentidegrees = outdoorCentidegrees;
    if (expectedSupplyCentidegrees != null)
      result.expectedSupplyCentidegrees = expectedSupplyCentidegrees;
    if (foundSupplyCentidegrees != null)
      result.foundSupplyCentidegrees = foundSupplyCentidegrees;
    if (foundOffset != null) result.foundOffset = foundOffset;
    if (foundBendOffsetCentidegrees != null)
      result.foundBendOffsetCentidegrees = foundBendOffsetCentidegrees;
    if (foundCurve != null) result.foundCurve = foundCurve;
    return result;
  }

  HeatCurveMismatch._();

  factory HeatCurveMismatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveMismatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveMismatch',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..e<HeatCurveMismatchKind>(
        1, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker:
            HeatCurveMismatchKind.HEAT_CURVE_MISMATCH_KIND_UNSPECIFIED,
        valueOf: HeatCurveMismatchKind.valueOf,
        enumValues: HeatCurveMismatchKind.values)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'outdoorCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'expectedSupplyCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'foundSupplyCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'foundOffset', $pb.PbFieldType.OS3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'foundBendOffsetCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'foundCurve', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveMismatch clone() => HeatCurveMismatch()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveMismatch copyWith(void Function(HeatCurveMismatch) updates) =>
      super.copyWith((message) => updates(message as HeatCurveMismatch))
          as HeatCurveMismatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveMismatch create() => HeatCurveMismatch._();
  @$core.override
  HeatCurveMismatch createEmptyInstance() => create();
  static $pb.PbList<HeatCurveMismatch> createRepeated() =>
      $pb.PbList<HeatCurveMismatch>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveMismatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveMismatch>(create);
  static HeatCurveMismatch? _defaultInstance;

  @$pb.TagNumber(1)
  HeatCurveMismatchKind get kind => $_getN(0);
  @$pb.TagNumber(1)
  set kind(HeatCurveMismatchKind value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => $_clearField(1);

  /// The outdoor temperature, in centidegrees, of a point or supply found otherwise.
  @$pb.TagNumber(2)
  $core.int get outdoorCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set outdoorCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOutdoorCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutdoorCentidegrees() => $_clearField(2);

  /// The supply applied there, and the supply found, in centidegrees.
  @$pb.TagNumber(3)
  $core.int get expectedSupplyCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set expectedSupplyCentidegrees($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasExpectedSupplyCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearExpectedSupplyCentidegrees() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get foundSupplyCentidegrees => $_getIZ(3);
  @$pb.TagNumber(4)
  set foundSupplyCentidegrees($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFoundSupplyCentidegrees() => $_has(3);
  @$pb.TagNumber(4)
  void clearFoundSupplyCentidegrees() => $_clearField(4);

  /// The shift found, in the heat source's own steps (device.v1.HeatSourceReadings
  /// .heating_curve_offset).
  @$pb.TagNumber(5)
  $core.int get foundOffset => $_getIZ(4);
  @$pb.TagNumber(5)
  set foundOffset($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFoundOffset() => $_has(4);
  @$pb.TagNumber(5)
  void clearFoundOffset() => $_clearField(5);

  /// The bend's offset found, in centidegrees (device.v1.HeatSourceReadings
  /// .curve_point_offset_centidegrees).
  @$pb.TagNumber(6)
  $core.int get foundBendOffsetCentidegrees => $_getIZ(5);
  @$pb.TagNumber(6)
  set foundBendOffsetCentidegrees($core.int value) =>
      $_setSignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFoundBendOffsetCentidegrees() => $_has(5);
  @$pb.TagNumber(6)
  void clearFoundBendOffsetCentidegrees() => $_clearField(6);

  /// The numbered curve found, by the heat source's own numbering (device.v1.HeatSourceReadings
  /// .heating_curve). Unset where the own curve is in force, and where none is read.
  @$pb.TagNumber(7)
  $core.int get foundCurve => $_getIZ(6);
  @$pb.TagNumber(7)
  set foundCurve($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFoundCurve() => $_has(6);
  @$pb.TagNumber(7)
  void clearFoundCurve() => $_clearField(7);
}

/// The last curve applied to a plant's heat source, and whether it is verified (APPLYING).
class HeatCurveApplied extends $pb.GeneratedMessage {
  factory HeatCurveApplied({
    $core.String? suggestionId,
    HeatCurveApplyMode? mode,
    $3.Timestamp? appliedAt,
    $5.HeatSourceReadings? settings,
    $5.HeatSourceReadings? settingsBefore,
    $core.bool? revert,
    HeatCurveVerification? verification,
    HeatCurveVerifiedBy? verifiedBy,
    $3.Timestamp? verifiedAt,
    $core.Iterable<HeatCurveMismatch>? mismatches,
  }) {
    final result = create();
    if (suggestionId != null) result.suggestionId = suggestionId;
    if (mode != null) result.mode = mode;
    if (appliedAt != null) result.appliedAt = appliedAt;
    if (settings != null) result.settings = settings;
    if (settingsBefore != null) result.settingsBefore = settingsBefore;
    if (revert != null) result.revert = revert;
    if (verification != null) result.verification = verification;
    if (verifiedBy != null) result.verifiedBy = verifiedBy;
    if (verifiedAt != null) result.verifiedAt = verifiedAt;
    if (mismatches != null) result.mismatches.addAll(mismatches);
    return result;
  }

  HeatCurveApplied._();

  factory HeatCurveApplied.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveApplied.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveApplied',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'suggestionId')
    ..e<HeatCurveApplyMode>(
        2, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE,
        defaultOrMaker: HeatCurveApplyMode.HEAT_CURVE_APPLY_MODE_UNSPECIFIED,
        valueOf: HeatCurveApplyMode.valueOf,
        enumValues: HeatCurveApplyMode.values)
    ..aOM<$3.Timestamp>(3, _omitFieldNames ? '' : 'appliedAt',
        subBuilder: $3.Timestamp.create)
    ..aOM<$5.HeatSourceReadings>(4, _omitFieldNames ? '' : 'settings',
        subBuilder: $5.HeatSourceReadings.create)
    ..aOM<$5.HeatSourceReadings>(5, _omitFieldNames ? '' : 'settingsBefore',
        subBuilder: $5.HeatSourceReadings.create)
    ..aOB(6, _omitFieldNames ? '' : 'revert')
    ..e<HeatCurveVerification>(
        7, _omitFieldNames ? '' : 'verification', $pb.PbFieldType.OE,
        defaultOrMaker:
            HeatCurveVerification.HEAT_CURVE_VERIFICATION_UNSPECIFIED,
        valueOf: HeatCurveVerification.valueOf,
        enumValues: HeatCurveVerification.values)
    ..e<HeatCurveVerifiedBy>(
        8, _omitFieldNames ? '' : 'verifiedBy', $pb.PbFieldType.OE,
        defaultOrMaker: HeatCurveVerifiedBy.HEAT_CURVE_VERIFIED_BY_UNSPECIFIED,
        valueOf: HeatCurveVerifiedBy.valueOf,
        enumValues: HeatCurveVerifiedBy.values)
    ..aOM<$3.Timestamp>(9, _omitFieldNames ? '' : 'verifiedAt',
        subBuilder: $3.Timestamp.create)
    ..pc<HeatCurveMismatch>(
        10, _omitFieldNames ? '' : 'mismatches', $pb.PbFieldType.PM,
        subBuilder: HeatCurveMismatch.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveApplied clone() => HeatCurveApplied()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveApplied copyWith(void Function(HeatCurveApplied) updates) =>
      super.copyWith((message) => updates(message as HeatCurveApplied))
          as HeatCurveApplied;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveApplied create() => HeatCurveApplied._();
  @$core.override
  HeatCurveApplied createEmptyInstance() => create();
  static $pb.PbList<HeatCurveApplied> createRepeated() =>
      $pb.PbList<HeatCurveApplied>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveApplied getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveApplied>(create);
  static HeatCurveApplied? _defaultInstance;

  /// The suggestion applied. Empty for a revert.
  @$pb.TagNumber(1)
  $core.String get suggestionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set suggestionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuggestionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggestionId() => $_clearField(1);

  @$pb.TagNumber(2)
  HeatCurveApplyMode get mode => $_getN(1);
  @$pb.TagNumber(2)
  set mode(HeatCurveApplyMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMode() => $_clearField(2);

  @$pb.TagNumber(3)
  $3.Timestamp get appliedAt => $_getN(2);
  @$pb.TagNumber(3)
  set appliedAt($3.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAppliedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearAppliedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $3.Timestamp ensureAppliedAt() => $_ensure(2);

  /// The curve settings applied, as HeatCurveSuggestion.settings states them.
  @$pb.TagNumber(4)
  $5.HeatSourceReadings get settings => $_getN(3);
  @$pb.TagNumber(4)
  set settings($5.HeatSourceReadings value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSettings() => $_has(3);
  @$pb.TagNumber(4)
  void clearSettings() => $_clearField(4);
  @$pb.TagNumber(4)
  $5.HeatSourceReadings ensureSettings() => $_ensure(3);

  /// The same fields as they were read before the apply, each where read: what a revert sets
  /// back, and what the curve's before and after are compared by. Where the apply changed which
  /// curve is in force (own_curve_in_force), also the numbered curve and its offset as they were
  /// read before it (heating_curve, heating_curve_offset), each where read, so that a revert names
  /// the curve to go back to.
  @$pb.TagNumber(5)
  $5.HeatSourceReadings get settingsBefore => $_getN(4);
  @$pb.TagNumber(5)
  set settingsBefore($5.HeatSourceReadings value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSettingsBefore() => $_has(4);
  @$pb.TagNumber(5)
  void clearSettingsBefore() => $_clearField(5);
  @$pb.TagNumber(5)
  $5.HeatSourceReadings ensureSettingsBefore() => $_ensure(4);

  /// Set where this apply set back the settings an earlier one replaced
  /// (webrtc.v1.ApplyHeatCurve.revert).
  @$pb.TagNumber(6)
  $core.bool get revert => $_getBF(5);
  @$pb.TagNumber(6)
  set revert($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRevert() => $_has(5);
  @$pb.TagNumber(6)
  void clearRevert() => $_clearField(6);

  @$pb.TagNumber(7)
  HeatCurveVerification get verification => $_getN(6);
  @$pb.TagNumber(7)
  set verification(HeatCurveVerification value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasVerification() => $_has(6);
  @$pb.TagNumber(7)
  void clearVerification() => $_clearField(7);

  /// How it was verified, where VERIFIED.
  @$pb.TagNumber(8)
  HeatCurveVerifiedBy get verifiedBy => $_getN(7);
  @$pb.TagNumber(8)
  set verifiedBy(HeatCurveVerifiedBy value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasVerifiedBy() => $_has(7);
  @$pb.TagNumber(8)
  void clearVerifiedBy() => $_clearField(8);

  /// When the verification last changed. Unset while PENDING.
  @$pb.TagNumber(9)
  $3.Timestamp get verifiedAt => $_getN(8);
  @$pb.TagNumber(9)
  set verifiedAt($3.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasVerifiedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearVerifiedAt() => $_clearField(9);
  @$pb.TagNumber(9)
  $3.Timestamp ensureVerifiedAt() => $_ensure(8);

  /// What was found otherwise, where MISMATCH: each setting once.
  @$pb.TagNumber(10)
  $pb.PbList<HeatCurveMismatch> get mismatches => $_getList(9);
}

/// ROOM TARGETS (HeatCurveView.room_target_suggestions). Where the zone that limits a band does so
/// because its own room's target is high, rather than because the house needs the supply, a lower
/// target in that room would let the curve come down. The gateway suggests it to the household:
/// lowering that room to suggested_target_centidegrees would let the curve come down by about
/// curve_lowered_by_centidegrees in the bands named. It suggests one only where the room's target
/// is above the median of the targets of the home's rooms that have one, suggesting that median,
/// or 0.5 °C below the room's target where the median is further down; and only where that would
/// let the curve come down by at least 0.5 °C in at least one band. Otherwise it suggests none for
/// the room. It is the household's comfort: the gateway
/// never changes a room's target by it, automatic savings included (AUTOMATIC SAVINGS). A
/// household acts on it by setting the room's target as it sets any target, or declines it
/// (webrtc.v1.DeclineHeatCurve, by its suggestion_id). A suggestion_id is new only on a material
/// change, as a curve suggestion's is (SUGGESTION), and a decline holds for it; a home's wipe and
/// a new household's residency clear the home's declines.
///
/// WHO SEES THEM: the residents of the home the room lies in, in a reading of their home's own
/// plant or of a plant outside homes whose curve that room limits (webrtc.v1.GetHeatCurveView by
/// home_id), and a household admin reading the home's plant by plant_id. Never the owner
/// organisation, the gateway's administrators, service, or an installer under a commissioning
/// grant, and never anyone of another home: a room's target is the household's own (HEAT CURVE,
/// WHO SEES IT). The curve suggestion given to the owner organisation of a shared plant is worked
/// out without assuming that any room target changes.
class HeatCurveRoomTargetSuggestion extends $pb.GeneratedMessage {
  factory HeatCurveRoomTargetSuggestion({
    $core.String? suggestionId,
    $0.SpaceId? roomId,
    $core.int? targetCentidegrees,
    $core.int? suggestedTargetCentidegrees,
    $core.int? curveLoweredByCentidegrees,
    $core.Iterable<$core.int>? bandOutdoorFromCentidegrees,
    $3.Timestamp? suggestedAt,
    $core.bool? declined,
  }) {
    final result = create();
    if (suggestionId != null) result.suggestionId = suggestionId;
    if (roomId != null) result.roomId = roomId;
    if (targetCentidegrees != null)
      result.targetCentidegrees = targetCentidegrees;
    if (suggestedTargetCentidegrees != null)
      result.suggestedTargetCentidegrees = suggestedTargetCentidegrees;
    if (curveLoweredByCentidegrees != null)
      result.curveLoweredByCentidegrees = curveLoweredByCentidegrees;
    if (bandOutdoorFromCentidegrees != null)
      result.bandOutdoorFromCentidegrees.addAll(bandOutdoorFromCentidegrees);
    if (suggestedAt != null) result.suggestedAt = suggestedAt;
    if (declined != null) result.declined = declined;
    return result;
  }

  HeatCurveRoomTargetSuggestion._();

  factory HeatCurveRoomTargetSuggestion.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatCurveRoomTargetSuggestion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatCurveRoomTargetSuggestion',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'suggestionId')
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'roomId',
        subBuilder: $0.SpaceId.create)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'targetCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'suggestedTargetCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'curveLoweredByCentidegrees',
        $pb.PbFieldType.OS3)
    ..p<$core.int>(6, _omitFieldNames ? '' : 'bandOutdoorFromCentidegrees',
        $pb.PbFieldType.KS3)
    ..aOM<$3.Timestamp>(7, _omitFieldNames ? '' : 'suggestedAt',
        subBuilder: $3.Timestamp.create)
    ..aOB(8, _omitFieldNames ? '' : 'declined')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveRoomTargetSuggestion clone() =>
      HeatCurveRoomTargetSuggestion()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HeatCurveRoomTargetSuggestion copyWith(
          void Function(HeatCurveRoomTargetSuggestion) updates) =>
      super.copyWith(
              (message) => updates(message as HeatCurveRoomTargetSuggestion))
          as HeatCurveRoomTargetSuggestion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeatCurveRoomTargetSuggestion create() =>
      HeatCurveRoomTargetSuggestion._();
  @$core.override
  HeatCurveRoomTargetSuggestion createEmptyInstance() => create();
  static $pb.PbList<HeatCurveRoomTargetSuggestion> createRepeated() =>
      $pb.PbList<HeatCurveRoomTargetSuggestion>();
  @$core.pragma('dart2js:noInline')
  static HeatCurveRoomTargetSuggestion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HeatCurveRoomTargetSuggestion>(create);
  static HeatCurveRoomTargetSuggestion? _defaultInstance;

  /// Named by webrtc.v1.DeclineHeatCurve. New only on a material change.
  @$pb.TagNumber(1)
  $core.String get suggestionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set suggestionId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuggestionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuggestionId() => $_clearField(1);

  /// The room, and its target as the gateway holds it, in centidegrees.
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
  $core.int get targetCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set targetCentidegrees($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTargetCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetCentidegrees() => $_clearField(3);

  /// The target suggested, in centidegrees: the median of the home's room targets, at most 50
  /// below target_centidegrees (ROOM TARGETS).
  @$pb.TagNumber(4)
  $core.int get suggestedTargetCentidegrees => $_getIZ(3);
  @$pb.TagNumber(4)
  set suggestedTargetCentidegrees($core.int value) =>
      $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSuggestedTargetCentidegrees() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuggestedTargetCentidegrees() => $_clearField(4);

  /// About how far the curve could come down with the target suggested, in the bands named:
  /// rounded half up to whole degrees, in centidegrees (a multiple of 100, at least 100, since the
  /// least a suggestion is made for is 0.5 °C), as a finer figure hints at the zones of another
  /// home on the plant. Unset where not known.
  @$pb.TagNumber(5)
  $core.int get curveLoweredByCentidegrees => $_getIZ(4);
  @$pb.TagNumber(5)
  set curveLoweredByCentidegrees($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCurveLoweredByCentidegrees() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurveLoweredByCentidegrees() => $_clearField(5);

  /// The bands it would come down in, by their outdoor_from_centidegrees (HeatCurveBand), coldest
  /// first.
  @$pb.TagNumber(6)
  $pb.PbList<$core.int> get bandOutdoorFromCentidegrees => $_getList(5);

  /// When the suggestion was first made as it stands.
  @$pb.TagNumber(7)
  $3.Timestamp get suggestedAt => $_getN(6);
  @$pb.TagNumber(7)
  set suggestedAt($3.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSuggestedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearSuggestedAt() => $_clearField(7);
  @$pb.TagNumber(7)
  $3.Timestamp ensureSuggestedAt() => $_ensure(6);

  /// Set once declined, until the decline is withdrawn.
  @$pb.TagNumber(8)
  $core.bool get declined => $_getBF(7);
  @$pb.TagNumber(8)
  set declined($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasDeclined() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeclined() => $_clearField(8);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
