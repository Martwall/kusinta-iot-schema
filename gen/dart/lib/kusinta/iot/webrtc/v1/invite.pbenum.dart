// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/invite.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// What redeeming an invite does, by its kind (see the file header). Decided by the gateway
/// when the invite is created and told in Invite.admission, so the app can say what
/// redeeming will do before the invite is shared.
class InviteAdmission extends $pb.ProtobufEnum {
  /// Not told. The app reads it as not known, never as any value below.
  static const InviteAdmission INVITE_ADMISSION_UNSPECIFIED = InviteAdmission._(
      0, _omitEnumNames ? '' : 'INVITE_ADMISSION_UNSPECIFIED');

  /// Bound to an address: files the person at once if the verified address of their account
  /// matches (CreateInvite.email).
  static const InviteAdmission INVITE_ADMISSION_ON_EMAIL_MATCH =
      InviteAdmission._(
          1, _omitEnumNames ? '' : 'INVITE_ADMISSION_ON_EMAIL_MATCH');

  /// A home key: files whoever redeems it on the home at once, with no join request.
  static const InviteAdmission INVITE_ADMISSION_ON_REDEEM =
      InviteAdmission._(2, _omitEnumNames ? '' : 'INVITE_ADMISSION_ON_REDEEM');

  /// Makes a join request, and the person is filed only once it is approved
  /// (ApproveJoinRequest).
  static const InviteAdmission INVITE_ADMISSION_ON_APPROVAL = InviteAdmission._(
      3, _omitEnumNames ? '' : 'INVITE_ADMISSION_ON_APPROVAL');

  static const $core.List<InviteAdmission> values = <InviteAdmission>[
    INVITE_ADMISSION_UNSPECIFIED,
    INVITE_ADMISSION_ON_EMAIL_MATCH,
    INVITE_ADMISSION_ON_REDEEM,
    INVITE_ADMISSION_ON_APPROVAL,
  ];

  static final $core.List<InviteAdmission?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static InviteAdmission? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const InviteAdmission._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
