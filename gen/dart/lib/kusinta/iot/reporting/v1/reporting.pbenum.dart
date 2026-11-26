// This is a generated file - do not edit.
//
// Generated from kusinta/iot/reporting/v1/reporting.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// What kind of problem is open. The device kinds, FLOOR_ZONE_UNCONTROLLED aside, mirror what
/// service staff are given of a device (webrtc.v1.ServiceStatus: reachability, the battery
/// flags, the ServiceFault values); a device signal added there is added here too.
class ProblemKind extends $pb.ProtobufEnum {
  static const ProblemKind PROBLEM_KIND_UNSPECIFIED =
      ProblemKind._(0, _omitEnumNames ? '' : 'PROBLEM_KIND_UNSPECIFIED');

  /// The device cannot be heard, as its connector judges it. Does not open, or open again,
  /// while its connector is settling: a connector problem open, or the settling time after
  /// one; see ClearReason. Closes CLEAR_REASON_RECOVERED only once the connector reports the
  /// device reachable again.
  static const ProblemKind PROBLEM_KIND_DEVICE_OFFLINE =
      ProblemKind._(1, _omitEnumNames ? '' : 'PROBLEM_KIND_DEVICE_OFFLINE');

  /// The device reports its battery low or critical.
  static const ProblemKind PROBLEM_KIND_BATTERY_LOW =
      ProblemKind._(2, _omitEnumNames ? '' : 'PROBLEM_KIND_BATTERY_LOW');

  /// The device reports that its battery must be replaced.
  static const ProblemKind PROBLEM_KIND_BATTERY_REPLACEMENT_NEEDED =
      ProblemKind._(
          3, _omitEnumNames ? '' : 'PROBLEM_KIND_BATTERY_REPLACEMENT_NEEDED');

  /// The device reports an error in its own operation.
  static const ProblemKind PROBLEM_KIND_DEVICE_ERROR =
      ProblemKind._(4, _omitEnumNames ? '' : 'PROBLEM_KIND_DEVICE_ERROR');

  /// The device reports being tampered with: a casing opened, a mount removed.
  static const ProblemKind PROBLEM_KIND_DEVICE_TAMPER =
      ProblemKind._(5, _omitEnumNames ? '' : 'PROBLEM_KIND_DEVICE_TAMPER');

  /// A connector's stream to the gateway is down. A connector problem (see ClearReason): while
  /// it is open, no DEVICE_OFFLINE opens for the devices behind that connector, and those open
  /// close as superseded by a connector problem (see ClearReason), one problem rather than one
  /// per device. Closes with CLEAR_REASON_RECOVERED when the connector reconnects, or
  /// CLEAR_REASON_NO_LONGER_REPORTED when the gateway stops tracking the connector.
  static const ProblemKind PROBLEM_KIND_CONNECTOR_OFFLINE =
      ProblemKind._(6, _omitEnumNames ? '' : 'PROBLEM_KIND_CONNECTOR_OFFLINE');

  /// A connector is connected, but the backend it drives is failing: a central it cannot
  /// reach, a network server answering with errors. Raised from the connector's own health
  /// reports (connector.v1.BackendHealthReport); backend_failure carries the category, never
  /// the connector's own detail. A connector problem, as CONNECTOR_OFFLINE is: while it is
  /// open, no DEVICE_OFFLINE opens for the devices behind that connector, and those open close
  /// as superseded by a connector problem (see ClearReason). Closes with
  /// CLEAR_REASON_RECOVERED when the health is no longer FAILING,
  /// CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE when the connector's stream drops, a
  /// CONNECTOR_OFFLINE opening in the same step, or
  /// CLEAR_REASON_NO_LONGER_REPORTED when the gateway stops tracking the connector.
  static const ProblemKind PROBLEM_KIND_CONNECTOR_ERROR =
      ProblemKind._(7, _omitEnumNames ? '' : 'PROBLEM_KIND_CONNECTOR_ERROR');

  /// Company-owned devices are paired with the gateway but filed in no space. A device a
  /// resident owns is never counted. The count changes only at quarter-hour evaluations, and
  /// opened_at and cleared_at are quarter hours, as for a device in a home, so the problem
  /// cannot time what a resident does with a device.
  static const ProblemKind PROBLEM_KIND_UNFILED_DEVICES =
      ProblemKind._(8, _omitEnumNames ? '' : 'PROBLEM_KIND_UNFILED_DEVICES');

  /// A window is open in a room whose heating it pauses. Raised only for a room in no home: in
  /// a common area, or under a floor or building directly. Whether a window in a home is open
  /// is the residents' alone, and the gateway never reports it: a room that leaves a home with
  /// its window open raises this at the quarter hour it leaves, stamped with that quarter hour,
  /// never with when the window opened.
  static const ProblemKind PROBLEM_KIND_WINDOW_OPEN =
      ProblemKind._(9, _omitEnumNames ? '' : 'PROBLEM_KIND_WINDOW_OPEN');

  /// A floor zone bound to one of the device's outputs (heating.v1.FloorZone.output) is
  /// uncontrolled — it has no room, no control room, or a control room holding no room
  /// temperature sensor — and so heats without control by a room: it rests closed, or, with no
  /// sensor, may hold a cautious share of a duty learnt before (heating.v1, UNCONTROLLED
  /// ZONES). Opened by the gateway only once the zone has been uncontrolled for about an hour,
  /// so that a zone left so for a step of commissioning raises nothing. One problem per device,
  /// however many zones on its outputs are uncontrolled. Closes CLEAR_REASON_RECOVERED once
  /// each of them is controlled again or has been removed, and
  /// CLEAR_REASON_DEVICE_REMOVED with the device.
  ///
  /// A service signal: it names the device and where the device is filed (Problem.space_id),
  /// as any device problem does, and nothing else — not the zone's rooms, not which of these
  /// it lacks, not which room or sensor, not who left it so, and no time finer than Problem
  /// allows for a device in a home. Not part of webrtc.v1.ServiceStatus; residents are told of
  /// it as access.v1.SERVICE_SIGNAL_FLOOR_ZONE_UNCONTROLLED.
  static const ProblemKind PROBLEM_KIND_FLOOR_ZONE_UNCONTROLLED = ProblemKind._(
      10, _omitEnumNames ? '' : 'PROBLEM_KIND_FLOOR_ZONE_UNCONTROLLED');

  /// The gateway's planning inputs (planning.v1) are stale, for a building whose inputs are on
  /// (webrtc.v1 BUILDING PLANNING): its forecast is more than six hours old, or the next day's
  /// prices are still missing at 16:00 in the bidding zone's own time, well after the
  /// day-ahead market has cleared. Open while any such building's are. Building-level: it
  /// names the gateway, never a home. Its planner meanwhile shifts no load past what it
  /// holds, so nothing goes cold or unsafe while it is open.
  static const ProblemKind PROBLEM_KIND_PLANNING_INPUTS_STALE = ProblemKind._(
      11, _omitEnumNames ? '' : 'PROBLEM_KIND_PLANNING_INPUTS_STALE');

  /// The device needs a person before it works as it should, as its connector reports it
  /// (device.v1.DeviceAttention): attention says why. A service signal, as a fault is
  /// (access.v1.SERVICE_SIGNAL_FAULT): it names the device and where it is filed, and nothing
  /// of the room or of the people in it, with the times a device in a home is given. A change
  /// of reason while it is open is sent as a change of the problem. Judged on the reason the
  /// connector last reported, whether the device is heard now or not: it opens, and stays open,
  /// while the device is offline or its connector is settling. Closes CLEAR_REASON_RECOVERED
  /// once the connector reports that no reason holds (a null value), never for the mere
  /// absence of a report — a connector restarting without sending it — and
  /// CLEAR_REASON_DEVICE_REMOVED with the device.
  static const ProblemKind PROBLEM_KIND_DEVICE_NEEDS_ATTENTION = ProblemKind._(
      12, _omitEnumNames ? '' : 'PROBLEM_KIND_DEVICE_NEEDS_ATTENTION');

  static const $core.List<ProblemKind> values = <ProblemKind>[
    PROBLEM_KIND_UNSPECIFIED,
    PROBLEM_KIND_DEVICE_OFFLINE,
    PROBLEM_KIND_BATTERY_LOW,
    PROBLEM_KIND_BATTERY_REPLACEMENT_NEEDED,
    PROBLEM_KIND_DEVICE_ERROR,
    PROBLEM_KIND_DEVICE_TAMPER,
    PROBLEM_KIND_CONNECTOR_OFFLINE,
    PROBLEM_KIND_CONNECTOR_ERROR,
    PROBLEM_KIND_UNFILED_DEVICES,
    PROBLEM_KIND_WINDOW_OPEN,
    PROBLEM_KIND_FLOOR_ZONE_UNCONTROLLED,
    PROBLEM_KIND_PLANNING_INPUTS_STALE,
    PROBLEM_KIND_DEVICE_NEEDS_ATTENTION,
  ];

  static final $core.List<ProblemKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 12);
  static ProblemKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ProblemKind._(super.value, super.name);
}

/// Why a problem closed.
///
/// A connector problem is CONNECTOR_OFFLINE or CONNECTOR_ERROR, and at most one is open for a
/// connector at a time: one problem rather than one per device. While one is open, no
/// DEVICE_OFFLINE opens, or opens again, for the devices behind that connector, and the gateway
/// closes each DEVICE_OFFLINE of a device still reported behind it with the SUPERSEDED_* reason
/// naming the connector problem open as it closes it: at once for a device outside any home;
/// for a device in a home at the next quarter hour, so a receiver may hold both open until
/// then. If no connector problem is open by that quarter hour — it came and went — nothing is
/// sent, and the DEVICE_OFFLINE stays open, closing as below.
///
/// A connector is settling while a connector problem of it is open, and for a settling time
/// after one ends, in which the connector and its devices report again; how long is the
/// gateway's own policy, but at least 2 minutes and at most 5 minutes after the connector
/// problem ended: time for the connector to state its health and report its devices'
/// reachability again (see connector.v1.BackendHealthReport). A device the connector has not
/// reported reachable by then is judged on what the gateway last heard of it. While it is
/// settling, no DEVICE_OFFLINE opens, or opens again, for its devices; a connector whose
/// problems keep recurring within its settling time keeps them from opening, and its connector
/// problems are what is reported. A DEVICE_OFFLINE closes CLEAR_REASON_RECOVERED only once the
/// connector reports the device reachable again, never for the mere absence of a report; it
/// closes with a SUPERSEDED_* reason as said above, and on a move, a removal or leaving what the
/// gateway reports as for any problem. Once its connector is no longer settling, the gateway
/// judges its devices afresh: a device still unreachable that has no DEVICE_OFFLINE open — one
/// closed as superseded or moved, one that started being reported or went unreachable meanwhile
/// — opens one, stamped as Problem says. So a device outside a home that stays unreachable
/// through an outage has its DEVICE_OFFLINE closed as superseded and a new one opened after it.
///
/// The gateway closes a problem when it decides the clear — for a device in
/// a home, at the quarter hour — and a clear queued or sent again keeps the reason it was
/// given then. Times are as for any transition (see Problem): a device in a home is
/// stamped only with quarter hours, and no time crosses a home's boundary.
///
/// When the gateway stops tracking a connector — when is the gateway's own policy — the
/// connector and the devices behind it stop being reported, and their open problems close
/// with NO_LONGER_REPORTED. A removed device's problems always close with DEVICE_REMOVED, even
/// when it also stops being reported; any other subject that stops being reported always
/// closes with NO_LONGER_REPORTED. Neither takes a SUPERSEDED_* reason, even while a connector
/// problem is open.
class ClearReason extends $pb.ProtobufEnum {
  static const ClearReason CLEAR_REASON_UNSPECIFIED =
      ClearReason._(0, _omitEnumNames ? '' : 'CLEAR_REASON_UNSPECIFIED');

  /// The condition ended: the device was heard, its battery recovered or was replaced, the
  /// connector came back, the window closed, the floor zone was given a control room or
  /// removed, the device no longer needs attention.
  static const ClearReason CLEAR_REASON_RECOVERED =
      ClearReason._(1, _omitEnumNames ? '' : 'CLEAR_REASON_RECOVERED');

  /// The unfiled devices were filed.
  static const ClearReason CLEAR_REASON_FILED =
      ClearReason._(2, _omitEnumNames ? '' : 'CLEAR_REASON_FILED');

  /// The device was removed from the gateway. Every problem open on it closes with this,
  /// never with a SUPERSEDED_* reason (see above).
  static const ClearReason CLEAR_REASON_DEVICE_REMOVED =
      ClearReason._(3, _omitEnumNames ? '' : 'CLEAR_REASON_DEVICE_REMOVED');

  /// The connector behind the device went offline. For a DEVICE_OFFLINE, and for a
  /// CONNECTOR_ERROR whose connector's stream dropped; no other problem is superseded. See
  /// above.
  static const ClearReason CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE =
      ClearReason._(4,
          _omitEnumNames ? '' : 'CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE');

  /// The problem's subject left what the gateway reports, though the condition may hold: a
  /// device now owned by a resident, a room moved into a home, a connector the gateway has
  /// stopped tracking and the devices behind it. A device handed to a resident, or a device or
  /// room leaving with a move, is sent, and stamped, at the next quarter hour; anything else
  /// as Problem says for its subject.
  /// Never replaced by a SUPERSEDED_* reason (see above).
  static const ClearReason CLEAR_REASON_NO_LONGER_REPORTED =
      ClearReason._(5, _omitEnumNames ? '' : 'CLEAR_REASON_NO_LONGER_REPORTED');

  /// The subject moved into or out of a home. A problem that still holds opens again as a new
  /// one at the same quarter hour — a DEVICE_OFFLINE only while its connector is not
  /// settling (see above). A DEVICE_OFFLINE closes with a SUPERSEDED_* reason instead when a
  /// connector problem of its connector is open as the gateway closes it (see above).
  static const ClearReason CLEAR_REASON_MOVED =
      ClearReason._(6, _omitEnumNames ? '' : 'CLEAR_REASON_MOVED');

  /// The backend of the connector behind the device is failing. For a DEVICE_OFFLINE only; no
  /// other problem is superseded. See above.
  static const ClearReason CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_ERROR =
      ClearReason._(7,
          _omitEnumNames ? '' : 'CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_ERROR');

  static const $core.List<ClearReason> values = <ClearReason>[
    CLEAR_REASON_UNSPECIFIED,
    CLEAR_REASON_RECOVERED,
    CLEAR_REASON_FILED,
    CLEAR_REASON_DEVICE_REMOVED,
    CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE,
    CLEAR_REASON_NO_LONGER_REPORTED,
    CLEAR_REASON_MOVED,
    CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_ERROR,
  ];

  static final $core.List<ClearReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static ClearReason? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ClearReason._(super.value, super.name);
}

/// What the api-server made of one transition.
class AckStatus extends $pb.ProtobufEnum {
  static const AckStatus ACK_STATUS_UNSPECIFIED =
      AckStatus._(0, _omitEnumNames ? '' : 'ACK_STATUS_UNSPECIFIED');

  /// Applied now.
  static const AckStatus ACK_STATUS_APPLIED =
      AckStatus._(1, _omitEnumNames ? '' : 'ACK_STATUS_APPLIED');

  /// Already held, or overtaken by a later transition of the same problem; not applied.
  static const AckStatus ACK_STATUS_DUPLICATE =
      AckStatus._(2, _omitEnumNames ? '' : 'ACK_STATUS_DUPLICATE');

  /// Not applied, and never will be: malformed, or for something this gateway may not report.
  /// The gateway does not send it again. Never because of what the api-server holds of spaces —
  /// one it does not hold, one since removed, one it still files elsewhere: the three concerns
  /// are not ordered against each other, so a problem may run ahead of or behind its space, and
  /// is kept (see ServiceReach for who sees it).
  static const AckStatus ACK_STATUS_REJECTED =
      AckStatus._(3, _omitEnumNames ? '' : 'ACK_STATUS_REJECTED');

  /// Part of a snapshot not yet complete: received, to be applied with the last part.
  static const AckStatus ACK_STATUS_HELD =
      AckStatus._(4, _omitEnumNames ? '' : 'ACK_STATUS_HELD');

  static const $core.List<AckStatus> values = <AckStatus>[
    ACK_STATUS_UNSPECIFIED,
    ACK_STATUS_APPLIED,
    ACK_STATUS_DUPLICATE,
    ACK_STATUS_REJECTED,
    ACK_STATUS_HELD,
  ];

  static final $core.List<AckStatus?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static AckStatus? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AckStatus._(super.value, super.name);
}

/// What a notice is about. A closed list that grows only by a release of this schema; a kind the
/// api-server does not know is not sent.
class NoticeKind extends $pb.ProtobufEnum {
  static const NoticeKind NOTICE_KIND_UNSPECIFIED =
      NoticeKind._(0, _omitEnumNames ? '' : 'NOTICE_KIND_UNSPECIFIED');

  /// A heat curve suggestion arose or changed materially (heating.v1 HEAT CURVE, SUGGESTION).
  /// To those who apply it: a home's household admins; for a plant outside homes, the owning
  /// organisation's administrators (owner_organisation), and the property owner and the
  /// gateway's administrators who reach the plant's space, each named by user id; and a
  /// technician it is handed to (heating.v1 HEAT CURVE, HAND-OVER).
  static const NoticeKind NOTICE_KIND_HEAT_CURVE_SUGGESTION = NoticeKind._(
      1, _omitEnumNames ? '' : 'NOTICE_KIND_HEAT_CURVE_SUGGESTION');

  /// A reminder of an open heat curve suggestion, such as points newly confirmed. To the same.
  static const NoticeKind NOTICE_KIND_HEAT_CURVE_REMINDER =
      NoticeKind._(2, _omitEnumNames ? '' : 'NOTICE_KIND_HEAT_CURVE_REMINDER');

  /// A room-target suggestion arose (heating.v1 HEAT CURVE, ROOM TARGETS). To the residents of
  /// the home the room lies in, and never to anyone else.
  static const NoticeKind NOTICE_KIND_ROOM_TARGET_SUGGESTION = NoticeKind._(
      3, _omitEnumNames ? '' : 'NOTICE_KIND_ROOM_TARGET_SUGGESTION');

  /// A heat curve suggestion was handed to the technician named (heating.v1 HEAT CURVE,
  /// HAND-OVER). To that technician alone.
  static const NoticeKind NOTICE_KIND_HEAT_CURVE_HANDED_OVER = NoticeKind._(
      4, _omitEnumNames ? '' : 'NOTICE_KIND_HEAT_CURVE_HANDED_OVER');

  /// A price rule in SHADOW on a home's own plant became ready for LIVE (commissioning.v1
  /// READINESS): once for each stretch the rule is in SHADOW. To the home's household admins, and
  /// never to anyone else.
  static const NoticeKind NOTICE_KIND_PRICE_RULE_READY =
      NoticeKind._(5, _omitEnumNames ? '' : 'NOTICE_KIND_PRICE_RULE_READY');

  /// A price rule LIVE on a home's own plant was seen to cost comfort
  /// (commissioning.v1.PriceRuleReadiness.comfort_cost_seen_on): once for each stretch the rule is
  /// LIVE. To the home's household admins, and never to anyone else.
  static const NoticeKind NOTICE_KIND_PRICE_RULE_COMFORT_COST = NoticeKind._(
      6, _omitEnumNames ? '' : 'NOTICE_KIND_PRICE_RULE_COMFORT_COST');

  /// As NOTICE_KIND_PRICE_RULE_READY, told instead of it where, as the rule became ready, the heat
  /// source's own price function held it from LIVE (commissioning.v1 READINESS, LIVE HOLDS,
  /// "rule_own_price_function"): ready once that function is turned off at the heat source, or
  /// answered off. One of the two is told for each stretch the rule is in SHADOW, as it stood when
  /// told. To the home's household admins, and never to anyone else.
  static const NoticeKind
      NOTICE_KIND_PRICE_RULE_READY_ONCE_OWN_PRICE_FUNCTION_OFF = NoticeKind._(
          7,
          _omitEnumNames
              ? ''
              : 'NOTICE_KIND_PRICE_RULE_READY_ONCE_OWN_PRICE_FUNCTION_OFF');

  static const $core.List<NoticeKind> values = <NoticeKind>[
    NOTICE_KIND_UNSPECIFIED,
    NOTICE_KIND_HEAT_CURVE_SUGGESTION,
    NOTICE_KIND_HEAT_CURVE_REMINDER,
    NOTICE_KIND_ROOM_TARGET_SUGGESTION,
    NOTICE_KIND_HEAT_CURVE_HANDED_OVER,
    NOTICE_KIND_PRICE_RULE_READY,
    NOTICE_KIND_PRICE_RULE_COMFORT_COST,
    NOTICE_KIND_PRICE_RULE_READY_ONCE_OWN_PRICE_FUNCTION_OFF,
  ];

  static final $core.List<NoticeKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static NoticeKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const NoticeKind._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
