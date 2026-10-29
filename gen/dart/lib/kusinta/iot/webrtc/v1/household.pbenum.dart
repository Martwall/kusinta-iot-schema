// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/household.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// How a staff member appointed a household admin (STAFF APPOINTMENT).
class StaffAppointmentKind extends $pb.ProtobufEnum {
  static const StaffAppointmentKind STAFF_APPOINTMENT_KIND_UNSPECIFIED =
      StaffAppointmentKind._(
          0, _omitEnumNames ? '' : 'STAFF_APPOINTMENT_KIND_UNSPECIFIED');

  /// An appointment invite on an empty home, redeemed.
  static const StaffAppointmentKind STAFF_APPOINTMENT_KIND_INVITE =
      StaffAppointmentKind._(
          1, _omitEnumNames ? '' : 'STAFF_APPOINTMENT_KIND_INVITE');

  /// A promotion request to a resident of an admin-less home, accepted.
  static const StaffAppointmentKind STAFF_APPOINTMENT_KIND_PROMOTION =
      StaffAppointmentKind._(
          2, _omitEnumNames ? '' : 'STAFF_APPOINTMENT_KIND_PROMOTION');

  static const $core.List<StaffAppointmentKind> values = <StaffAppointmentKind>[
    STAFF_APPOINTMENT_KIND_UNSPECIFIED,
    STAFF_APPOINTMENT_KIND_INVITE,
    STAFF_APPOINTMENT_KIND_PROMOTION,
  ];

  static final $core.List<StaffAppointmentKind?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static StaffAppointmentKind? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StaffAppointmentKind._(super.value, super.name);
}

class HouseholdHandoverState extends $pb.ProtobufEnum {
  /// A state this schema does not know: read as PENDING.
  static const HouseholdHandoverState HOUSEHOLD_HANDOVER_STATE_UNSPECIFIED =
      HouseholdHandoverState._(
          0, _omitEnumNames ? '' : 'HOUSEHOLD_HANDOVER_STATE_UNSPECIFIED');
  static const HouseholdHandoverState HOUSEHOLD_HANDOVER_STATE_PENDING =
      HouseholdHandoverState._(
          1, _omitEnumNames ? '' : 'HOUSEHOLD_HANDOVER_STATE_PENDING');
  static const HouseholdHandoverState HOUSEHOLD_HANDOVER_STATE_CANCELLED =
      HouseholdHandoverState._(
          2, _omitEnumNames ? '' : 'HOUSEHOLD_HANDOVER_STATE_CANCELLED');

  /// Confirmed, or, for a vacated one, its notice passed with nobody living in the home or a new
  /// resident filed (QUICK TURNOVER); the wipe has run. The last residency ending while one is
  /// pending makes it vacated, not done (VACANCY).
  static const HouseholdHandoverState HOUSEHOLD_HANDOVER_STATE_DONE =
      HouseholdHandoverState._(
          3, _omitEnumNames ? '' : 'HOUSEHOLD_HANDOVER_STATE_DONE');

  static const $core.List<HouseholdHandoverState> values =
      <HouseholdHandoverState>[
    HOUSEHOLD_HANDOVER_STATE_UNSPECIFIED,
    HOUSEHOLD_HANDOVER_STATE_PENDING,
    HOUSEHOLD_HANDOVER_STATE_CANCELLED,
    HOUSEHOLD_HANDOVER_STATE_DONE,
  ];

  static final $core.List<HouseholdHandoverState?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static HouseholdHandoverState? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HouseholdHandoverState._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
