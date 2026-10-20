// This is a generated file - do not edit.
//
// Generated from kusinta/iot/climate/v1/climate.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// What a room is doing right now, in one word. Details live in the fields of
/// RoomClimate; this is what a list row shows.
///
/// Where several hold at once the room reports the first that applies, in this order:
/// NO_TARGET, NO_HEATING, WINDOW_OPEN, HEATING_UNREACHABLE, SENSOR_LOST, NO_SENSOR,
/// HOLDING — the one that most changes what a person should expect of the room.
class RoomClimateCondition extends $pb.ProtobufEnum {
  static const RoomClimateCondition ROOM_CLIMATE_CONDITION_UNSPECIFIED =
      RoomClimateCondition._(
          0, _omitEnumNames ? '' : 'ROOM_CLIMATE_CONDITION_UNSPECIFIED');

  /// Being held at its effective target from a sensor's reading.
  static const RoomClimateCondition ROOM_CLIMATE_CONDITION_HOLDING =
      RoomClimateCondition._(
          1, _omitEnumNames ? '' : 'ROOM_CLIMATE_CONDITION_HOLDING');

  /// Nobody has set a target yet. Not a fault: a room that was just created.
  static const RoomClimateCondition ROOM_CLIMATE_CONDITION_NO_TARGET =
      RoomClimateCondition._(
          2, _omitEnumNames ? '' : 'ROOM_CLIMATE_CONDITION_NO_TARGET');

  /// Every sensor the room uses has gone quiet. The valves regulate on their own probes
  /// towards the target meanwhile — worse comfort, never a frozen reading.
  static const RoomClimateCondition ROOM_CLIMATE_CONDITION_SENSOR_LOST =
      RoomClimateCondition._(
          3, _omitEnumNames ? '' : 'ROOM_CLIMATE_CONDITION_SENSOR_LOST');

  /// A window in the room is open, so heating is paused.
  static const RoomClimateCondition ROOM_CLIMATE_CONDITION_WINDOW_OPEN =
      RoomClimateCondition._(
          4, _omitEnumNames ? '' : 'ROOM_CLIMATE_CONDITION_WINDOW_OPEN');

  /// The room has a target but nothing in it can heat.
  static const RoomClimateCondition ROOM_CLIMATE_CONDITION_NO_HEATING =
      RoomClimateCondition._(
          5, _omitEnumNames ? '' : 'ROOM_CLIMATE_CONDITION_NO_HEATING');

  /// Every heating device in the room has gone quiet, so nothing is being held however
  /// the target is set.
  static const RoomClimateCondition ROOM_CLIMATE_CONDITION_HEATING_UNREACHABLE =
      RoomClimateCondition._(6,
          _omitEnumNames ? '' : 'ROOM_CLIMATE_CONDITION_HEATING_UNREACHABLE');

  /// The room has no temperature sensor, so its valves regulate on their own probes
  /// towards the target. Not a fault; a room can be set up that way.
  static const RoomClimateCondition ROOM_CLIMATE_CONDITION_NO_SENSOR =
      RoomClimateCondition._(
          7, _omitEnumNames ? '' : 'ROOM_CLIMATE_CONDITION_NO_SENSOR');

  static const $core.List<RoomClimateCondition> values = <RoomClimateCondition>[
    ROOM_CLIMATE_CONDITION_UNSPECIFIED,
    ROOM_CLIMATE_CONDITION_HOLDING,
    ROOM_CLIMATE_CONDITION_NO_TARGET,
    ROOM_CLIMATE_CONDITION_SENSOR_LOST,
    ROOM_CLIMATE_CONDITION_WINDOW_OPEN,
    ROOM_CLIMATE_CONDITION_NO_HEATING,
    ROOM_CLIMATE_CONDITION_HEATING_UNREACHABLE,
    ROOM_CLIMATE_CONDITION_NO_SENSOR,
  ];

  static final $core.List<RoomClimateCondition?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static RoomClimateCondition? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RoomClimateCondition._(super.value, super.name);
}

/// Why a room is where it is. A closed list of kinds: the gateway sends a kind, never a
/// sentence, and the app names each kind in its user's language.
///
/// No kind identifies another household or anything about one. Where a limit is shared —
/// a building's power, a shared heat source — the explanation says that this room was
/// limited, never by whom or because of whom.
class ClimateExplanationKind extends $pb.ProtobufEnum {
  /// Sender did not set a kind, or sent one this client's schema does not know. An app
  /// shows nothing for it rather than guessing.
  static const ClimateExplanationKind CLIMATE_EXPLANATION_KIND_UNSPECIFIED =
      ClimateExplanationKind._(
          0, _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_UNSPECIFIED');

  /// Heating ahead of a dearer or colder period, within the comfort band, so less is needed
  /// then.
  static const ClimateExplanationKind CLIMATE_EXPLANATION_KIND_PRE_HEAT =
      ClimateExplanationKind._(
          1, _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_PRE_HEAT');

  /// Heating held back while the room's stored heat carries it, within the comfort band.
  static const ClimateExplanationKind CLIMATE_EXPLANATION_KIND_COASTING =
      ClimateExplanationKind._(
          2, _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_COASTING');

  /// Heating reduced while energy is expensive, within the comfort band.
  static const ClimateExplanationKind CLIMATE_EXPLANATION_KIND_PRICE_HIGH =
      ClimateExplanationKind._(
          3, _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_PRICE_HIGH');

  /// Heating, or a heat source's add-on heater, held back to keep power below a peak limit
  /// the home or building is charged for.
  static const ClimateExplanationKind CLIMATE_EXPLANATION_KIND_PEAK_GUARD =
      ClimateExplanationKind._(
          4, _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_PEAK_GUARD');

  /// Space heating paused while the heat source heats domestic hot water.
  static const ClimateExplanationKind
      CLIMATE_EXPLANATION_KIND_HOT_WATER_PRIORITY = ClimateExplanationKind._(5,
          _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_HOT_WATER_PRIORITY');

  /// No plan applies: the room follows its target and schedule only, because planning is
  /// switched off for it or was never set up.
  static const ClimateExplanationKind
      CLIMATE_EXPLANATION_KIND_FOLLOWING_SCHEDULE = ClimateExplanationKind._(6,
          _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_FOLLOWING_SCHEDULE');

  /// A plan could not be made — prices or a forecast are missing — so the room follows its
  /// target and schedule until one can.
  static const ClimateExplanationKind
      CLIMATE_EXPLANATION_KIND_PLAN_UNAVAILABLE = ClimateExplanationKind._(
          7, _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_PLAN_UNAVAILABLE');

  /// Heating limited by a power budget shared with other homes.
  static const ClimateExplanationKind
      CLIMATE_EXPLANATION_KIND_SHARED_POWER_BUDGET = ClimateExplanationKind._(8,
          _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_SHARED_POWER_BUDGET');

  /// Heating held back to keep a district-heating connection below its charged peak.
  static const ClimateExplanationKind
      CLIMATE_EXPLANATION_KIND_DISTRICT_HEATING_PEAK = ClimateExplanationKind._(
          9,
          _omitEnumNames
              ? ''
              : 'CLIMATE_EXPLANATION_KIND_DISTRICT_HEATING_PEAK');

  /// A floor zone heating this room is switched off. Why is floor_zone_off_reason.
  static const ClimateExplanationKind CLIMATE_EXPLANATION_KIND_FLOOR_ZONE_OFF =
      ClimateExplanationKind._(
          10, _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_FLOOR_ZONE_OFF');

  /// A floor zone heating this room is run on a cautious fixed share of the time because
  /// the reading that steers it has gone quiet.
  static const ClimateExplanationKind
      CLIMATE_EXPLANATION_KIND_FLOOR_ZONE_NO_READING = ClimateExplanationKind._(
          11,
          _omitEnumNames
              ? ''
              : 'CLIMATE_EXPLANATION_KIND_FLOOR_ZONE_NO_READING');

  /// A comfort load in the room — a heated floor kept warm for comfort, a towel heater — is
  /// off because it is outside its time window.
  static const ClimateExplanationKind
      CLIMATE_EXPLANATION_KIND_COMFORT_LOAD_WINDOW = ClimateExplanationKind._(
          12,
          _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_COMFORT_LOAD_WINDOW');

  /// The room is at the top of its comfort band, so it is not heated further even though
  /// energy is cheap.
  static const ClimateExplanationKind
      CLIMATE_EXPLANATION_KIND_AT_COMFORT_CEILING = ClimateExplanationKind._(13,
          _omitEnumNames ? '' : 'CLIMATE_EXPLANATION_KIND_AT_COMFORT_CEILING');

  static const $core.List<ClimateExplanationKind> values =
      <ClimateExplanationKind>[
    CLIMATE_EXPLANATION_KIND_UNSPECIFIED,
    CLIMATE_EXPLANATION_KIND_PRE_HEAT,
    CLIMATE_EXPLANATION_KIND_COASTING,
    CLIMATE_EXPLANATION_KIND_PRICE_HIGH,
    CLIMATE_EXPLANATION_KIND_PEAK_GUARD,
    CLIMATE_EXPLANATION_KIND_HOT_WATER_PRIORITY,
    CLIMATE_EXPLANATION_KIND_FOLLOWING_SCHEDULE,
    CLIMATE_EXPLANATION_KIND_PLAN_UNAVAILABLE,
    CLIMATE_EXPLANATION_KIND_SHARED_POWER_BUDGET,
    CLIMATE_EXPLANATION_KIND_DISTRICT_HEATING_PEAK,
    CLIMATE_EXPLANATION_KIND_FLOOR_ZONE_OFF,
    CLIMATE_EXPLANATION_KIND_FLOOR_ZONE_NO_READING,
    CLIMATE_EXPLANATION_KIND_COMFORT_LOAD_WINDOW,
    CLIMATE_EXPLANATION_KIND_AT_COMFORT_CEILING,
  ];

  static final $core.List<ClimateExplanationKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 13);
  static ClimateExplanationKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ClimateExplanationKind._(super.value, super.name);
}

/// Why a floor zone is off, beside CLIMATE_EXPLANATION_KIND_FLOOR_ZONE_OFF.
class FloorZoneOffReason extends $pb.ProtobufEnum {
  /// Not stated, or not a FLOOR_ZONE_OFF explanation.
  static const FloorZoneOffReason FLOOR_ZONE_OFF_REASON_UNSPECIFIED =
      FloorZoneOffReason._(
          0, _omitEnumNames ? '' : 'FLOOR_ZONE_OFF_REASON_UNSPECIFIED');

  /// Off while energy is expensive.
  static const FloorZoneOffReason FLOOR_ZONE_OFF_REASON_PRICE =
      FloorZoneOffReason._(
          1, _omitEnumNames ? '' : 'FLOOR_ZONE_OFF_REASON_PRICE');

  /// Off because the floor was heated ahead and holds enough heat.
  static const FloorZoneOffReason FLOOR_ZONE_OFF_REASON_PRE_HEAT_DONE =
      FloorZoneOffReason._(
          2, _omitEnumNames ? '' : 'FLOOR_ZONE_OFF_REASON_PRE_HEAT_DONE');

  /// Off because the room has reached the top of its comfort band.
  static const FloorZoneOffReason FLOOR_ZONE_OFF_REASON_BAND_REACHED =
      FloorZoneOffReason._(
          3, _omitEnumNames ? '' : 'FLOOR_ZONE_OFF_REASON_BAND_REACHED');

  static const $core.List<FloorZoneOffReason> values = <FloorZoneOffReason>[
    FLOOR_ZONE_OFF_REASON_UNSPECIFIED,
    FLOOR_ZONE_OFF_REASON_PRICE,
    FLOOR_ZONE_OFF_REASON_PRE_HEAT_DONE,
    FLOOR_ZONE_OFF_REASON_BAND_REACHED,
  ];

  static final $core.List<FloorZoneOffReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static FloorZoneOffReason? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FloorZoneOffReason._(super.value, super.name);
}

/// A setback that applies to every room in a space while it is on.
class ClimateModeKind extends $pb.ProtobufEnum {
  /// No mode: every room at its own target.
  static const ClimateModeKind CLIMATE_MODE_KIND_UNSPECIFIED =
      ClimateModeKind._(
          0, _omitEnumNames ? '' : 'CLIMATE_MODE_KIND_UNSPECIFIED');

  /// Every room to the setback until the mode is switched off.
  static const ClimateModeKind CLIMATE_MODE_KIND_AWAY =
      ClimateModeKind._(1, _omitEnumNames ? '' : 'CLIMATE_MODE_KIND_AWAY');

  /// Every room to the setback between starts_at and ends_at, then back to normal on its
  /// own — timed so the rooms are warm again at ends_at, not starting to heat then.
  static const ClimateModeKind CLIMATE_MODE_KIND_HOLIDAY =
      ClimateModeKind._(2, _omitEnumNames ? '' : 'CLIMATE_MODE_KIND_HOLIDAY');

  static const $core.List<ClimateModeKind> values = <ClimateModeKind>[
    CLIMATE_MODE_KIND_UNSPECIFIED,
    CLIMATE_MODE_KIND_AWAY,
    CLIMATE_MODE_KIND_HOLIDAY,
  ];

  static final $core.List<ClimateModeKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ClimateModeKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ClimateModeKind._(super.value, super.name);
}

/// The length of the periods an ApartmentClimateSummary is given in. Each period runs from
/// the start of one local date to the start of another in the building's time zone
/// (space.v1.Space.time_zone) — midnight, or the first moment of the date where daylight
/// saving skips midnight — so a day is 23 or 25 hours long across a change of daylight
/// saving time. A period is cut by the time zone in force when it opened, and kept as cut.
/// After a change of zone, the next period runs from that cut to the first boundary of its
/// length in the new zone — a midnight, a Monday or a first of the month — that leaves it
/// covering at least one whole day, week or month of the new zone's calendar, so no period
/// covers less than one whole day, week or month of its calendar, however many hours that
/// is. While the zone is unknown — never set, or cleared — nothing is summarised, and the
/// period open when it was cleared ends unsummarised; once it is known again, the first
/// period begins at the first boundary of its length after that.
class ClimateSummaryPeriod extends $pb.ProtobufEnum {
  static const ClimateSummaryPeriod CLIMATE_SUMMARY_PERIOD_UNSPECIFIED =
      ClimateSummaryPeriod._(
          0, _omitEnumNames ? '' : 'CLIMATE_SUMMARY_PERIOD_UNSPECIFIED');
  static const ClimateSummaryPeriod CLIMATE_SUMMARY_PERIOD_DAY =
      ClimateSummaryPeriod._(
          1, _omitEnumNames ? '' : 'CLIMATE_SUMMARY_PERIOD_DAY');

  /// ISO weeks, Monday to Monday.
  static const ClimateSummaryPeriod CLIMATE_SUMMARY_PERIOD_WEEK =
      ClimateSummaryPeriod._(
          2, _omitEnumNames ? '' : 'CLIMATE_SUMMARY_PERIOD_WEEK');

  /// Calendar months.
  static const ClimateSummaryPeriod CLIMATE_SUMMARY_PERIOD_MONTH =
      ClimateSummaryPeriod._(
          3, _omitEnumNames ? '' : 'CLIMATE_SUMMARY_PERIOD_MONTH');

  static const $core.List<ClimateSummaryPeriod> values = <ClimateSummaryPeriod>[
    CLIMATE_SUMMARY_PERIOD_UNSPECIFIED,
    CLIMATE_SUMMARY_PERIOD_DAY,
    CLIMATE_SUMMARY_PERIOD_WEEK,
    CLIMATE_SUMMARY_PERIOD_MONTH,
  ];

  static final $core.List<ClimateSummaryPeriod?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ClimateSummaryPeriod? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ClimateSummaryPeriod._(super.value, super.name);
}

/// How an apartment's mean is formed from its rooms' means.
class ClimateSummaryWeighting extends $pb.ProtobufEnum {
  static const ClimateSummaryWeighting CLIMATE_SUMMARY_WEIGHTING_UNSPECIFIED =
      ClimateSummaryWeighting._(
          0, _omitEnumNames ? '' : 'CLIMATE_SUMMARY_WEIGHTING_UNSPECIFIED');

  /// Each room counts once, whatever its size: a bathroom weighs as much as a living room.
  static const ClimateSummaryWeighting CLIMATE_SUMMARY_WEIGHTING_ROOMS_EQUAL =
      ClimateSummaryWeighting._(
          1, _omitEnumNames ? '' : 'CLIMATE_SUMMARY_WEIGHTING_ROOMS_EQUAL');

  static const $core.List<ClimateSummaryWeighting> values =
      <ClimateSummaryWeighting>[
    CLIMATE_SUMMARY_WEIGHTING_UNSPECIFIED,
    CLIMATE_SUMMARY_WEIGHTING_ROOMS_EQUAL,
  ];

  static final $core.List<ClimateSummaryWeighting?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ClimateSummaryWeighting? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ClimateSummaryWeighting._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
