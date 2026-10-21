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

/// One device output switching one contact on the heating side: a floor zone's thermostat
/// input, a heat-source input, a comfort load's supply.
class ContactBinding extends $pb.GeneratedMessage {
  factory ContactBinding({
    $0.DeviceId? deviceId,
    $1.AttributeRef? output,
    $2.AttributeValue? closedValue,
    CommissioningState? commissioning,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (output != null) result.output = output;
    if (closedValue != null) result.closedValue = closedValue;
    if (commissioning != null) result.commissioning = commissioning;
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
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOM<$1.AttributeRef>(2, _omitFieldNames ? '' : 'output',
        subBuilder: $1.AttributeRef.create)
    ..aOM<$2.AttributeValue>(3, _omitFieldNames ? '' : 'closedValue',
        subBuilder: $2.AttributeValue.create)
    ..e<CommissioningState>(
        4, _omitFieldNames ? '' : 'commissioning', $pb.PbFieldType.OE,
        defaultOrMaker: CommissioningState.COMMISSIONING_STATE_UNSPECIFIED,
        valueOf: CommissioningState.valueOf,
        enumValues: CommissioningState.values)
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

  /// The attribute the gateway writes, on its endpoint: OnOff on a relay channel, or a
  /// vendor parameter. The producer states how a write to it behaves
  /// (device.v1.AttributeBehaviour); the gateway refuses to bind an output whose write is
  /// not stated as leased.
  @$pb.TagNumber(2)
  $1.AttributeRef get output => $_getN(1);
  @$pb.TagNumber(2)
  set output($1.AttributeRef value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOutput() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutput() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.AttributeRef ensureOutput() => $_ensure(1);

  /// The value of the output with which the contact is closed. A wiring fact, not a device
  /// fact: a changeover relay wired through its normally closed contact closes it with the
  /// channel off, so OnOff false. The producer cannot know it; whoever wires the relay
  /// states it, and the gateway reads every state of the role through it — never from the
  /// output's value alone.
  ///
  /// Each role has a fixed rest state (see the role), and the output's lapse value
  /// (device.v1.LeasedWrite.lapse_value) must give it: the gateway refuses a binding whose
  /// lapse value, read through this value, does not leave the contact where the role rests.
  @$pb.TagNumber(3)
  $2.AttributeValue get closedValue => $_getN(2);
  @$pb.TagNumber(3)
  set closedValue($2.AttributeValue value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasClosedValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearClosedValue() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.AttributeValue ensureClosedValue() => $_ensure(2);

  /// Set by the gateway, ignored in a request.
  @$pb.TagNumber(4)
  CommissioningState get commissioning => $_getN(3);
  @$pb.TagNumber(4)
  set commissioning(CommissioningState value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCommissioning() => $_has(3);
  @$pb.TagNumber(4)
  void clearCommissioning() => $_clearField(4);
}

/// A reading the heating depends on: a pipe probe, a meter.
class ReadingBinding extends $pb.GeneratedMessage {
  factory ReadingBinding({
    $0.DeviceId? deviceId,
    $1.AttributeRef? reading,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (reading != null) result.reading = reading;
    return result;
  }

  ReadingBinding._();

  factory ReadingBinding.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReadingBinding.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadingBinding',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOM<$1.AttributeRef>(2, _omitFieldNames ? '' : 'reading',
        subBuilder: $1.AttributeRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadingBinding clone() => ReadingBinding()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadingBinding copyWith(void Function(ReadingBinding) updates) =>
      super.copyWith((message) => updates(message as ReadingBinding))
          as ReadingBinding;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadingBinding create() => ReadingBinding._();
  @$core.override
  ReadingBinding createEmptyInstance() => create();
  static $pb.PbList<ReadingBinding> createRepeated() =>
      $pb.PbList<ReadingBinding>();
  @$core.pragma('dart2js:noInline')
  static ReadingBinding getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadingBinding>(create);
  static ReadingBinding? _defaultInstance;

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
  $1.AttributeRef get reading => $_getN(1);
  @$pb.TagNumber(2)
  set reading($1.AttributeRef value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReading() => $_has(1);
  @$pb.TagNumber(2)
  void clearReading() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.AttributeRef ensureReading() => $_ensure(1);
}

/// One heat source and what the gateway reads and drives of it. Its circuits carry the heat
/// to the rooms.
class HeatingPlant extends $pb.GeneratedMessage {
  factory HeatingPlant({
    $core.String? plantId,
    $0.SpaceId? spaceId,
    $core.String? name,
    HeatSourceKind? source,
    $0.DeviceId? heatSourceDeviceId,
    ContactBinding? sgReadyBlock,
    ContactBinding? sgReadyBoost,
    ContactBinding? addHeatBlock,
    ReadingBinding? meter,
    $core.Iterable<HeatingCircuit>? circuits,
    $fixnum.Int64? revision,
  }) {
    final result = create();
    if (plantId != null) result.plantId = plantId;
    if (spaceId != null) result.spaceId = spaceId;
    if (name != null) result.name = name;
    if (source != null) result.source = source;
    if (heatSourceDeviceId != null)
      result.heatSourceDeviceId = heatSourceDeviceId;
    if (sgReadyBlock != null) result.sgReadyBlock = sgReadyBlock;
    if (sgReadyBoost != null) result.sgReadyBoost = sgReadyBoost;
    if (addHeatBlock != null) result.addHeatBlock = addHeatBlock;
    if (meter != null) result.meter = meter;
    if (circuits != null) result.circuits.addAll(circuits);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatingPlant',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'plantId')
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..e<HeatSourceKind>(4, _omitFieldNames ? '' : 'source', $pb.PbFieldType.OE,
        defaultOrMaker: HeatSourceKind.HEAT_SOURCE_KIND_UNSPECIFIED,
        valueOf: HeatSourceKind.valueOf,
        enumValues: HeatSourceKind.values)
    ..aOM<$0.DeviceId>(5, _omitFieldNames ? '' : 'heatSourceDeviceId',
        subBuilder: $0.DeviceId.create)
    ..aOM<ContactBinding>(6, _omitFieldNames ? '' : 'sgReadyBlock',
        subBuilder: ContactBinding.create)
    ..aOM<ContactBinding>(7, _omitFieldNames ? '' : 'sgReadyBoost',
        subBuilder: ContactBinding.create)
    ..aOM<ContactBinding>(8, _omitFieldNames ? '' : 'addHeatBlock',
        subBuilder: ContactBinding.create)
    ..aOM<ReadingBinding>(9, _omitFieldNames ? '' : 'meter',
        subBuilder: ReadingBinding.create)
    ..pc<HeatingCircuit>(
        10, _omitFieldNames ? '' : 'circuits', $pb.PbFieldType.PM,
        subBuilder: HeatingCircuit.create)
    ..a<$fixnum.Int64>(
        11, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OU6,
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

  /// Assigned by the gateway; empty in a request that creates one.
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
  /// the contact bindings below, never through this device.
  @$pb.TagNumber(5)
  $0.DeviceId get heatSourceDeviceId => $_getN(4);
  @$pb.TagNumber(5)
  set heatSourceDeviceId($0.DeviceId value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasHeatSourceDeviceId() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeatSourceDeviceId() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.DeviceId ensureHeatSourceDeviceId() => $_ensure(4);

  /// The heat source's SG Ready inputs, by what each means closed alone: sg_ready_block
  /// closed alone blocks the heat source, sg_ready_boost closed alone recommends running
  /// harder, both closed commands it to, and both open is normal operation. Both rest open,
  /// so a lapsed lease or a stopped gateway leaves the heat source running normally. Bound
  /// together or not at all.
  @$pb.TagNumber(6)
  ContactBinding get sgReadyBlock => $_getN(5);
  @$pb.TagNumber(6)
  set sgReadyBlock(ContactBinding value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSgReadyBlock() => $_has(5);
  @$pb.TagNumber(6)
  void clearSgReadyBlock() => $_clearField(6);
  @$pb.TagNumber(6)
  ContactBinding ensureSgReadyBlock() => $_ensure(5);

  @$pb.TagNumber(7)
  ContactBinding get sgReadyBoost => $_getN(6);
  @$pb.TagNumber(7)
  set sgReadyBoost(ContactBinding value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasSgReadyBoost() => $_has(6);
  @$pb.TagNumber(7)
  void clearSgReadyBoost() => $_clearField(7);
  @$pb.TagNumber(7)
  ContactBinding ensureSgReadyBoost() => $_ensure(6);

  /// The heat source's input that blocks its add-on (electric) heat while closed. Rests
  /// open: add-on heat allowed.
  @$pb.TagNumber(8)
  ContactBinding get addHeatBlock => $_getN(7);
  @$pb.TagNumber(8)
  set addHeatBlock(ContactBinding value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAddHeatBlock() => $_has(7);
  @$pb.TagNumber(8)
  void clearAddHeatBlock() => $_clearField(8);
  @$pb.TagNumber(8)
  ContactBinding ensureAddHeatBlock() => $_ensure(7);

  /// The electricity or heat meter the plant is measured by.
  @$pb.TagNumber(9)
  ReadingBinding get meter => $_getN(8);
  @$pb.TagNumber(9)
  set meter(ReadingBinding value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasMeter() => $_has(8);
  @$pb.TagNumber(9)
  void clearMeter() => $_clearField(9);
  @$pb.TagNumber(9)
  ReadingBinding ensureMeter() => $_ensure(8);

  @$pb.TagNumber(10)
  $pb.PbList<HeatingCircuit> get circuits => $_getList(9);

  /// Set by the gateway, and bumped by every change. A replacement names the revision it
  /// replaces and is refused as FAILED_PRECONDITION with metadata "reason"
  /// "STALE_REVISION" when the plant has changed since.
  @$pb.TagNumber(11)
  $fixnum.Int64 get revision => $_getI64(10);
  @$pb.TagNumber(11)
  set revision($fixnum.Int64 value) => $_setInt64(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRevision() => $_has(10);
  @$pb.TagNumber(11)
  void clearRevision() => $_clearField(11);
}

/// One heating circuit of a plant. Supply temperature and its cap are per circuit.
class HeatingCircuit extends $pb.GeneratedMessage {
  factory HeatingCircuit({
    $core.String? circuitId,
    $core.String? name,
    CircuitKind? kind,
    $core.bool? mixingValve,
    $core.int? supplyCapCentidegrees,
    ReadingBinding? supplyProbe,
    ReadingBinding? returnProbe,
    $core.Iterable<FloorZone>? zones,
  }) {
    final result = create();
    if (circuitId != null) result.circuitId = circuitId;
    if (name != null) result.name = name;
    if (kind != null) result.kind = kind;
    if (mixingValve != null) result.mixingValve = mixingValve;
    if (supplyCapCentidegrees != null)
      result.supplyCapCentidegrees = supplyCapCentidegrees;
    if (supplyProbe != null) result.supplyProbe = supplyProbe;
    if (returnProbe != null) result.returnProbe = returnProbe;
    if (zones != null) result.zones.addAll(zones);
    return result;
  }

  HeatingCircuit._();

  factory HeatingCircuit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HeatingCircuit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HeatingCircuit',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.heating.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'circuitId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..e<CircuitKind>(3, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: CircuitKind.CIRCUIT_KIND_UNSPECIFIED,
        valueOf: CircuitKind.valueOf,
        enumValues: CircuitKind.values)
    ..aOB(4, _omitFieldNames ? '' : 'mixingValve')
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'supplyCapCentidegrees', $pb.PbFieldType.OS3)
    ..aOM<ReadingBinding>(6, _omitFieldNames ? '' : 'supplyProbe',
        subBuilder: ReadingBinding.create)
    ..aOM<ReadingBinding>(7, _omitFieldNames ? '' : 'returnProbe',
        subBuilder: ReadingBinding.create)
    ..pc<FloorZone>(8, _omitFieldNames ? '' : 'zones', $pb.PbFieldType.PM,
        subBuilder: FloorZone.create)
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

  /// Assigned by the gateway; empty for a new circuit in a plant replacement.
  @$pb.TagNumber(1)
  $core.String get circuitId => $_getSZ(0);
  @$pb.TagNumber(1)
  set circuitId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCircuitId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCircuitId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  CircuitKind get kind => $_getN(2);
  @$pb.TagNumber(3)
  set kind(CircuitKind value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasKind() => $_has(2);
  @$pb.TagNumber(3)
  void clearKind() => $_clearField(3);

  /// FLOOR only: whether a mixing valve feeds the circuit, and the supply temperature its
  /// self-acting limiter caps it at, in centidegrees. Absent: not known, never 0 °C.
  @$pb.TagNumber(4)
  $core.bool get mixingValve => $_getBF(3);
  @$pb.TagNumber(4)
  set mixingValve($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMixingValve() => $_has(3);
  @$pb.TagNumber(4)
  void clearMixingValve() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get supplyCapCentidegrees => $_getIZ(4);
  @$pb.TagNumber(5)
  set supplyCapCentidegrees($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSupplyCapCentidegrees() => $_has(4);
  @$pb.TagNumber(5)
  void clearSupplyCapCentidegrees() => $_clearField(5);

  /// FLOOR only: probes on the circuit's supply (after mixing) and return.
  @$pb.TagNumber(6)
  ReadingBinding get supplyProbe => $_getN(5);
  @$pb.TagNumber(6)
  set supplyProbe(ReadingBinding value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasSupplyProbe() => $_has(5);
  @$pb.TagNumber(6)
  void clearSupplyProbe() => $_clearField(6);
  @$pb.TagNumber(6)
  ReadingBinding ensureSupplyProbe() => $_ensure(5);

  @$pb.TagNumber(7)
  ReadingBinding get returnProbe => $_getN(6);
  @$pb.TagNumber(7)
  set returnProbe(ReadingBinding value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasReturnProbe() => $_has(6);
  @$pb.TagNumber(7)
  void clearReturnProbe() => $_clearField(7);
  @$pb.TagNumber(7)
  ReadingBinding ensureReturnProbe() => $_ensure(6);

  /// FLOOR only. A radiator circuit carries none; its valves belong to the rooms.
  @$pb.TagNumber(8)
  $pb.PbList<FloorZone> get zones => $_getList(7);
}

/// One loop or group of loops on a floor circuit's manifold, switched by one output on its
/// wiring centre's thermostat input. The output's contact closed means the zone heats, and
/// it rests closed: when the gateway is gone the zone heats, capped only by the circuit's
/// supply limiter.
class FloorZone extends $pb.GeneratedMessage {
  factory FloorZone({
    $core.String? zoneId,
    $core.String? name,
    ContactBinding? output,
    $core.Iterable<FloorZoneRoom>? rooms,
  }) {
    final result = create();
    if (zoneId != null) result.zoneId = zoneId;
    if (name != null) result.name = name;
    if (output != null) result.output = output;
    if (rooms != null) result.rooms.addAll(rooms);
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
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOM<ContactBinding>(3, _omitFieldNames ? '' : 'output',
        subBuilder: ContactBinding.create)
    ..pc<FloorZoneRoom>(4, _omitFieldNames ? '' : 'rooms', $pb.PbFieldType.PM,
        subBuilder: FloorZoneRoom.create)
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

  /// Assigned by the gateway; empty for a new zone.
  @$pb.TagNumber(1)
  $core.String get zoneId => $_getSZ(0);
  @$pb.TagNumber(1)
  set zoneId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasZoneId() => $_has(0);
  @$pb.TagNumber(1)
  void clearZoneId() => $_clearField(1);

  /// As marked on the manifold or the drawing ("SL 2").
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  ContactBinding get output => $_getN(2);
  @$pb.TagNumber(3)
  set output(ContactBinding value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOutput() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutput() => $_clearField(3);
  @$pb.TagNumber(3)
  ContactBinding ensureOutput() => $_ensure(2);

  /// The rooms the zone heats. A zone may heat several rooms and a room may be heated by
  /// several zones. Exactly one room is the zone's control room, and only its error, its
  /// sensor and its open window steer the zone; the shares of one zone sum to 1000.
  @$pb.TagNumber(4)
  $pb.PbList<FloorZoneRoom> get rooms => $_getList(3);
}

class FloorZoneRoom extends $pb.GeneratedMessage {
  factory FloorZoneRoom({
    $0.SpaceId? roomId,
    $core.int? areaSharePermille,
    $core.bool? isControl,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (areaSharePermille != null) result.areaSharePermille = areaSharePermille;
    if (isControl != null) result.isControl = isControl;
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
    ..aOB(3, _omitFieldNames ? '' : 'isControl')
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

  /// A room within the plant's space.
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

  @$pb.TagNumber(3)
  $core.bool get isControl => $_getBF(2);
  @$pb.TagNumber(3)
  set isControl($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsControl() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsControl() => $_clearField(3);
}

/// An electric load kept warm for comfort rather than heating a room to a target — a heated
/// bathroom floor, a towel heater — run inside its time windows. Its output's contact closed
/// means the load may heat under its own thermostat, and it rests closed: when the gateway
/// is gone the load works as it did before.
class ComfortLoad extends $pb.GeneratedMessage {
  factory ComfortLoad({
    $core.String? comfortLoadId,
    $0.SpaceId? roomId,
    $core.String? name,
    ContactBinding? output,
    $core.Iterable<ComfortWindow>? windows,
  }) {
    final result = create();
    if (comfortLoadId != null) result.comfortLoadId = comfortLoadId;
    if (roomId != null) result.roomId = roomId;
    if (name != null) result.name = name;
    if (output != null) result.output = output;
    if (windows != null) result.windows.addAll(windows);
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

  /// Assigned by the gateway; empty in a request that creates one.
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

  /// When the load may heat. Empty: at no time, beyond what the plan allows for price. Set
  /// by the room's residents with SetComfortWindows; a replacement of the comfort load
  /// keeps them.
  @$pb.TagNumber(5)
  $pb.PbList<ComfortWindow> get windows => $_getList(4);
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

  /// The days it starts on: bit 0 Monday through bit 6 Sunday.
  @$pb.TagNumber(1)
  $core.int get weekdays => $_getIZ(0);
  @$pb.TagNumber(1)
  set weekdays($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWeekdays() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeekdays() => $_clearField(1);

  /// Minutes after local midnight, 0–1439. A window whose end is not after its start runs
  /// past midnight into the next day.
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

/// The heating records a caller may see under a space, in reply to ListHeating, and the one
/// record a put changed.
class HeatingLayout extends $pb.GeneratedMessage {
  factory HeatingLayout({
    $core.Iterable<HeatingPlant>? plants,
    $core.Iterable<ComfortLoad>? comfortLoads,
  }) {
    final result = create();
    if (plants != null) result.plants.addAll(plants);
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
    ..pc<ComfortLoad>(
        2, _omitFieldNames ? '' : 'comfortLoads', $pb.PbFieldType.PM,
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
  $pb.PbList<ComfortLoad> get comfortLoads => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
