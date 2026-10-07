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
