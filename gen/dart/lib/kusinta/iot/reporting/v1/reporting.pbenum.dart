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

  /// The device cannot be heard, as its connector judges it — or the gateway, for a connector
  /// it no longer tracks. Never raised while a connector problem is open for its connector, or
  /// before the connector has judged it; see ClearReason.
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

  /// A connector's stream to the gateway is down. A connector problem: while it is open, it
  /// stands in for the DEVICE_OFFLINE of every device behind that connector, one problem
  /// rather than one per device, and none of theirs opens until it ends (see ClearReason).
  /// Closes with CLEAR_REASON_RECOVERED when the stream comes back, also when the handshake
  /// reports the backend FAILING: the CONNECTOR_ERROR that opens in the same step is a
  /// separate problem. When the gateway stops tracking the connector — an administrator
  /// removes it, or the gateway's own retention lets it go; when is the gateway's policy —
  /// it closes at once with CLEAR_REASON_NO_LONGER_REPORTED, and its devices' DEVICE_OFFLINE
  /// are no longer held for it.
  static const ProblemKind PROBLEM_KIND_CONNECTOR_OFFLINE =
      ProblemKind._(6, _omitEnumNames ? '' : 'PROBLEM_KIND_CONNECTOR_OFFLINE');

  /// A connector is connected, but the backend it drives is failing: a central it cannot
  /// reach, a network server answering with errors. Open while the connector's latest
  /// connector.v1.BackendHealthReport says FAILING, cleared with CLEAR_REASON_RECOVERED when
  /// one says otherwise; a connector that never reports its backend never raises it. When the
  /// connector's stream goes down, CONNECTOR_OFFLINE supersedes it, and it closes with
  /// CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE; the health in the connector's next
  /// handshake decides it afresh: a FAILING one opens a new CONNECTOR_ERROR in the same step
  /// as CONNECTOR_OFFLINE closes with CLEAR_REASON_RECOVERED. Nothing of the connector's own
  /// detail is reported; the problem carries only the category, in backend_failure.
  ///
  /// A connector problem, as CONNECTOR_OFFLINE is: while it is open, it stands in for the
  /// DEVICE_OFFLINE of every device behind that connector, and none of theirs opens until it
  /// ends (see ClearReason).
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
/// A connector problem — CONNECTOR_OFFLINE or CONNECTOR_ERROR — stands in for the
/// DEVICE_OFFLINE of every device behind its connector, one problem rather than one per
/// device. At most one is open for a connector at a time: a connector cannot be offline and
/// failing at once, and CONNECTOR_OFFLINE supersedes a CONNECTOR_ERROR. A reconnect whose
/// handshake reports FAILING closes CONNECTOR_OFFLINE, with RECOVERED, and opens a new
/// CONNECTOR_ERROR in the same step, with no gap between. The same rules hold for both:
///
///   * No DEVICE_OFFLINE opens for a device while a connector problem is open for its
///     connector, and a device that moved is not reopened then.
///   * A clear of an open DEVICE_OFFLINE is judged when it is sent: for a device in a home at
///     the next quarter hour, for any other at once. If a connector problem is open for its
///     connector then, it closes with the superseded reason naming that problem,
///     SUPERSEDED_BY_CONNECTOR_OFFLINE or SUPERSEDED_BY_CONNECTOR_ERROR, even where a reason
///     of the device's own — RECOVERED, MOVED, NO_LONGER_REPORTED, DEVICE_REMOVED — also
///     holds. If none is open, it closes with the device's own reason where one holds. Only
///     when neither holds — a connector problem that came and went between two quarter hours,
///     the device still judged offline and still where it was — is nothing sent, and its
///     DEVICE_OFFLINE stays open. So a device in a home removed at 10:07, while its connector
///     was offline from 10:05 to 10:10, closes with DEVICE_REMOVED at 10:15.
///   * A connector judges no device until its first backend attempt since connecting has
///     settled (see connector.v1.ConnectorHandshake.backend_health). Until then no
///     DEVICE_OFFLINE of its devices opens and none closes as RECOVERED, so the handover from
///     CONNECTOR_OFFLINE to CONNECTOR_ERROR leaves no gap in which devices are judged one by
///     one.
///   * Once no connector problem is open for the connector — it is back, its first backend
///     attempt has settled and its backend is not failing, or the gateway has stopped
///     tracking it — the devices behind it are judged afresh as Problem has it, on their
///     connector's own judgement, or on the gateway's for a connector it no longer tracks. A
///     device with no DEVICE_OFFLINE open opens one if judged offline: a device in a home at
///     the next quarter hour, stamped with it; any other device at once. One judged online
///     opens nothing, and a device removed meanwhile has nothing to open. A device whose
///     DEVICE_OFFLINE is still open keeps it, and it closes only as any DEVICE_OFFLINE does.
///     A device in a home is never stamped off the quarter hour.
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

  /// The device was removed from the gateway. Every problem open on it closes with this, for a
  /// device in a home sent and stamped at the next quarter hour — save a DEVICE_OFFLINE whose
  /// connector has a connector problem open when the clear is sent, which takes the
  /// superseded reason at that same time (see above).
  static const ClearReason CLEAR_REASON_DEVICE_REMOVED =
      ClearReason._(3, _omitEnumNames ? '' : 'CLEAR_REASON_DEVICE_REMOVED');

  /// The connector behind the device went offline. For a device's DEVICE_OFFLINE only — no
  /// other device problem is superseded: BATTERY_LOW, DEVICE_TAMPER and the rest stay as they
  /// are — see the connector problem rules above. Also for a CONNECTOR_ERROR, whose
  /// connector's stream went down. Never for a CONNECTOR_OFFLINE, which closes with RECOVERED.
  static const ClearReason CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE =
      ClearReason._(4,
          _omitEnumNames ? '' : 'CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE');

  /// The problem's subject left what the gateway reports, though the condition may hold: a
  /// device now owned by a resident, a room moved into a home, a connector the gateway has
  /// stopped tracking. Sent, and stamped, at the next quarter hour — at once for a connector,
  /// which is in no home — save a DEVICE_OFFLINE whose connector has a connector problem open
  /// then, which takes the superseded reason at that same time (see above).
  static const ClearReason CLEAR_REASON_NO_LONGER_REPORTED =
      ClearReason._(5, _omitEnumNames ? '' : 'CLEAR_REASON_NO_LONGER_REPORTED');

  /// The subject moved into or out of a home. A problem that still holds opens again as a new
  /// one at the same quarter hour — save a DEVICE_OFFLINE whose connector has a connector
  /// problem open then, which takes the superseded reason at that same time and does not
  /// open again until the connector problem ends (see above).
  static const ClearReason CLEAR_REASON_MOVED =
      ClearReason._(6, _omitEnumNames ? '' : 'CLEAR_REASON_MOVED');

  /// The backend of the connector behind the device started failing. For a device's
  /// DEVICE_OFFLINE only — no other device problem is superseded: BATTERY_LOW, DEVICE_TAMPER
  /// and the rest stay as they are. See the connector problem rules above.
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
