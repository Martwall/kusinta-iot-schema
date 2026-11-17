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
  /// where the plant reports it, its hot water runs low. A blocking rule.
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
  /// that report is not heard. LIVE, it drives nothing while the periodic increase is not known:
  /// "hot_water.periodic_increase" unanswered or answered unknown, or answered true with its
  /// interval or start unanswered or unknown, since it could not keep clear of a step it does not
  /// know the time of. Besides,
  /// where the plant binds sg_ready_boost and "plant.boost_uses_add_on" is false, it may ask for
  /// hot water in cheap quarter hours, never during a block, and only while that input too may be
  /// driven (PRICE_RULE_MODE_LIVE): never otherwise, since a boost that brings in the add-on
  /// heater buys its heat at the dearest rate.
  static const PriceRule PRICE_RULE_HOT_WATER =
      PriceRule._(3, _omitEnumNames ? '' : 'PRICE_RULE_HOT_WATER');

  static const $core.List<PriceRule> values = <PriceRule>[
    PRICE_RULE_UNSPECIFIED,
    PRICE_RULE_ADD_ON_HEATER_BLOCK,
    PRICE_RULE_FLOOR_PRE_HEAT,
    PRICE_RULE_HOT_WATER,
  ];

  static final $core.List<PriceRule?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
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
  /// it goes live. Needs no input bound, and no hold applies to it.
  static const PriceRuleMode PRICE_RULE_MODE_SHADOW =
      PriceRuleMode._(2, _omitEnumNames ? '' : 'PRICE_RULE_MODE_SHADOW');

  /// The rule decides and drives. It drives only while the gateway may drive the input it steers:
  /// bound, under a current pass of its commissioning test, the plant's feature not blocked
  /// (commissioning.v1 FEATURE_PLANT), "plant.max_block_minutes" answered for a blocking rule, the
  /// periodic increase known for HOT_WATER (PRICE_RULE_HOT_WATER), and no hold running
  /// (HeatBlockRelease). Meanwhile it drives nothing and stays LIVE, and the
  /// plant's feature status says why. A rule is put LIVE only while the input it steers is bound
  /// (webrtc.v1.SetPriceRuleMode).
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
  /// Not known, or a kind this client's schema does not know: a client reads floor_zone_id and
  /// floor_zone_ids_together as they stand.
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

  /// Enough days seen in the point's band to judge it.
  static const HeatCurvePointConfidence HEAT_CURVE_POINT_CONFIDENCE_SEEN =
      HeatCurvePointConfidence._(
          1, _omitEnumNames ? '' : 'HEAT_CURVE_POINT_CONFIDENCE_SEEN');

  /// Extrapolated from the seen points, cautiously (CONFIDENCE).
  static const HeatCurvePointConfidence HEAT_CURVE_POINT_CONFIDENCE_ESTIMATED =
      HeatCurvePointConfidence._(
          2, _omitEnumNames ? '' : 'HEAT_CURVE_POINT_CONFIDENCE_ESTIMATED');

  static const $core.List<HeatCurvePointConfidence> values =
      <HeatCurvePointConfidence>[
    HEAT_CURVE_POINT_CONFIDENCE_UNSPECIFIED,
    HEAT_CURVE_POINT_CONFIDENCE_SEEN,
    HEAT_CURVE_POINT_CONFIDENCE_ESTIMATED,
  ];

  static final $core.List<HeatCurvePointConfidence?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static HeatCurvePointConfidence? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurvePointConfidence._(super.value, super.name);
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

  static const $core.List<HeatCurveMismatchKind> values =
      <HeatCurveMismatchKind>[
    HEAT_CURVE_MISMATCH_KIND_UNSPECIFIED,
    HEAT_CURVE_MISMATCH_KIND_SHIFT_NOT_ZERO,
    HEAT_CURVE_MISMATCH_KIND_OWN_CURVE_NOT_IN_FORCE,
    HEAT_CURVE_MISMATCH_KIND_POINT,
    HEAT_CURVE_MISMATCH_KIND_SHIFT,
    HEAT_CURVE_MISMATCH_KIND_SUPPLY,
    HEAT_CURVE_MISMATCH_KIND_BEND_NOT_NEUTRAL,
  ];

  static final $core.List<HeatCurveMismatchKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static HeatCurveMismatchKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HeatCurveMismatchKind._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
