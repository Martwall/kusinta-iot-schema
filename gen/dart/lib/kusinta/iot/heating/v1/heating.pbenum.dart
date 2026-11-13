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

  /// Raises the heat source's hot water in cheap quarter hours (HeatPumpControl.sg_ready_boost),
  /// so that the tank is full before dear ones; never during a block. Not a blocking rule.
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
  /// (commissioning.v1 FEATURE_PLANT), "plant.max_block_minutes" answered for a blocking rule, and
  /// no hold running (HeatBlockRelease). Meanwhile it drives nothing and stays LIVE, and the
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
  /// (PRICE_RULE_MODE_LIVE), a commissioning test took it, or the gateway restarted.
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

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
