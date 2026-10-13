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
/// — so a denied request still answers PENDING_APPROVAL. To anyone else it
/// answers INVALID. So a user who never saw the first answer can safely try
/// again.
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

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
