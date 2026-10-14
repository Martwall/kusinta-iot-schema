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
/// This is the one place the gateway says who lives where without the caller reaching the
/// home: those two roles answer for the whole property, and a resident who moves out is
/// removed by them (RemoveFromGateway), so they are shown every member and every membership.
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

/// Gives a member ROLE_PROPERTY_OWNER or ROLE_GATEWAY_ADMIN, or takes it away. Answered with
/// ManagementAck. Only a caller holding ROLE_GATEWAY_ADMIN may; any other role named is
/// INVALID_REQUEST.
///
/// Granting a role already held, or taking away one not held, changes nothing and is
/// acknowledged. A caller may take a role away from themselves: the registering
/// administrator always remains, so the gateway cannot be left without one. Naming
/// ROLE_GATEWAY_ADMIN for the registering administrator, either way, is refused as
/// "registering_admin"; ROLE_PROPERTY_OWNER may be given to them and taken away as to
/// anyone.
///
/// Granting either role clears any end to the member's access (MemberDetail.access_until):
/// a property owner or an administrator is not there for a job.
///
/// Taking either role away also ends the pending invites the user created while holding one,
/// unless they keep the other; invites they created as a resident of a home follow their
/// residency, as they always do. The join requests those invites made stay, since another
/// administrator may still answer them. The change reaches the user's open sessions at once.
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

  /// true grants the role; false takes it away.
  @$pb.TagNumber(3)
  $core.bool get held => $_getBF(2);
  @$pb.TagNumber(3)
  set held($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasHeld() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeld() => $_clearField(3);
}

/// Removes a member from the whole gateway in one step: every membership they hold, every
/// role the gateway holds for them, every pending invite they created and every join request
/// of their own. Answered with ManagementAck. Their open sessions end, and the api-server drops
/// them from the gateway. Join requests made through their invites end where those were
/// invites a resident made, as when a residency ends, and stay otherwise.
///
/// A caller holding ROLE_GATEWAY_ADMIN may remove anyone but the registering administrator
/// ("registering_admin"). A caller holding ROLE_PROPERTY_OWNER, and not ROLE_GATEWAY_ADMIN,
/// may remove only a member who holds neither ROLE_PROPERTY_OWNER nor ROLE_GATEWAY_ADMIN;
/// anyone else, the registering administrator included, is refused NOT_ENTITLED.
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
/// ROLE_TECHNICIAN and no other role but ROLE_RESIDENT ("not_a_technician" otherwise): an end
/// date never reaches a property owner or an administrator.
///
/// access_until is the instant the access ends; a time not after now is INVALID_REQUEST. The
/// app chooses it, typically the end of a chosen day where the building is. Within a quarter
/// of an hour after it, the gateway takes away the member's ROLE_TECHNICIAN and every SERVICE
/// membership they hold, as an administrator would, and nothing else: a home they live in
/// stays theirs.
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

/// Records the organisation that owns the property, or clears it when unset or when both
/// fields are empty. An organisation number without a name is INVALID_REQUEST. Answered with
/// ManagementAck. Only a caller holding ROLE_GATEWAY_ADMIN may.
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

/// The organisation that owns the property. The people who act for it each hold
/// ROLE_PROPERTY_OWNER themselves; this only says whom they act for.
class OwnerOrganisation extends $pb.GeneratedMessage {
  factory OwnerOrganisation({
    $core.String? name,
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

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// As the organisation's national register gives it; the gateway does not check it. For a
  /// sole trader it can be a personal identity number, so it is shown only where
  /// GatewayMembers is, never to residents (PrivacyDisclosure carries the name alone).
  @$pb.TagNumber(2)
  $core.String get organisationNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set organisationNumber($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOrganisationNumber() => $_has(1);
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

  /// Unset when none is recorded.
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

/// One member, as an administrator or a property owner sees them.
class MemberDetail extends $pb.GeneratedMessage {
  factory MemberDetail({
    $0.UserId? userId,
    $core.String? name,
    $core.Iterable<$2.Role>? roles,
    $core.Iterable<MemberSpace>? memberships,
    $1.Timestamp? accessUntil,
    $core.bool? registeringAdmin,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (name != null) result.name = name;
    if (roles != null) result.roles.addAll(roles);
    if (memberships != null) result.memberships.addAll(memberships);
    if (accessUntil != null) result.accessUntil = accessUntil;
    if (registeringAdmin != null) result.registeringAdmin = registeringAdmin;
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
  /// none learnt yet. Self-chosen, so the app shows it as such. Empty when none is learnt. The
  /// gateway keeps it only while they are a member, and drops it when they stop being one.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// Every role they hold here, the registering administrator's ROLE_GATEWAY_ADMIN included,
  /// each once.
  @$pb.TagNumber(3)
  $pb.PbList<$2.Role> get roles => $_getList(2);

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

  /// Whether they are the administrator who registered the gateway, as the gateway last saw
  /// from a token. Grants nothing on its own; it says that their ROLE_GATEWAY_ADMIN cannot be
  /// changed here and that RemoveFromGateway will refuse them.
  @$pb.TagNumber(6)
  $core.bool get registeringAdmin => $_getBF(5);
  @$pb.TagNumber(6)
  set registeringAdmin($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRegisteringAdmin() => $_has(5);
  @$pb.TagNumber(6)
  void clearRegisteringAdmin() => $_clearField(6);
}

/// One space a member is filed on, and how they stand to it.
class MemberSpace extends $pb.GeneratedMessage {
  factory MemberSpace({
    $0.SpaceId? spaceId,
    $2.MembershipRelation? relation,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (relation != null) result.relation = relation;
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
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
