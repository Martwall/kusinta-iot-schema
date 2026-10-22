// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/members.proto.

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

/// Lists every member of the gateway. Answered with GatewayMembers. Listed to a caller
/// holding ROLE_GATEWAY_ADMIN or ROLE_PROPERTY_OWNER; anyone else is refused as
/// NOT_ENTITLED.
///
/// Those two roles answer for the whole property, and a resident who moves out is removed by
/// them (RemoveUserFromSpace or RemoveFromGateway), so every member is listed to them, as the
/// rule for staff allows (access.v1.Role, STAFF):
///   * every residency as an entry of its own, under its residency id: the one RESIDENT
///     membership and since when (MemberSpace.since), with no name, no email and no roles;
///   * every user under their user id, while they hold a role or a membership other than a
///     residency: their roles save ROLE_RESIDENT, and those other memberships. Staff are
///     given by name and email address (MemberDetail.name, MemberDetail.email); anyone else
///     by neither;
///   * the caller themselves as one entry under their user id, with everything they hold.
/// So becoming staff, or stopping, changes a user's entry and never a residency's.
/// Seeing into a home's life — its devices, readings and history — still takes filing on it.
class ListGatewayMembers extends $pb.GeneratedMessage {
  factory ListGatewayMembers() => create();

  ListGatewayMembers._();

  factory ListGatewayMembers.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListGatewayMembers.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListGatewayMembers',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListGatewayMembers clone() => ListGatewayMembers()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListGatewayMembers copyWith(void Function(ListGatewayMembers) updates) =>
      super.copyWith((message) => updates(message as ListGatewayMembers))
          as ListGatewayMembers;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGatewayMembers create() => ListGatewayMembers._();
  @$core.override
  ListGatewayMembers createEmptyInstance() => create();
  static $pb.PbList<ListGatewayMembers> createRepeated() =>
      $pb.PbList<ListGatewayMembers>();
  @$core.pragma('dart2js:noInline')
  static ListGatewayMembers getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListGatewayMembers>(create);
  static ListGatewayMembers? _defaultInstance;
}

/// Takes ROLE_PROPERTY_OWNER or ROLE_GATEWAY_ADMIN away from a member, at once. Answered with
/// ManagementAck. Only a caller holding ROLE_GATEWAY_ADMIN may; any other role named is
/// INVALID_REQUEST. Granting is a request the person accepts (RequestPromotion), so held set
/// to true is INVALID_REQUEST and grants nothing.
///
/// user_id is never a residency id (INVALID_REQUEST): the member's entry would then appear
/// under their user id, named, and tie the residency to them.
///
/// Taking away a role not held changes nothing and is acknowledged. A caller may take a role
/// away from themselves: the vouched administrators always remain, so the gateway cannot be
/// left without an administrator. Naming ROLE_GATEWAY_ADMIN for a vouched administrator is
/// refused as "vouched_admin"; ROLE_PROPERTY_OWNER is taken away from them as from anyone.
///
/// Taking either role away also ends the pending invites the user created while holding one,
/// unless they keep the other; invites they created as a resident of a home follow their
/// residency, as they always do. The join requests those invites made stay, since another
/// administrator may still answer them. Taking away ROLE_GATEWAY_ADMIN ends the promotion
/// requests the user made. The change reaches the user's open sessions at once.
class SetMemberRole extends $pb.GeneratedMessage {
  factory SetMemberRole({
    $0.UserId? userId,
    $2.Role? role,
    $core.bool? held,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (role != null) result.role = role;
    if (held != null) result.held = held;
    return result;
  }

  SetMemberRole._();

  factory SetMemberRole.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetMemberRole.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetMemberRole',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..e<$2.Role>(2, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE,
        defaultOrMaker: $2.Role.ROLE_UNSPECIFIED,
        valueOf: $2.Role.valueOf,
        enumValues: $2.Role.values)
    ..aOB(3, _omitFieldNames ? '' : 'held')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetMemberRole clone() => SetMemberRole()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetMemberRole copyWith(void Function(SetMemberRole) updates) =>
      super.copyWith((message) => updates(message as SetMemberRole))
          as SetMemberRole;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetMemberRole create() => SetMemberRole._();
  @$core.override
  SetMemberRole createEmptyInstance() => create();
  static $pb.PbList<SetMemberRole> createRepeated() =>
      $pb.PbList<SetMemberRole>();
  @$core.pragma('dart2js:noInline')
  static SetMemberRole getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetMemberRole>(create);
  static SetMemberRole? _defaultInstance;

  @$pb.TagNumber(1)
  $0.UserId get userId => $_getN(0);
  @$pb.TagNumber(1)
  set userId($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureUserId() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Role get role => $_getN(1);
  @$pb.TagNumber(2)
  set role($2.Role value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => $_clearField(2);

  /// false takes the role away. true is INVALID_REQUEST: see RequestPromotion.
  @$pb.TagNumber(3)
  $core.bool get held => $_getBF(2);
  @$pb.TagNumber(3)
  set held($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHeld() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeld() => $_clearField(3);
}

/// Asks a member to accept ROLE_PROPERTY_OWNER or ROLE_GATEWAY_ADMIN, or, with home_id, to
/// become a household admin of a home (HOUSEHOLD PROMOTION, below). Answered with
/// ManagementAck once the request is made; the role is granted only when the person asked
/// accepts it (AnswerPromotion). Only a caller holding ROLE_GATEWAY_ADMIN may ask for a role;
/// any other role named is INVALID_REQUEST. The caller may ask themselves, as anyone.
///
/// For a role, user_id is never a residency id (INVALID_REQUEST), as for SetMemberRole: a resident becomes
/// staff by an act of their own — redeeming a SERVICE invite (invite.proto) — and is asked from
/// the entry that gives. A user id the caller is told nothing of under it is "not_a_member".
/// Naming ROLE_GATEWAY_ADMIN for a vouched administrator is refused as "vouched_admin";
/// ROLE_PROPERTY_OWNER may be asked of them as of anyone.
///
/// Asking for a role the member already holds, or one a pending request already asks of them,
/// changes nothing and is acknowledged: one request per member and role, whoever asked.
///
/// A request is pending for at most 7 days from when it was made (PromotionRequest.expires_at),
/// and then lapses as if declined. It ends sooner when it is answered, when the member stops
/// being a member, when they come to hold the role otherwise, and when its asker no longer holds
/// ROLE_GATEWAY_ADMIN — an outgoing administrator of a transfer included
/// (signaling.v1.TransferOutcome) — since no administrator then stands behind it.
///
/// The app shows the person asked for a role, before they answer, that accepting makes their name
/// and email address shown to property owners and administrators (MemberDetail.name,
/// MemberDetail.email), and to residents by name (PrivacyDisclosure).
///
/// HOUSEHOLD PROMOTION. With home_id set it asks a resident of that home to become its household
/// admin (access.v1.MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN; household.proto) rather than for a
/// role: role is then UNSPECIFIED, and anything else is INVALID_REQUEST, as is a home_id that is
/// not an apartment. It is asked by:
///   * a household admin of the home, of a resident of it named by user id (household.proto,
///     PROMOTION);
///   * the property owner or a gateway administrator who reaches the home, while it is
///     admin-less, of one of its residents, named by residency id unless the caller lives there
///     (household.proto, STAFF APPOINTMENT). This is the one request here a residency id may
///     stand in; that section's refusals apply.
/// Anyone else is refused as NOT_ENTITLED. Someone who is not a resident of the home is
/// "not_a_member"; asking a household admin of it changes nothing and is acknowledged. One
/// request per resident and home, whoever asked. Besides the ends above, it ends when the person
/// asked stops being a resident of the home, when the asker stops being a household admin of
/// it — or, having asked as staff, stops holding both ROLE_PROPERTY_OWNER and
/// ROLE_GATEWAY_ADMIN — and when the home comes to have a household admin otherwise.
class RequestPromotion extends $pb.GeneratedMessage {
  factory RequestPromotion({
    $0.UserId? userId,
    $2.Role? role,
    $0.SpaceId? homeId,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (role != null) result.role = role;
    if (homeId != null) result.homeId = homeId;
    return result;
  }

  RequestPromotion._();

  factory RequestPromotion.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RequestPromotion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RequestPromotion',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..e<$2.Role>(2, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE,
        defaultOrMaker: $2.Role.ROLE_UNSPECIFIED,
        valueOf: $2.Role.valueOf,
        enumValues: $2.Role.values)
    ..aOM<$0.SpaceId>(3, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequestPromotion clone() => RequestPromotion()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequestPromotion copyWith(void Function(RequestPromotion) updates) =>
      super.copyWith((message) => updates(message as RequestPromotion))
          as RequestPromotion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestPromotion create() => RequestPromotion._();
  @$core.override
  RequestPromotion createEmptyInstance() => create();
  static $pb.PbList<RequestPromotion> createRepeated() =>
      $pb.PbList<RequestPromotion>();
  @$core.pragma('dart2js:noInline')
  static RequestPromotion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RequestPromotion>(create);
  static RequestPromotion? _defaultInstance;

  @$pb.TagNumber(1)
  $0.UserId get userId => $_getN(0);
  @$pb.TagNumber(1)
  set userId($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureUserId() => $_ensure(0);

  @$pb.TagNumber(2)
  $2.Role get role => $_getN(1);
  @$pb.TagNumber(2)
  set role($2.Role value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRole() => $_has(1);
  @$pb.TagNumber(2)
  void clearRole() => $_clearField(2);

  /// Set for a household promotion: the apartment of the home. Unset for a role.
  @$pb.TagNumber(3)
  $0.SpaceId get homeId => $_getN(2);
  @$pb.TagNumber(3)
  set homeId($0.SpaceId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasHomeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearHomeId() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.SpaceId ensureHomeId() => $_ensure(2);
}

/// Accepts or declines a promotion request. Answered with ManagementAck. Only the person asked
/// may, from a session of their own; a request_id that is not pending for the caller — someone
/// else's, one the caller made of another, unknown, answered or lapsed — is refused as
/// NOT_ENTITLED, so that no request id can be probed.
///
/// Accepting grants the role at once, and clears any end to the person's access
/// (MemberDetail.access_until): a property owner or an administrator is not there for a job. The
/// change reaches their open sessions at once. Accepting a household promotion makes them a
/// household admin of the home at once and changes nothing else — save that one staff asked is
/// refused to a person holding a staff role, as "staff_appointee" (household.proto, STAFF
/// APPOINTMENT), and ends. Declining ends the request and grants nothing; the
/// asker learns only that it is no longer pending.
class AnswerPromotion extends $pb.GeneratedMessage {
  factory AnswerPromotion({
    $core.String? requestId,
    $core.bool? accept,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (accept != null) result.accept = accept;
    return result;
  }

  AnswerPromotion._();

  factory AnswerPromotion.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AnswerPromotion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AnswerPromotion',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..aOB(2, _omitFieldNames ? '' : 'accept')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnswerPromotion clone() => AnswerPromotion()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AnswerPromotion copyWith(void Function(AnswerPromotion) updates) =>
      super.copyWith((message) => updates(message as AnswerPromotion))
          as AnswerPromotion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AnswerPromotion create() => AnswerPromotion._();
  @$core.override
  AnswerPromotion createEmptyInstance() => create();
  static $pb.PbList<AnswerPromotion> createRepeated() =>
      $pb.PbList<AnswerPromotion>();
  @$core.pragma('dart2js:noInline')
  static AnswerPromotion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AnswerPromotion>(create);
  static AnswerPromotion? _defaultInstance;

  /// As PromotionRequest.request_id.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  /// true accepts; false declines.
  @$pb.TagNumber(2)
  $core.bool get accept => $_getBF(1);
  @$pb.TagNumber(2)
  set accept($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccept() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccept() => $_clearField(2);
}

/// Lists the pending promotion requests the caller made or was asked to accept, answered with
/// PromotionRequests. Anyone may ask; nobody is refused. A request is listed to those two people
/// alone: other administrators do not see it, and nor does anyone else.
class ListPromotionRequests extends $pb.GeneratedMessage {
  factory ListPromotionRequests() => create();

  ListPromotionRequests._();

  factory ListPromotionRequests.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListPromotionRequests.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListPromotionRequests',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPromotionRequests clone() =>
      ListPromotionRequests()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPromotionRequests copyWith(
          void Function(ListPromotionRequests) updates) =>
      super.copyWith((message) => updates(message as ListPromotionRequests))
          as ListPromotionRequests;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPromotionRequests create() => ListPromotionRequests._();
  @$core.override
  ListPromotionRequests createEmptyInstance() => create();
  static $pb.PbList<ListPromotionRequests> createRepeated() =>
      $pb.PbList<ListPromotionRequests>();
  @$core.pragma('dart2js:noInline')
  static ListPromotionRequests getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListPromotionRequests>(create);
  static ListPromotionRequests? _defaultInstance;
}

/// One pending promotion request, as listed to the person asked or the asker.
class PromotionRequest extends $pb.GeneratedMessage {
  factory PromotionRequest({
    $core.String? requestId,
    $0.UserId? userId,
    $2.Role? role,
    $0.UserId? requestedBy,
    $core.String? requestedByName,
    $1.Timestamp? requestedAt,
    $1.Timestamp? expiresAt,
    $0.SpaceId? homeId,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (userId != null) result.userId = userId;
    if (role != null) result.role = role;
    if (requestedBy != null) result.requestedBy = requestedBy;
    if (requestedByName != null) result.requestedByName = requestedByName;
    if (requestedAt != null) result.requestedAt = requestedAt;
    if (expiresAt != null) result.expiresAt = expiresAt;
    if (homeId != null) result.homeId = homeId;
    return result;
  }

  PromotionRequest._();

  factory PromotionRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PromotionRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PromotionRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requestId')
    ..aOM<$0.UserId>(2, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..e<$2.Role>(3, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE,
        defaultOrMaker: $2.Role.ROLE_UNSPECIFIED,
        valueOf: $2.Role.valueOf,
        enumValues: $2.Role.values)
    ..aOM<$0.UserId>(4, _omitFieldNames ? '' : 'requestedBy',
        subBuilder: $0.UserId.create)
    ..aOS(5, _omitFieldNames ? '' : 'requestedByName')
    ..aOM<$1.Timestamp>(6, _omitFieldNames ? '' : 'requestedAt',
        subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(7, _omitFieldNames ? '' : 'expiresAt',
        subBuilder: $1.Timestamp.create)
    ..aOM<$0.SpaceId>(8, _omitFieldNames ? '' : 'homeId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PromotionRequest clone() => PromotionRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PromotionRequest copyWith(void Function(PromotionRequest) updates) =>
      super.copyWith((message) => updates(message as PromotionRequest))
          as PromotionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PromotionRequest create() => PromotionRequest._();
  @$core.override
  PromotionRequest createEmptyInstance() => create();
  static $pb.PbList<PromotionRequest> createRepeated() =>
      $pb.PbList<PromotionRequest>();
  @$core.pragma('dart2js:noInline')
  static PromotionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PromotionRequest>(create);
  static PromotionRequest? _defaultInstance;

  /// Minted by the gateway, opaque.
  @$pb.TagNumber(1)
  $core.String get requestId => $_getSZ(0);
  @$pb.TagNumber(1)
  set requestId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  /// The person asked: to an asker who does not live in the home of a household promotion,
  /// the residency id they named.
  @$pb.TagNumber(2)
  $0.UserId get userId => $_getN(1);
  @$pb.TagNumber(2)
  set userId($0.UserId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.UserId ensureUserId() => $_ensure(1);

  /// ROLE_PROPERTY_OWNER or ROLE_GATEWAY_ADMIN; UNSPECIFIED for a household promotion.
  @$pb.TagNumber(3)
  $2.Role get role => $_getN(2);
  @$pb.TagNumber(3)
  set role($2.Role value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => $_clearField(3);

  /// Who asked, and the name they gave their account (AppTokenClaims.name) as the gateway last
  /// learnt it, so the person asked knows who asks; empty when none is learnt. Self-chosen, as
  /// MemberDetail.name is.
  @$pb.TagNumber(4)
  $0.UserId get requestedBy => $_getN(3);
  @$pb.TagNumber(4)
  set requestedBy($0.UserId value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRequestedBy() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequestedBy() => $_clearField(4);
  @$pb.TagNumber(4)
  $0.UserId ensureRequestedBy() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get requestedByName => $_getSZ(4);
  @$pb.TagNumber(5)
  set requestedByName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRequestedByName() => $_has(4);
  @$pb.TagNumber(5)
  void clearRequestedByName() => $_clearField(5);

  @$pb.TagNumber(6)
  $1.Timestamp get requestedAt => $_getN(5);
  @$pb.TagNumber(6)
  set requestedAt($1.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasRequestedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearRequestedAt() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Timestamp ensureRequestedAt() => $_ensure(5);

  /// When the request lapses unanswered: 7 days after requested_at.
  @$pb.TagNumber(7)
  $1.Timestamp get expiresAt => $_getN(6);
  @$pb.TagNumber(7)
  set expiresAt($1.Timestamp value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasExpiresAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearExpiresAt() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Timestamp ensureExpiresAt() => $_ensure(6);

  /// Set for a household promotion: the home whose household admin the person is asked to
  /// become (RequestPromotion.home_id).
  @$pb.TagNumber(8)
  $0.SpaceId get homeId => $_getN(7);
  @$pb.TagNumber(8)
  set homeId($0.SpaceId value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasHomeId() => $_has(7);
  @$pb.TagNumber(8)
  void clearHomeId() => $_clearField(8);
  @$pb.TagNumber(8)
  $0.SpaceId ensureHomeId() => $_ensure(7);
}

/// The pending promotion requests a session's user made or was asked to accept.
///
/// The answer to ListPromotionRequests, and pushed as GatewayMessage.promotion_requests to every
/// session of the person asked and of the asker whenever a request they are listed changes — made,
/// answered, lapsed or ended — so the person asked sees a request without reloading. A push always
/// carries the whole list, as ListPromotionRequests would list it to that session.
class PromotionRequests extends $pb.GeneratedMessage {
  factory PromotionRequests({
    $core.Iterable<PromotionRequest>? requests,
  }) {
    final result = create();
    if (requests != null) result.requests.addAll(requests);
    return result;
  }

  PromotionRequests._();

  factory PromotionRequests.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PromotionRequests.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PromotionRequests',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..pc<PromotionRequest>(
        1, _omitFieldNames ? '' : 'requests', $pb.PbFieldType.PM,
        subBuilder: PromotionRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PromotionRequests clone() => PromotionRequests()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PromotionRequests copyWith(void Function(PromotionRequests) updates) =>
      super.copyWith((message) => updates(message as PromotionRequests))
          as PromotionRequests;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PromotionRequests create() => PromotionRequests._();
  @$core.override
  PromotionRequests createEmptyInstance() => create();
  static $pb.PbList<PromotionRequests> createRepeated() =>
      $pb.PbList<PromotionRequests>();
  @$core.pragma('dart2js:noInline')
  static PromotionRequests getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PromotionRequests>(create);
  static PromotionRequests? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PromotionRequest> get requests => $_getList(0);
}

/// Removes a member from the gateway in one step: every membership they hold, every role the
/// gateway holds for them, every pending invite they created and every join request of their
/// own. Answered with ManagementAck. Their open sessions end, and the api-server drops them
/// from the gateway. Join requests made through their invites end where those were invites
/// a resident made, as when a residency ends, and stay otherwise.
///
/// What a caller is not told of under the id given stays: by a user id, a caller who does not
/// live in a home they hold leaves that residency in place, and ends only the rest; the user
/// then stays a member, a resident of it. By a residency id, it ends that residency alone, as
/// RemoveUserFromSpace would, with the invites the holder made as its resident.
///
/// A caller holding ROLE_GATEWAY_ADMIN may remove anyone but a vouched administrator
/// ("vouched_admin"). A caller holding ROLE_PROPERTY_OWNER, and not ROLE_GATEWAY_ADMIN,
/// may remove only a member who holds neither ROLE_PROPERTY_OWNER nor ROLE_GATEWAY_ADMIN;
/// anyone else, a vouched administrator included, is refused NOT_ENTITLED. A residency
/// id is never refused for its holder's roles, since it tells none.
class RemoveFromGateway extends $pb.GeneratedMessage {
  factory RemoveFromGateway({
    $0.UserId? userId,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    return result;
  }

  RemoveFromGateway._();

  factory RemoveFromGateway.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemoveFromGateway.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveFromGateway',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveFromGateway clone() => RemoveFromGateway()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveFromGateway copyWith(void Function(RemoveFromGateway) updates) =>
      super.copyWith((message) => updates(message as RemoveFromGateway))
          as RemoveFromGateway;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveFromGateway create() => RemoveFromGateway._();
  @$core.override
  RemoveFromGateway createEmptyInstance() => create();
  static $pb.PbList<RemoveFromGateway> createRepeated() =>
      $pb.PbList<RemoveFromGateway>();
  @$core.pragma('dart2js:noInline')
  static RemoveFromGateway getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveFromGateway>(create);
  static RemoveFromGateway? _defaultInstance;

  @$pb.TagNumber(1)
  $0.UserId get userId => $_getN(0);
  @$pb.TagNumber(1)
  set userId($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureUserId() => $_ensure(0);
}

/// Sets, moves or clears when a technician's access ends. Answered with ManagementAck. A
/// caller holding ROLE_GATEWAY_ADMIN or ROLE_PROPERTY_OWNER may. Only for a member holding
/// ROLE_TECHNICIAN and no other role but ROLE_RESIDENT ("not_a_technician" otherwise, and for a
/// residency id, which names no technician): an end date never reaches a property owner or
/// an administrator.
///
/// access_until is the instant the access ends; a time not after now is INVALID_REQUEST. The
/// app chooses it, typically the end of a chosen day where the building is. Within a quarter
/// of an hour after it, the gateway takes away the member's ROLE_TECHNICIAN and every SERVICE
/// membership they hold, as an administrator would, and nothing else: a home they live in
/// stays theirs, and their ROLE_TECHNICIAN goes all the same.
class SetAccessUntil extends $pb.GeneratedMessage {
  factory SetAccessUntil({
    $0.UserId? userId,
    $1.Timestamp? accessUntil,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (accessUntil != null) result.accessUntil = accessUntil;
    return result;
  }

  SetAccessUntil._();

  factory SetAccessUntil.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetAccessUntil.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetAccessUntil',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'accessUntil',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetAccessUntil clone() => SetAccessUntil()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetAccessUntil copyWith(void Function(SetAccessUntil) updates) =>
      super.copyWith((message) => updates(message as SetAccessUntil))
          as SetAccessUntil;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetAccessUntil create() => SetAccessUntil._();
  @$core.override
  SetAccessUntil createEmptyInstance() => create();
  static $pb.PbList<SetAccessUntil> createRepeated() =>
      $pb.PbList<SetAccessUntil>();
  @$core.pragma('dart2js:noInline')
  static SetAccessUntil getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetAccessUntil>(create);
  static SetAccessUntil? _defaultInstance;

  @$pb.TagNumber(1)
  $0.UserId get userId => $_getN(0);
  @$pb.TagNumber(1)
  set userId($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureUserId() => $_ensure(0);

  /// Unset clears it: the access lasts until someone takes it away.
  @$pb.TagNumber(2)
  $1.Timestamp get accessUntil => $_getN(1);
  @$pb.TagNumber(2)
  set accessUntil($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAccessUntil() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessUntil() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureAccessUntil() => $_ensure(1);
}

/// Superseded: the organisation that owns the property is the one that owns the gateway, and its
/// name comes with the vouched set (signaling.v1.VouchedAdministrators.organisation_name). A
/// gateway refuses this request as INVALID_REQUEST, whoever asks, and records nothing from it, so
/// that no one believes they set the name. Kept so that an older app's request still decodes.
class SetOwnerOrganisation extends $pb.GeneratedMessage {
  factory SetOwnerOrganisation({
    OwnerOrganisation? organisation,
  }) {
    final result = create();
    if (organisation != null) result.organisation = organisation;
    return result;
  }

  SetOwnerOrganisation._();

  factory SetOwnerOrganisation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetOwnerOrganisation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetOwnerOrganisation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<OwnerOrganisation>(1, _omitFieldNames ? '' : 'organisation',
        subBuilder: OwnerOrganisation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetOwnerOrganisation clone() =>
      SetOwnerOrganisation()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetOwnerOrganisation copyWith(void Function(SetOwnerOrganisation) updates) =>
      super.copyWith((message) => updates(message as SetOwnerOrganisation))
          as SetOwnerOrganisation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetOwnerOrganisation create() => SetOwnerOrganisation._();
  @$core.override
  SetOwnerOrganisation createEmptyInstance() => create();
  static $pb.PbList<SetOwnerOrganisation> createRepeated() =>
      $pb.PbList<SetOwnerOrganisation>();
  @$core.pragma('dart2js:noInline')
  static SetOwnerOrganisation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetOwnerOrganisation>(create);
  static SetOwnerOrganisation? _defaultInstance;

  @$pb.TagNumber(1)
  OwnerOrganisation get organisation => $_getN(0);
  @$pb.TagNumber(1)
  set organisation(OwnerOrganisation value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOrganisation() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrganisation() => $_clearField(1);
  @$pb.TagNumber(1)
  OwnerOrganisation ensureOrganisation() => $_ensure(0);
}

/// The organisation that owns the property: the one that owns the gateway. The people who act
/// for it in the building each hold ROLE_PROPERTY_OWNER themselves; this only says whom they
/// act for.
class OwnerOrganisation extends $pb.GeneratedMessage {
  factory OwnerOrganisation({
    $core.String? name,
    @$core.Deprecated('This field is deprecated.')
    $core.String? organisationNumber,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (organisationNumber != null)
      result.organisationNumber = organisationNumber;
    return result;
  }

  OwnerOrganisation._();

  factory OwnerOrganisation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OwnerOrganisation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OwnerOrganisation',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'organisationNumber')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OwnerOrganisation clone() => OwnerOrganisation()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OwnerOrganisation copyWith(void Function(OwnerOrganisation) updates) =>
      super.copyWith((message) => updates(message as OwnerOrganisation))
          as OwnerOrganisation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OwnerOrganisation create() => OwnerOrganisation._();
  @$core.override
  OwnerOrganisation createEmptyInstance() => create();
  static $pb.PbList<OwnerOrganisation> createRepeated() =>
      $pb.PbList<OwnerOrganisation>();
  @$core.pragma('dart2js:noInline')
  static OwnerOrganisation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OwnerOrganisation>(create);
  static OwnerOrganisation? _defaultInstance;

  /// As the vouched set gives it (signaling.v1.VouchedAdministrators.organisation_name).
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// Always empty: the api-server never gives the gateway an organisation number, and the
  /// gateway keeps none. Once read from SetOwnerOrganisation, which is superseded.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get organisationNumber => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set organisationNumber($core.String value) => $_setString(1, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasOrganisationNumber() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearOrganisationNumber() => $_clearField(2);
}

/// Every member of the gateway, in answer to ListGatewayMembers.
class GatewayMembers extends $pb.GeneratedMessage {
  factory GatewayMembers({
    $core.Iterable<MemberDetail>? members,
    OwnerOrganisation? ownerOrganisation,
  }) {
    final result = create();
    if (members != null) result.members.addAll(members);
    if (ownerOrganisation != null) result.ownerOrganisation = ownerOrganisation;
    return result;
  }

  GatewayMembers._();

  factory GatewayMembers.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GatewayMembers.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GatewayMembers',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..pc<MemberDetail>(1, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM,
        subBuilder: MemberDetail.create)
    ..aOM<OwnerOrganisation>(2, _omitFieldNames ? '' : 'ownerOrganisation',
        subBuilder: OwnerOrganisation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayMembers clone() => GatewayMembers()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GatewayMembers copyWith(void Function(GatewayMembers) updates) =>
      super.copyWith((message) => updates(message as GatewayMembers))
          as GatewayMembers;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GatewayMembers create() => GatewayMembers._();
  @$core.override
  GatewayMembers createEmptyInstance() => create();
  static $pb.PbList<GatewayMembers> createRepeated() =>
      $pb.PbList<GatewayMembers>();
  @$core.pragma('dart2js:noInline')
  static GatewayMembers getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GatewayMembers>(create);
  static GatewayMembers? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MemberDetail> get members => $_getList(0);

  /// The owning organisation, by name. Unset while the gateway holds no vouched set.
  @$pb.TagNumber(2)
  OwnerOrganisation get ownerOrganisation => $_getN(1);
  @$pb.TagNumber(2)
  set ownerOrganisation(OwnerOrganisation value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOwnerOrganisation() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerOrganisation() => $_clearField(2);
  @$pb.TagNumber(2)
  OwnerOrganisation ensureOwnerOrganisation() => $_ensure(1);
}

/// One member, as an administrator or a property owner sees them: a user, or a residency
/// (ListGatewayMembers).
class MemberDetail extends $pb.GeneratedMessage {
  factory MemberDetail({
    $0.UserId? userId,
    $core.String? name,
    $core.Iterable<$2.Role>? roles,
    $core.Iterable<MemberSpace>? memberships,
    $1.Timestamp? accessUntil,
    @$core.Deprecated('This field is deprecated.') $core.bool? registeringAdmin,
    $core.String? email,
    $core.bool? vouchedAdmin,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (name != null) result.name = name;
    if (roles != null) result.roles.addAll(roles);
    if (memberships != null) result.memberships.addAll(memberships);
    if (accessUntil != null) result.accessUntil = accessUntil;
    if (registeringAdmin != null) result.registeringAdmin = registeringAdmin;
    if (email != null) result.email = email;
    if (vouchedAdmin != null) result.vouchedAdmin = vouchedAdmin;
    return result;
  }

  MemberDetail._();

  factory MemberDetail.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MemberDetail.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberDetail',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..pc<$2.Role>(3, _omitFieldNames ? '' : 'roles', $pb.PbFieldType.KE,
        valueOf: $2.Role.valueOf,
        enumValues: $2.Role.values,
        defaultEnumValue: $2.Role.ROLE_UNSPECIFIED)
    ..pc<MemberSpace>(
        4, _omitFieldNames ? '' : 'memberships', $pb.PbFieldType.PM,
        subBuilder: MemberSpace.create)
    ..aOM<$1.Timestamp>(5, _omitFieldNames ? '' : 'accessUntil',
        subBuilder: $1.Timestamp.create)
    ..aOB(6, _omitFieldNames ? '' : 'registeringAdmin')
    ..aOS(7, _omitFieldNames ? '' : 'email')
    ..aOB(8, _omitFieldNames ? '' : 'vouchedAdmin')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemberDetail clone() => MemberDetail()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemberDetail copyWith(void Function(MemberDetail) updates) =>
      super.copyWith((message) => updates(message as MemberDetail))
          as MemberDetail;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberDetail create() => MemberDetail._();
  @$core.override
  MemberDetail createEmptyInstance() => create();
  static $pb.PbList<MemberDetail> createRepeated() =>
      $pb.PbList<MemberDetail>();
  @$core.pragma('dart2js:noInline')
  static MemberDetail getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberDetail>(create);
  static MemberDetail? _defaultInstance;

  /// The user's id, or on a residency's entry its residency id.
  @$pb.TagNumber(1)
  $0.UserId get userId => $_getN(0);
  @$pb.TagNumber(1)
  set userId($0.UserId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.UserId ensureUserId() => $_ensure(0);

  /// The name they gave their account, as the gateway last learnt it: from AppTokenClaims.name
  /// when they connect, or from signaling.v1.RedeemInvite.display_name when they redeem with
  /// none learnt yet. Self-chosen, so the app shows it as such. Given only for a member who is
  /// staff (access.v1.Role, STAFF), and on the caller's own entry; empty for anyone else, on
  /// every residency's entry, and when none is learnt. The gateway keeps it only while they are a member,
  /// and drops it when they stop being one.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// Every role they hold here, a vouched administrator's ROLE_GATEWAY_ADMIN included,
  /// each once — save that ROLE_RESIDENT is left out of every entry but the caller's own,
  /// since it would say they live in the building. None on a residency's entry.
  @$pb.TagNumber(3)
  $pb.PbList<$2.Role> get roles => $_getList(2);

  /// Every space they are filed on but where they live, which is listed under each
  /// residency's id; on the caller's own entry, every one. On a residency's entry, that
  /// residency alone.
  @$pb.TagNumber(4)
  $pb.PbList<MemberSpace> get memberships => $_getList(3);

  /// When a technician's access ends (SetAccessUntil). Unset for no end.
  @$pb.TagNumber(5)
  $1.Timestamp get accessUntil => $_getN(4);
  @$pb.TagNumber(5)
  set accessUntil($1.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasAccessUntil() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccessUntil() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Timestamp ensureAccessUntil() => $_ensure(4);

  /// Set exactly as vouched_admin, for readers older than it; a reader that knows vouched_admin
  /// reads that instead. To be reserved once no reader needs it.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool get registeringAdmin => $_getBF(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set registeringAdmin($core.bool value) => $_setBool(5, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasRegisteringAdmin() => $_has(5);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearRegisteringAdmin() => $_clearField(6);

  /// Their verified email address, as AppTokenClaims.email last gave it, so that staff who
  /// gave the same name can be told apart. Given only for a member who is staff; empty for
  /// anyone else, on every residency's entry, and when none is learnt. The gateway keeps it only while they hold a staff
  /// role.
  @$pb.TagNumber(7)
  $core.String get email => $_getSZ(6);
  @$pb.TagNumber(7)
  set email($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasEmail() => $_has(6);
  @$pb.TagNumber(7)
  void clearEmail() => $_clearField(7);

  /// Whether they are a vouched administrator: named in the vouched set the gateway holds
  /// (signaling.v1.VouchedAdministrators), whether or not the gateway has seen them connect. Grants
  /// nothing on its own; it says that their ROLE_GATEWAY_ADMIN cannot be changed here and that
  /// RemoveFromGateway will refuse them. Their name and email address are empty until the gateway
  /// learns them from their own token.
  @$pb.TagNumber(8)
  $core.bool get vouchedAdmin => $_getBF(7);
  @$pb.TagNumber(8)
  set vouchedAdmin($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasVouchedAdmin() => $_has(7);
  @$pb.TagNumber(8)
  void clearVouchedAdmin() => $_clearField(8);
}

/// One space a member is filed on, and how they stand to it.
class MemberSpace extends $pb.GeneratedMessage {
  factory MemberSpace({
    $0.SpaceId? spaceId,
    $2.MembershipRelation? relation,
    $1.Timestamp? since,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (relation != null) result.relation = relation;
    if (since != null) result.since = since;
    return result;
  }

  MemberSpace._();

  factory MemberSpace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MemberSpace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MemberSpace',
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
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'since',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemberSpace clone() => MemberSpace()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MemberSpace copyWith(void Function(MemberSpace) updates) =>
      super.copyWith((message) => updates(message as MemberSpace))
          as MemberSpace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MemberSpace create() => MemberSpace._();
  @$core.override
  MemberSpace createEmptyInstance() => create();
  static $pb.PbList<MemberSpace> createRepeated() => $pb.PbList<MemberSpace>();
  @$core.pragma('dart2js:noInline')
  static MemberSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MemberSpace>(create);
  static MemberSpace? _defaultInstance;

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

  /// The start of the day, in the building's time zone (space.v1.Space.time_zone), on which
  /// the current membership began; for a resident, the current unbroken residency
  /// (access.v1.MembershipRelation). Never finer than a day. Unset where the gateway holds no
  /// record of it.
  @$pb.TagNumber(3)
  $1.Timestamp get since => $_getN(2);
  @$pb.TagNumber(3)
  set since($1.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSince() => $_has(2);
  @$pb.TagNumber(3)
  void clearSince() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureSince() => $_ensure(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
