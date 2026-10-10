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

/// What kind of problem is open. The device kinds mirror what service staff are given of a
/// device (webrtc.v1.ServiceStatus: reachability, the battery flags, the ServiceFault values);
/// a device signal added there is added here too.
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
  ];

  static final $core.List<ProblemKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 9);
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
  /// connector came back, the window closed.
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

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
