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

import '../../../../google/protobuf/timestamp.pb.dart' as $1;
import '../../access/v1/roles.pbenum.dart' as $2;
import '../../identity/v1/identity.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Creates an invite on a space.
///
/// relation is RESIDENT or SERVICE and nothing else, and it decides the role the person
/// will hold: a resident for RESIDENT, a technician for SERVICE. RESIDENT is refused
/// anywhere but a home (access.v1.MembershipRelation). No invite ever makes anyone a
/// gateway administrator or a property owner: those come only by promotion of someone
/// already a member, and any other relation is refused as INVALID_REQUEST.
///
/// Who may create one is the gateway's decision, as for AssignUserToSpace. The gateway may
/// let a home's residents invite residents into their own home only, within a limit per
/// home. A caller over that limit is refused as FAILED_PRECONDITION with metadata
/// {"reason": "household_full"}.
///
/// Answered with IssuedInvite.
class CreateInvite extends $pb.GeneratedMessage {
  factory CreateInvite({
    $0.SpaceId? spaceId,
    $2.MembershipRelation? relation,
    $core.String? email,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (relation != null) result.relation = relation;
    if (email != null) result.email = email;
    return result;
  }

  CreateInvite._();

  factory CreateInvite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateInvite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateInvite',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..e<$2.MembershipRelation>(
        2, _omitFieldNames ? '' : 'relation', $pb.PbFieldType.OE,
        defaultOrMaker: $2.MembershipRelation.MEMBERSHIP_RELATION_UNSPECIFIED,
        valueOf: $2.MembershipRelation.valueOf,
        enumValues: $2.MembershipRelation.values)
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateInvite clone() => CreateInvite()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateInvite copyWith(void Function(CreateInvite) updates) =>
      super.copyWith((message) => updates(message as CreateInvite))
          as CreateInvite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateInvite create() => CreateInvite._();
  @$core.override
  CreateInvite createEmptyInstance() => create();
  static $pb.PbList<CreateInvite> createRepeated() =>
      $pb.PbList<CreateInvite>();
  @$core.pragma('dart2js:noInline')
  static CreateInvite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateInvite>(create);
  static CreateInvite? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get spaceId => $_getN(0);
  @$pb.TagNumber(1)
  set spaceId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureSpaceId() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.MembershipRelation get relation => $_getN(1);
  @$pb.TagNumber(2)
  set relation($2.MembershipRelation value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRelation() => $_has(1);
  @$pb.TagNumber(2)
  void clearRelation() => $_clearField(2);

  /// When set, the invite is bound to this address: only an account whose verified email
  /// is this address can redeem it (see RedeemInvite). Compared trimmed and
  /// case-insensitively over the whole address, with no other folding.
  ///
  /// One pending invite per space and address: a second for the same address on the same
  /// space is refused as FAILED_PRECONDITION with metadata {"reason": "already_invited",
  /// "invite_id": <the pending one>}, so the app can offer to resend that one instead.
  ///
  /// The gateway keeps the address only while the invite is pending, and drops it once the
  /// invite is redeemed, revoked or expired.
  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => $_clearField(3);
}

/// Gives a pending invite new secrets. The old token and code stop working at once, so
/// only the newest link, code or email does. Both expiries restart from now. Answered
/// with IssuedInvite. An invite's bound address cannot be changed: revoke it and create
/// another.
class ResendInvite extends $pb.GeneratedMessage {
  factory ResendInvite({
    $core.String? inviteId,
  }) {
    final result = create();
    if (inviteId != null) result.inviteId = inviteId;
    return result;
  }

  ResendInvite._();

  factory ResendInvite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ResendInvite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResendInvite',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'inviteId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResendInvite clone() => ResendInvite()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ResendInvite copyWith(void Function(ResendInvite) updates) =>
      super.copyWith((message) => updates(message as ResendInvite))
          as ResendInvite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResendInvite create() => ResendInvite._();
  @$core.override
  ResendInvite createEmptyInstance() => create();
  static $pb.PbList<ResendInvite> createRepeated() =>
      $pb.PbList<ResendInvite>();
  @$core.pragma('dart2js:noInline')
  static ResendInvite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResendInvite>(create);
  static ResendInvite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inviteId => $_getSZ(0);
  @$pb.TagNumber(1)
  set inviteId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInviteId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviteId() => $_clearField(1);
}

/// Ends a pending invite: neither secret works from now on. Answered with ManagementAck.
class RevokeInvite extends $pb.GeneratedMessage {
  factory RevokeInvite({
    $core.String? inviteId,
  }) {
    final result = create();
    if (inviteId != null) result.inviteId = inviteId;
    return result;
  }

  RevokeInvite._();

  factory RevokeInvite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RevokeInvite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RevokeInvite',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'inviteId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevokeInvite clone() => RevokeInvite()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RevokeInvite copyWith(void Function(RevokeInvite) updates) =>
      super.copyWith((message) => updates(message as RevokeInvite))
          as RevokeInvite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RevokeInvite create() => RevokeInvite._();
  @$core.override
  RevokeInvite createEmptyInstance() => create();
  static $pb.PbList<RevokeInvite> createRepeated() =>
      $pb.PbList<RevokeInvite>();
  @$core.pragma('dart2js:noInline')
  static RevokeInvite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RevokeInvite>(create);
  static RevokeInvite? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inviteId => $_getSZ(0);
  @$pb.TagNumber(1)
  set inviteId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInviteId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviteId() => $_clearField(1);
}

/// Records that the email carrying this invite's newest secrets was sent, so the list can
/// say whether it ever left. Sent by the app after the api-server has accepted the email,
/// and again after each resend. Only the time is kept. Answered with ManagementAck.
class MarkInviteEmailSent extends $pb.GeneratedMessage {
  factory MarkInviteEmailSent({
    $core.String? inviteId,
  }) {
    final result = create();
    if (inviteId != null) result.inviteId = inviteId;
    return result;
  }

  MarkInviteEmailSent._();

  factory MarkInviteEmailSent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MarkInviteEmailSent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MarkInviteEmailSent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'inviteId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkInviteEmailSent clone() => MarkInviteEmailSent()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MarkInviteEmailSent copyWith(void Function(MarkInviteEmailSent) updates) =>
      super.copyWith((message) => updates(message as MarkInviteEmailSent))
          as MarkInviteEmailSent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MarkInviteEmailSent create() => MarkInviteEmailSent._();
  @$core.override
  MarkInviteEmailSent createEmptyInstance() => create();
  static $pb.PbList<MarkInviteEmailSent> createRepeated() =>
      $pb.PbList<MarkInviteEmailSent>();
  @$core.pragma('dart2js:noInline')
  static MarkInviteEmailSent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MarkInviteEmailSent>(create);
  static MarkInviteEmailSent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get inviteId => $_getSZ(0);
  @$pb.TagNumber(1)
  set inviteId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInviteId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviteId() => $_clearField(1);
}

/// The pending invites and join requests of a space. Answered with SpaceInvites. Listed
/// only to a caller who may create invites on the space; anyone else is refused as
/// NOT_ENTITLED. A resident is listed only the invites a resident of their home made,
/// and the join requests those made: nothing they cannot act on.
class ListSpaceInvites extends $pb.GeneratedMessage {
  factory ListSpaceInvites({
    $0.SpaceId? spaceId,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    return result;
  }

  ListSpaceInvites._();

  factory ListSpaceInvites.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListSpaceInvites.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSpaceInvites',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSpaceInvites clone() => ListSpaceInvites()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSpaceInvites copyWith(void Function(ListSpaceInvites) updates) =>
      super.copyWith((message) => updates(message as ListSpaceInvites))
          as ListSpaceInvites;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSpaceInvites create() => ListSpaceInvites._();
  @$core.override
  ListSpaceInvites createEmptyInstance() => create();
  static $pb.PbList<ListSpaceInvites> createRepeated() =>
      $pb.PbList<ListSpaceInvites>();
  @$core.pragma('dart2js:noInline')
  static ListSpaceInvites getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSpaceInvites>(create);
  static ListSpaceInvites? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get spaceId => $_getN(0);
  @$pb.TagNumber(1)
  set spaceId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureSpaceId() => $_ensure(0);
}

/// Files the person who made a join request on its space, with its relation, and the role
/// that relation gives. Answered with ManagementAck.
///
/// Who may approve is the gateway's decision: whoever may put people on that space, and,
/// for a request that came from an invite a resident created, a resident of that home.
class ApproveJoinRequest extends $pb.GeneratedMessage {
  factory ApproveJoinRequest({
    $core.String? requestId,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    return result;
  }

  ApproveJoinRequest._();

  factory ApproveJoinRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ApproveJoinRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApproveJoinRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApproveJoinRequest clone() => ApproveJoinRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ApproveJoinRequest copyWith(void Function(ApproveJoinRequest) updates) =>
      super.copyWith((message) => updates(message as ApproveJoinRequest))
          as ApproveJoinRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApproveJoinRequest create() => ApproveJoinRequest._();
  @$core.override
  ApproveJoinRequest createEmptyInstance() => create();
  static $pb.PbList<ApproveJoinRequest> createRepeated() =>
      $pb.PbList<ApproveJoinRequest>();
  @$core.pragma('dart2js:noInline')
  static ApproveJoinRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApproveJoinRequest>(create);
  static ApproveJoinRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);
}

/// Drops a join request. The person is told nothing beyond never being let in. Answered
/// with ManagementAck.
class DenyJoinRequest extends $pb.GeneratedMessage {
  factory DenyJoinRequest({
    $core.String? requestId,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    return result;
  }

  DenyJoinRequest._();

  factory DenyJoinRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DenyJoinRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DenyJoinRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DenyJoinRequest clone() => DenyJoinRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DenyJoinRequest copyWith(void Function(DenyJoinRequest) updates) =>
      super.copyWith((message) => updates(message as DenyJoinRequest))
          as DenyJoinRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DenyJoinRequest create() => DenyJoinRequest._();
  @$core.override
  DenyJoinRequest createEmptyInstance() => create();
  static $pb.PbList<DenyJoinRequest> createRepeated() =>
      $pb.PbList<DenyJoinRequest>();
  @$core.pragma('dart2js:noInline')
  static DenyJoinRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DenyJoinRequest>(create);
  static DenyJoinRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);
}

/// A pending invite, as listed. Never carries a secret: the gateway does not keep them.
class Invite extends $pb.GeneratedMessage {
  factory Invite({
    $core.String? inviteId,
    $0.SpaceId? spaceId,
    $2.MembershipRelation? relation,
    $0.UserId? createdBy,
    $1.Timestamp? createdAt,
    $1.Timestamp? tokenExpiresAt,
    $1.Timestamp? codeExpiresAt,
    $core.String? email,
    $1.Timestamp? emailSentAt,
  }) {
    final result = create();
    if (inviteId != null) result.inviteId = inviteId;
    if (spaceId != null) result.spaceId = spaceId;
    if (relation != null) result.relation = relation;
    if (createdBy != null) result.createdBy = createdBy;
    if (createdAt != null) result.createdAt = createdAt;
    if (tokenExpiresAt != null) result.tokenExpiresAt = tokenExpiresAt;
    if (codeExpiresAt != null) result.codeExpiresAt = codeExpiresAt;
    if (email != null) result.email = email;
    if (emailSentAt != null) result.emailSentAt = emailSentAt;
    return result;
  }

  Invite._();

  factory Invite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Invite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Invite',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'inviteId')
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..e<$2.MembershipRelation>(
        3, _omitFieldNames ? '' : 'relation', $pb.PbFieldType.OE,
        defaultOrMaker: $2.MembershipRelation.MEMBERSHIP_RELATION_UNSPECIFIED,
        valueOf: $2.MembershipRelation.valueOf,
        enumValues: $2.MembershipRelation.values)
    ..aOM<$0.UserId>(4, _omitFieldNames ? '' : 'createdBy',
        subBuilder: $0.UserId.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'tokenExpiresAt',
        subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'codeExpiresAt',
        subBuilder: $1.Timestamp.create)
    ..aOS(8, _omitFieldNames ? '' : 'email')
    ..aOM<$1.Timestamp>(9, _omitFieldNames ? '' : 'emailSentAt',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Invite clone() => Invite()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Invite copyWith(void Function(Invite) updates) =>
      super.copyWith((message) => updates(message as Invite)) as Invite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Invite create() => Invite._();
  @$core.override
  Invite createEmptyInstance() => create();
  static $pb.PbList<Invite> createRepeated() => $pb.PbList<Invite>();
  @$core.pragma('dart2js:noInline')
  static Invite getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Invite>(create);
  static Invite? _defaultInstance;

  /// Minted by the gateway, opaque.
  @$pb.TagNumber(1)
  $core.String get inviteId => $_getSZ(0);
  @$pb.TagNumber(1)
  set inviteId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasInviteId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInviteId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.SpaceId get spaceId => $_getN(1);
  @$pb.TagNumber(2)
  set spaceId($0.SpaceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpaceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.SpaceId ensureSpaceId() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.MembershipRelation get relation => $_getN(2);
  @$pb.TagNumber(3)
  set relation($2.MembershipRelation value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRelation() => $_has(2);
  @$pb.TagNumber(3)
  void clearRelation() => $_clearField(3);

  /// Who created it, and when. A resend changes neither.
  @$pb.TagNumber(4)
  $0.UserId get createdBy => $_getN(3);
  @$pb.TagNumber(4)
  set createdBy($0.UserId value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCreatedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedBy() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.UserId ensureCreatedBy() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($1.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureCreatedAt() => $_ensure(4);

  /// Until when each secret can be redeemed. The app shows them in local time and never
  /// works them out itself. Once both have passed the invite is gone: it is not listed, and
  /// the gateway drops it with its address.
  @$pb.TagNumber(6)
  $1.Timestamp get tokenExpiresAt => $_getN(5);
  @$pb.TagNumber(6)
  set tokenExpiresAt($1.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasTokenExpiresAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearTokenExpiresAt() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureTokenExpiresAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $1.Timestamp get codeExpiresAt => $_getN(6);
  @$pb.TagNumber(7)
  set codeExpiresAt($1.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCodeExpiresAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCodeExpiresAt() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureCodeExpiresAt() => $_ensure(6);

  /// The address it is bound to; empty when it is bound to none.
  @$pb.TagNumber(8)
  $core.String get email => $_getSZ(7);
  @$pb.TagNumber(8)
  set email($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasEmail() => $_has(7);
  @$pb.TagNumber(8)
  void clearEmail() => $_clearField(8);

  /// When the email with the newest secrets was sent (MarkInviteEmailSent). Unset when no
  /// email was sent since the last resend.
  @$pb.TagNumber(9)
  $1.Timestamp get emailSentAt => $_getN(8);
  @$pb.TagNumber(9)
  set emailSentAt($1.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasEmailSentAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearEmailSentAt() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.Timestamp ensureEmailSentAt() => $_ensure(8);
}

/// A new invite or a resent one, with its secrets. This is the only time they are told:
/// the gateway keeps only their hashes, and the app does not keep them beyond handing them
/// over.
class IssuedInvite extends $pb.GeneratedMessage {
  factory IssuedInvite({
    Invite? invite,
    $core.String? token,
    $core.String? code,
  }) {
    final result = create();
    if (invite != null) result.invite = invite;
    if (token != null) result.token = token;
    if (code != null) result.code = code;
    return result;
  }

  IssuedInvite._();

  factory IssuedInvite.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory IssuedInvite.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'IssuedInvite',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<Invite>(1, _omitFieldNames ? '' : 'invite', subBuilder: Invite.create)
    ..aOS(2, _omitFieldNames ? '' : 'token')
    ..aOS(3, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IssuedInvite clone() => IssuedInvite()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  IssuedInvite copyWith(void Function(IssuedInvite) updates) =>
      super.copyWith((message) => updates(message as IssuedInvite))
          as IssuedInvite;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IssuedInvite create() => IssuedInvite._();
  @$core.override
  IssuedInvite createEmptyInstance() => create();
  static $pb.PbList<IssuedInvite> createRepeated() =>
      $pb.PbList<IssuedInvite>();
  @$core.pragma('dart2js:noInline')
  static IssuedInvite getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<IssuedInvite>(create);
  static IssuedInvite? _defaultInstance;

  @$pb.TagNumber(1)
  Invite get invite => $_getN(0);
  @$pb.TagNumber(1)
  set invite(Invite value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasInvite() => $_has(0);
  @$pb.TagNumber(1)
  void clearInvite() => $_clearField(1);
  @$pb.TagNumber(1)
  Invite ensureInvite() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get token => $_getSZ(1);
  @$pb.TagNumber(2)
  set token($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearToken() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => $_clearField(3);
}

/// A person who redeemed an invite that needs approval, waiting for it.
class JoinRequest extends $pb.GeneratedMessage {
  factory JoinRequest({
    $core.String? requestId,
    $0.SpaceId? spaceId,
    $2.MembershipRelation? relation,
    $0.UserId? userId,
    $core.String? displayName,
    $0.UserId? invitedBy,
    $1.Timestamp? requestedAt,
    $1.Timestamp? expiresAt,
    $core.String? email,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (spaceId != null) result.spaceId = spaceId;
    if (relation != null) result.relation = relation;
    if (userId != null) result.userId = userId;
    if (displayName != null) result.displayName = displayName;
    if (invitedBy != null) result.invitedBy = invitedBy;
    if (requestedAt != null) result.requestedAt = requestedAt;
    if (expiresAt != null) result.expiresAt = expiresAt;
    if (email != null) result.email = email;
    return result;
  }

  JoinRequest._();

  factory JoinRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory JoinRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'JoinRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..e<$2.MembershipRelation>(
        3, _omitFieldNames ? '' : 'relation', $pb.PbFieldType.OE,
        defaultOrMaker: $2.MembershipRelation.MEMBERSHIP_RELATION_UNSPECIFIED,
        valueOf: $2.MembershipRelation.valueOf,
        enumValues: $2.MembershipRelation.values)
    ..aOM<$0.UserId>(4, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..aOS(5, _omitFieldNames ? '' : 'displayName')
    ..aOM<$0.UserId>(6, _omitFieldNames ? '' : 'invitedBy',
        subBuilder: $0.UserId.create)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'requestedAt',
        subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(8, _omitFieldNames ? '' : 'expiresAt',
        subBuilder: $1.Timestamp.create)
    ..aOS(9, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  JoinRequest clone() => JoinRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  JoinRequest copyWith(void Function(JoinRequest) updates) =>
      super.copyWith((message) => updates(message as JoinRequest))
          as JoinRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JoinRequest create() => JoinRequest._();
  @$core.override
  JoinRequest createEmptyInstance() => create();
  static $pb.PbList<JoinRequest> createRepeated() => $pb.PbList<JoinRequest>();
  @$core.pragma('dart2js:noInline')
  static JoinRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JoinRequest>(create);
  static JoinRequest? _defaultInstance;

  /// Minted by the gateway, opaque.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  $0.SpaceId get spaceId => $_getN(1);
  @$pb.TagNumber(2)
  set spaceId($0.SpaceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpaceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.SpaceId ensureSpaceId() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.MembershipRelation get relation => $_getN(2);
  @$pb.TagNumber(3)
  set relation($2.MembershipRelation value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRelation() => $_has(2);
  @$pb.TagNumber(3)
  void clearRelation() => $_clearField(3);

  /// Who is asking to join, and the display name their account gave when they redeemed.
  @$pb.TagNumber(4)
  $0.UserId get userId => $_getN(3);
  @$pb.TagNumber(4)
  set userId($0.UserId value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.UserId ensureUserId() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get displayName => $_getSZ(4);
  @$pb.TagNumber(5)
  set displayName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDisplayName() => $_has(4);
  @$pb.TagNumber(5)
  void clearDisplayName() => $_clearField(5);

  /// Who created the invite that was redeemed.
  @$pb.TagNumber(6)
  $0.UserId get invitedBy => $_getN(5);
  @$pb.TagNumber(6)
  set invitedBy($0.UserId value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasInvitedBy() => $_has(5);
  @$pb.TagNumber(6)
  void clearInvitedBy() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.UserId ensureInvitedBy() => $_ensure(5);

  @$pb.TagNumber(7)
  $1.Timestamp get requestedAt => $_getN(6);
  @$pb.TagNumber(7)
  set requestedAt($1.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasRequestedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearRequestedAt() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureRequestedAt() => $_ensure(6);

  /// When the request lapses unanswered, and the gateway drops it as if denied.
  @$pb.TagNumber(8)
  $1.Timestamp get expiresAt => $_getN(7);
  @$pb.TagNumber(8)
  set expiresAt($1.Timestamp value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasExpiresAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearExpiresAt() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Timestamp ensureExpiresAt() => $_ensure(7);

  /// The verified email address of the account asking (signaling.v1.RedeemInvite), shown to
  /// whoever may approve the request, a resident approver included. A display name is
  /// whatever the person chose; this is what lets an approver tell who is really asking. The
  /// app tells a person redeeming that their address will be shown so. Kept only while the
  /// request is pending.
  @$pb.TagNumber(9)
  $core.String get email => $_getSZ(8);
  @$pb.TagNumber(9)
  set email($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasEmail() => $_has(8);
  @$pb.TagNumber(9)
  void clearEmail() => $_clearField(9);
}

/// What a space is waiting on: its pending invites and its join requests.
///
/// The answer to ListSpaceInvites, and pushed as GatewayMessage.space_invites whenever
/// either list changes — a create, resend, revoke, redeem, approval, denial or expiry — to
/// every session that may list it, so the app shows the change without reloading. A push
/// always carries the whole of both lists for its space, as ListSpaceInvites would list
/// them to that session.
class SpaceInvites extends $pb.GeneratedMessage {
  factory SpaceInvites({
    $0.SpaceId? spaceId,
    $core.Iterable<Invite>? invites,
    $core.Iterable<JoinRequest>? joinRequests,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (invites != null) result.invites.addAll(invites);
    if (joinRequests != null) result.joinRequests.addAll(joinRequests);
    return result;
  }

  SpaceInvites._();

  factory SpaceInvites.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SpaceInvites.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpaceInvites',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..pc<Invite>(2, _omitFieldNames ? '' : 'invites', $pb.PbFieldType.PM,
        subBuilder: Invite.create)
    ..pc<JoinRequest>(
        3, _omitFieldNames ? '' : 'joinRequests', $pb.PbFieldType.PM,
        subBuilder: JoinRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpaceInvites clone() => SpaceInvites()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpaceInvites copyWith(void Function(SpaceInvites) updates) =>
      super.copyWith((message) => updates(message as SpaceInvites))
          as SpaceInvites;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpaceInvites create() => SpaceInvites._();
  @$core.override
  SpaceInvites createEmptyInstance() => create();
  static $pb.PbList<SpaceInvites> createRepeated() =>
      $pb.PbList<SpaceInvites>();
  @$core.pragma('dart2js:noInline')
  static SpaceInvites getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpaceInvites>(create);
  static SpaceInvites? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get spaceId => $_getN(0);
  @$pb.TagNumber(1)
  set spaceId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureSpaceId() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<Invite> get invites => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<JoinRequest> get joinRequests => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
