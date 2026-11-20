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

import 'package:protobuf/protobuf.dart' as $pb;

class HeatSourceKind extends $pb.ProtobufEnum {
  static const HeatSourceKind HEAT_SOURCE_KIND_UNSPECIFIED =
      HeatSourceKind._(0, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_UNSPECIFIED');
  static const HeatSourceKind HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP =
      HeatSourceKind._(
          1, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP');
  static const HeatSourceKind HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP =
      HeatSourceKind._(
          2, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP');
  static const HeatSourceKind HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP =
      HeatSourceKind._(
          3, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP');
  static const HeatSourceKind HEAT_SOURCE_KIND_DISTRICT_HEATING =
      HeatSourceKind._(
          4, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_DISTRICT_HEATING');
  static const HeatSourceKind HEAT_SOURCE_KIND_ELECTRIC_BOILER =
      HeatSourceKind._(
          5, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_ELECTRIC_BOILER');
  static const HeatSourceKind HEAT_SOURCE_KIND_FUEL_BOILER =
      HeatSourceKind._(6, _omitEnumNames ? '' : 'HEAT_SOURCE_KIND_FUEL_BOILER');

  static const $core.List<HeatSourceKind> values = <HeatSourceKind>[
    HEAT_SOURCE_KIND_UNSPECIFIED,
    HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP,
    HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP,
    HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP,
    HEAT_SOURCE_KIND_DISTRICT_HEATING,
    HEAT_SOURCE_KIND_ELECTRIC_BOILER,
    HEAT_SOURCE_KIND_FUEL_BOILER,
  ];

  static final $core.List<HeatSourceKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static HeatSourceKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatSourceKind._(super.value, super.name);
}

/// Whether a circuit is fed through a mixing valve, as its installer states it.
///
/// SUPPLY. What heats a circuit's radiators or slab is the water entering it. Where a circuit is
/// UNMIXED, fed straight from its heat source, that is the heat source's own measured supply,
/// less a little pipe loss (not the supply it aims for, and not while it heats hot water, when its
/// flow goes to the tank), and the gateway may use the heat source's reading for it. Where it is
/// MIXED, or a floor circuit's mixing is not stated (CIRCUIT_MIXING_UNSPECIFIED), the water is
/// cooler than the heat source makes and only a supply probe
/// after the mixer says what it is: without one, a model of what the circuit heats cannot be
/// fitted on its heated quarters. A return probe is never required: without one a circuit is
/// modelled on its rooms alone.
class CircuitMixing extends $pb.ProtobufEnum {
  /// Not stated. Read for the supply as the usual case for the circuit's kind: a floor circuit as
  /// MIXED (the heat source's reading is not used), a radiator circuit as UNMIXED (it is). An
  /// installer's answer always wins.
  static const CircuitMixing CIRCUIT_MIXING_UNSPECIFIED =
      CircuitMixing._(0, _omitEnumNames ? '' : 'CIRCUIT_MIXING_UNSPECIFIED');

  /// A mixing (shunt) valve blends return water into the circuit's supply.
  static const CircuitMixing CIRCUIT_MIXING_MIXED =
      CircuitMixing._(1, _omitEnumNames ? '' : 'CIRCUIT_MIXING_MIXED');

  /// No mixing valve: the circuit takes the heat source's supply as it is.
  static const CircuitMixing CIRCUIT_MIXING_UNMIXED =
      CircuitMixing._(2, _omitEnumNames ? '' : 'CIRCUIT_MIXING_UNMIXED');

  static const $core.List<CircuitMixing> values = <CircuitMixing>[
    CIRCUIT_MIXING_UNSPECIFIED,
    CIRCUIT_MIXING_MIXED,
    CIRCUIT_MIXING_UNMIXED,
  ];

  static final $core.List<CircuitMixing?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static CircuitMixing? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CircuitMixing._(super.value, super.name);
}

/// A price rule (PRICE RULES). A closed list that grows only by a release of this schema: a
/// client words a rule it does not know as a price rule, unnamed, and offers no switch for it.
class PriceRule extends $pb.ProtobufEnum {
  /// Not stated, or a rule this client's schema does not know. Refused in a request.
  static const PriceRule PRICE_RULE_UNSPECIFIED =
      PriceRule._(0, _omitEnumNames ? '' : 'PRICE_RULE_UNSPECIFIED');

  /// Blocks the add-on heater (HeatPumpControl.add_on_heater_block) in the day's dearest quarter
  /// hours, the compressor running on: each block within "plant.max_block_minutes"
  /// (commissioning.v1), and ended early where a room it heats falls below its comfort band or,
  /// where the plant reports it, its hot water runs low. A blocking rule. On a plant with a
  /// hot-water tank — one that binds hot_water_block, or whose heat source reports its tank
  /// (device.v1.HeatSourceReadings: a hot-water temperature, or its periodic increase) — it keeps
  /// clear of the heat source's periodic increase as PRICE_RULE_HOT_WATER does, since the add-on
  /// heater may be what lifts the tank to the step's temperature: no block starts in a quarter
  /// hour of a scheduled step, and one that would run into it is planned to end at its start
  /// (HEAT_BLOCK_END_PLANNED). On such a plant, LIVE, it drives nothing while the periodic
  /// increase is not known, as PRICE_RULE_HOT_WATER says.
  static const PriceRule PRICE_RULE_ADD_ON_HEATER_BLOCK =
      PriceRule._(1, _omitEnumNames ? '' : 'PRICE_RULE_ADD_ON_HEATER_BLOCK');

  /// Heats the plant's floor zones (FloorZone) ahead in cheap quarter hours, within the top of
  /// their rooms' comfort band, and holds them off in dear ones, within its bottom. Holds no input
  /// of the plant: not a blocking rule.
  static const PriceRule PRICE_RULE_FLOOR_PRE_HEAT =
      PriceRule._(2, _omitEnumNames ? '' : 'PRICE_RULE_FLOOR_PRE_HEAT');

  /// Holds back the heat source's hot water in dear quarter hours (HeatPumpControl.hot_water_block)
  /// and lets it be made in cheap ones: each block within "plant.max_block_minutes" and the rules
  /// of a block that stops the compressor (commissioning.v1, BLOCKS ON A COMPRESSOR), ended early
  /// where the tank's top falls to "hot_water.block_floor_centidegrees" (HEAT_BLOCK_END_HOT_WATER_LOW)
  /// or is not heard (HEAT_BLOCK_END_INTERRUPTED), never across the heat source's periodic
  /// increase, and released so that the charge it then makes lands in the cheapest quarter hours
  /// after it. A blocking rule, whose input is hot_water_block; SHADOW models the blocks whether
  /// or not it is bound. It starts no block where the plant does not report its tank's top, or
  /// that report is not heard. LIVE, it drives nothing while the periodic increase is not known,
  /// since it could not keep clear of a step it does not know the time of. The periodic increase
  /// is known where "hot_water.periodic_increase" is false, or true with its interval and its
  /// start known: each read from the heat source where its readings report it
  /// (device.v1.HeatSourceReadings, periodic_increase_*), the reading standing over an answer, and
  /// otherwise answered with a value (commissioning.v1). False, whether reported or answered, is
  /// an answer: no periodic increase to keep clear of. Besides,
  /// where the plant binds sg_ready_boost and "plant.boost_uses_add_on" is false, it may ask for
  /// hot water in cheap quarter hours, never during a block, and only while that input too may be
  /// driven (PRICE_RULE_MODE_LIVE): never otherwise, since a boost that brings in the add-on
  /// heater buys its heat at the dearest rate.
  static const PriceRule PRICE_RULE_HOT_WATER =
      PriceRule._(3, _omitEnumNames ? '' : 'PRICE_RULE_HOT_WATER');

  /// Holds each of the plant's floor zones (FloorZone) on for a share of a fixed cycle, the share
  /// set from its control room's error against its target, instead of on until the room reaches
  /// its target and off until it falls back. Not steered by price, and saves nothing by price: its
  /// shadow days are counts only (ShadowDay.counts_only), judged by how near their targets the
  /// rooms were held and how often the zones started (ShadowDay.floor_control,
  /// floor_control_as_run). Zones whose control room is one hold one share. The cycle, the share
  /// and how it follows the error are the gateway's. Where a zone's control room is not heard it
  /// runs a cautious fixed share (climate.v1.CLIMATE_EXPLANATION_KIND_NO_READING), and where no
  /// share is yet known for it, it is left at rest. A window open in the control room holds the
  /// zone off, and a price rule that drives the zone (PRICE_RULE_FLOOR_PRE_HEAT, LIVE) decides it
  /// over the share while it does. Holds no input of the plant: not a blocking rule.
  static const PriceRule PRICE_RULE_FLOOR_TIME_SHARE =
      PriceRule._(4, _omitEnumNames ? '' : 'PRICE_RULE_FLOOR_TIME_SHARE');

  static const $core.List<PriceRule> values = <PriceRule>[
    PRICE_RULE_UNSPECIFIED,
    PRICE_RULE_ADD_ON_HEATER_BLOCK,
    PRICE_RULE_FLOOR_PRE_HEAT,
    PRICE_RULE_HOT_WATER,
    PRICE_RULE_FLOOR_TIME_SHARE,
  ];

  static final $core.List<PriceRule?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static PriceRule? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PriceRule._(super.value, super.name);
}

/// How a price rule runs on a plant.
class PriceRuleMode extends $pb.ProtobufEnum {
  /// Not stated, or a mode this client's schema does not know: read as OFF. Refused in a
  /// request.
  static const PriceRuleMode PRICE_RULE_MODE_UNSPECIFIED =
      PriceRuleMode._(0, _omitEnumNames ? '' : 'PRICE_RULE_MODE_UNSPECIFIED');

  /// The rule decides nothing and drives nothing. A plant's rules start OFF, save as the rollout
  /// note under PRICE RULES (WHO SWITCHES THEM) says.
  static const PriceRuleMode PRICE_RULE_MODE_OFF =
      PriceRuleMode._(1, _omitEnumNames ? '' : 'PRICE_RULE_MODE_OFF');

  /// The rule decides as LIVE would and records what it decided (HeatBlock, ShadowSummary), but
  /// drives nothing, so that its saving, and any comfort it would have cost, can be judged before
  /// it goes live (commissioning.v1 READINESS). Needs no input bound, and no hold applies to it.
  static const PriceRuleMode PRICE_RULE_MODE_SHADOW =
      PriceRuleMode._(2, _omitEnumNames ? '' : 'PRICE_RULE_MODE_SHADOW');

  /// The rule decides and drives. It drives only while the gateway may drive the input it steers:
  /// bound, under a current pass of its commissioning test, the plant's feature not blocked
  /// (commissioning.v1 FEATURE_PLANT), "plant.max_block_minutes" answered for a blocking rule, the
  /// periodic increase known for HOT_WATER and for ADD_ON_HEATER_BLOCK on a plant with a
  /// hot-water tank (PRICE_RULE_HOT_WATER, PRICE_RULE_ADD_ON_HEATER_BLOCK), and no hold running
  /// (HeatBlockRelease). Meanwhile it drives nothing and stays LIVE, and the
  /// plant's feature status says why. A rule is put LIVE only while the input it steers is bound
  /// and holds a current pass of its commissioning test, and, where it needs the periodic increase
  /// known, while it is (webrtc.v1.SetPriceRuleMode); one whose pass stops being current, or whose
  /// periodic increase stops being known, later stays LIVE and drives nothing until both hold
  /// again.
  static const PriceRuleMode PRICE_RULE_MODE_LIVE =
      PriceRuleMode._(3, _omitEnumNames ? '' : 'PRICE_RULE_MODE_LIVE');

  static const $core.List<PriceRuleMode> values = <PriceRuleMode>[
    PRICE_RULE_MODE_UNSPECIFIED,
    PRICE_RULE_MODE_OFF,
    PRICE_RULE_MODE_SHADOW,
    PRICE_RULE_MODE_LIVE,
  ];

  static final $core.List<PriceRuleMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static PriceRuleMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PriceRuleMode._(super.value, super.name);
}

/// How a heat block ended (HeatBlock.end).
class HeatBlockEnd extends $pb.ProtobufEnum {
  /// Under way, or a cause this client's schema does not know: an app shows that it ended,
  /// without a cause.
  static const HeatBlockEnd HEAT_BLOCK_END_UNSPECIFIED =
      HeatBlockEnd._(0, _omitEnumNames ? '' : 'HEAT_BLOCK_END_UNSPECIFIED');

  /// It ran to the end its rule planned for it.
  static const HeatBlockEnd HEAT_BLOCK_END_PLANNED =
      HeatBlockEnd._(1, _omitEnumNames ? '' : 'HEAT_BLOCK_END_PLANNED');

  /// A room the plant heats fell below its comfort band (climate.v1.ComfortPreference, THE
  /// BAND).
  static const HeatBlockEnd HEAT_BLOCK_END_ROOM_BELOW_BAND =
      HeatBlockEnd._(2, _omitEnumNames ? '' : 'HEAT_BLOCK_END_ROOM_BELOW_BAND');

  /// The plant's hot water ran low, where the plant reports it.
  static const HeatBlockEnd HEAT_BLOCK_END_HOT_WATER_LOW =
      HeatBlockEnd._(3, _omitEnumNames ? '' : 'HEAT_BLOCK_END_HOT_WATER_LOW');

  /// Released by hand (webrtc.v1.ReleaseHeatBlock; HeatBlockRelease).
  static const HeatBlockEnd HEAT_BLOCK_END_RELEASED =
      HeatBlockEnd._(4, _omitEnumNames ? '' : 'HEAT_BLOCK_END_RELEASED');

  /// Its rule's mode changed (PriceRuleChange).
  static const HeatBlockEnd HEAT_BLOCK_END_RULE_SWITCHED =
      HeatBlockEnd._(5, _omitEnumNames ? '' : 'HEAT_BLOCK_END_RULE_SWITCHED');

  /// The gateway stopped holding it for a cause of its own: the input could no longer be driven
  /// (PRICE_RULE_MODE_LIVE), a reading its rule bounds it by was not heard, a commissioning test
  /// took it, or the gateway restarted.
  static const HeatBlockEnd HEAT_BLOCK_END_INTERRUPTED =
      HeatBlockEnd._(6, _omitEnumNames ? '' : 'HEAT_BLOCK_END_INTERRUPTED');

  /// Ended early for a cause not told to the recipient (WHO SEES THEM).
  static const HeatBlockEnd HEAT_BLOCK_END_UNSTATED =
      HeatBlockEnd._(7, _omitEnumNames ? '' : 'HEAT_BLOCK_END_UNSTATED');

  static const $core.List<HeatBlockEnd> values = <HeatBlockEnd>[
    HEAT_BLOCK_END_UNSPECIFIED,
    HEAT_BLOCK_END_PLANNED,
    HEAT_BLOCK_END_ROOM_BELOW_BAND,
    HEAT_BLOCK_END_HOT_WATER_LOW,
    HEAT_BLOCK_END_RELEASED,
    HEAT_BLOCK_END_RULE_SWITCHED,
    HEAT_BLOCK_END_INTERRUPTED,
    HEAT_BLOCK_END_UNSTATED,
  ];

  static final $core.List<HeatBlockEnd?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static HeatBlockEnd? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatBlockEnd._(super.value, super.name);
}

/// What a shadow's money figures include (PRICE BASIS). A basis this client's schema does not know:
/// a client shows the figure without saying what it includes.
class ShadowPriceBasis extends $pb.ProtobufEnum {
  /// Not stated: a day kept before price bases, or from a gateway that predates them. Read as SPOT.
  static const ShadowPriceBasis SHADOW_PRICE_BASIS_UNSPECIFIED =
      ShadowPriceBasis._(
          0, _omitEnumNames ? '' : 'SHADOW_PRICE_BASIS_UNSPECIFIED');

  /// The raw day-ahead spot price (planning.v1.PriceInterval) on every kWh: no VAT, no energy tax,
  /// no adder.
  static const ShadowPriceBasis SHADOW_PRICE_BASIS_SPOT =
      ShadowPriceBasis._(1, _omitEnumNames ? '' : 'SHADOW_PRICE_BASIS_SPOT');

  /// The payer's price, as PRICE BASIS parts it between energy moved and extra energy.
  static const ShadowPriceBasis SHADOW_PRICE_BASIS_PAYER =
      ShadowPriceBasis._(2, _omitEnumNames ? '' : 'SHADOW_PRICE_BASIS_PAYER');

  static const $core.List<ShadowPriceBasis> values = <ShadowPriceBasis>[
    SHADOW_PRICE_BASIS_UNSPECIFIED,
    SHADOW_PRICE_BASIS_SPOT,
    SHADOW_PRICE_BASIS_PAYER,
  ];

  static final $core.List<ShadowPriceBasis?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ShadowPriceBasis? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ShadowPriceBasis._(super.value, super.name);
}

/// Where the adder in force comes from (ENERGY PRICE ADDER).
class EnergyPriceAdderSource extends $pb.ProtobufEnum {
  /// Not stated: no adder applies (a SPOT day, a payer whose building has no price area).
  static const EnergyPriceAdderSource ENERGY_PRICE_ADDER_SOURCE_UNSPECIFIED =
      EnergyPriceAdderSource._(
          0, _omitEnumNames ? '' : 'ENERGY_PRICE_ADDER_SOURCE_UNSPECIFIED');

  /// The gateway's default for the price area's country. A figure priced with it is approximate.
  static const EnergyPriceAdderSource ENERGY_PRICE_ADDER_SOURCE_DEFAULT =
      EnergyPriceAdderSource._(
          1, _omitEnumNames ? '' : 'ENERGY_PRICE_ADDER_SOURCE_DEFAULT');

  /// The payer's own, set with webrtc.v1.SetEnergyPriceAdder.
  static const EnergyPriceAdderSource ENERGY_PRICE_ADDER_SOURCE_STATED =
      EnergyPriceAdderSource._(
          2, _omitEnumNames ? '' : 'ENERGY_PRICE_ADDER_SOURCE_STATED');

  static const $core.List<EnergyPriceAdderSource> values =
      <EnergyPriceAdderSource>[
    ENERGY_PRICE_ADDER_SOURCE_UNSPECIFIED,
    ENERGY_PRICE_ADDER_SOURCE_DEFAULT,
    ENERGY_PRICE_ADDER_SOURCE_STATED,
  ];

  static final $core.List<EnergyPriceAdderSource?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static EnergyPriceAdderSource? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const EnergyPriceAdderSource._(super.value, super.name);
}

/// The kind of reason a zone limits a heat curve (HeatCurveLimit). A closed list that grows only
/// by a release of this schema.
class HeatCurveLimitReason extends $pb.ProtobufEnum {
  /// Not known, as with too few zones to compare, or a reason this client's schema does not know:
  /// a client shows the limit without a reason.
  static const HeatCurveLimitReason HEAT_CURVE_LIMIT_REASON_UNSPECIFIED =
      HeatCurveLimitReason._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_LIMIT_REASON_UNSPECIFIED');

  /// Only this zone runs high while most others run low: it is short of flow rather than of
  /// supply temperature. It points to balancing the system, not to the curve.
  static const HeatCurveLimitReason HEAT_CURVE_LIMIT_REASON_HYDRAULIC_BALANCE =
      HeatCurveLimitReason._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_LIMIT_REASON_HYDRAULIC_BALANCE');

  /// Most zones run high: what is heated needs the supply the curve gives.
  static const HeatCurveLimitReason HEAT_CURVE_LIMIT_REASON_DEMAND =
      HeatCurveLimitReason._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_LIMIT_REASON_DEMAND');

  static const $core.List<HeatCurveLimitReason> values = <HeatCurveLimitReason>[
    HEAT_CURVE_LIMIT_REASON_UNSPECIFIED,
    HEAT_CURVE_LIMIT_REASON_HYDRAULIC_BALANCE,
    HEAT_CURVE_LIMIT_REASON_DEMAND,
  ];

  static final $core.List<HeatCurveLimitReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static HeatCurveLimitReason? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveLimitReason._(super.value, super.name);
}

/// The kind of zone that limits a heat curve (HeatCurveLimit.zone_kind). A closed list that grows
/// only by a release of this schema.
class HeatCurveZoneKind extends $pb.ProtobufEnum {
  /// Not known, withheld (HeatCurveLimit.home_withheld), or a kind this client's schema does not
  /// know: a client reads floor_zone_id and floor_zone_ids_together as they stand.
  static const HeatCurveZoneKind HEAT_CURVE_ZONE_KIND_UNSPECIFIED =
      HeatCurveZoneKind._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_ZONE_KIND_UNSPECIFIED');

  /// A radiator valve, judged by its opening.
  static const HeatCurveZoneKind HEAT_CURVE_ZONE_KIND_RADIATOR =
      HeatCurveZoneKind._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_ZONE_KIND_RADIATOR');

  /// One floor zone, judged by its steady duty (floor_zone_id).
  static const HeatCurveZoneKind HEAT_CURVE_ZONE_KIND_FLOOR_ZONE =
      HeatCurveZoneKind._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_ZONE_KIND_FLOOR_ZONE');

  /// Floor zones whose outputs switch together, judged as one by their steady duty
  /// (floor_zone_ids_together).
  static const HeatCurveZoneKind HEAT_CURVE_ZONE_KIND_FLOOR_ZONES_TOGETHER =
      HeatCurveZoneKind._(
          3, _omitEnumNames ? '' : 'HEAT_CURVE_ZONE_KIND_FLOOR_ZONES_TOGETHER');

  static const $core.List<HeatCurveZoneKind> values = <HeatCurveZoneKind>[
    HEAT_CURVE_ZONE_KIND_UNSPECIFIED,
    HEAT_CURVE_ZONE_KIND_RADIATOR,
    HEAT_CURVE_ZONE_KIND_FLOOR_ZONE,
    HEAT_CURVE_ZONE_KIND_FLOOR_ZONES_TOGETHER,
  ];

  static final $core.List<HeatCurveZoneKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static HeatCurveZoneKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveZoneKind._(super.value, super.name);
}

/// A plant's update mode (UPDATES). A closed list that grows only by a release of this schema.
class HeatCurveUpdateMode extends $pb.ProtobufEnum {
  /// Not given, as where figures are withheld; never a setting.
  static const HeatCurveUpdateMode HEAT_CURVE_UPDATE_MODE_UNSPECIFIED =
      HeatCurveUpdateMode._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_UPDATE_MODE_UNSPECIFIED');

  /// A lower curve is suggested as the firm bands move it, grouped. A plant's setting until set
  /// otherwise.
  static const HeatCurveUpdateMode HEAT_CURVE_UPDATE_MODE_ONGOING =
      HeatCurveUpdateMode._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_UPDATE_MODE_ONGOING');

  /// A lower curve is suggested once, at the end of each heating season.
  static const HeatCurveUpdateMode HEAT_CURVE_UPDATE_MODE_ONCE_PER_SEASON =
      HeatCurveUpdateMode._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_UPDATE_MODE_ONCE_PER_SEASON');

  static const $core.List<HeatCurveUpdateMode> values = <HeatCurveUpdateMode>[
    HEAT_CURVE_UPDATE_MODE_UNSPECIFIED,
    HEAT_CURVE_UPDATE_MODE_ONGOING,
    HEAT_CURVE_UPDATE_MODE_ONCE_PER_SEASON,
  ];

  static final $core.List<HeatCurveUpdateMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static HeatCurveUpdateMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveUpdateMode._(super.value, super.name);
}

/// How a heating season was told (HEATING SEASON). A closed list that grows only by a release of
/// this schema.
class HeatingSeasonBasis extends $pb.ProtobufEnum {
  /// A basis this client's schema does not know: a client shows the season without it.
  static const HeatingSeasonBasis HEATING_SEASON_BASIS_UNSPECIFIED =
      HeatingSeasonBasis._(
          0, _omitEnumNames ? '' : 'HEATING_SEASON_BASIS_UNSPECIFIED');

  /// By the days the heat source ran on space heating, from its running totals.
  static const HeatingSeasonBasis HEATING_SEASON_BASIS_SPACE_HEATING =
      HeatingSeasonBasis._(
          1, _omitEnumNames ? '' : 'HEATING_SEASON_BASIS_SPACE_HEATING');

  /// By the heat source's own averaged outdoor temperature against its stop heating limit.
  static const HeatingSeasonBasis HEATING_SEASON_BASIS_OUTDOOR_BELOW_STOP =
      HeatingSeasonBasis._(
          2, _omitEnumNames ? '' : 'HEATING_SEASON_BASIS_OUTDOOR_BELOW_STOP');

  /// The plant was first heard during the season: it counts from then.
  static const HeatingSeasonBasis HEATING_SEASON_BASIS_JOINED =
      HeatingSeasonBasis._(
          3, _omitEnumNames ? '' : 'HEATING_SEASON_BASIS_JOINED');

  static const $core.List<HeatingSeasonBasis> values = <HeatingSeasonBasis>[
    HEATING_SEASON_BASIS_UNSPECIFIED,
    HEATING_SEASON_BASIS_SPACE_HEATING,
    HEATING_SEASON_BASIS_OUTDOOR_BELOW_STOP,
    HEATING_SEASON_BASIS_JOINED,
  ];

  static final $core.List<HeatingSeasonBasis?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static HeatingSeasonBasis? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatingSeasonBasis._(super.value, super.name);
}

/// A plant's automatic savings setting (AUTOMATIC SAVINGS). A closed list that grows only by a
/// release of this schema.
class HeatCurveAutomaticSavings extends $pb.ProtobufEnum {
  /// Not given, as where figures are withheld; never a setting.
  static const HeatCurveAutomaticSavings
      HEAT_CURVE_AUTOMATIC_SAVINGS_UNSPECIFIED = HeatCurveAutomaticSavings._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_AUTOMATIC_SAVINGS_UNSPECIFIED');

  /// The gateway applies what the heat source takes a write of. A plant's setting until set off.
  static const HeatCurveAutomaticSavings HEAT_CURVE_AUTOMATIC_SAVINGS_ON =
      HeatCurveAutomaticSavings._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_AUTOMATIC_SAVINGS_ON');

  /// The gateway applies nothing unasked.
  static const HeatCurveAutomaticSavings HEAT_CURVE_AUTOMATIC_SAVINGS_OFF =
      HeatCurveAutomaticSavings._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_AUTOMATIC_SAVINGS_OFF');

  static const $core.List<HeatCurveAutomaticSavings> values =
      <HeatCurveAutomaticSavings>[
    HEAT_CURVE_AUTOMATIC_SAVINGS_UNSPECIFIED,
    HEAT_CURVE_AUTOMATIC_SAVINGS_ON,
    HEAT_CURVE_AUTOMATIC_SAVINGS_OFF,
  ];

  static final $core.List<HeatCurveAutomaticSavings?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static HeatCurveAutomaticSavings? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveAutomaticSavings._(super.value, super.name);
}

/// How sure the gateway is of one point of an optimised curve (CONFIDENCE). A closed list that
/// grows only by a release of this schema.
class HeatCurvePointConfidence extends $pb.ProtobufEnum {
  /// Not known, or a confidence this client's schema does not know: read as estimated.
  static const HeatCurvePointConfidence
      HEAT_CURVE_POINT_CONFIDENCE_UNSPECIFIED = HeatCurvePointConfidence._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_POINT_CONFIDENCE_UNSPECIFIED');

  /// Enough days seen in the point's band to judge it, not yet firm: an estimate that may still
  /// move (LIVING CURVE).
  static const HeatCurvePointConfidence HEAT_CURVE_POINT_CONFIDENCE_SEEN =
      HeatCurvePointConfidence._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_POINT_CONFIDENCE_SEEN');

  /// Extrapolated from the seen points, cautiously (CONFIDENCE).
  static const HeatCurvePointConfidence HEAT_CURVE_POINT_CONFIDENCE_ESTIMATED =
      HeatCurvePointConfidence._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_POINT_CONFIDENCE_ESTIMATED');

  /// Its bands are firm (LIVING CURVE): the curve a suggestion sets follows it. A client that
  /// does not know it reads it as estimated.
  static const HeatCurvePointConfidence HEAT_CURVE_POINT_CONFIDENCE_FIRM =
      HeatCurvePointConfidence._(
          3, _omitEnumNames ? '' : 'HEAT_CURVE_POINT_CONFIDENCE_FIRM');

  static const $core.List<HeatCurvePointConfidence> values =
      <HeatCurvePointConfidence>[
    HEAT_CURVE_POINT_CONFIDENCE_UNSPECIFIED,
    HEAT_CURVE_POINT_CONFIDENCE_SEEN,
    HEAT_CURVE_POINT_CONFIDENCE_ESTIMATED,
    HEAT_CURVE_POINT_CONFIDENCE_FIRM,
  ];

  static final $core.List<HeatCurvePointConfidence?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static HeatCurvePointConfidence? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurvePointConfidence._(super.value, super.name);
}

/// Why nothing is suggested for a plant (SUGGESTION): one reason, what stopped a suggestion.
/// Where several hold, the first of these: COLD_END_UNKNOWN where the cold end alone stopped a
/// curve; else ROOMS_SHORT; else WAITING_FOR_SEASON_END or UPDATE_HELD where a lower curve is
/// found and waits (UPDATES), never while rooms are short; else NOTHING_FIRM_YET,
/// TOO_LITTLE_SEEN, SHIFT_UNKNOWN, CURVE_UNKNOWN, CURVE_CLOSE or OWN_CURVE_CLOSE,
/// OFFSET_AT_LIMIT. A closed list that grows only by
/// a release of this schema: a client that does not know a value says that nothing is suggested,
/// without a reason.
class HeatCurveNoSuggestionReason extends $pb.ProtobufEnum {
  /// No reason given: a suggestion is given, figures are withheld, or a reason this client's
  /// schema does not know.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_UNSPECIFIED =
      HeatCurveNoSuggestionReason._(0,
          _omitEnumNames ? '' : 'HEAT_CURVE_NO_SUGGESTION_REASON_UNSPECIFIED');

  /// Too little seen to judge the curve: no band seen yet, or, for a step of the shift, none at
  /// or below 0 °C.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_TOO_LITTLE_SEEN =
      HeatCurveNoSuggestionReason._(
          1,
          _omitEnumNames
              ? ''
              : 'HEAT_CURVE_NO_SUGGESTION_REASON_TOO_LITTLE_SEEN');

  /// A curve would save at the points seen, but the curve in force is not known at the colder
  /// points it would set (as with a numbered curve whose shape the gateway does not hold), and
  /// no step of the shift can be suggested either.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_COLD_END_UNKNOWN =
      HeatCurveNoSuggestionReason._(
          2,
          _omitEnumNames
              ? ''
              : 'HEAT_CURVE_NO_SUGGESTION_REASON_COLD_END_UNKNOWN');

  /// Rooms are short of heat in some band, and the curve cannot be raised a step: the evidence
  /// is too thin, or the heat source's own curve is in force.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_ROOMS_SHORT =
      HeatCurveNoSuggestionReason._(3,
          _omitEnumNames ? '' : 'HEAT_CURVE_NO_SUGGESTION_REASON_ROOMS_SHORT');

  /// The heat source's own curve is in force and within 2 °C of the optimised one at every point
  /// seen: nothing worth changing.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_OWN_CURVE_CLOSE =
      HeatCurveNoSuggestionReason._(
          4,
          _omitEnumNames
              ? ''
              : 'HEAT_CURVE_NO_SUGGESTION_REASON_OWN_CURVE_CLOSE');

  /// The heat source's shift is not read, so no step of it can be suggested.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_SHIFT_UNKNOWN =
      HeatCurveNoSuggestionReason._(
          5,
          _omitEnumNames
              ? ''
              : 'HEAT_CURVE_NO_SUGGESTION_REASON_SHIFT_UNKNOWN');

  /// The curve in force is not known at any point seen, so no saving against it can be told.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_CURVE_UNKNOWN =
      HeatCurveNoSuggestionReason._(
          6,
          _omitEnumNames
              ? ''
              : 'HEAT_CURVE_NO_SUGGESTION_REASON_CURVE_UNKNOWN');

  /// At some point seen the rooms need less than 2 °C below the curve in force: it is already
  /// close to what they need there (a step of the shift down needs every point seen, where the
  /// curve in force is known, 2 °C or more above the need).
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_CURVE_CLOSE =
      HeatCurveNoSuggestionReason._(7,
          _omitEnumNames ? '' : 'HEAT_CURVE_NO_SUGGESTION_REASON_CURVE_CLOSE');

  /// A step of the shift is called for, but the shift is at the end of its range.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_OFFSET_AT_LIMIT =
      HeatCurveNoSuggestionReason._(
          8,
          _omitEnumNames
              ? ''
              : 'HEAT_CURVE_NO_SUGGESTION_REASON_OFFSET_AT_LIMIT');

  /// A curve would save on what is seen, but no band of it is firm yet (LIVING CURVE), no step of
  /// the shift is called for, and no band's rooms are short of heat: the preview shows the
  /// estimate meanwhile, and each point how far it has got.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_NOTHING_FIRM_YET =
      HeatCurveNoSuggestionReason._(
          9,
          _omitEnumNames
              ? ''
              : 'HEAT_CURVE_NO_SUGGESTION_REASON_NOTHING_FIRM_YET');

  /// The plant's update mode is once per season (UPDATES) and its season can be told: a lower
  /// curve found is suggested at the end of the season under way, or out of season at the next
  /// one's. Never while rooms are short of heat. The preview stands meanwhile.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_WAITING_FOR_SEASON_END =
      HeatCurveNoSuggestionReason._(
          10,
          _omitEnumNames
              ? ''
              : 'HEAT_CURVE_NO_SUGGESTION_REASON_WAITING_FOR_SEASON_END');

  /// A lower curve is found, but the gateway's interval since the last lowering suggestion or
  /// apply of the preview has not passed (UPDATES): it is suggested no sooner than
  /// HeatCurveView.next_proposal_at. Never while rooms are short of heat. The preview stands
  /// meanwhile.
  static const HeatCurveNoSuggestionReason
      HEAT_CURVE_NO_SUGGESTION_REASON_UPDATE_HELD =
      HeatCurveNoSuggestionReason._(11,
          _omitEnumNames ? '' : 'HEAT_CURVE_NO_SUGGESTION_REASON_UPDATE_HELD');

  static const $core.List<HeatCurveNoSuggestionReason> values =
      <HeatCurveNoSuggestionReason>[
    HEAT_CURVE_NO_SUGGESTION_REASON_UNSPECIFIED,
    HEAT_CURVE_NO_SUGGESTION_REASON_TOO_LITTLE_SEEN,
    HEAT_CURVE_NO_SUGGESTION_REASON_COLD_END_UNKNOWN,
    HEAT_CURVE_NO_SUGGESTION_REASON_ROOMS_SHORT,
    HEAT_CURVE_NO_SUGGESTION_REASON_OWN_CURVE_CLOSE,
    HEAT_CURVE_NO_SUGGESTION_REASON_SHIFT_UNKNOWN,
    HEAT_CURVE_NO_SUGGESTION_REASON_CURVE_UNKNOWN,
    HEAT_CURVE_NO_SUGGESTION_REASON_CURVE_CLOSE,
    HEAT_CURVE_NO_SUGGESTION_REASON_OFFSET_AT_LIMIT,
    HEAT_CURVE_NO_SUGGESTION_REASON_NOTHING_FIRM_YET,
    HEAT_CURVE_NO_SUGGESTION_REASON_WAITING_FOR_SEASON_END,
    HEAT_CURVE_NO_SUGGESTION_REASON_UPDATE_HELD,
  ];

  static final $core.List<HeatCurveNoSuggestionReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 11);
  static HeatCurveNoSuggestionReason? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveNoSuggestionReason._(super.value, super.name);
}

/// The kind of change a suggestion makes (SUGGESTION). A closed list that grows only by a release
/// of this schema.
class HeatCurveSuggestionKind extends $pb.ProtobufEnum {
  /// A kind this client's schema does not know: a client shows the suggestion's settings and
  /// saving, and offers no apply it cannot describe.
  static const HeatCurveSuggestionKind HEAT_CURVE_SUGGESTION_KIND_UNSPECIFIED =
      HeatCurveSuggestionKind._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_SUGGESTION_KIND_UNSPECIFIED');

  /// Set the own curve to the optimised one, with the shift at 0.
  static const HeatCurveSuggestionKind HEAT_CURVE_SUGGESTION_KIND_CURVE =
      HeatCurveSuggestionKind._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_SUGGESTION_KIND_CURVE');

  /// Move the shift one step, before a curve can be suggested.
  static const HeatCurveSuggestionKind HEAT_CURVE_SUGGESTION_KIND_SHIFT =
      HeatCurveSuggestionKind._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_SUGGESTION_KIND_SHIFT');

  static const $core.List<HeatCurveSuggestionKind> values =
      <HeatCurveSuggestionKind>[
    HEAT_CURVE_SUGGESTION_KIND_UNSPECIFIED,
    HEAT_CURVE_SUGGESTION_KIND_CURVE,
    HEAT_CURVE_SUGGESTION_KIND_SHIFT,
  ];

  static final $core.List<HeatCurveSuggestionKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static HeatCurveSuggestionKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveSuggestionKind._(super.value, super.name);
}

/// What became of a past suggestion (HISTORY). A closed list that grows only by a release of this
/// schema.
class HeatCurveHistoryOutcome extends $pb.ProtobufEnum {
  /// An outcome this client's schema does not know: a client shows the entry without one.
  static const HeatCurveHistoryOutcome HEAT_CURVE_HISTORY_OUTCOME_UNSPECIFIED =
      HeatCurveHistoryOutcome._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_HISTORY_OUTCOME_UNSPECIFIED');

  /// Applied (APPLYING), by a write, by hand or by the gateway itself.
  static const HeatCurveHistoryOutcome HEAT_CURVE_HISTORY_OUTCOME_APPLIED =
      HeatCurveHistoryOutcome._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_HISTORY_OUTCOME_APPLIED');

  /// Applied, and later set back (webrtc.v1.ApplyHeatCurve.revert).
  static const HeatCurveHistoryOutcome HEAT_CURVE_HISTORY_OUTCOME_REVERTED =
      HeatCurveHistoryOutcome._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_HISTORY_OUTCOME_REVERTED');

  /// Declined (webrtc.v1.DeclineHeatCurve), and not reopened.
  static const HeatCurveHistoryOutcome HEAT_CURVE_HISTORY_OUTCOME_DECLINED =
      HeatCurveHistoryOutcome._(
          3, _omitEnumNames ? '' : 'HEAT_CURVE_HISTORY_OUTCOME_DECLINED');

  /// Replaced by a new suggestion on a material change (SUGGESTION) before anything was done.
  static const HeatCurveHistoryOutcome HEAT_CURVE_HISTORY_OUTCOME_SUPERSEDED =
      HeatCurveHistoryOutcome._(
          4, _omitEnumNames ? '' : 'HEAT_CURVE_HISTORY_OUTCOME_SUPERSEDED');

  static const $core.List<HeatCurveHistoryOutcome> values =
      <HeatCurveHistoryOutcome>[
    HEAT_CURVE_HISTORY_OUTCOME_UNSPECIFIED,
    HEAT_CURVE_HISTORY_OUTCOME_APPLIED,
    HEAT_CURVE_HISTORY_OUTCOME_REVERTED,
    HEAT_CURVE_HISTORY_OUTCOME_DECLINED,
    HEAT_CURVE_HISTORY_OUTCOME_SUPERSEDED,
  ];

  static final $core.List<HeatCurveHistoryOutcome?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static HeatCurveHistoryOutcome? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveHistoryOutcome._(super.value, super.name);
}

/// How a curve came to be applied (APPLYING). A closed list that grows only by a release of this
/// schema.
class HeatCurveApplyMode extends $pb.ProtobufEnum {
  static const HeatCurveApplyMode HEAT_CURVE_APPLY_MODE_UNSPECIFIED =
      HeatCurveApplyMode._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_APPLY_MODE_UNSPECIFIED');

  /// Written to the heat source at someone's request.
  static const HeatCurveApplyMode HEAT_CURVE_APPLY_MODE_WRITTEN =
      HeatCurveApplyMode._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_APPLY_MODE_WRITTEN');

  /// Set by hand at the heat source, and confirmed as set.
  static const HeatCurveApplyMode HEAT_CURVE_APPLY_MODE_BY_HAND =
      HeatCurveApplyMode._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_APPLY_MODE_BY_HAND');

  /// Written by the gateway itself, unasked (APPLYING). Never requested.
  static const HeatCurveApplyMode HEAT_CURVE_APPLY_MODE_GATEWAY =
      HeatCurveApplyMode._(
          3, _omitEnumNames ? '' : 'HEAT_CURVE_APPLY_MODE_GATEWAY');

  static const $core.List<HeatCurveApplyMode> values = <HeatCurveApplyMode>[
    HEAT_CURVE_APPLY_MODE_UNSPECIFIED,
    HEAT_CURVE_APPLY_MODE_WRITTEN,
    HEAT_CURVE_APPLY_MODE_BY_HAND,
    HEAT_CURVE_APPLY_MODE_GATEWAY,
  ];

  static final $core.List<HeatCurveApplyMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static HeatCurveApplyMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveApplyMode._(super.value, super.name);
}

/// Whether an applied curve is the one in force (APPLYING). A closed list that grows only by a
/// release of this schema.
class HeatCurveVerification extends $pb.ProtobufEnum {
  /// A state this client's schema does not know: read as not yet verified.
  static const HeatCurveVerification HEAT_CURVE_VERIFICATION_UNSPECIFIED =
      HeatCurveVerification._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_VERIFICATION_UNSPECIFIED');

  /// Not yet known: waiting for a read-back, or for enough quarter hours since the apply.
  static const HeatCurveVerification HEAT_CURVE_VERIFICATION_PENDING =
      HeatCurveVerification._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_VERIFICATION_PENDING');

  /// Found as applied (HeatCurveApplied.verified_by says how).
  static const HeatCurveVerification HEAT_CURVE_VERIFICATION_VERIFIED =
      HeatCurveVerification._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_VERIFICATION_VERIFIED');

  /// Found otherwise than applied (HeatCurveApplied.mismatches says how).
  static const HeatCurveVerification HEAT_CURVE_VERIFICATION_MISMATCH =
      HeatCurveVerification._(
          3, _omitEnumNames ? '' : 'HEAT_CURVE_VERIFICATION_MISMATCH');

  /// Neither read back nor measurable: the confirmation is all there is.
  static const HeatCurveVerification HEAT_CURVE_VERIFICATION_UNVERIFIABLE =
      HeatCurveVerification._(
          4, _omitEnumNames ? '' : 'HEAT_CURVE_VERIFICATION_UNVERIFIABLE');

  static const $core.List<HeatCurveVerification> values =
      <HeatCurveVerification>[
    HEAT_CURVE_VERIFICATION_UNSPECIFIED,
    HEAT_CURVE_VERIFICATION_PENDING,
    HEAT_CURVE_VERIFICATION_VERIFIED,
    HEAT_CURVE_VERIFICATION_MISMATCH,
    HEAT_CURVE_VERIFICATION_UNVERIFIABLE,
  ];

  static final $core.List<HeatCurveVerification?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static HeatCurveVerification? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveVerification._(super.value, super.name);
}

/// How an applied curve was verified. A closed list that grows only by a release of this schema.
class HeatCurveVerifiedBy extends $pb.ProtobufEnum {
  static const HeatCurveVerifiedBy HEAT_CURVE_VERIFIED_BY_UNSPECIFIED =
      HeatCurveVerifiedBy._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_VERIFIED_BY_UNSPECIFIED');

  /// The heat source's curve settings, read back.
  static const HeatCurveVerifiedBy HEAT_CURVE_VERIFIED_BY_READ_BACK =
      HeatCurveVerifiedBy._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_VERIFIED_BY_READ_BACK');

  /// The measured supply against the curve applied, at the outdoor temperatures seen since, where
  /// the heat source reports no calculated supply (APPLYING).
  static const HeatCurveVerifiedBy HEAT_CURVE_VERIFIED_BY_MEASURED_SUPPLY =
      HeatCurveVerifiedBy._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_VERIFIED_BY_MEASURED_SUPPLY');

  /// The heat source's calculated supply against the curve applied, at the outdoor temperatures
  /// seen since (APPLYING).
  static const HeatCurveVerifiedBy HEAT_CURVE_VERIFIED_BY_CALCULATED_SUPPLY =
      HeatCurveVerifiedBy._(
          3, _omitEnumNames ? '' : 'HEAT_CURVE_VERIFIED_BY_CALCULATED_SUPPLY');

  static const $core.List<HeatCurveVerifiedBy> values = <HeatCurveVerifiedBy>[
    HEAT_CURVE_VERIFIED_BY_UNSPECIFIED,
    HEAT_CURVE_VERIFIED_BY_READ_BACK,
    HEAT_CURVE_VERIFIED_BY_MEASURED_SUPPLY,
    HEAT_CURVE_VERIFIED_BY_CALCULATED_SUPPLY,
  ];

  static final $core.List<HeatCurveVerifiedBy?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static HeatCurveVerifiedBy? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveVerifiedBy._(super.value, super.name);
}

/// What was found otherwise than applied. A closed list that grows only by a release of this
/// schema.
class HeatCurveMismatchKind extends $pb.ProtobufEnum {
  /// A kind this client's schema does not know: a client says the curve is not as applied.
  static const HeatCurveMismatchKind HEAT_CURVE_MISMATCH_KIND_UNSPECIFIED =
      HeatCurveMismatchKind._(
          0, _omitEnumNames ? '' : 'HEAT_CURVE_MISMATCH_KIND_UNSPECIFIED');

  /// The shift is not 0 under an own curve (HeatCurveMismatch.found_offset).
  static const HeatCurveMismatchKind HEAT_CURVE_MISMATCH_KIND_SHIFT_NOT_ZERO =
      HeatCurveMismatchKind._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_MISMATCH_KIND_SHIFT_NOT_ZERO');

  /// The own curve is not the one in force.
  static const HeatCurveMismatchKind
      HEAT_CURVE_MISMATCH_KIND_OWN_CURVE_NOT_IN_FORCE = HeatCurveMismatchKind._(
          2,
          _omitEnumNames
              ? ''
              : 'HEAT_CURVE_MISMATCH_KIND_OWN_CURVE_NOT_IN_FORCE');

  /// One point of the own curve, read back, is set otherwise (outdoor_centidegrees,
  /// expected_supply_centidegrees, found_supply_centidegrees).
  static const HeatCurveMismatchKind HEAT_CURVE_MISMATCH_KIND_POINT =
      HeatCurveMismatchKind._(
          3, _omitEnumNames ? '' : 'HEAT_CURVE_MISMATCH_KIND_POINT');

  /// The shift, read back, is not the one a shift suggestion set (found_offset).
  static const HeatCurveMismatchKind HEAT_CURVE_MISMATCH_KIND_SHIFT =
      HeatCurveMismatchKind._(
          4, _omitEnumNames ? '' : 'HEAT_CURVE_MISMATCH_KIND_SHIFT');

  /// The supply is off the curve applied at an outdoor temperature seen since, by the quarter
  /// hours APPLYING counts (outdoor_centidegrees, expected_supply_centidegrees,
  /// found_supply_centidegrees: the median calculated supply, or measured where none is
  /// calculated).
  static const HeatCurveMismatchKind HEAT_CURVE_MISMATCH_KIND_SUPPLY =
      HeatCurveMismatchKind._(
          5, _omitEnumNames ? '' : 'HEAT_CURVE_MISMATCH_KIND_SUPPLY');

  /// The bend's offset is not 0 under an own curve (found_bend_offset_centidegrees, with
  /// outdoor_centidegrees its outdoor point where read).
  static const HeatCurveMismatchKind HEAT_CURVE_MISMATCH_KIND_BEND_NOT_NEUTRAL =
      HeatCurveMismatchKind._(
          6, _omitEnumNames ? '' : 'HEAT_CURVE_MISMATCH_KIND_BEND_NOT_NEUTRAL');

  /// A revert to a numbered curve (webrtc.v1.ApplyHeatCurve.revert), read back, finds it not in
  /// force as set back: another numbered curve (found_curve), or the own curve still in force
  /// (found_curve unset).
  static const HeatCurveMismatchKind HEAT_CURVE_MISMATCH_KIND_NUMBERED_CURVE =
      HeatCurveMismatchKind._(
          7, _omitEnumNames ? '' : 'HEAT_CURVE_MISMATCH_KIND_NUMBERED_CURVE');

  static const $core.List<HeatCurveMismatchKind> values =
      <HeatCurveMismatchKind>[
    HEAT_CURVE_MISMATCH_KIND_UNSPECIFIED,
    HEAT_CURVE_MISMATCH_KIND_SHIFT_NOT_ZERO,
    HEAT_CURVE_MISMATCH_KIND_OWN_CURVE_NOT_IN_FORCE,
    HEAT_CURVE_MISMATCH_KIND_POINT,
    HEAT_CURVE_MISMATCH_KIND_SHIFT,
    HEAT_CURVE_MISMATCH_KIND_SUPPLY,
    HEAT_CURVE_MISMATCH_KIND_BEND_NOT_NEUTRAL,
    HEAT_CURVE_MISMATCH_KIND_NUMBERED_CURVE,
  ];

  static final $core.List<HeatCurveMismatchKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static HeatCurveMismatchKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveMismatchKind._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
