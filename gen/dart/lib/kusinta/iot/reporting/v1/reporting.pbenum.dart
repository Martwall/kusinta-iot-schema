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
  /// while a connector problem is open for its connector; see ClearReason.
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
  /// it is open, no DEVICE_OFFLINE opens for the devices behind that connector, one problem
  /// rather than one per device. Closes with CLEAR_REASON_RECOVERED when the
  /// connector reconnects, or CLEAR_REASON_NO_LONGER_REPORTED when the gateway stops tracking
  /// the connector.
  static const ProblemKind PROBLEM_KIND_CONNECTOR_OFFLINE =
      ProblemKind._(6, _omitEnumNames ? '' : 'PROBLEM_KIND_CONNECTOR_OFFLINE');

  /// A connector is connected, but the backend it drives is failing: a central it cannot
  /// reach, a network server answering with errors. Raised from the connector's own health
  /// reports (connector.v1.BackendHealthReport); backend_failure carries the category, never
  /// the connector's own detail. A connector problem, as CONNECTOR_OFFLINE is: while it is
  /// open, no DEVICE_OFFLINE opens for the devices behind that connector. Closes
  /// with CLEAR_REASON_RECOVERED when the health is no longer FAILING,
  /// CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE when the connector's stream drops, or
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
/// connector at a time. While one is open, no DEVICE_OFFLINE opens, or opens again, for the
/// devices behind that connector. One already open is not closed at once, so a receiver may
/// hold both open for a while. A DEVICE_OFFLINE closes with a
/// SUPERSEDED_* reason when a connector problem of its connector is open at the time the
/// clear is sent, the reason naming that problem; otherwise it closes, or stays open, as any
/// DEVICE_OFFLINE does. After the connector problem ends, a DEVICE_OFFLINE may open again as
/// the gateway judges. Times are as for any transition (see Problem): a device in a home is
/// stamped only with quarter hours, and no time crosses a home's boundary.
///
/// When the gateway stops tracking a connector — when is the gateway's own policy — the
/// connector and the devices behind it stop being reported, and their open problems close
/// with NO_LONGER_REPORTED.
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

  /// The device was removed from the gateway. Every problem open on it closes with this; a
  /// DEVICE_OFFLINE may close with a SUPERSEDED_* reason instead (see above).
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
  /// stopped tracking and the devices behind it. A device or room leaving with a move is sent,
  /// and stamped, at the next quarter hour; anything else as Problem says for its subject. A
  /// DEVICE_OFFLINE may close with a SUPERSEDED_* reason instead (see above).
  static const ClearReason CLEAR_REASON_NO_LONGER_REPORTED =
      ClearReason._(5, _omitEnumNames ? '' : 'CLEAR_REASON_NO_LONGER_REPORTED');

  /// The subject moved into or out of a home. A problem that still holds opens again as a new
  /// one at the same quarter hour — a DEVICE_OFFLINE only while no connector problem is open
  /// for its connector. A DEVICE_OFFLINE may close with a SUPERSEDED_* reason instead (see
  /// above).
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
