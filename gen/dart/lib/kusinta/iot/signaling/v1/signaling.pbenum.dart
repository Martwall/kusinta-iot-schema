// This is a generated file - do not edit.
//
// Generated from kusinta/iot/signaling/v1/signaling.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// What redeeming an invite did, as the gateway decided it.
///
/// A redeem is idempotent for its user: redeemed again by the same user, for as
/// long as its secret would have lasted unused, a used invite answers JOINED if
/// the user is filed on its space by then, and otherwise as it did the first time
/// — so a denied request still answers PENDING_APPROVAL — except that one which
/// filed the user, who has left that space since, answers INVALID. To anyone
/// else it answers INVALID. So a user who never saw the first answer can safely
/// try again.
class RedeemOutcome extends $pb.ProtobufEnum {
  static const RedeemOutcome REDEEM_OUTCOME_UNSPECIFIED =
      RedeemOutcome._(0, _omitEnumNames ? '' : 'REDEEM_OUTCOME_UNSPECIFIED');

  /// The user is a member of the invite's space. Answered only once the
  /// api-server has applied the member report that names them
  /// (reporting.v1.GatewayMember), so the user can connect as soon as they are
  /// told. Also the answer for a user already filed on that space: the invite is
  /// used up, and their membership is left exactly as it was.
  static const RedeemOutcome REDEEM_OUTCOME_JOINED =
      RedeemOutcome._(1, _omitEnumNames ? '' : 'REDEEM_OUTCOME_JOINED');

  /// A join request was made (webrtc.v1.JoinRequest); the user becomes a member
  /// once it is approved. Also the answer for a user who already has one on that
  /// space.
  static const RedeemOutcome REDEEM_OUTCOME_PENDING_APPROVAL = RedeemOutcome._(
      2, _omitEnumNames ? '' : 'REDEEM_OUTCOME_PENDING_APPROVAL');

  /// No invite: unknown, expired, revoked, already used by someone else, a code
  /// for an invite bound to another address, or anything else that is not a
  /// live invite. One answer for all of them, so a redeem tells nothing about
  /// which secrets exist.
  static const RedeemOutcome REDEEM_OUTCOME_INVALID =
      RedeemOutcome._(3, _omitEnumNames ? '' : 'REDEEM_OUTCOME_INVALID');

  /// The invite is bound to an address (webrtc.v1.CreateInvite.email) that is not
  /// the user's verified one. Answered only to a token, which cannot be guessed;
  /// a code bound to another address answers INVALID. Never says which address
  /// it is bound to, and leaves the invite pending.
  static const RedeemOutcome REDEEM_OUTCOME_WRONG_ACCOUNT =
      RedeemOutcome._(4, _omitEnumNames ? '' : 'REDEEM_OUTCOME_WRONG_ACCOUNT');

  static const $core.List<RedeemOutcome> values = <RedeemOutcome>[
    REDEEM_OUTCOME_UNSPECIFIED,
    REDEEM_OUTCOME_JOINED,
    REDEEM_OUTCOME_PENDING_APPROVAL,
    REDEEM_OUTCOME_INVALID,
    REDEEM_OUTCOME_WRONG_ACCOUNT,
  ];

  static final $core.List<RedeemOutcome?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static RedeemOutcome? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const RedeemOutcome._(super.value, super.name);
}

/// How much a wipe takes (GatewayDeleted).
class WipeScope extends $pb.ProtobufEnum {
  /// Not stated. Read as PEOPLE_AND_HISTORY, as is any value the gateway does not know.
  static const WipeScope WIPE_SCOPE_UNSPECIFIED =
      WipeScope._(0, _omitEnumNames ? '' : 'WIPE_SCOPE_UNSPECIFIED');

  /// Decommissioning: people and their history go and the building's setup stays
  /// (GatewayDeleted, WIPE).
  static const WipeScope WIPE_SCOPE_PEOPLE_AND_HISTORY =
      WipeScope._(1, _omitEnumNames ? '' : 'WIPE_SCOPE_PEOPLE_AND_HISTORY');

  /// Out of the box, for a gateway that is to be used anywhere else: everything the gateway holds
  /// goes — what a wipe of people and history takes and also the building's setup, the gateway's
  /// certificates, keys and registration, connector configuration, the readings connectors store
  /// on the gateway, and its logs. What is held in other hardware is not reached: devices paired
  /// to a radio central the gateway drives stay paired there until that is reset too, and the
  /// gateway says so (GatewayWiped.left_behind).
  ///
  /// A gateway that does not perform a factory reset wipes people and history instead, and says
  /// so in GatewayWiped.scope.
  static const WipeScope WIPE_SCOPE_FACTORY_RESET =
      WipeScope._(2, _omitEnumNames ? '' : 'WIPE_SCOPE_FACTORY_RESET');

  static const $core.List<WipeScope> values = <WipeScope>[
    WIPE_SCOPE_UNSPECIFIED,
    WIPE_SCOPE_PEOPLE_AND_HISTORY,
    WIPE_SCOPE_FACTORY_RESET,
  ];

  static final $core.List<WipeScope?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static WipeScope? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WipeScope._(super.value, super.name);
}

/// Whether an outgoing staff member leaves the gateway or stays on it as a technician. Chosen
/// per person by the sending organisation's administrator who offered the transfer.
class OutgoingStaffChoice extends $pb.ProtobufEnum {
  /// No choice stated. Read as LEAVE, as is any value the gateway does not know.
  static const OutgoingStaffChoice OUTGOING_STAFF_CHOICE_UNSPECIFIED =
      OutgoingStaffChoice._(
          0, _omitEnumNames ? '' : 'OUTGOING_STAFF_CHOICE_UNSPECIFIED');

  /// Leaves: every staff role and SERVICE membership goes, and no residency.
  static const OutgoingStaffChoice OUTGOING_STAFF_CHOICE_LEAVE =
      OutgoingStaffChoice._(
          1, _omitEnumNames ? '' : 'OUTGOING_STAFF_CHOICE_LEAVE');

  /// Stays as a technician, with access_until as its end.
  static const OutgoingStaffChoice OUTGOING_STAFF_CHOICE_STAY_AS_TECHNICIAN =
      OutgoingStaffChoice._(
          2, _omitEnumNames ? '' : 'OUTGOING_STAFF_CHOICE_STAY_AS_TECHNICIAN');

  static const $core.List<OutgoingStaffChoice> values = <OutgoingStaffChoice>[
    OUTGOING_STAFF_CHOICE_UNSPECIFIED,
    OUTGOING_STAFF_CHOICE_LEAVE,
    OUTGOING_STAFF_CHOICE_STAY_AS_TECHNICIAN,
  ];

  static final $core.List<OutgoingStaffChoice?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static OutgoingStaffChoice? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const OutgoingStaffChoice._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
