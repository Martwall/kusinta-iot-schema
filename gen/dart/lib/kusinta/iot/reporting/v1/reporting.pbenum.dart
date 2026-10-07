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

  /// The device cannot be heard, as its connector judges it.
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

  /// A connector's stream to the gateway is down. While it is open, the gateway raises no
  /// DEVICE_OFFLINE for the devices behind that connector and clears any it had raised, with
  /// CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE: one problem rather than one per device. For
  /// a device in a home that clear, like any, waits for the quarter hour (see Problem).
  static const ProblemKind PROBLEM_KIND_CONNECTOR_OFFLINE =
      ProblemKind._(6, _omitEnumNames ? '' : 'PROBLEM_KIND_CONNECTOR_OFFLINE');

  /// A connector is connected, but the backend it drives is failing: a central it cannot
  /// reach, a network server answering with errors.
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

  /// The device was removed from the gateway. Every problem open on it closes with this.
  static const ClearReason CLEAR_REASON_DEVICE_REMOVED =
      ClearReason._(3, _omitEnumNames ? '' : 'CLEAR_REASON_DEVICE_REMOVED');

  /// The connector behind the device went offline; see PROBLEM_KIND_CONNECTOR_OFFLINE.
  static const ClearReason CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE =
      ClearReason._(4,
          _omitEnumNames ? '' : 'CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE');

  /// The problem's subject left what the gateway reports, though the condition may hold: a
  /// device now owned by a resident, a room moved into a home. Sent, and stamped, at the next
  /// quarter hour.
  static const ClearReason CLEAR_REASON_NO_LONGER_REPORTED =
      ClearReason._(5, _omitEnumNames ? '' : 'CLEAR_REASON_NO_LONGER_REPORTED');

  /// The subject moved into or out of a home. A problem that still holds opens again as a new
  /// one at the same quarter hour.
  static const ClearReason CLEAR_REASON_MOVED =
      ClearReason._(6, _omitEnumNames ? '' : 'CLEAR_REASON_MOVED');

  static const $core.List<ClearReason> values = <ClearReason>[
    CLEAR_REASON_UNSPECIFIED,
    CLEAR_REASON_RECOVERED,
    CLEAR_REASON_FILED,
    CLEAR_REASON_DEVICE_REMOVED,
    CLEAR_REASON_SUPERSEDED_BY_CONNECTOR_OFFLINE,
    CLEAR_REASON_NO_LONGER_REPORTED,
    CLEAR_REASON_MOVED,
  ];

  static final $core.List<ClearReason?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
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
