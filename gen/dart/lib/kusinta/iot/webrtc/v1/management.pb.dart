// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/management.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $4;
import '../../access/v1/acl.pbenum.dart' as $11;
import '../../access/v1/roles.pbenum.dart' as $9;
import '../../climate/v1/climate.pbenum.dart' as $10;
import '../../common/v1/types.pbenum.dart' as $8;
import '../../heating/v1/heating.pb.dart' as $5;
import '../../identity/v1/identity.pb.dart' as $0;
import '../../link/v1/link.pb.dart' as $3;
import '../../space/v1/space.pb.dart' as $2;
import '../../vendor/lorawan/v1/lorawan.pb.dart' as $1;
import 'invite.pb.dart' as $6;
import 'members.pb.dart' as $7;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Creates a space. A space with no parent_space_id is top level, which is a
/// stronger request than it looks: there is no parent whose reach could authorize
/// it, so it is reserved to the gateway's administrator.
///
/// Under an apartment only a room may be created. Creating in a home is guarded as
/// UpdateSpace is, and refused whatever the caller where UpdateSpace's structure rules would
/// refuse it.
class CreateSpace extends $pb.GeneratedMessage {
  factory CreateSpace({
    $8.SpaceType? spaceType,
    $core.String? name,
    $core.String? description,
    $core.int? floor,
    $0.SpaceId? parentSpaceId,
    $core.String? timeZone,
  }) {
    final result = create();
    if (spaceType != null) result.spaceType = spaceType;
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (floor != null) result.floor = floor;
    if (parentSpaceId != null) result.parentSpaceId = parentSpaceId;
    if (timeZone != null) result.timeZone = timeZone;
    return result;
  }

  CreateSpace._();

  factory CreateSpace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateSpace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSpace',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..e<$8.SpaceType>(1, _omitFieldNames ? '' : 'spaceType', $pb.PbFieldType.OE,
        defaultOrMaker: $8.SpaceType.SPACE_TYPE_UNSPECIFIED,
        valueOf: $8.SpaceType.valueOf,
        enumValues: $8.SpaceType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'floor', $pb.PbFieldType.O3)
    ..aOM<$0.SpaceId>(5, _omitFieldNames ? '' : 'parentSpaceId',
        subBuilder: $0.SpaceId.create)
    ..aOS(6, _omitFieldNames ? '' : 'timeZone')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSpace clone() => CreateSpace()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSpace copyWith(void Function(CreateSpace) updates) =>
      super.copyWith((message) => updates(message as CreateSpace))
          as CreateSpace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSpace create() => CreateSpace._();
  @$core.override
  CreateSpace createEmptyInstance() => create();
  static $pb.PbList<CreateSpace> createRepeated() => $pb.PbList<CreateSpace>();
  @$core.pragma('dart2js:noInline')
  static CreateSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSpace>(create);
  static CreateSpace? _defaultInstance;

  @$pb.TagNumber(1)
  $8.SpaceType get spaceType => $_getN(0);
  @$pb.TagNumber(1)
  set spaceType($8.SpaceType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSpaceType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpaceType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get floor => $_getIZ(3);
  @$pb.TagNumber(4)
  set floor($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFloor() => $_has(3);
  @$pb.TagNumber(4)
  void clearFloor() => $_clearField(4);

  @$pb.TagNumber(5)
  $0.SpaceId get parentSpaceId => $_getN(4);
  @$pb.TagNumber(5)
  set parentSpaceId($0.SpaceId value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasParentSpaceId() => $_has(4);
  @$pb.TagNumber(5)
  void clearParentSpaceId() => $_clearField(5);
  @$pb.TagNumber(5)
  $0.SpaceId ensureParentSpaceId() => $_ensure(4);

  /// An IANA time zone name, e.g. "Europe/Stockholm". Accepted only on a building — a
  /// top-level space — and refused on any other. Unset leaves it unknown.
  @$pb.TagNumber(6)
  $core.String get timeZone => $_getSZ(5);
  @$pb.TagNumber(6)
  set timeZone($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTimeZone() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimeZone() => $_clearField(6);
}

enum UpdateSpace_ParentChange { parentSpaceId, detach, notSet }

/// Changes a space in place. Changes that would take a space into or out of a home, or move
/// a home, are guarded by the gateway; a caller not allowed is refused as NOT_ENTITLED. A
/// change is refused whatever the caller if it would leave anything but a room under an
/// apartment, an apartment in a home, or — among what the caller can see — a device in two
/// homes or a link across a home's boundary. What the caller cannot see never refuses it: a
/// device a resident owns that would leave its owner's home, enter a home not theirs or sit
/// in two homes is taken out of the moving space instead — staying in its owner's home,
/// filed on the apartment, where it was in it — and any link it would carry across a
/// boundary is removed. Changing the type of a space that has members needs
/// ROLE_PROPERTY_OWNER or ROLE_GATEWAY_ADMIN, who see them, and is refused if it would
/// leave a RESIDENT membership on a room.
///
/// Every descriptive field carries explicit presence: absent means leave it alone, present
/// means set it to this — including to the empty string, which is how a description is
/// cleared.
class UpdateSpace extends $pb.GeneratedMessage {
  factory UpdateSpace({
    $0.SpaceId? spaceId,
    $8.SpaceType? spaceType,
    $core.String? name,
    $core.String? description,
    $core.int? floor,
    $0.SpaceId? parentSpaceId,
    $core.bool? detach,
    $core.String? timeZone,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (spaceType != null) result.spaceType = spaceType;
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (floor != null) result.floor = floor;
    if (parentSpaceId != null) result.parentSpaceId = parentSpaceId;
    if (detach != null) result.detach = detach;
    if (timeZone != null) result.timeZone = timeZone;
    return result;
  }

  UpdateSpace._();

  factory UpdateSpace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateSpace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, UpdateSpace_ParentChange>
      _UpdateSpace_ParentChangeByTag = {
    6: UpdateSpace_ParentChange.parentSpaceId,
    7: UpdateSpace_ParentChange.detach,
    0: UpdateSpace_ParentChange.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateSpace',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [6, 7])
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..e<$8.SpaceType>(2, _omitFieldNames ? '' : 'spaceType', $pb.PbFieldType.OE,
        defaultOrMaker: $8.SpaceType.SPACE_TYPE_UNSPECIFIED,
        valueOf: $8.SpaceType.valueOf,
        enumValues: $8.SpaceType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'floor', $pb.PbFieldType.O3)
    ..aOM<$0.SpaceId>(6, _omitFieldNames ? '' : 'parentSpaceId',
        subBuilder: $0.SpaceId.create)
    ..aOB(7, _omitFieldNames ? '' : 'detach')
    ..aOS(8, _omitFieldNames ? '' : 'timeZone')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSpace clone() => UpdateSpace()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSpace copyWith(void Function(UpdateSpace) updates) =>
      super.copyWith((message) => updates(message as UpdateSpace))
          as UpdateSpace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSpace create() => UpdateSpace._();
  @$core.override
  UpdateSpace createEmptyInstance() => create();
  static $pb.PbList<UpdateSpace> createRepeated() => $pb.PbList<UpdateSpace>();
  @$core.pragma('dart2js:noInline')
  static UpdateSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateSpace>(create);
  static UpdateSpace? _defaultInstance;

  UpdateSpace_ParentChange whichParentChange() =>
      _UpdateSpace_ParentChangeByTag[$_whichOneof(0)]!;
  void clearParentChange() => $_clearField($_whichOneof(0));

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
  $8.SpaceType get spaceType => $_getN(1);
  @$pb.TagNumber(2)
  set spaceType($8.SpaceType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSpaceType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpaceType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get floor => $_getIZ(4);
  @$pb.TagNumber(5)
  set floor($core.int value) => $_setSignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasFloor() => $_has(4);
  @$pb.TagNumber(5)
  void clearFloor() => $_clearField(5);

  @$pb.TagNumber(6)
  $0.SpaceId get parentSpaceId => $_getN(5);
  @$pb.TagNumber(6)
  set parentSpaceId($0.SpaceId value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasParentSpaceId() => $_has(5);
  @$pb.TagNumber(6)
  void clearParentSpaceId() => $_clearField(6);
  @$pb.TagNumber(6)
  $0.SpaceId ensureParentSpaceId() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.bool get detach => $_getBF(6);
  @$pb.TagNumber(7)
  set detach($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasDetach() => $_has(6);
  @$pb.TagNumber(7)
  void clearDetach() => $_clearField(7);

  /// An IANA time zone name, e.g. "Europe/Stockholm". Accepted only on a building — a
  /// top-level space — and refused on any other. Unset leaves it unchanged; the empty
  /// string clears it.
  @$pb.TagNumber(8)
  $core.String get timeZone => $_getSZ(7);
  @$pb.TagNumber(8)
  set timeZone($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTimeZone() => $_has(7);
  @$pb.TagNumber(8)
  void clearTimeZone() => $_clearField(8);
}

/// Deletes a space. Refused if the space still holds devices or sub-spaces unless
/// cascade is set, so that emptying a building is always something the caller
/// asked for rather than something a stale client did by accident. Deleting a home, or
/// anything in one, is guarded as UpdateSpace is.
class DeleteSpace extends $pb.GeneratedMessage {
  factory DeleteSpace({
    $0.SpaceId? spaceId,
    $core.bool? cascade,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (cascade != null) result.cascade = cascade;
    return result;
  }

  DeleteSpace._();

  factory DeleteSpace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeleteSpace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteSpace',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..aOB(2, _omitFieldNames ? '' : 'cascade')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSpace clone() => DeleteSpace()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSpace copyWith(void Function(DeleteSpace) updates) =>
      super.copyWith((message) => updates(message as DeleteSpace))
          as DeleteSpace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSpace create() => DeleteSpace._();
  @$core.override
  DeleteSpace createEmptyInstance() => create();
  static $pb.PbList<DeleteSpace> createRepeated() => $pb.PbList<DeleteSpace>();
  @$core.pragma('dart2js:noInline')
  static DeleteSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteSpace>(create);
  static DeleteSpace? _defaultInstance;

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
  $core.bool get cascade => $_getBF(1);
  @$pb.TagNumber(2)
  set cascade($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCascade() => $_has(1);
  @$pb.TagNumber(2)
  void clearCascade() => $_clearField(2);
}

/// Adds a user to a space, granting them reach of it and everything beneath it — except
/// that a RESIDENT membership reaches no home beneath it (see access.v1.MembershipRelation).
/// The user need not be known to the gateway beforehand — identities are minted by
/// the token issuer, and this records that one of them belongs here.
///
/// Assigning a user who is already a member changes their relation to the space.
/// RESIDENT is refused on a room; see access.v1.MembershipRelation.
///
/// Who may change who belongs to a home is restricted by the gateway; a caller not allowed is
/// refused as NOT_ENTITLED. Residents see who is filed on their home in Space.members.
///
/// A membership the caller is not told of under this user id (a residency, to anyone outside
/// its household: access.v1.MembershipRelation, RESIDENCY IDS) is never changed through it:
/// assigning onto it is refused as NOT_ENTITLED, and RemoveUserFromSpace answers as for one
/// that does not exist. user_id is never a residency id.
class AssignUserToSpace extends $pb.GeneratedMessage {
  factory AssignUserToSpace({
    $0.SpaceId? spaceId,
    $0.UserId? userId,
    $9.MembershipRelation? relation,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (userId != null) result.userId = userId;
    if (relation != null) result.relation = relation;
    return result;
  }

  AssignUserToSpace._();

  factory AssignUserToSpace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AssignUserToSpace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AssignUserToSpace',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..aOM<$0.UserId>(2, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..e<$9.MembershipRelation>(
        4, _omitFieldNames ? '' : 'relation', $pb.PbFieldType.OE,
        defaultOrMaker: $9.MembershipRelation.MEMBERSHIP_RELATION_UNSPECIFIED,
        valueOf: $9.MembershipRelation.valueOf,
        enumValues: $9.MembershipRelation.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AssignUserToSpace clone() => AssignUserToSpace()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AssignUserToSpace copyWith(void Function(AssignUserToSpace) updates) =>
      super.copyWith((message) => updates(message as AssignUserToSpace))
          as AssignUserToSpace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AssignUserToSpace create() => AssignUserToSpace._();
  @$core.override
  AssignUserToSpace createEmptyInstance() => create();
  static $pb.PbList<AssignUserToSpace> createRepeated() =>
      $pb.PbList<AssignUserToSpace>();
  @$core.pragma('dart2js:noInline')
  static AssignUserToSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AssignUserToSpace>(create);
  static AssignUserToSpace? _defaultInstance;

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
  $0.UserId get userId => $_getN(1);
  @$pb.TagNumber(2)
  set userId($0.UserId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.UserId ensureUserId() => $_ensure(1);

  /// How the user stands to the space — whether they live there or are there for the
  /// building. Required: UNSPECIFIED is refused, never defaulted. See
  /// access.v1.MembershipRelation for what each lets a member see of a home.
  @$pb.TagNumber(4)
  $9.MembershipRelation get relation => $_getN(2);
  @$pb.TagNumber(4)
  set relation($9.MembershipRelation value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRelation() => $_has(2);
  @$pb.TagNumber(4)
  void clearRelation() => $_clearField(4);
}

/// Removes a user's membership of a space. Losing reach also drops whatever the
/// user was streaming from it, announced by LivePermissionUpdate.
///
/// Removing someone else from a home is guarded as assigning is. A membership the caller is
/// not told of under the user id given (see AssignUserToSpace) is answered as one that does
/// not exist, and stays.
///
/// user_id may be a residency id (access.v1.MembershipRelation, RESIDENCY IDS): it then ends
/// that residency, if space_id is its home, and answers as for one that does not exist
/// otherwise. This is how a property owner or an administrator ends the residency of
/// someone who moved out.
class RemoveUserFromSpace extends $pb.GeneratedMessage {
  factory RemoveUserFromSpace({
    $0.SpaceId? spaceId,
    $0.UserId? userId,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (userId != null) result.userId = userId;
    return result;
  }

  RemoveUserFromSpace._();

  factory RemoveUserFromSpace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemoveUserFromSpace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveUserFromSpace',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..aOM<$0.UserId>(2, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveUserFromSpace clone() => RemoveUserFromSpace()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveUserFromSpace copyWith(void Function(RemoveUserFromSpace) updates) =>
      super.copyWith((message) => updates(message as RemoveUserFromSpace))
          as RemoveUserFromSpace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveUserFromSpace create() => RemoveUserFromSpace._();
  @$core.override
  RemoveUserFromSpace createEmptyInstance() => create();
  static $pb.PbList<RemoveUserFromSpace> createRepeated() =>
      $pb.PbList<RemoveUserFromSpace>();
  @$core.pragma('dart2js:noInline')
  static RemoveUserFromSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveUserFromSpace>(create);
  static RemoveUserFromSpace? _defaultInstance;

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
  $0.UserId get userId => $_getN(1);
  @$pb.TagNumber(2)
  set userId($0.UserId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.UserId ensureUserId() => $_ensure(1);
}

/// Files a device into a space. A device may sit in several spaces at once; this
/// is additive, and filing a device where it already sits is a no-op.
///
/// Into a home go only the building's own devices and devices its residents own, and a
/// device belongs to one home at most; filing into, out of or beside a home is guarded by
/// the gateway. A caller not allowed is refused as NOT_ENTITLED, and filing that would leave
/// a link the caller can see across a home's boundary is refused whatever the caller; one
/// they cannot see is removed instead.
class PlaceDeviceInSpace extends $pb.GeneratedMessage {
  factory PlaceDeviceInSpace({
    $0.DeviceId? deviceId,
    $0.SpaceId? spaceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (spaceId != null) result.spaceId = spaceId;
    return result;
  }

  PlaceDeviceInSpace._();

  factory PlaceDeviceInSpace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PlaceDeviceInSpace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PlaceDeviceInSpace',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlaceDeviceInSpace clone() => PlaceDeviceInSpace()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PlaceDeviceInSpace copyWith(void Function(PlaceDeviceInSpace) updates) =>
      super.copyWith((message) => updates(message as PlaceDeviceInSpace))
          as PlaceDeviceInSpace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlaceDeviceInSpace create() => PlaceDeviceInSpace._();
  @$core.override
  PlaceDeviceInSpace createEmptyInstance() => create();
  static $pb.PbList<PlaceDeviceInSpace> createRepeated() =>
      $pb.PbList<PlaceDeviceInSpace>();
  @$core.pragma('dart2js:noInline')
  static PlaceDeviceInSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PlaceDeviceInSpace>(create);
  static PlaceDeviceInSpace? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);

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
}

/// Takes a device out of one space, leaving any others intact. A device in no
/// space and with no owner is unfiled, and visible only to the administrator.
///
/// Taking a device out of a home is guarded as PlaceDeviceInSpace is, and removes its links
/// to devices still in the home.
class RemoveDeviceFromSpace extends $pb.GeneratedMessage {
  factory RemoveDeviceFromSpace({
    $0.DeviceId? deviceId,
    $0.SpaceId? spaceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (spaceId != null) result.spaceId = spaceId;
    return result;
  }

  RemoveDeviceFromSpace._();

  factory RemoveDeviceFromSpace.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemoveDeviceFromSpace.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveDeviceFromSpace',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOM<$0.SpaceId>(2, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveDeviceFromSpace clone() =>
      RemoveDeviceFromSpace()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveDeviceFromSpace copyWith(
          void Function(RemoveDeviceFromSpace) updates) =>
      super.copyWith((message) => updates(message as RemoveDeviceFromSpace))
          as RemoveDeviceFromSpace;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveDeviceFromSpace create() => RemoveDeviceFromSpace._();
  @$core.override
  RemoveDeviceFromSpace createEmptyInstance() => create();
  static $pb.PbList<RemoveDeviceFromSpace> createRepeated() =>
      $pb.PbList<RemoveDeviceFromSpace>();
  @$core.pragma('dart2js:noInline')
  static RemoveDeviceFromSpace getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveDeviceFromSpace>(create);
  static RemoveDeviceFromSpace? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);

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
}

/// Takes ownership of a device. Ownership is reach in its own right: an owner may
/// see and control their device whatever their gateway-wide role permits, and may
/// file it into spaces they belong to, and the rooms of a home they live in — though into a
/// home only if they live there (see PlaceDeviceInSpace).
///
/// Only a RESIDENT claim makes the caller the owner. A COMPANY claim records that the
/// building owns the device, names no person, and grants the caller no reach. Claims of a
/// device in a home, or of one already claimed, are restricted by the gateway.
class ClaimDevice extends $pb.GeneratedMessage {
  factory ClaimDevice({
    $0.DeviceId? deviceId,
    $8.DeviceOwnershipType? ownership,
    $0.SpaceId? initialSpaceId,
    $core.String? possessionProof,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (ownership != null) result.ownership = ownership;
    if (initialSpaceId != null) result.initialSpaceId = initialSpaceId;
    if (possessionProof != null) result.possessionProof = possessionProof;
    return result;
  }

  ClaimDevice._();

  factory ClaimDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClaimDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClaimDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..e<$8.DeviceOwnershipType>(
        2, _omitFieldNames ? '' : 'ownership', $pb.PbFieldType.OE,
        defaultOrMaker:
            $8.DeviceOwnershipType.DEVICE_OWNERSHIP_TYPE_UNSPECIFIED,
        valueOf: $8.DeviceOwnershipType.valueOf,
        enumValues: $8.DeviceOwnershipType.values)
    ..aOM<$0.SpaceId>(3, _omitFieldNames ? '' : 'initialSpaceId',
        subBuilder: $0.SpaceId.create)
    ..aOS(4, _omitFieldNames ? '' : 'possessionProof')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClaimDevice clone() => ClaimDevice()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClaimDevice copyWith(void Function(ClaimDevice) updates) =>
      super.copyWith((message) => updates(message as ClaimDevice))
          as ClaimDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClaimDevice create() => ClaimDevice._();
  @$core.override
  ClaimDevice createEmptyInstance() => create();
  static $pb.PbList<ClaimDevice> createRepeated() => $pb.PbList<ClaimDevice>();
  @$core.pragma('dart2js:noInline')
  static ClaimDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClaimDevice>(create);
  static ClaimDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);

  @$pb.TagNumber(2)
  $8.DeviceOwnershipType get ownership => $_getN(1);
  @$pb.TagNumber(2)
  set ownership($8.DeviceOwnershipType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOwnership() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnership() => $_clearField(2);

  @$pb.TagNumber(3)
  $0.SpaceId get initialSpaceId => $_getN(2);
  @$pb.TagNumber(3)
  set initialSpaceId($0.SpaceId value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasInitialSpaceId() => $_has(2);
  @$pb.TagNumber(3)
  void clearInitialSpaceId() => $_clearField(3);
  @$pb.TagNumber(3)
  $0.SpaceId ensureInitialSpaceId() => $_ensure(2);

  /// Evidence the claimant is standing at the device: the identifier printed on it,
  /// matched against DeviceDescriptor.serial_number.
  ///
  /// The match is by SUFFIX, because what a connector announces is not always the whole
  /// of what is printed and the announced value is commonly the tail of the printed one.
  /// Both sides are normalised first — lowercased, with whitespace and ASCII hyphens
  /// removed, since a label prints the value in groups and a scan does not — and the proof
  /// is accepted when what remains ends with the announced serial. Spelled out because two
  /// gateways normalising differently would accept different proofs for the same device.
  ///
  /// A serial shorter than eight characters cannot be proved at all: under a suffix rule a
  /// short one is proved by almost anything ending with it. Required precisely when the
  /// caller cannot already reach the device, which is the ordinary case for a
  /// resident claiming something they just bought — an unfiled device is invisible
  /// to them, so possession is the only thing left that can distinguish them from
  /// someone guessing ids. The administrator, who can already reach it, needs no
  /// proof. A device whose connector reports no serial can only be claimed by the
  /// administrator.
  @$pb.TagNumber(4)
  $core.String get possessionProof => $_getSZ(3);
  @$pb.TagNumber(4)
  set possessionProof($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPossessionProof() => $_has(3);
  @$pb.TagNumber(4)
  void clearPossessionProof() => $_clearField(4);
}

/// Gives up ownership. The device keeps whatever space filing it has, except that a device in
/// a home stays filed in the home alone, as one of the building's own devices there — as
/// when its owner moves out; if it has none it becomes unfiled.
class ReleaseDevice extends $pb.GeneratedMessage {
  factory ReleaseDevice({
    $0.DeviceId? deviceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    return result;
  }

  ReleaseDevice._();

  factory ReleaseDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReleaseDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReleaseDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReleaseDevice clone() => ReleaseDevice()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReleaseDevice copyWith(void Function(ReleaseDevice) updates) =>
      super.copyWith((message) => updates(message as ReleaseDevice))
          as ReleaseDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReleaseDevice create() => ReleaseDevice._();
  @$core.override
  ReleaseDevice createEmptyInstance() => create();
  static $pb.PbList<ReleaseDevice> createRepeated() =>
      $pb.PbList<ReleaseDevice>();
  @$core.pragma('dart2js:noInline')
  static ReleaseDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReleaseDevice>(create);
  static ReleaseDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);
}

enum ProvisionDevice_Credentials { lorawan, notSet }

/// Registers a device with the system that will admit it, so that it can join
/// later. For a technology where a device is enrolled as a record rather than
/// adopted during a window — see common.v1.PairingWindow for the other case, where
/// something joins a hub during a window and the arrival is attributed to the
/// caller. A LoRaWAN device has no window: it is written into a network server and
/// joins whenever it is next powered, which may be minutes, days, or never.
///
/// Answered with the ordinary ManagementAck. A provision writes a record and returns
/// nothing to show; the device itself is announced by device_added if and when it
/// joins, the same path every other device takes — which is why this adds no
/// ManagementResult arm. A new result arm is a compile error in a consumer that
/// matches the result exhaustively; a new request arm is not.
///
/// Registering and owning stay two operations. ClaimDevice records the caller and
/// carries possession_proof, so a device that has not joined yet is still claimable
/// by whoever holds it — and because the connector derives the device id and the
/// serial from the identifier here, that claim can be made before the join.
///
/// Provisioning the same identifier twice is an upsert: it replaces the credentials
/// rather than being refused as a conflict, so correcting a mistyped key does not
/// require removing the device first. Removing a record is a distinct act from
/// giving up ownership (ReleaseDevice) and is left to a later operation.
class ProvisionDevice extends $pb.GeneratedMessage {
  factory ProvisionDevice({
    $0.ConnectorId? connectorId,
    $1.LorawanProvisioning? lorawan,
  }) {
    final result = create();
    if (connectorId != null) result.connectorId = connectorId;
    if (lorawan != null) result.lorawan = lorawan;
    return result;
  }

  ProvisionDevice._();

  factory ProvisionDevice.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProvisionDevice.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ProvisionDevice_Credentials>
      _ProvisionDevice_CredentialsByTag = {
    2: ProvisionDevice_Credentials.lorawan,
    0: ProvisionDevice_Credentials.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProvisionDevice',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOM<$0.ConnectorId>(1, _omitFieldNames ? '' : 'connectorId',
        subBuilder: $0.ConnectorId.create)
    ..aOM<$1.LorawanProvisioning>(2, _omitFieldNames ? '' : 'lorawan',
        subBuilder: $1.LorawanProvisioning.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProvisionDevice clone() => ProvisionDevice()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProvisionDevice copyWith(void Function(ProvisionDevice) updates) =>
      super.copyWith((message) => updates(message as ProvisionDevice))
          as ProvisionDevice;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProvisionDevice create() => ProvisionDevice._();
  @$core.override
  ProvisionDevice createEmptyInstance() => create();
  static $pb.PbList<ProvisionDevice> createRepeated() =>
      $pb.PbList<ProvisionDevice>();
  @$core.pragma('dart2js:noInline')
  static ProvisionDevice getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProvisionDevice>(create);
  static ProvisionDevice? _defaultInstance;

  ProvisionDevice_Credentials whichCredentials() =>
      _ProvisionDevice_CredentialsByTag[$_whichOneof(0)]!;
  void clearCredentials() => $_clearField($_whichOneof(0));

  /// Required, unlike a pairing window's connector target. A registration is written
  /// to one specific registry; there is no sensible "open them all and see what
  /// joins". The app names it from the connector enumeration, targeting a connector
  /// that declares ConnectorInfo.supports_provisioning.
  @$pb.TagNumber(1)
  $0.ConnectorId get connectorId => $_getN(0);
  @$pb.TagNumber(1)
  set connectorId($0.ConnectorId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConnectorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectorId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ConnectorId ensureConnectorId() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.LorawanProvisioning get lorawan => $_getN(1);
  @$pb.TagNumber(2)
  set lorawan($1.LorawanProvisioning value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLorawan() => $_has(1);
  @$pb.TagNumber(2)
  void clearLorawan() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.LorawanProvisioning ensureLorawan() => $_ensure(1);
}

/// Asks for the spaces the caller can reach. Unset root_space_id means all of
/// them, which for most users is one apartment and for an administrator is the
/// building.
class ListSpaces extends $pb.GeneratedMessage {
  factory ListSpaces({
    $0.SpaceId? rootSpaceId,
  }) {
    final result = create();
    if (rootSpaceId != null) result.rootSpaceId = rootSpaceId;
    return result;
  }

  ListSpaces._();

  factory ListSpaces.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListSpaces.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSpaces',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'rootSpaceId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSpaces clone() => ListSpaces()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSpaces copyWith(void Function(ListSpaces) updates) =>
      super.copyWith((message) => updates(message as ListSpaces)) as ListSpaces;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSpaces create() => ListSpaces._();
  @$core.override
  ListSpaces createEmptyInstance() => create();
  static $pb.PbList<ListSpaces> createRepeated() => $pb.PbList<ListSpaces>();
  @$core.pragma('dart2js:noInline')
  static ListSpaces getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSpaces>(create);
  static ListSpaces? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get rootSpaceId => $_getN(0);
  @$pb.TagNumber(1)
  set rootSpaceId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRootSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureRootSpaceId() => $_ensure(0);
}

/// The spaces themselves, flat: each Space carries its own parent_space_id, so the
/// structure travels with the elements and a client rebuilds the tree from them.
/// A flat list also degrades honestly when it is truncated — a partial tree with
/// dangling parents is still readable, where a nested one would lose whole
/// subtrees.
///
/// device_ids on each Space are filtered to what the caller may see. An
/// unfiltered tree would list every device on the gateway by id, which is the
/// enumeration channel the snapshot filter exists to close. To a caller who sees a home as
/// service, what is new in it is listed as it happens and what is gone at once, its members
/// included where they are shown (see Space.members).
class SpaceTree extends $pb.GeneratedMessage {
  factory SpaceTree({
    $core.Iterable<$2.Space>? spaces,
  }) {
    final result = create();
    if (spaces != null) result.spaces.addAll(spaces);
    return result;
  }

  SpaceTree._();

  factory SpaceTree.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SpaceTree.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpaceTree',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..pc<$2.Space>(1, _omitFieldNames ? '' : 'spaces', $pb.PbFieldType.PM,
        subBuilder: $2.Space.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpaceTree clone() => SpaceTree()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpaceTree copyWith(void Function(SpaceTree) updates) =>
      super.copyWith((message) => updates(message as SpaceTree)) as SpaceTree;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpaceTree create() => SpaceTree._();
  @$core.override
  SpaceTree createEmptyInstance() => create();
  static $pb.PbList<SpaceTree> createRepeated() => $pb.PbList<SpaceTree>();
  @$core.pragma('dart2js:noInline')
  static SpaceTree getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpaceTree>(create);
  static SpaceTree? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.Space> get spaces => $_getList(0);
}

/// The answer to an operation that changes something and has nothing to return.
/// Deliberately empty: ManagementResult.in_reply_to says which request succeeded,
/// and what the change did to the caller's reach arrives on LivePermissionUpdate
/// rather than here.
class ManagementAck extends $pb.GeneratedMessage {
  factory ManagementAck() => create();

  ManagementAck._();

  factory ManagementAck.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ManagementAck.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ManagementAck',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagementAck clone() => ManagementAck()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagementAck copyWith(void Function(ManagementAck) updates) =>
      super.copyWith((message) => updates(message as ManagementAck))
          as ManagementAck;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManagementAck create() => ManagementAck._();
  @$core.override
  ManagementAck createEmptyInstance() => create();
  static $pb.PbList<ManagementAck> createRepeated() =>
      $pb.PbList<ManagementAck>();
  @$core.pragma('dart2js:noInline')
  static ManagementAck getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ManagementAck>(create);
  static ManagementAck? _defaultInstance;
}

/// A single filing operation, app → gateway. One wrapper rather than ten payload
/// cases on AppMessage: authorization for filing depends on the target, not on the
/// message kind, so these can never be gated by a table keyed on the envelope case
/// the way device messages are. Keeping them behind one case means one place that
/// must authorize, and one refusal path that must not leak whether a target exists.
/// Links one device to another, so the sender leads the receiver. The gateway
/// resolves which underlying connections that needs and asks the connector for
/// them; a caller names two devices and what the link is for.
///
/// Authorized against both ends, and not symmetrically. Leading a device is a
/// standing grant of control over it, so the receiver requires ownership or a
/// servicing role. The sender's requirement depends on the mode: a gateway-kept
/// link only reads what the caller can already see, while a device-to-device one
/// writes configuration to the sender and spends its battery, which is a change
/// to someone else's hardware.
///
/// In a home it is the other way round: links between its devices are its residents' to
/// make, change and remove, and a caller who reaches it as service is refused as
/// NOT_ENTITLED. A link between a device in a home and one outside it is refused to anyone.
/// The same holds for UpdateDeviceLink and RemoveDeviceLink.
class CreateDeviceLink extends $pb.GeneratedMessage {
  factory CreateDeviceLink({
    $0.DeviceId? sender,
    $0.DeviceId? receiver,
    $3.LinkFunction? function,
    $3.LinkMode? mode,
    $3.LinkSettings? settings,
  }) {
    final result = create();
    if (sender != null) result.sender = sender;
    if (receiver != null) result.receiver = receiver;
    if (function != null) result.function = function;
    if (mode != null) result.mode = mode;
    if (settings != null) result.settings = settings;
    return result;
  }

  CreateDeviceLink._();

  factory CreateDeviceLink.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CreateDeviceLink.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateDeviceLink',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'sender',
        subBuilder: $0.DeviceId.create)
    ..aOM<$0.DeviceId>(2, _omitFieldNames ? '' : 'receiver',
        subBuilder: $0.DeviceId.create)
    ..e<$3.LinkFunction>(
        3, _omitFieldNames ? '' : 'function', $pb.PbFieldType.OE,
        defaultOrMaker: $3.LinkFunction.LINK_FUNCTION_UNSPECIFIED,
        valueOf: $3.LinkFunction.valueOf,
        enumValues: $3.LinkFunction.values)
    ..e<$3.LinkMode>(4, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.OE,
        defaultOrMaker: $3.LinkMode.LINK_MODE_UNSPECIFIED,
        valueOf: $3.LinkMode.valueOf,
        enumValues: $3.LinkMode.values)
    ..aOM<$3.LinkSettings>(5, _omitFieldNames ? '' : 'settings',
        subBuilder: $3.LinkSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateDeviceLink clone() => CreateDeviceLink()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateDeviceLink copyWith(void Function(CreateDeviceLink) updates) =>
      super.copyWith((message) => updates(message as CreateDeviceLink))
          as CreateDeviceLink;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateDeviceLink create() => CreateDeviceLink._();
  @$core.override
  CreateDeviceLink createEmptyInstance() => create();
  static $pb.PbList<CreateDeviceLink> createRepeated() =>
      $pb.PbList<CreateDeviceLink>();
  @$core.pragma('dart2js:noInline')
  static CreateDeviceLink getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateDeviceLink>(create);
  static CreateDeviceLink? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceId get sender => $_getN(0);
  @$pb.TagNumber(1)
  set sender($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSender() => $_has(0);
  @$pb.TagNumber(1)
  void clearSender() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureSender() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.DeviceId get receiver => $_getN(1);
  @$pb.TagNumber(2)
  set receiver($0.DeviceId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasReceiver() => $_has(1);
  @$pb.TagNumber(2)
  void clearReceiver() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.DeviceId ensureReceiver() => $_ensure(1);

  @$pb.TagNumber(3)
  $3.LinkFunction get function => $_getN(2);
  @$pb.TagNumber(3)
  set function($3.LinkFunction value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFunction() => $_has(2);
  @$pb.TagNumber(3)
  void clearFunction() => $_clearField(3);

  /// Unset lets the gateway choose, which prefers a device-to-device link where
  /// one can be brokered: it survives a gateway outage and runs at the devices'
  /// own rate. Name one to override that.
  @$pb.TagNumber(4)
  $3.LinkMode get mode => $_getN(3);
  @$pb.TagNumber(4)
  set mode($3.LinkMode value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearMode() => $_clearField(4);

  /// How a gateway-kept link is to behave, set as it is made. Carried here as
  /// well as on UpdateDeviceLink so that a link does not have to exist in a
  /// configured-by-nobody state first — a soft climate link created without a
  /// target is one that holds the room at nothing until a second request
  /// arrives, and every reader would have to handle that transient forever.
  ///
  /// Unset is still allowed and still means unconfigured, since a hard link has
  /// nothing to configure and a caller may genuinely not know the target yet.
  @$pb.TagNumber(5)
  $3.LinkSettings get settings => $_getN(4);
  @$pb.TagNumber(5)
  set settings($3.LinkSettings value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSettings() => $_has(4);
  @$pb.TagNumber(5)
  void clearSettings() => $_clearField(5);
  @$pb.TagNumber(5)
  $3.LinkSettings ensureSettings() => $_ensure(4);
}

/// Removes a link. Note that on at least one vendor, removing a link disturbs the
/// receiver's own settings and the connector must repair them, so this is not the
/// no-op it appears to be.
class RemoveDeviceLink extends $pb.GeneratedMessage {
  factory RemoveDeviceLink({
    $core.String? linkId,
  }) {
    final result = create();
    if (linkId != null) result.linkId = linkId;
    return result;
  }

  RemoveDeviceLink._();

  factory RemoveDeviceLink.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemoveDeviceLink.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveDeviceLink',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'linkId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveDeviceLink clone() => RemoveDeviceLink()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveDeviceLink copyWith(void Function(RemoveDeviceLink) updates) =>
      super.copyWith((message) => updates(message as RemoveDeviceLink))
          as RemoveDeviceLink;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveDeviceLink create() => RemoveDeviceLink._();
  @$core.override
  RemoveDeviceLink createEmptyInstance() => create();
  static $pb.PbList<RemoveDeviceLink> createRepeated() =>
      $pb.PbList<RemoveDeviceLink>();
  @$core.pragma('dart2js:noInline')
  static RemoveDeviceLink getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveDeviceLink>(create);
  static RemoveDeviceLink? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get linkId => $_getSZ(0);
  @$pb.TagNumber(1)
  set linkId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLinkId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkId() => $_clearField(1);
}

/// Changes how a gateway-kept link behaves — for a climate lead, the temperature
/// it is to hold.
///
/// Refused on a link that has nothing to configure — see LinkSettings — rather
/// than accepted as a no-op, so that a caller who has mistaken which link they
/// are holding is told.
///
/// Authorized against both ends, as creating and removing the link are: deciding
/// what temperature a room is held at is directing a device, not adjusting one,
/// so it takes ownership of the ends or a servicing role, not the permission to
/// turn a thermostat up. In a home it is its residents' instead (see CreateDeviceLink).
class UpdateDeviceLink extends $pb.GeneratedMessage {
  factory UpdateDeviceLink({
    $core.String? linkId,
    $3.LinkSettings? settings,
  }) {
    final result = create();
    if (linkId != null) result.linkId = linkId;
    if (settings != null) result.settings = settings;
    return result;
  }

  UpdateDeviceLink._();

  factory UpdateDeviceLink.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory UpdateDeviceLink.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateDeviceLink',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'linkId')
    ..aOM<$3.LinkSettings>(2, _omitFieldNames ? '' : 'settings',
        subBuilder: $3.LinkSettings.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateDeviceLink clone() => UpdateDeviceLink()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateDeviceLink copyWith(void Function(UpdateDeviceLink) updates) =>
      super.copyWith((message) => updates(message as UpdateDeviceLink))
          as UpdateDeviceLink;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateDeviceLink create() => UpdateDeviceLink._();
  @$core.override
  UpdateDeviceLink createEmptyInstance() => create();
  static $pb.PbList<UpdateDeviceLink> createRepeated() =>
      $pb.PbList<UpdateDeviceLink>();
  @$core.pragma('dart2js:noInline')
  static UpdateDeviceLink getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateDeviceLink>(create);
  static UpdateDeviceLink? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get linkId => $_getSZ(0);
  @$pb.TagNumber(1)
  set linkId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLinkId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkId() => $_clearField(1);

  /// Replaces the link's settings rather than patching them: the settings of one
  /// function are few and are set together, so there is no half-update worth
  /// expressing. This is why it does not follow UpdateSpace's per-field optional
  /// shape, which exists for a message whose fields genuinely move alone.
  ///
  /// Unset is refused rather than being given a meaning. It would have to mean
  /// either "leave everything alone", making the request a no-op, or "clear the
  /// settings", which is the one thing that reads like an accident — and the
  /// wire cannot tell those two callers apart.
  @$pb.TagNumber(2)
  $3.LinkSettings get settings => $_getN(1);
  @$pb.TagNumber(2)
  set settings($3.LinkSettings value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSettings() => $_has(1);
  @$pb.TagNumber(2)
  void clearSettings() => $_clearField(2);
  @$pb.TagNumber(2)
  $3.LinkSettings ensureSettings() => $_ensure(1);
}

/// Lists links. Unset device_id lists every link among devices the caller can
/// reach; naming one narrows it to that device's own, in either direction.
///
/// A link with an end in a home reaches a caller who sees it as service with
/// DeviceLink.details_withheld set, and what that withholds unset — a new link
/// as it is made, a removed one at once — and not at all when either end is a
/// device a resident owns.
class ListDeviceLinks extends $pb.GeneratedMessage {
  factory ListDeviceLinks({
    $0.DeviceId? deviceId,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    return result;
  }

  ListDeviceLinks._();

  factory ListDeviceLinks.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListDeviceLinks.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListDeviceLinks',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDeviceLinks clone() => ListDeviceLinks()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDeviceLinks copyWith(void Function(ListDeviceLinks) updates) =>
      super.copyWith((message) => updates(message as ListDeviceLinks))
          as ListDeviceLinks;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDeviceLinks create() => ListDeviceLinks._();
  @$core.override
  ListDeviceLinks createEmptyInstance() => create();
  static $pb.PbList<ListDeviceLinks> createRepeated() =>
      $pb.PbList<ListDeviceLinks>();
  @$core.pragma('dart2js:noInline')
  static ListDeviceLinks getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListDeviceLinks>(create);
  static ListDeviceLinks? _defaultInstance;

  @$pb.TagNumber(1)
  $0.DeviceId get deviceId => $_getN(0);
  @$pb.TagNumber(1)
  set deviceId($0.DeviceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.DeviceId ensureDeviceId() => $_ensure(0);
}

/// Sets the temperature a room is to be held at.
///
/// Authorized as adjusting, not directing: WRITE on the room is enough. It is the same act
/// as turning a radiator's knob; setting up what the room obeys is ConfigureRoomClimate,
/// and stays with owners, except the lock in a home.
///
/// In a home, only its residents may set it; a caller who reaches the room as service is
/// refused as NOT_ENTITLED.
///
/// Clamped to the room's limits rather than refused outside them, and the clamped value is
/// what the room's RoomClimate then reports.
class SetRoomTarget extends $pb.GeneratedMessage {
  factory SetRoomTarget({
    $0.SpaceId? roomId,
    $core.int? targetCentidegrees,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (targetCentidegrees != null)
      result.targetCentidegrees = targetCentidegrees;
    return result;
  }

  SetRoomTarget._();

  factory SetRoomTarget.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetRoomTarget.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetRoomTarget',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'roomId',
        subBuilder: $0.SpaceId.create)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'targetCentidegrees', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRoomTarget clone() => SetRoomTarget()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetRoomTarget copyWith(void Function(SetRoomTarget) updates) =>
      super.copyWith((message) => updates(message as SetRoomTarget))
          as SetRoomTarget;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetRoomTarget create() => SetRoomTarget._();
  @$core.override
  SetRoomTarget createEmptyInstance() => create();
  static $pb.PbList<SetRoomTarget> createRepeated() =>
      $pb.PbList<SetRoomTarget>();
  @$core.pragma('dart2js:noInline')
  static SetRoomTarget getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetRoomTarget>(create);
  static SetRoomTarget? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get roomId => $_getN(0);
  @$pb.TagNumber(1)
  set roomId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureRoomId() => $_ensure(0);

  /// Unset clears the target: the room goes back to having none (NO_TARGET) and its
  /// devices to their own behaviour. With presence, so that a request that forgot the
  /// field is not read as 0 °C and clamped to the room's minimum.
  @$pb.TagNumber(2)
  $core.int get targetCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set targetCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTargetCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetCentidegrees() => $_clearField(2);
}

/// The sensors a room measures with, in order of preference. A message of its own so that
/// "leave the sensors alone" (unset) differs from "set" on the wire. It orders the
/// building's sensors only (see climate.v1.RoomClimate.sensor_ids); set but empty returns
/// them to the default, every building temperature sensor filed in the room in filing
/// order.
class RoomSensors extends $pb.GeneratedMessage {
  factory RoomSensors({
    $core.Iterable<$0.DeviceId>? sensorIds,
  }) {
    final result = create();
    if (sensorIds != null) result.sensorIds.addAll(sensorIds);
    return result;
  }

  RoomSensors._();

  factory RoomSensors.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RoomSensors.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RoomSensors',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..pc<$0.DeviceId>(1, _omitFieldNames ? '' : 'sensorIds', $pb.PbFieldType.PM,
        subBuilder: $0.DeviceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomSensors clone() => RoomSensors()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomSensors copyWith(void Function(RoomSensors) updates) =>
      super.copyWith((message) => updates(message as RoomSensors))
          as RoomSensors;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomSensors create() => RoomSensors._();
  @$core.override
  RoomSensors createEmptyInstance() => create();
  static $pb.PbList<RoomSensors> createRepeated() => $pb.PbList<RoomSensors>();
  @$core.pragma('dart2js:noInline')
  static RoomSensors getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RoomSensors>(create);
  static RoomSensors? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$0.DeviceId> get sensorIds => $_getList(0);
}

/// A room's limits. A message of its own so that "leave the limits alone" (unset) differs
/// from "set" — and, set, an unset bound inside it removes that bound, which a bare
/// optional on the request could not say.
class RoomLimits extends $pb.GeneratedMessage {
  factory RoomLimits({
    $core.int? minCentidegrees,
    $core.int? maxCentidegrees,
  }) {
    final result = create();
    if (minCentidegrees != null) result.minCentidegrees = minCentidegrees;
    if (maxCentidegrees != null) result.maxCentidegrees = maxCentidegrees;
    return result;
  }

  RoomLimits._();

  factory RoomLimits.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RoomLimits.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RoomLimits',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'minCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'maxCentidegrees', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomLimits clone() => RoomLimits()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RoomLimits copyWith(void Function(RoomLimits) updates) =>
      super.copyWith((message) => updates(message as RoomLimits)) as RoomLimits;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoomLimits create() => RoomLimits._();
  @$core.override
  RoomLimits createEmptyInstance() => create();
  static $pb.PbList<RoomLimits> createRepeated() => $pb.PbList<RoomLimits>();
  @$core.pragma('dart2js:noInline')
  static RoomLimits getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RoomLimits>(create);
  static RoomLimits? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get minCentidegrees => $_getIZ(0);
  @$pb.TagNumber(1)
  set minCentidegrees($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMinCentidegrees() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinCentidegrees() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxCentidegrees() => $_clearField(2);
}

/// Configures what a room obeys: its limits, its sensors, and whether a change made by
/// hand at one of its devices counts. Authorized as directing — owners and filing roles —
/// because this decides what everybody in the room can do.
///
/// One exception: in a home, lock_device_controls is its residents' alone. They may send
/// this request with nothing else set. Outside homes the lock is the owner's, as the rest
/// is. A request that sets anything its caller may not — the lock in a home for service;
/// anything but the lock in a home, or the lock outside one, for a caller with neither
/// ROLE_PROPERTY_OWNER nor a filing role — is refused whole as NOT_ENTITLED, so nothing of
/// it applies. sensors orders only the building's own
/// sensors (see RoomClimate.sensor_ids).
///
/// Each field moves alone, as on UpdateSpace: unset leaves it as it is.
class ConfigureRoomClimate extends $pb.GeneratedMessage {
  factory ConfigureRoomClimate({
    $0.SpaceId? roomId,
    RoomLimits? limits,
    RoomSensors? sensors,
    $core.bool? lockDeviceControls,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (limits != null) result.limits = limits;
    if (sensors != null) result.sensors = sensors;
    if (lockDeviceControls != null)
      result.lockDeviceControls = lockDeviceControls;
    return result;
  }

  ConfigureRoomClimate._();

  factory ConfigureRoomClimate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConfigureRoomClimate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConfigureRoomClimate',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'roomId',
        subBuilder: $0.SpaceId.create)
    ..aOM<RoomLimits>(2, _omitFieldNames ? '' : 'limits',
        subBuilder: RoomLimits.create)
    ..aOM<RoomSensors>(3, _omitFieldNames ? '' : 'sensors',
        subBuilder: RoomSensors.create)
    ..aOB(4, _omitFieldNames ? '' : 'lockDeviceControls')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureRoomClimate clone() =>
      ConfigureRoomClimate()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConfigureRoomClimate copyWith(void Function(ConfigureRoomClimate) updates) =>
      super.copyWith((message) => updates(message as ConfigureRoomClimate))
          as ConfigureRoomClimate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConfigureRoomClimate create() => ConfigureRoomClimate._();
  @$core.override
  ConfigureRoomClimate createEmptyInstance() => create();
  static $pb.PbList<ConfigureRoomClimate> createRepeated() =>
      $pb.PbList<ConfigureRoomClimate>();
  @$core.pragma('dart2js:noInline')
  static ConfigureRoomClimate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConfigureRoomClimate>(create);
  static ConfigureRoomClimate? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get roomId => $_getN(0);
  @$pb.TagNumber(1)
  set roomId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureRoomId() => $_ensure(0);

  /// Replaces both bounds; see RoomLimits.
  @$pb.TagNumber(2)
  RoomLimits get limits => $_getN(1);
  @$pb.TagNumber(2)
  set limits(RoomLimits value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLimits() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimits() => $_clearField(2);
  @$pb.TagNumber(2)
  RoomLimits ensureLimits() => $_ensure(1);

  /// Only the building's sensors filed in this room; any other — including a sensor a
  /// resident owns — is refused, the same way whether or not it exists.
  @$pb.TagNumber(3)
  RoomSensors get sensors => $_getN(2);
  @$pb.TagNumber(3)
  set sensors(RoomSensors value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSensors() => $_has(2);
  @$pb.TagNumber(3)
  void clearSensors() => $_clearField(3);
  @$pb.TagNumber(3)
  RoomSensors ensureSensors() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get lockDeviceControls => $_getBF(3);
  @$pb.TagNumber(4)
  set lockDeviceControls($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLockDeviceControls() => $_has(3);
  @$pb.TagNumber(4)
  void clearLockDeviceControls() => $_clearField(4);
}

/// Switches a mode on a space on, or off with kind UNSPECIFIED. WRITE on the space.
/// Switching one on needs setback_centidegrees; a mode with nothing to set back to is
/// refused. Switching one on is refused on a room inside an apartment, whose rooms follow
/// the apartment's mode alone; such a room carries none (see climate.v1.ClimateMode), and
/// switching one off there is accepted and does nothing — for those who may switch modes in
/// that home at all, which is checked first: anyone else is refused as NOT_ENTITLED.
///
/// In a home, only its residents may switch one on or off: whether a home stands empty is
/// theirs to say. A caller who reaches it as service is refused as NOT_ENTITLED — except
/// that, while the home has no resident, ROLE_PROPERTY_OWNER or ROLE_GATEWAY_ADMIN may
/// switch off a mode that is on and whose setter is not a resident, so that no mode
/// outlives everyone who could end it. Any other switch-off from them — no mode on, or one
/// that is a resident's — is accepted and does nothing, so the answer tells them nothing of
/// whether a mode was on or whether anyone has moved in.
class SetClimateMode extends $pb.GeneratedMessage {
  factory SetClimateMode({
    $0.SpaceId? spaceId,
    $10.ClimateModeKind? kind,
    $core.int? setbackCentidegrees,
    $4.Timestamp? startsAt,
    $4.Timestamp? endsAt,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (kind != null) result.kind = kind;
    if (setbackCentidegrees != null)
      result.setbackCentidegrees = setbackCentidegrees;
    if (startsAt != null) result.startsAt = startsAt;
    if (endsAt != null) result.endsAt = endsAt;
    return result;
  }

  SetClimateMode._();

  factory SetClimateMode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetClimateMode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetClimateMode',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..e<$10.ClimateModeKind>(
        2, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: $10.ClimateModeKind.CLIMATE_MODE_KIND_UNSPECIFIED,
        valueOf: $10.ClimateModeKind.valueOf,
        enumValues: $10.ClimateModeKind.values)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'setbackCentidegrees', $pb.PbFieldType.OS3)
    ..aOM<$4.Timestamp>(4, _omitFieldNames ? '' : 'startsAt',
        subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(5, _omitFieldNames ? '' : 'endsAt',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetClimateMode clone() => SetClimateMode()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetClimateMode copyWith(void Function(SetClimateMode) updates) =>
      super.copyWith((message) => updates(message as SetClimateMode))
          as SetClimateMode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetClimateMode create() => SetClimateMode._();
  @$core.override
  SetClimateMode createEmptyInstance() => create();
  static $pb.PbList<SetClimateMode> createRepeated() =>
      $pb.PbList<SetClimateMode>();
  @$core.pragma('dart2js:noInline')
  static SetClimateMode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetClimateMode>(create);
  static SetClimateMode? _defaultInstance;

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
  $10.ClimateModeKind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind($10.ClimateModeKind value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get setbackCentidegrees => $_getIZ(2);
  @$pb.TagNumber(3)
  set setbackCentidegrees($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSetbackCentidegrees() => $_has(2);
  @$pb.TagNumber(3)
  void clearSetbackCentidegrees() => $_clearField(3);

  /// HOLIDAY only; both required there. Refused on AWAY.
  @$pb.TagNumber(4)
  $4.Timestamp get startsAt => $_getN(3);
  @$pb.TagNumber(4)
  set startsAt($4.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStartsAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearStartsAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $4.Timestamp ensureStartsAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $4.Timestamp get endsAt => $_getN(4);
  @$pb.TagNumber(5)
  set endsAt($4.Timestamp value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasEndsAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearEndsAt() => $_clearField(5);
  @$pb.TagNumber(5)
  $4.Timestamp ensureEndsAt() => $_ensure(4);
}

/// Lists the room climates and modes a caller may see. Unset root_space_id lists every
/// one the caller can reach; naming a space narrows it to that space and those below.
///
/// A caller who reaches a room inside an apartment as service gets it with
/// RoomClimate.state_withheld set — what is new as it happens, what is gone at once — and
/// gets no ClimateMode set on that apartment or its rooms.
class ListRoomClimates extends $pb.GeneratedMessage {
  factory ListRoomClimates({
    $0.SpaceId? rootSpaceId,
  }) {
    final result = create();
    if (rootSpaceId != null) result.rootSpaceId = rootSpaceId;
    return result;
  }

  ListRoomClimates._();

  factory ListRoomClimates.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListRoomClimates.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListRoomClimates',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'rootSpaceId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRoomClimates clone() => ListRoomClimates()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRoomClimates copyWith(void Function(ListRoomClimates) updates) =>
      super.copyWith((message) => updates(message as ListRoomClimates))
          as ListRoomClimates;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRoomClimates create() => ListRoomClimates._();
  @$core.override
  ListRoomClimates createEmptyInstance() => create();
  static $pb.PbList<ListRoomClimates> createRepeated() =>
      $pb.PbList<ListRoomClimates>();
  @$core.pragma('dart2js:noInline')
  static ListRoomClimates getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListRoomClimates>(create);
  static ListRoomClimates? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get rootSpaceId => $_getN(0);
  @$pb.TagNumber(1)
  set rootSpaceId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRootSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureRootSpaceId() => $_ensure(0);
}

/// Reads a room's history, answered with a climate.v1.RoomHistory of fixed 15-minute
/// buckets aligned to UTC quarter hours (:00, :15, :30, :45). Needs READ on the room.
///
/// The range is half-open: a bucket is returned when from_time <= at < to_time, so
/// back-to-back windows neither repeat nor skip a bucket. Unset to_time means now;
/// unset from_time means RoomHistory.kept_from. Both are clamped to [kept_from, now].
///
/// A room in a home is readable by its residents only, and only from the start of their
/// current residency (see access.v1.MembershipRelation). A caller who reaches it as service is
/// refused as NOT_ENTITLED; one who reaches the apartment itself has
/// GetApartmentClimateSummary instead.
class GetRoomHistory extends $pb.GeneratedMessage {
  factory GetRoomHistory({
    $0.SpaceId? roomId,
    $4.Timestamp? fromTime,
    $4.Timestamp? toTime,
  }) {
    final result = create();
    if (roomId != null) result.roomId = roomId;
    if (fromTime != null) result.fromTime = fromTime;
    if (toTime != null) result.toTime = toTime;
    return result;
  }

  GetRoomHistory._();

  factory GetRoomHistory.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetRoomHistory.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetRoomHistory',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'roomId',
        subBuilder: $0.SpaceId.create)
    ..aOM<$4.Timestamp>(2, _omitFieldNames ? '' : 'fromTime',
        subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(3, _omitFieldNames ? '' : 'toTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRoomHistory clone() => GetRoomHistory()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetRoomHistory copyWith(void Function(GetRoomHistory) updates) =>
      super.copyWith((message) => updates(message as GetRoomHistory))
          as GetRoomHistory;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetRoomHistory create() => GetRoomHistory._();
  @$core.override
  GetRoomHistory createEmptyInstance() => create();
  static $pb.PbList<GetRoomHistory> createRepeated() =>
      $pb.PbList<GetRoomHistory>();
  @$core.pragma('dart2js:noInline')
  static GetRoomHistory getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetRoomHistory>(create);
  static GetRoomHistory? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get roomId => $_getN(0);
  @$pb.TagNumber(1)
  set roomId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureRoomId() => $_ensure(0);

  @$pb.TagNumber(2)
  $4.Timestamp get fromTime => $_getN(1);
  @$pb.TagNumber(2)
  set fromTime($4.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasFromTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearFromTime() => $_clearField(2);
  @$pb.TagNumber(2)
  $4.Timestamp ensureFromTime() => $_ensure(1);

  @$pb.TagNumber(3)
  $4.Timestamp get toTime => $_getN(2);
  @$pb.TagNumber(3)
  set toTime($4.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasToTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearToTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $4.Timestamp ensureToTime() => $_ensure(2);
}

/// What the parties who do not live in a private space learn of it — the answer to a
/// resident asking who can see what in their home, in reply to GetPrivacyDisclosure.
///
/// It states the policy, the kinds of party it applies to now and the people counted under
/// each (ServiceParty.names): a resident learns which technicians can see the battery of
/// their radiator valve. The names say who has reach, never where anyone lives.
class PrivacyDisclosure extends $pb.GeneratedMessage {
  factory PrivacyDisclosure({
    $0.SpaceId? spaceId,
    $10.ClimateSummaryPeriod? climateSummaryPeriod,
    $core.Iterable<ServiceParty>? serviceParties,
    $core.String? ownerOrganisationName,
    $core.bool? namesWithheld,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (climateSummaryPeriod != null)
      result.climateSummaryPeriod = climateSummaryPeriod;
    if (serviceParties != null) result.serviceParties.addAll(serviceParties);
    if (ownerOrganisationName != null)
      result.ownerOrganisationName = ownerOrganisationName;
    if (namesWithheld != null) result.namesWithheld = namesWithheld;
    return result;
  }

  PrivacyDisclosure._();

  factory PrivacyDisclosure.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PrivacyDisclosure.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PrivacyDisclosure',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..e<$10.ClimateSummaryPeriod>(
        4, _omitFieldNames ? '' : 'climateSummaryPeriod', $pb.PbFieldType.OE,
        defaultOrMaker:
            $10.ClimateSummaryPeriod.CLIMATE_SUMMARY_PERIOD_UNSPECIFIED,
        valueOf: $10.ClimateSummaryPeriod.valueOf,
        enumValues: $10.ClimateSummaryPeriod.values)
    ..pc<ServiceParty>(
        5, _omitFieldNames ? '' : 'serviceParties', $pb.PbFieldType.PM,
        subBuilder: ServiceParty.create)
    ..aOS(6, _omitFieldNames ? '' : 'ownerOrganisationName')
    ..aOB(7, _omitFieldNames ? '' : 'namesWithheld')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrivacyDisclosure clone() => PrivacyDisclosure()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PrivacyDisclosure copyWith(void Function(PrivacyDisclosure) updates) =>
      super.copyWith((message) => updates(message as PrivacyDisclosure))
          as PrivacyDisclosure;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PrivacyDisclosure create() => PrivacyDisclosure._();
  @$core.override
  PrivacyDisclosure createEmptyInstance() => create();
  static $pb.PbList<PrivacyDisclosure> createRepeated() =>
      $pb.PbList<PrivacyDisclosure>();
  @$core.pragma('dart2js:noInline')
  static PrivacyDisclosure getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PrivacyDisclosure>(create);
  static PrivacyDisclosure? _defaultInstance;

  /// An apartment, or a room in one.
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

  /// How finely the space's climate is summarised for service, as means over periods of
  /// this length (climate.v1.ApartmentClimateSummary). UNSPECIFIED: no summary is given.
  /// The gateway's own setting, WEEK unless it is configured otherwise; no operation in this
  /// contract changes it. A change applies to periods that open after it: service is given
  /// no period that opened before the last change.
  @$pb.TagNumber(4)
  $10.ClimateSummaryPeriod get climateSummaryPeriod => $_getN(1);
  @$pb.TagNumber(4)
  set climateSummaryPeriod($10.ClimateSummaryPeriod value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasClimateSummaryPeriod() => $_has(1);
  @$pb.TagNumber(4)
  void clearClimateSummaryPeriod() => $_clearField(4);

  /// The kinds of party who see this space, or any part of it, as service now — or would
  /// through another membership, were they not its residents — each role once, with what
  /// that role brings here. Each party is listed under every role it holds other than
  /// ROLE_RESIDENT, and sees what its entries say together; one with no other role, or whose
  /// role the gateway has not yet learnt, counts as ROLE_UNSPECIFIED. ROLE_GATEWAY_ADMIN is
  /// always listed, and ROLE_PROPERTY_OWNER whenever anyone holds it, wherever they are
  /// filed: both may file themselves on the home. So the list reads the same whether or not
  /// anyone lives in the home, and never understates who has reach or what they see. Devices a resident
  /// owns are not shown to service at all.
  @$pb.TagNumber(5)
  $pb.PbList<ServiceParty> get serviceParties => $_getList(2);

  /// The name of the organisation that owns the gateway, and so the property, as the vouched
  /// set gives it (signaling.v1.VouchedAdministrators.organisation_name); empty while the
  /// gateway holds no vouched set. Never its organisation number. SetOwnerOrganisation, which
  /// once set it, is superseded.
  @$pb.TagNumber(6)
  $core.String get ownerOrganisationName => $_getSZ(3);
  @$pb.TagNumber(6)
  set ownerOrganisationName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(6)
  $core.bool hasOwnerOrganisationName() => $_has(3);
  @$pb.TagNumber(6)
  void clearOwnerOrganisationName() => $_clearField(6);

  /// Set when ServiceParty.names are not given to this caller, so that empty lists are not
  /// read as nobody being named. Names are given to the home's own residents and to a
  /// caller holding ROLE_GATEWAY_ADMIN or ROLE_PROPERTY_OWNER, and withheld from anyone
  /// else: a technician who reaches the home learns the kinds of party, not who they are.
  @$pb.TagNumber(7)
  $core.bool get namesWithheld => $_getBF(4);
  @$pb.TagNumber(7)
  set namesWithheld($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(7)
  $core.bool hasNamesWithheld() => $_has(4);
  @$pb.TagNumber(7)
  void clearNamesWithheld() => $_clearField(7);
}

/// One kind of party with service reach of a home, and what it sees there. Every service
/// party sees the same kinds of thing of the part of the home it reaches — a whole
/// ServiceStatus, nothing withheld from it — so signals differ between parties only in
/// RESIDENTS. How much of the home that part is, a room or all of it, the disclosure does
/// not say.
class ServiceParty extends $pb.GeneratedMessage {
  factory ServiceParty({
    $9.Role? role,
    $core.Iterable<$11.ServiceSignal>? signals,
    $core.Iterable<$core.String>? names,
  }) {
    final result = create();
    if (role != null) result.role = role;
    if (signals != null) result.signals.addAll(signals);
    if (names != null) result.names.addAll(names);
    return result;
  }

  ServiceParty._();

  factory ServiceParty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ServiceParty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServiceParty',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..e<$9.Role>(1, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE,
        defaultOrMaker: $9.Role.ROLE_UNSPECIFIED,
        valueOf: $9.Role.valueOf,
        enumValues: $9.Role.values)
    ..pc<$11.ServiceSignal>(
        2, _omitFieldNames ? '' : 'signals', $pb.PbFieldType.KE,
        valueOf: $11.ServiceSignal.valueOf,
        enumValues: $11.ServiceSignal.values,
        defaultEnumValue: $11.ServiceSignal.SERVICE_SIGNAL_UNSPECIFIED)
    ..pPS(3, _omitFieldNames ? '' : 'names')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceParty clone() => ServiceParty()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ServiceParty copyWith(void Function(ServiceParty) updates) =>
      super.copyWith((message) => updates(message as ServiceParty))
          as ServiceParty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceParty create() => ServiceParty._();
  @$core.override
  ServiceParty createEmptyInstance() => create();
  static $pb.PbList<ServiceParty> createRepeated() =>
      $pb.PbList<ServiceParty>();
  @$core.pragma('dart2js:noInline')
  static ServiceParty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServiceParty>(create);
  static ServiceParty? _defaultInstance;

  @$pb.TagNumber(1)
  $9.Role get role => $_getN(0);
  @$pb.TagNumber(1)
  set role($9.Role value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRole() => $_has(0);
  @$pb.TagNumber(1)
  void clearRole() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$11.ServiceSignal> get signals => $_getList(1);

  /// Each person counted under this role, by the name they gave their account
  /// (AppTokenClaims.name), once each: everyone holding ROLE_GATEWAY_ADMIN or
  /// ROLE_PROPERTY_OWNER, every vouched administrator included whether or not the gateway has
  /// seen their token, and everyone else counted here by a SERVICE membership. A person counted
  /// under several roles is named under each. An empty string stands for a person whose name
  /// the gateway has not learnt, so the list is as long as the number of people. Self-chosen,
  /// so the app shows it as the name they gave rather than as a verified identity. Empty for
  /// every party when PrivacyDisclosure.names_withheld is set.
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get names => $_getList(2);
}

/// Asks what the parties who do not live in a space learn of it, answered with a
/// PrivacyDisclosure. For an apartment or a room in one, and refused on any other
/// space. Needs READ on the space.
class GetPrivacyDisclosure extends $pb.GeneratedMessage {
  factory GetPrivacyDisclosure({
    $0.SpaceId? spaceId,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    return result;
  }

  GetPrivacyDisclosure._();

  factory GetPrivacyDisclosure.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetPrivacyDisclosure.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPrivacyDisclosure',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPrivacyDisclosure clone() =>
      GetPrivacyDisclosure()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPrivacyDisclosure copyWith(void Function(GetPrivacyDisclosure) updates) =>
      super.copyWith((message) => updates(message as GetPrivacyDisclosure))
          as GetPrivacyDisclosure;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPrivacyDisclosure create() => GetPrivacyDisclosure._();
  @$core.override
  GetPrivacyDisclosure createEmptyInstance() => create();
  static $pb.PbList<GetPrivacyDisclosure> createRepeated() =>
      $pb.PbList<GetPrivacyDisclosure>();
  @$core.pragma('dart2js:noInline')
  static GetPrivacyDisclosure getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPrivacyDisclosure>(create);
  static GetPrivacyDisclosure? _defaultInstance;

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

/// Reads an apartment's climate as means over whole periods, answered with a
/// climate.v1.ApartmentClimateSummary. Needs READ on the apartment itself. Refused on a
/// space that is not an apartment, and while the building's time zone (Space.time_zone) is
/// unknown, since periods are cut at its midnights.
///
/// The range is half-open over the periods' starts: a period is returned when from_time <=
/// starts_at < to_time. Unset from_time means kept_from; unset to_time means now. Both are
/// clamped to [kept_from, the start of the period running now — or now, if none is] (see
/// ApartmentClimateSummary).
class GetApartmentClimateSummary extends $pb.GeneratedMessage {
  factory GetApartmentClimateSummary({
    $0.SpaceId? apartmentId,
    $10.ClimateSummaryPeriod? period,
    $4.Timestamp? fromTime,
    $4.Timestamp? toTime,
  }) {
    final result = create();
    if (apartmentId != null) result.apartmentId = apartmentId;
    if (period != null) result.period = period;
    if (fromTime != null) result.fromTime = fromTime;
    if (toTime != null) result.toTime = toTime;
    return result;
  }

  GetApartmentClimateSummary._();

  factory GetApartmentClimateSummary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetApartmentClimateSummary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetApartmentClimateSummary',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'apartmentId',
        subBuilder: $0.SpaceId.create)
    ..e<$10.ClimateSummaryPeriod>(
        2, _omitFieldNames ? '' : 'period', $pb.PbFieldType.OE,
        defaultOrMaker:
            $10.ClimateSummaryPeriod.CLIMATE_SUMMARY_PERIOD_UNSPECIFIED,
        valueOf: $10.ClimateSummaryPeriod.valueOf,
        enumValues: $10.ClimateSummaryPeriod.values)
    ..aOM<$4.Timestamp>(3, _omitFieldNames ? '' : 'fromTime',
        subBuilder: $4.Timestamp.create)
    ..aOM<$4.Timestamp>(4, _omitFieldNames ? '' : 'toTime',
        subBuilder: $4.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetApartmentClimateSummary clone() =>
      GetApartmentClimateSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetApartmentClimateSummary copyWith(
          void Function(GetApartmentClimateSummary) updates) =>
      super.copyWith(
              (message) => updates(message as GetApartmentClimateSummary))
          as GetApartmentClimateSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetApartmentClimateSummary create() => GetApartmentClimateSummary._();
  @$core.override
  GetApartmentClimateSummary createEmptyInstance() => create();
  static $pb.PbList<GetApartmentClimateSummary> createRepeated() =>
      $pb.PbList<GetApartmentClimateSummary>();
  @$core.pragma('dart2js:noInline')
  static GetApartmentClimateSummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetApartmentClimateSummary>(create);
  static GetApartmentClimateSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get apartmentId => $_getN(0);
  @$pb.TagNumber(1)
  set apartmentId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasApartmentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearApartmentId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureApartmentId() => $_ensure(0);

  /// Unset asks for the period the apartment's privacy disclosure names
  /// (PrivacyDisclosure.climate_summary_period), or weeks when it names none. Anyone but the
  /// apartment's residents may ask for that period only, and is refused as NOT_ENTITLED for
  /// any other or when it names none. Its residents may ask for any, and are given only
  /// periods that began in their current residency.
  @$pb.TagNumber(2)
  $10.ClimateSummaryPeriod get period => $_getN(1);
  @$pb.TagNumber(2)
  set period($10.ClimateSummaryPeriod value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasPeriod() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeriod() => $_clearField(2);

  @$pb.TagNumber(3)
  $4.Timestamp get fromTime => $_getN(2);
  @$pb.TagNumber(3)
  set fromTime($4.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFromTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $4.Timestamp ensureFromTime() => $_ensure(2);

  @$pb.TagNumber(4)
  $4.Timestamp get toTime => $_getN(3);
  @$pb.TagNumber(4)
  set toTime($4.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasToTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearToTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $4.Timestamp ensureToTime() => $_ensure(3);
}

/// Asks the gateway to have a connector re-initialise its backend connection: reconnect to
/// its radio central or network server. Meant to be offered while a
/// reporting.v1.PROBLEM_KIND_CONNECTOR_ERROR is open for the connector — its
/// ConnectorDescriptor.backend_health is FAILING — and only for a connector listed in
/// ConnectorsAnnounced. A request for a connector that is not listed is refused, as
/// CONNECTOR_OFFLINE or UNKNOWN_CONNECTOR below. For a listed one it is accepted whatever its
/// health, since re-initialising a healthy backend is harmless.
///
/// Authorized against the caller's role alone, as StartPairing is: a connector is not a
/// target the caller reaches the way a space is. ROLE_TECHNICIAN and ROLE_GATEWAY_ADMIN may
/// ask; anyone else is refused as NOT_ENTITLED, before the connector is looked up, so the
/// refusal says nothing of which connectors exist.
///
/// The gateway forwards it as connector.v1.ReinitializeBackend and answers once the
/// connector has: with ManagementAck when the attempt was made. That says the attempt
/// finished, not that it worked. Whether it worked is the connector's backend health, and
/// when that changed the gateway pushes it in ConnectorsAnnounced before the ack. One
/// request at a time per connector.
///
/// So a failure found only by attempting — credentials the backend rejects, a backend that
/// does not answer — is not a refusal. It arrives as a ManagementAck, with the backend
/// health it left (FAILING, e.g. with AUTH_FAILED, UNREACHABLE or BACKEND_ERROR) already
/// pushed: after the ack, the app reads ConnectorDescriptor.backend_health for the outcome,
/// and a FAILING health there means the reconnect did not help. The app handles any reason
/// there, one its schema does not know included. No push precedes the ack when the attempt
/// left health as it was; the descriptor the app holds is then still the outcome.
///
/// A refusal is a GatewayError whose metadata "reason" says which, as CommandError.metadata
/// describes, and whose "detail" is a sentence the app may show. The app branches on
/// "reason" for this operation; the code is only the fallback for a reason it does not know,
/// since GatewayErrorCode is too coarse to say what to do here. The role refusal above is
/// the code NOT_ENTITLED alone, with no "reason"; the reasons are for a caller who may ask:
///   "UNKNOWN_CONNECTOR"    UNAVAILABLE. The gateway does not track a connector by that id:
///                          it never had one, or has stopped tracking it. Not a client bug:
///                          the list the app holds may be stale.
///   "CONNECTOR_OFFLINE"    UNAVAILABLE. A connector the gateway tracks, whose stream to the
///                          gateway is down now, before or while the request was
///                          outstanding; that is CONNECTOR_OFFLINE, and a reconnect of its
///                          backend cannot help it.
///   "NOT_SUPPORTED"        FAILED_PRECONDITION. The connector does not declare
///                          ConnectorDescriptor.supports_backend_reinitialize, or declared it
///                          and answered that it has nothing to re-initialise. Not a client
///                          bug, and not worth retrying as is.
///   "ALREADY_IN_PROGRESS"  UNAVAILABLE. A reconnect of this connector is outstanding, from
///                          this caller or another. It ends within 60 seconds of being
///                          asked, answered or timed out; retry after that. Only the caller
///                          who asked is answered, but a change of health it causes reaches
///                          every session in ConnectorsAnnounced.
///   "TIMED_OUT"            UNAVAILABLE. The connector did not answer within the gateway's
///                          deadline. The attempt may still finish, and its outcome still
///                          arrives as backend health.
///   "REINITIALIZE_FAILED"  The connector could not attempt it at all
///                          (connector.v1.REINITIALIZE_OUTCOME_FAILED, or an outcome the
///                          gateway's schema does not know, read as FAILED). The code
///                          depends on the reason: FAILED_PRECONDITION when it is
///                          MISCONFIGURED, which needs a person to correct the connector's
///                          configuration before asking again can help; UNAVAILABLE for
///                          any other — INTERNAL, UNSPECIFIED, a value the gateway does not
///                          know — since a retry may work. Rejected credentials are never
///                          this: they are found by attempting, and come back as an ack
///                          (see above). metadata "backend_failure" is always set: the
///                          common.v1.BackendFailureReason by its enum name, e.g.
///                          "BACKEND_FAILURE_REASON_MISCONFIGURED". A reason that is
///                          UNSPECIFIED, or a value the gateway's schema does not know, is
///                          sent as "BACKEND_FAILURE_REASON_BACKEND_ERROR", as
///                          BackendFailureReason has it; an app reading a name its own
///                          schema does not know treats it as BACKEND_ERROR too.
/// The connector's own detail is never in a refusal; GatewayError.message is the gateway's.
class ReconnectConnector extends $pb.GeneratedMessage {
  factory ReconnectConnector({
    $0.ConnectorId? connectorId,
  }) {
    final result = create();
    if (connectorId != null) result.connectorId = connectorId;
    return result;
  }

  ReconnectConnector._();

  factory ReconnectConnector.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ReconnectConnector.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReconnectConnector',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.ConnectorId>(1, _omitFieldNames ? '' : 'connectorId',
        subBuilder: $0.ConnectorId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReconnectConnector clone() => ReconnectConnector()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReconnectConnector copyWith(void Function(ReconnectConnector) updates) =>
      super.copyWith((message) => updates(message as ReconnectConnector))
          as ReconnectConnector;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReconnectConnector create() => ReconnectConnector._();
  @$core.override
  ReconnectConnector createEmptyInstance() => create();
  static $pb.PbList<ReconnectConnector> createRepeated() =>
      $pb.PbList<ReconnectConnector>();
  @$core.pragma('dart2js:noInline')
  static ReconnectConnector getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReconnectConnector>(create);
  static ReconnectConnector? _defaultInstance;

  /// As ConnectorDescriptor.connector_id, and the id a CONNECTOR_ERROR problem's subject
  /// names (reporting.v1.ProblemSubject.connector_id).
  @$pb.TagNumber(1)
  $0.ConnectorId get connectorId => $_getN(0);
  @$pb.TagNumber(1)
  set connectorId($0.ConnectorId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConnectorId() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectorId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.ConnectorId ensureConnectorId() => $_ensure(0);
}

/// Lists the heating records (heating.v1) a caller may see under a space: unset
/// root_space_id lists every one the caller can reach. Answered with a HeatingLayout.
class ListHeating extends $pb.GeneratedMessage {
  factory ListHeating({
    $0.SpaceId? rootSpaceId,
  }) {
    final result = create();
    if (rootSpaceId != null) result.rootSpaceId = rootSpaceId;
    return result;
  }

  ListHeating._();

  factory ListHeating.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ListHeating.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListHeating',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'rootSpaceId',
        subBuilder: $0.SpaceId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListHeating clone() => ListHeating()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListHeating copyWith(void Function(ListHeating) updates) =>
      super.copyWith((message) => updates(message as ListHeating))
          as ListHeating;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListHeating create() => ListHeating._();
  @$core.override
  ListHeating createEmptyInstance() => create();
  static $pb.PbList<ListHeating> createRepeated() => $pb.PbList<ListHeating>();
  @$core.pragma('dart2js:noInline')
  static ListHeating getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListHeating>(create);
  static ListHeating? _defaultInstance;

  @$pb.TagNumber(1)
  $0.SpaceId get rootSpaceId => $_getN(0);
  @$pb.TagNumber(1)
  set rootSpaceId($0.SpaceId value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRootSpaceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootSpaceId() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.SpaceId ensureRootSpaceId() => $_ensure(0);
}

/// Creates a plant (empty plant_id) or replaces one. Answered with the HeatingRecord as
/// stored. The puts of heating records refuse, with metadata "reason":
///
///   INVALID_REQUEST
///   "ZONE_CONTROL_ROOM"     a floor zone whose control room is unset or not one of its rooms.
///   "ZONE_AREA_SHARES"      a floor zone with a room listed twice, a share of 0, or shares
///                           that do not sum to 1000.
///   "ROOM_OUTSIDE_PLANT"    a zone room outside its plant's space.
///   "ZONE_NOT_ON_FLOOR"     a floor zone on a circuit that is not a floor circuit.
///   "SG_READY_HALF_BOUND"   one SG Ready input bound without the other.
///   "CONTROL_EMPTY"         a plant control that binds no input.
///   "NO_ENDPOINT"           an attribute on the Matter branch with no endpoint_id.
///   "WINDOWS_IN_PUT"        a comfort load put with windows (see SetComfortWindows).
///
///   FAILED_PRECONDITION
///   "STALE_REVISION"        the record changed since the revision the request names.
///   "CHILDREN_INVALID"      a plant or circuit put that would leave a record under it
///                           invalid: a circuit with zones no longer a floor circuit, or a
///                           space or plant change leaving a zone's room outside its plant.
///   "OUTPUT_BOUND_TWICE"    an output already bound in another role or record.
///   "OUTPUT_NOT_LEASED"     an output whose write its producer does not state as leased.
///   "REST_STATE"            an output whose lapse value, read through closed_value, does not
///                           leave the contact where its role rests.
///
/// A parent, device or room the caller cannot reach is refused as NOT_ENTITLED, as it is
/// everywhere.
class PutHeatingPlant extends $pb.GeneratedMessage {
  factory PutHeatingPlant({
    $5.HeatingPlant? plant,
  }) {
    final result = create();
    if (plant != null) result.plant = plant;
    return result;
  }

  PutHeatingPlant._();

  factory PutHeatingPlant.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PutHeatingPlant.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PutHeatingPlant',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$5.HeatingPlant>(1, _omitFieldNames ? '' : 'plant',
        subBuilder: $5.HeatingPlant.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PutHeatingPlant clone() => PutHeatingPlant()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PutHeatingPlant copyWith(void Function(PutHeatingPlant) updates) =>
      super.copyWith((message) => updates(message as PutHeatingPlant))
          as PutHeatingPlant;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutHeatingPlant create() => PutHeatingPlant._();
  @$core.override
  PutHeatingPlant createEmptyInstance() => create();
  static $pb.PbList<PutHeatingPlant> createRepeated() =>
      $pb.PbList<PutHeatingPlant>();
  @$core.pragma('dart2js:noInline')
  static PutHeatingPlant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PutHeatingPlant>(create);
  static PutHeatingPlant? _defaultInstance;

  @$pb.TagNumber(1)
  $5.HeatingPlant get plant => $_getN(0);
  @$pb.TagNumber(1)
  set plant($5.HeatingPlant value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPlant() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlant() => $_clearField(1);
  @$pb.TagNumber(1)
  $5.HeatingPlant ensurePlant() => $_ensure(0);
}

/// Creates or replaces a circuit of a plant; as PutHeatingPlant.
class PutHeatingCircuit extends $pb.GeneratedMessage {
  factory PutHeatingCircuit({
    $5.HeatingCircuit? circuit,
  }) {
    final result = create();
    if (circuit != null) result.circuit = circuit;
    return result;
  }

  PutHeatingCircuit._();

  factory PutHeatingCircuit.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PutHeatingCircuit.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PutHeatingCircuit',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$5.HeatingCircuit>(1, _omitFieldNames ? '' : 'circuit',
        subBuilder: $5.HeatingCircuit.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PutHeatingCircuit clone() => PutHeatingCircuit()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PutHeatingCircuit copyWith(void Function(PutHeatingCircuit) updates) =>
      super.copyWith((message) => updates(message as PutHeatingCircuit))
          as PutHeatingCircuit;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutHeatingCircuit create() => PutHeatingCircuit._();
  @$core.override
  PutHeatingCircuit createEmptyInstance() => create();
  static $pb.PbList<PutHeatingCircuit> createRepeated() =>
      $pb.PbList<PutHeatingCircuit>();
  @$core.pragma('dart2js:noInline')
  static PutHeatingCircuit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PutHeatingCircuit>(create);
  static PutHeatingCircuit? _defaultInstance;

  @$pb.TagNumber(1)
  $5.HeatingCircuit get circuit => $_getN(0);
  @$pb.TagNumber(1)
  set circuit($5.HeatingCircuit value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCircuit() => $_has(0);
  @$pb.TagNumber(1)
  void clearCircuit() => $_clearField(1);
  @$pb.TagNumber(1)
  $5.HeatingCircuit ensureCircuit() => $_ensure(0);
}

/// Creates or replaces a floor zone of a floor circuit; as PutHeatingPlant.
class PutFloorZone extends $pb.GeneratedMessage {
  factory PutFloorZone({
    $5.FloorZone? zone,
  }) {
    final result = create();
    if (zone != null) result.zone = zone;
    return result;
  }

  PutFloorZone._();

  factory PutFloorZone.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PutFloorZone.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PutFloorZone',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$5.FloorZone>(1, _omitFieldNames ? '' : 'zone',
        subBuilder: $5.FloorZone.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PutFloorZone clone() => PutFloorZone()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PutFloorZone copyWith(void Function(PutFloorZone) updates) =>
      super.copyWith((message) => updates(message as PutFloorZone))
          as PutFloorZone;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutFloorZone create() => PutFloorZone._();
  @$core.override
  PutFloorZone createEmptyInstance() => create();
  static $pb.PbList<PutFloorZone> createRepeated() =>
      $pb.PbList<PutFloorZone>();
  @$core.pragma('dart2js:noInline')
  static PutFloorZone getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PutFloorZone>(create);
  static PutFloorZone? _defaultInstance;

  @$pb.TagNumber(1)
  $5.FloorZone get zone => $_getN(0);
  @$pb.TagNumber(1)
  set zone($5.FloorZone value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasZone() => $_has(0);
  @$pb.TagNumber(1)
  void clearZone() => $_clearField(1);
  @$pb.TagNumber(1)
  $5.FloorZone ensureZone() => $_ensure(0);
}

/// Creates or replaces a comfort load's room, name and output, keeping its windows; as
/// PutHeatingPlant.
class PutComfortLoad extends $pb.GeneratedMessage {
  factory PutComfortLoad({
    $5.ComfortLoad? comfortLoad,
  }) {
    final result = create();
    if (comfortLoad != null) result.comfortLoad = comfortLoad;
    return result;
  }

  PutComfortLoad._();

  factory PutComfortLoad.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PutComfortLoad.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PutComfortLoad',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOM<$5.ComfortLoad>(1, _omitFieldNames ? '' : 'comfortLoad',
        subBuilder: $5.ComfortLoad.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PutComfortLoad clone() => PutComfortLoad()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PutComfortLoad copyWith(void Function(PutComfortLoad) updates) =>
      super.copyWith((message) => updates(message as PutComfortLoad))
          as PutComfortLoad;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PutComfortLoad create() => PutComfortLoad._();
  @$core.override
  PutComfortLoad createEmptyInstance() => create();
  static $pb.PbList<PutComfortLoad> createRepeated() =>
      $pb.PbList<PutComfortLoad>();
  @$core.pragma('dart2js:noInline')
  static PutComfortLoad getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PutComfortLoad>(create);
  static PutComfortLoad? _defaultInstance;

  @$pb.TagNumber(1)
  $5.ComfortLoad get comfortLoad => $_getN(0);
  @$pb.TagNumber(1)
  set comfortLoad($5.ComfortLoad value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasComfortLoad() => $_has(0);
  @$pb.TagNumber(1)
  void clearComfortLoad() => $_clearField(1);
  @$pb.TagNumber(1)
  $5.ComfortLoad ensureComfortLoad() => $_ensure(0);
}

/// Removes a heating record by its id, naming the revision it removes. Refused as
/// FAILED_PRECONDITION with metadata "reason" "STALE_REVISION" when it changed since, and
/// "HAS_CHILDREN" while records lie under it — a plant's circuits, a circuit's zones — so
/// nothing is removed that the caller did not name. Its outputs are returned to rest at once
/// (see heating.v1). Acked.
class RemoveHeatingRecord extends $pb.GeneratedMessage {
  factory RemoveHeatingRecord({
    $core.String? id,
    $fixnum.Int64? revision,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (revision != null) result.revision = revision;
    return result;
  }

  RemoveHeatingRecord._();

  factory RemoveHeatingRecord.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RemoveHeatingRecord.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RemoveHeatingRecord',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'revision', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveHeatingRecord clone() => RemoveHeatingRecord()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RemoveHeatingRecord copyWith(void Function(RemoveHeatingRecord) updates) =>
      super.copyWith((message) => updates(message as RemoveHeatingRecord))
          as RemoveHeatingRecord;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RemoveHeatingRecord create() => RemoveHeatingRecord._();
  @$core.override
  RemoveHeatingRecord createEmptyInstance() => create();
  static $pb.PbList<RemoveHeatingRecord> createRepeated() =>
      $pb.PbList<RemoveHeatingRecord>();
  @$core.pragma('dart2js:noInline')
  static RemoveHeatingRecord getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RemoveHeatingRecord>(create);
  static RemoveHeatingRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get revision => $_getI64(1);
  @$pb.TagNumber(2)
  set revision($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRevision() => $_has(1);
  @$pb.TagNumber(2)
  void clearRevision() => $_clearField(2);
}

/// Replaces a comfort load's windows: a resident's setting, apart from the binding and its
/// revision; the last to set them wins. Refused as INVALID_REQUEST with metadata "reason"
/// "WINDOW" for a window that ComfortWindow does not allow. Acked.
class SetComfortWindows extends $pb.GeneratedMessage {
  factory SetComfortWindows({
    $core.String? comfortLoadId,
    $core.Iterable<$5.ComfortWindow>? windows,
  }) {
    final result = create();
    if (comfortLoadId != null) result.comfortLoadId = comfortLoadId;
    if (windows != null) result.windows.addAll(windows);
    return result;
  }

  SetComfortWindows._();

  factory SetComfortWindows.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SetComfortWindows.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SetComfortWindows',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'comfortLoadId')
    ..pc<$5.ComfortWindow>(
        2, _omitFieldNames ? '' : 'windows', $pb.PbFieldType.PM,
        subBuilder: $5.ComfortWindow.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetComfortWindows clone() => SetComfortWindows()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SetComfortWindows copyWith(void Function(SetComfortWindows) updates) =>
      super.copyWith((message) => updates(message as SetComfortWindows))
          as SetComfortWindows;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SetComfortWindows create() => SetComfortWindows._();
  @$core.override
  SetComfortWindows createEmptyInstance() => create();
  static $pb.PbList<SetComfortWindows> createRepeated() =>
      $pb.PbList<SetComfortWindows>();
  @$core.pragma('dart2js:noInline')
  static SetComfortWindows getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SetComfortWindows>(create);
  static SetComfortWindows? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get comfortLoadId => $_getSZ(0);
  @$pb.TagNumber(1)
  set comfortLoadId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasComfortLoadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComfortLoadId() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<$5.ComfortWindow> get windows => $_getList(1);
}

enum ManagementRequest_Request {
  createSpace,
  updateSpace,
  deleteSpace,
  assignUserToSpace,
  removeUserFromSpace,
  placeDeviceInSpace,
  removeDeviceFromSpace,
  claimDevice,
  releaseDevice,
  listSpaces,
  createDeviceLink,
  removeDeviceLink,
  listDeviceLinks,
  updateDeviceLink,
  provisionDevice,
  setRoomTarget,
  configureRoomClimate,
  setClimateMode,
  listRoomClimates,
  getRoomHistory,
  getPrivacyDisclosure,
  getApartmentClimateSummary,
  reconnectConnector,
  createInvite,
  resendInvite,
  revokeInvite,
  markInviteEmailSent,
  listSpaceInvites,
  approveJoinRequest,
  denyJoinRequest,
  listGatewayMembers,
  setMemberRole,
  removeFromGateway,
  setAccessUntil,
  setOwnerOrganisation,
  requestPromotion,
  answerPromotion,
  listPromotionRequests,
  listHeating,
  putHeatingPlant,
  putHeatingCircuit,
  putFloorZone,
  putComfortLoad,
  removeHeatingRecord,
  setComfortWindows,
  notSet
}

class ManagementRequest extends $pb.GeneratedMessage {
  factory ManagementRequest({
    CreateSpace? createSpace,
    UpdateSpace? updateSpace,
    DeleteSpace? deleteSpace,
    AssignUserToSpace? assignUserToSpace,
    RemoveUserFromSpace? removeUserFromSpace,
    PlaceDeviceInSpace? placeDeviceInSpace,
    RemoveDeviceFromSpace? removeDeviceFromSpace,
    ClaimDevice? claimDevice,
    ReleaseDevice? releaseDevice,
    ListSpaces? listSpaces,
    CreateDeviceLink? createDeviceLink,
    RemoveDeviceLink? removeDeviceLink,
    ListDeviceLinks? listDeviceLinks,
    UpdateDeviceLink? updateDeviceLink,
    ProvisionDevice? provisionDevice,
    SetRoomTarget? setRoomTarget,
    ConfigureRoomClimate? configureRoomClimate,
    SetClimateMode? setClimateMode,
    ListRoomClimates? listRoomClimates,
    GetRoomHistory? getRoomHistory,
    GetPrivacyDisclosure? getPrivacyDisclosure,
    GetApartmentClimateSummary? getApartmentClimateSummary,
    ReconnectConnector? reconnectConnector,
    $6.CreateInvite? createInvite,
    $6.ResendInvite? resendInvite,
    $6.RevokeInvite? revokeInvite,
    $6.MarkInviteEmailSent? markInviteEmailSent,
    $6.ListSpaceInvites? listSpaceInvites,
    $6.ApproveJoinRequest? approveJoinRequest,
    $6.DenyJoinRequest? denyJoinRequest,
    $7.ListGatewayMembers? listGatewayMembers,
    $7.SetMemberRole? setMemberRole,
    $7.RemoveFromGateway? removeFromGateway,
    $7.SetAccessUntil? setAccessUntil,
    @$core.Deprecated('This field is deprecated.')
    $7.SetOwnerOrganisation? setOwnerOrganisation,
    $7.RequestPromotion? requestPromotion,
    $7.AnswerPromotion? answerPromotion,
    $7.ListPromotionRequests? listPromotionRequests,
    ListHeating? listHeating,
    PutHeatingPlant? putHeatingPlant,
    PutHeatingCircuit? putHeatingCircuit,
    PutFloorZone? putFloorZone,
    PutComfortLoad? putComfortLoad,
    RemoveHeatingRecord? removeHeatingRecord,
    SetComfortWindows? setComfortWindows,
  }) {
    final result = create();
    if (createSpace != null) result.createSpace = createSpace;
    if (updateSpace != null) result.updateSpace = updateSpace;
    if (deleteSpace != null) result.deleteSpace = deleteSpace;
    if (assignUserToSpace != null) result.assignUserToSpace = assignUserToSpace;
    if (removeUserFromSpace != null)
      result.removeUserFromSpace = removeUserFromSpace;
    if (placeDeviceInSpace != null)
      result.placeDeviceInSpace = placeDeviceInSpace;
    if (removeDeviceFromSpace != null)
      result.removeDeviceFromSpace = removeDeviceFromSpace;
    if (claimDevice != null) result.claimDevice = claimDevice;
    if (releaseDevice != null) result.releaseDevice = releaseDevice;
    if (listSpaces != null) result.listSpaces = listSpaces;
    if (createDeviceLink != null) result.createDeviceLink = createDeviceLink;
    if (removeDeviceLink != null) result.removeDeviceLink = removeDeviceLink;
    if (listDeviceLinks != null) result.listDeviceLinks = listDeviceLinks;
    if (updateDeviceLink != null) result.updateDeviceLink = updateDeviceLink;
    if (provisionDevice != null) result.provisionDevice = provisionDevice;
    if (setRoomTarget != null) result.setRoomTarget = setRoomTarget;
    if (configureRoomClimate != null)
      result.configureRoomClimate = configureRoomClimate;
    if (setClimateMode != null) result.setClimateMode = setClimateMode;
    if (listRoomClimates != null) result.listRoomClimates = listRoomClimates;
    if (getRoomHistory != null) result.getRoomHistory = getRoomHistory;
    if (getPrivacyDisclosure != null)
      result.getPrivacyDisclosure = getPrivacyDisclosure;
    if (getApartmentClimateSummary != null)
      result.getApartmentClimateSummary = getApartmentClimateSummary;
    if (reconnectConnector != null)
      result.reconnectConnector = reconnectConnector;
    if (createInvite != null) result.createInvite = createInvite;
    if (resendInvite != null) result.resendInvite = resendInvite;
    if (revokeInvite != null) result.revokeInvite = revokeInvite;
    if (markInviteEmailSent != null)
      result.markInviteEmailSent = markInviteEmailSent;
    if (listSpaceInvites != null) result.listSpaceInvites = listSpaceInvites;
    if (approveJoinRequest != null)
      result.approveJoinRequest = approveJoinRequest;
    if (denyJoinRequest != null) result.denyJoinRequest = denyJoinRequest;
    if (listGatewayMembers != null)
      result.listGatewayMembers = listGatewayMembers;
    if (setMemberRole != null) result.setMemberRole = setMemberRole;
    if (removeFromGateway != null) result.removeFromGateway = removeFromGateway;
    if (setAccessUntil != null) result.setAccessUntil = setAccessUntil;
    if (setOwnerOrganisation != null)
      result.setOwnerOrganisation = setOwnerOrganisation;
    if (requestPromotion != null) result.requestPromotion = requestPromotion;
    if (answerPromotion != null) result.answerPromotion = answerPromotion;
    if (listPromotionRequests != null)
      result.listPromotionRequests = listPromotionRequests;
    if (listHeating != null) result.listHeating = listHeating;
    if (putHeatingPlant != null) result.putHeatingPlant = putHeatingPlant;
    if (putHeatingCircuit != null) result.putHeatingCircuit = putHeatingCircuit;
    if (putFloorZone != null) result.putFloorZone = putFloorZone;
    if (putComfortLoad != null) result.putComfortLoad = putComfortLoad;
    if (removeHeatingRecord != null)
      result.removeHeatingRecord = removeHeatingRecord;
    if (setComfortWindows != null) result.setComfortWindows = setComfortWindows;
    return result;
  }

  ManagementRequest._();

  factory ManagementRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ManagementRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ManagementRequest_Request>
      _ManagementRequest_RequestByTag = {
    1: ManagementRequest_Request.createSpace,
    2: ManagementRequest_Request.updateSpace,
    3: ManagementRequest_Request.deleteSpace,
    4: ManagementRequest_Request.assignUserToSpace,
    5: ManagementRequest_Request.removeUserFromSpace,
    6: ManagementRequest_Request.placeDeviceInSpace,
    7: ManagementRequest_Request.removeDeviceFromSpace,
    8: ManagementRequest_Request.claimDevice,
    9: ManagementRequest_Request.releaseDevice,
    10: ManagementRequest_Request.listSpaces,
    11: ManagementRequest_Request.createDeviceLink,
    12: ManagementRequest_Request.removeDeviceLink,
    13: ManagementRequest_Request.listDeviceLinks,
    14: ManagementRequest_Request.updateDeviceLink,
    15: ManagementRequest_Request.provisionDevice,
    16: ManagementRequest_Request.setRoomTarget,
    17: ManagementRequest_Request.configureRoomClimate,
    18: ManagementRequest_Request.setClimateMode,
    19: ManagementRequest_Request.listRoomClimates,
    20: ManagementRequest_Request.getRoomHistory,
    21: ManagementRequest_Request.getPrivacyDisclosure,
    22: ManagementRequest_Request.getApartmentClimateSummary,
    23: ManagementRequest_Request.reconnectConnector,
    24: ManagementRequest_Request.createInvite,
    25: ManagementRequest_Request.resendInvite,
    26: ManagementRequest_Request.revokeInvite,
    27: ManagementRequest_Request.markInviteEmailSent,
    28: ManagementRequest_Request.listSpaceInvites,
    29: ManagementRequest_Request.approveJoinRequest,
    30: ManagementRequest_Request.denyJoinRequest,
    31: ManagementRequest_Request.listGatewayMembers,
    32: ManagementRequest_Request.setMemberRole,
    33: ManagementRequest_Request.removeFromGateway,
    34: ManagementRequest_Request.setAccessUntil,
    35: ManagementRequest_Request.setOwnerOrganisation,
    36: ManagementRequest_Request.requestPromotion,
    37: ManagementRequest_Request.answerPromotion,
    38: ManagementRequest_Request.listPromotionRequests,
    39: ManagementRequest_Request.listHeating,
    40: ManagementRequest_Request.putHeatingPlant,
    41: ManagementRequest_Request.putHeatingCircuit,
    42: ManagementRequest_Request.putFloorZone,
    43: ManagementRequest_Request.putComfortLoad,
    44: ManagementRequest_Request.removeHeatingRecord,
    45: ManagementRequest_Request.setComfortWindows,
    0: ManagementRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ManagementRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      18,
      19,
      20,
      21,
      22,
      23,
      24,
      25,
      26,
      27,
      28,
      29,
      30,
      31,
      32,
      33,
      34,
      35,
      36,
      37,
      38,
      39,
      40,
      41,
      42,
      43,
      44,
      45
    ])
    ..aOM<CreateSpace>(1, _omitFieldNames ? '' : 'createSpace',
        subBuilder: CreateSpace.create)
    ..aOM<UpdateSpace>(2, _omitFieldNames ? '' : 'updateSpace',
        subBuilder: UpdateSpace.create)
    ..aOM<DeleteSpace>(3, _omitFieldNames ? '' : 'deleteSpace',
        subBuilder: DeleteSpace.create)
    ..aOM<AssignUserToSpace>(4, _omitFieldNames ? '' : 'assignUserToSpace',
        subBuilder: AssignUserToSpace.create)
    ..aOM<RemoveUserFromSpace>(5, _omitFieldNames ? '' : 'removeUserFromSpace',
        subBuilder: RemoveUserFromSpace.create)
    ..aOM<PlaceDeviceInSpace>(6, _omitFieldNames ? '' : 'placeDeviceInSpace',
        subBuilder: PlaceDeviceInSpace.create)
    ..aOM<RemoveDeviceFromSpace>(
        7, _omitFieldNames ? '' : 'removeDeviceFromSpace',
        subBuilder: RemoveDeviceFromSpace.create)
    ..aOM<ClaimDevice>(8, _omitFieldNames ? '' : 'claimDevice',
        subBuilder: ClaimDevice.create)
    ..aOM<ReleaseDevice>(9, _omitFieldNames ? '' : 'releaseDevice',
        subBuilder: ReleaseDevice.create)
    ..aOM<ListSpaces>(10, _omitFieldNames ? '' : 'listSpaces',
        subBuilder: ListSpaces.create)
    ..aOM<CreateDeviceLink>(11, _omitFieldNames ? '' : 'createDeviceLink',
        subBuilder: CreateDeviceLink.create)
    ..aOM<RemoveDeviceLink>(12, _omitFieldNames ? '' : 'removeDeviceLink',
        subBuilder: RemoveDeviceLink.create)
    ..aOM<ListDeviceLinks>(13, _omitFieldNames ? '' : 'listDeviceLinks',
        subBuilder: ListDeviceLinks.create)
    ..aOM<UpdateDeviceLink>(14, _omitFieldNames ? '' : 'updateDeviceLink',
        subBuilder: UpdateDeviceLink.create)
    ..aOM<ProvisionDevice>(15, _omitFieldNames ? '' : 'provisionDevice',
        subBuilder: ProvisionDevice.create)
    ..aOM<SetRoomTarget>(16, _omitFieldNames ? '' : 'setRoomTarget',
        subBuilder: SetRoomTarget.create)
    ..aOM<ConfigureRoomClimate>(
        17, _omitFieldNames ? '' : 'configureRoomClimate',
        subBuilder: ConfigureRoomClimate.create)
    ..aOM<SetClimateMode>(18, _omitFieldNames ? '' : 'setClimateMode',
        subBuilder: SetClimateMode.create)
    ..aOM<ListRoomClimates>(19, _omitFieldNames ? '' : 'listRoomClimates',
        subBuilder: ListRoomClimates.create)
    ..aOM<GetRoomHistory>(20, _omitFieldNames ? '' : 'getRoomHistory',
        subBuilder: GetRoomHistory.create)
    ..aOM<GetPrivacyDisclosure>(
        21, _omitFieldNames ? '' : 'getPrivacyDisclosure',
        subBuilder: GetPrivacyDisclosure.create)
    ..aOM<GetApartmentClimateSummary>(
        22, _omitFieldNames ? '' : 'getApartmentClimateSummary',
        subBuilder: GetApartmentClimateSummary.create)
    ..aOM<ReconnectConnector>(23, _omitFieldNames ? '' : 'reconnectConnector',
        subBuilder: ReconnectConnector.create)
    ..aOM<$6.CreateInvite>(24, _omitFieldNames ? '' : 'createInvite',
        subBuilder: $6.CreateInvite.create)
    ..aOM<$6.ResendInvite>(25, _omitFieldNames ? '' : 'resendInvite',
        subBuilder: $6.ResendInvite.create)
    ..aOM<$6.RevokeInvite>(26, _omitFieldNames ? '' : 'revokeInvite',
        subBuilder: $6.RevokeInvite.create)
    ..aOM<$6.MarkInviteEmailSent>(
        27, _omitFieldNames ? '' : 'markInviteEmailSent',
        subBuilder: $6.MarkInviteEmailSent.create)
    ..aOM<$6.ListSpaceInvites>(28, _omitFieldNames ? '' : 'listSpaceInvites',
        subBuilder: $6.ListSpaceInvites.create)
    ..aOM<$6.ApproveJoinRequest>(
        29, _omitFieldNames ? '' : 'approveJoinRequest',
        subBuilder: $6.ApproveJoinRequest.create)
    ..aOM<$6.DenyJoinRequest>(30, _omitFieldNames ? '' : 'denyJoinRequest',
        subBuilder: $6.DenyJoinRequest.create)
    ..aOM<$7.ListGatewayMembers>(
        31, _omitFieldNames ? '' : 'listGatewayMembers',
        subBuilder: $7.ListGatewayMembers.create)
    ..aOM<$7.SetMemberRole>(32, _omitFieldNames ? '' : 'setMemberRole',
        subBuilder: $7.SetMemberRole.create)
    ..aOM<$7.RemoveFromGateway>(33, _omitFieldNames ? '' : 'removeFromGateway',
        subBuilder: $7.RemoveFromGateway.create)
    ..aOM<$7.SetAccessUntil>(34, _omitFieldNames ? '' : 'setAccessUntil',
        subBuilder: $7.SetAccessUntil.create)
    ..aOM<$7.SetOwnerOrganisation>(
        35, _omitFieldNames ? '' : 'setOwnerOrganisation',
        subBuilder: $7.SetOwnerOrganisation.create)
    ..aOM<$7.RequestPromotion>(36, _omitFieldNames ? '' : 'requestPromotion',
        subBuilder: $7.RequestPromotion.create)
    ..aOM<$7.AnswerPromotion>(37, _omitFieldNames ? '' : 'answerPromotion',
        subBuilder: $7.AnswerPromotion.create)
    ..aOM<$7.ListPromotionRequests>(
        38, _omitFieldNames ? '' : 'listPromotionRequests',
        subBuilder: $7.ListPromotionRequests.create)
    ..aOM<ListHeating>(39, _omitFieldNames ? '' : 'listHeating',
        subBuilder: ListHeating.create)
    ..aOM<PutHeatingPlant>(40, _omitFieldNames ? '' : 'putHeatingPlant',
        subBuilder: PutHeatingPlant.create)
    ..aOM<PutHeatingCircuit>(41, _omitFieldNames ? '' : 'putHeatingCircuit',
        subBuilder: PutHeatingCircuit.create)
    ..aOM<PutFloorZone>(42, _omitFieldNames ? '' : 'putFloorZone',
        subBuilder: PutFloorZone.create)
    ..aOM<PutComfortLoad>(43, _omitFieldNames ? '' : 'putComfortLoad',
        subBuilder: PutComfortLoad.create)
    ..aOM<RemoveHeatingRecord>(44, _omitFieldNames ? '' : 'removeHeatingRecord',
        subBuilder: RemoveHeatingRecord.create)
    ..aOM<SetComfortWindows>(45, _omitFieldNames ? '' : 'setComfortWindows',
        subBuilder: SetComfortWindows.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagementRequest clone() => ManagementRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ManagementRequest copyWith(void Function(ManagementRequest) updates) =>
      super.copyWith((message) => updates(message as ManagementRequest))
          as ManagementRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManagementRequest create() => ManagementRequest._();
  @$core.override
  ManagementRequest createEmptyInstance() => create();
  static $pb.PbList<ManagementRequest> createRepeated() =>
      $pb.PbList<ManagementRequest>();
  @$core.pragma('dart2js:noInline')
  static ManagementRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ManagementRequest>(create);
  static ManagementRequest? _defaultInstance;

  ManagementRequest_Request whichRequest() =>
      _ManagementRequest_RequestByTag[$_whichOneof(0)]!;
  void clearRequest() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  CreateSpace get createSpace => $_getN(0);
  @$pb.TagNumber(1)
  set createSpace(CreateSpace value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCreateSpace() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreateSpace() => $_clearField(1);
  @$pb.TagNumber(1)
  CreateSpace ensureCreateSpace() => $_ensure(0);

  @$pb.TagNumber(2)
  UpdateSpace get updateSpace => $_getN(1);
  @$pb.TagNumber(2)
  set updateSpace(UpdateSpace value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUpdateSpace() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateSpace() => $_clearField(2);
  @$pb.TagNumber(2)
  UpdateSpace ensureUpdateSpace() => $_ensure(1);

  @$pb.TagNumber(3)
  DeleteSpace get deleteSpace => $_getN(2);
  @$pb.TagNumber(3)
  set deleteSpace(DeleteSpace value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDeleteSpace() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeleteSpace() => $_clearField(3);
  @$pb.TagNumber(3)
  DeleteSpace ensureDeleteSpace() => $_ensure(2);

  @$pb.TagNumber(4)
  AssignUserToSpace get assignUserToSpace => $_getN(3);
  @$pb.TagNumber(4)
  set assignUserToSpace(AssignUserToSpace value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAssignUserToSpace() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssignUserToSpace() => $_clearField(4);
  @$pb.TagNumber(4)
  AssignUserToSpace ensureAssignUserToSpace() => $_ensure(3);

  @$pb.TagNumber(5)
  RemoveUserFromSpace get removeUserFromSpace => $_getN(4);
  @$pb.TagNumber(5)
  set removeUserFromSpace(RemoveUserFromSpace value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasRemoveUserFromSpace() => $_has(4);
  @$pb.TagNumber(5)
  void clearRemoveUserFromSpace() => $_clearField(5);
  @$pb.TagNumber(5)
  RemoveUserFromSpace ensureRemoveUserFromSpace() => $_ensure(4);

  @$pb.TagNumber(6)
  PlaceDeviceInSpace get placeDeviceInSpace => $_getN(5);
  @$pb.TagNumber(6)
  set placeDeviceInSpace(PlaceDeviceInSpace value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPlaceDeviceInSpace() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlaceDeviceInSpace() => $_clearField(6);
  @$pb.TagNumber(6)
  PlaceDeviceInSpace ensurePlaceDeviceInSpace() => $_ensure(5);

  @$pb.TagNumber(7)
  RemoveDeviceFromSpace get removeDeviceFromSpace => $_getN(6);
  @$pb.TagNumber(7)
  set removeDeviceFromSpace(RemoveDeviceFromSpace value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasRemoveDeviceFromSpace() => $_has(6);
  @$pb.TagNumber(7)
  void clearRemoveDeviceFromSpace() => $_clearField(7);
  @$pb.TagNumber(7)
  RemoveDeviceFromSpace ensureRemoveDeviceFromSpace() => $_ensure(6);

  @$pb.TagNumber(8)
  ClaimDevice get claimDevice => $_getN(7);
  @$pb.TagNumber(8)
  set claimDevice(ClaimDevice value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasClaimDevice() => $_has(7);
  @$pb.TagNumber(8)
  void clearClaimDevice() => $_clearField(8);
  @$pb.TagNumber(8)
  ClaimDevice ensureClaimDevice() => $_ensure(7);

  @$pb.TagNumber(9)
  ReleaseDevice get releaseDevice => $_getN(8);
  @$pb.TagNumber(9)
  set releaseDevice(ReleaseDevice value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasReleaseDevice() => $_has(8);
  @$pb.TagNumber(9)
  void clearReleaseDevice() => $_clearField(9);
  @$pb.TagNumber(9)
  ReleaseDevice ensureReleaseDevice() => $_ensure(8);

  @$pb.TagNumber(10)
  ListSpaces get listSpaces => $_getN(9);
  @$pb.TagNumber(10)
  set listSpaces(ListSpaces value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasListSpaces() => $_has(9);
  @$pb.TagNumber(10)
  void clearListSpaces() => $_clearField(10);
  @$pb.TagNumber(10)
  ListSpaces ensureListSpaces() => $_ensure(9);

  @$pb.TagNumber(11)
  CreateDeviceLink get createDeviceLink => $_getN(10);
  @$pb.TagNumber(11)
  set createDeviceLink(CreateDeviceLink value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasCreateDeviceLink() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreateDeviceLink() => $_clearField(11);
  @$pb.TagNumber(11)
  CreateDeviceLink ensureCreateDeviceLink() => $_ensure(10);

  @$pb.TagNumber(12)
  RemoveDeviceLink get removeDeviceLink => $_getN(11);
  @$pb.TagNumber(12)
  set removeDeviceLink(RemoveDeviceLink value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasRemoveDeviceLink() => $_has(11);
  @$pb.TagNumber(12)
  void clearRemoveDeviceLink() => $_clearField(12);
  @$pb.TagNumber(12)
  RemoveDeviceLink ensureRemoveDeviceLink() => $_ensure(11);

  @$pb.TagNumber(13)
  ListDeviceLinks get listDeviceLinks => $_getN(12);
  @$pb.TagNumber(13)
  set listDeviceLinks(ListDeviceLinks value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasListDeviceLinks() => $_has(12);
  @$pb.TagNumber(13)
  void clearListDeviceLinks() => $_clearField(13);
  @$pb.TagNumber(13)
  ListDeviceLinks ensureListDeviceLinks() => $_ensure(12);

  @$pb.TagNumber(14)
  UpdateDeviceLink get updateDeviceLink => $_getN(13);
  @$pb.TagNumber(14)
  set updateDeviceLink(UpdateDeviceLink value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasUpdateDeviceLink() => $_has(13);
  @$pb.TagNumber(14)
  void clearUpdateDeviceLink() => $_clearField(14);
  @$pb.TagNumber(14)
  UpdateDeviceLink ensureUpdateDeviceLink() => $_ensure(13);

  @$pb.TagNumber(15)
  ProvisionDevice get provisionDevice => $_getN(14);
  @$pb.TagNumber(15)
  set provisionDevice(ProvisionDevice value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasProvisionDevice() => $_has(14);
  @$pb.TagNumber(15)
  void clearProvisionDevice() => $_clearField(15);
  @$pb.TagNumber(15)
  ProvisionDevice ensureProvisionDevice() => $_ensure(14);

  @$pb.TagNumber(16)
  SetRoomTarget get setRoomTarget => $_getN(15);
  @$pb.TagNumber(16)
  set setRoomTarget(SetRoomTarget value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasSetRoomTarget() => $_has(15);
  @$pb.TagNumber(16)
  void clearSetRoomTarget() => $_clearField(16);
  @$pb.TagNumber(16)
  SetRoomTarget ensureSetRoomTarget() => $_ensure(15);

  @$pb.TagNumber(17)
  ConfigureRoomClimate get configureRoomClimate => $_getN(16);
  @$pb.TagNumber(17)
  set configureRoomClimate(ConfigureRoomClimate value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasConfigureRoomClimate() => $_has(16);
  @$pb.TagNumber(17)
  void clearConfigureRoomClimate() => $_clearField(17);
  @$pb.TagNumber(17)
  ConfigureRoomClimate ensureConfigureRoomClimate() => $_ensure(16);

  @$pb.TagNumber(18)
  SetClimateMode get setClimateMode => $_getN(17);
  @$pb.TagNumber(18)
  set setClimateMode(SetClimateMode value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasSetClimateMode() => $_has(17);
  @$pb.TagNumber(18)
  void clearSetClimateMode() => $_clearField(18);
  @$pb.TagNumber(18)
  SetClimateMode ensureSetClimateMode() => $_ensure(17);

  @$pb.TagNumber(19)
  ListRoomClimates get listRoomClimates => $_getN(18);
  @$pb.TagNumber(19)
  set listRoomClimates(ListRoomClimates value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasListRoomClimates() => $_has(18);
  @$pb.TagNumber(19)
  void clearListRoomClimates() => $_clearField(19);
  @$pb.TagNumber(19)
  ListRoomClimates ensureListRoomClimates() => $_ensure(18);

  @$pb.TagNumber(20)
  GetRoomHistory get getRoomHistory => $_getN(19);
  @$pb.TagNumber(20)
  set getRoomHistory(GetRoomHistory value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasGetRoomHistory() => $_has(19);
  @$pb.TagNumber(20)
  void clearGetRoomHistory() => $_clearField(20);
  @$pb.TagNumber(20)
  GetRoomHistory ensureGetRoomHistory() => $_ensure(19);

  @$pb.TagNumber(21)
  GetPrivacyDisclosure get getPrivacyDisclosure => $_getN(20);
  @$pb.TagNumber(21)
  set getPrivacyDisclosure(GetPrivacyDisclosure value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasGetPrivacyDisclosure() => $_has(20);
  @$pb.TagNumber(21)
  void clearGetPrivacyDisclosure() => $_clearField(21);
  @$pb.TagNumber(21)
  GetPrivacyDisclosure ensureGetPrivacyDisclosure() => $_ensure(20);

  @$pb.TagNumber(22)
  GetApartmentClimateSummary get getApartmentClimateSummary => $_getN(21);
  @$pb.TagNumber(22)
  set getApartmentClimateSummary(GetApartmentClimateSummary value) =>
      $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasGetApartmentClimateSummary() => $_has(21);
  @$pb.TagNumber(22)
  void clearGetApartmentClimateSummary() => $_clearField(22);
  @$pb.TagNumber(22)
  GetApartmentClimateSummary ensureGetApartmentClimateSummary() => $_ensure(21);

  @$pb.TagNumber(23)
  ReconnectConnector get reconnectConnector => $_getN(22);
  @$pb.TagNumber(23)
  set reconnectConnector(ReconnectConnector value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasReconnectConnector() => $_has(22);
  @$pb.TagNumber(23)
  void clearReconnectConnector() => $_clearField(23);
  @$pb.TagNumber(23)
  ReconnectConnector ensureReconnectConnector() => $_ensure(22);

  /// Invites; see invite.proto.
  @$pb.TagNumber(24)
  $6.CreateInvite get createInvite => $_getN(23);
  @$pb.TagNumber(24)
  set createInvite($6.CreateInvite value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasCreateInvite() => $_has(23);
  @$pb.TagNumber(24)
  void clearCreateInvite() => $_clearField(24);
  @$pb.TagNumber(24)
  $6.CreateInvite ensureCreateInvite() => $_ensure(23);

  @$pb.TagNumber(25)
  $6.ResendInvite get resendInvite => $_getN(24);
  @$pb.TagNumber(25)
  set resendInvite($6.ResendInvite value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasResendInvite() => $_has(24);
  @$pb.TagNumber(25)
  void clearResendInvite() => $_clearField(25);
  @$pb.TagNumber(25)
  $6.ResendInvite ensureResendInvite() => $_ensure(24);

  @$pb.TagNumber(26)
  $6.RevokeInvite get revokeInvite => $_getN(25);
  @$pb.TagNumber(26)
  set revokeInvite($6.RevokeInvite value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasRevokeInvite() => $_has(25);
  @$pb.TagNumber(26)
  void clearRevokeInvite() => $_clearField(26);
  @$pb.TagNumber(26)
  $6.RevokeInvite ensureRevokeInvite() => $_ensure(25);

  @$pb.TagNumber(27)
  $6.MarkInviteEmailSent get markInviteEmailSent => $_getN(26);
  @$pb.TagNumber(27)
  set markInviteEmailSent($6.MarkInviteEmailSent value) =>
      $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasMarkInviteEmailSent() => $_has(26);
  @$pb.TagNumber(27)
  void clearMarkInviteEmailSent() => $_clearField(27);
  @$pb.TagNumber(27)
  $6.MarkInviteEmailSent ensureMarkInviteEmailSent() => $_ensure(26);

  @$pb.TagNumber(28)
  $6.ListSpaceInvites get listSpaceInvites => $_getN(27);
  @$pb.TagNumber(28)
  set listSpaceInvites($6.ListSpaceInvites value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasListSpaceInvites() => $_has(27);
  @$pb.TagNumber(28)
  void clearListSpaceInvites() => $_clearField(28);
  @$pb.TagNumber(28)
  $6.ListSpaceInvites ensureListSpaceInvites() => $_ensure(27);

  @$pb.TagNumber(29)
  $6.ApproveJoinRequest get approveJoinRequest => $_getN(28);
  @$pb.TagNumber(29)
  set approveJoinRequest($6.ApproveJoinRequest value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasApproveJoinRequest() => $_has(28);
  @$pb.TagNumber(29)
  void clearApproveJoinRequest() => $_clearField(29);
  @$pb.TagNumber(29)
  $6.ApproveJoinRequest ensureApproveJoinRequest() => $_ensure(28);

  @$pb.TagNumber(30)
  $6.DenyJoinRequest get denyJoinRequest => $_getN(29);
  @$pb.TagNumber(30)
  set denyJoinRequest($6.DenyJoinRequest value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasDenyJoinRequest() => $_has(29);
  @$pb.TagNumber(30)
  void clearDenyJoinRequest() => $_clearField(30);
  @$pb.TagNumber(30)
  $6.DenyJoinRequest ensureDenyJoinRequest() => $_ensure(29);

  /// Members; see members.proto.
  @$pb.TagNumber(31)
  $7.ListGatewayMembers get listGatewayMembers => $_getN(30);
  @$pb.TagNumber(31)
  set listGatewayMembers($7.ListGatewayMembers value) => $_setField(31, value);
  @$pb.TagNumber(31)
  $core.bool hasListGatewayMembers() => $_has(30);
  @$pb.TagNumber(31)
  void clearListGatewayMembers() => $_clearField(31);
  @$pb.TagNumber(31)
  $7.ListGatewayMembers ensureListGatewayMembers() => $_ensure(30);

  @$pb.TagNumber(32)
  $7.SetMemberRole get setMemberRole => $_getN(31);
  @$pb.TagNumber(32)
  set setMemberRole($7.SetMemberRole value) => $_setField(32, value);
  @$pb.TagNumber(32)
  $core.bool hasSetMemberRole() => $_has(31);
  @$pb.TagNumber(32)
  void clearSetMemberRole() => $_clearField(32);
  @$pb.TagNumber(32)
  $7.SetMemberRole ensureSetMemberRole() => $_ensure(31);

  @$pb.TagNumber(33)
  $7.RemoveFromGateway get removeFromGateway => $_getN(32);
  @$pb.TagNumber(33)
  set removeFromGateway($7.RemoveFromGateway value) => $_setField(33, value);
  @$pb.TagNumber(33)
  $core.bool hasRemoveFromGateway() => $_has(32);
  @$pb.TagNumber(33)
  void clearRemoveFromGateway() => $_clearField(33);
  @$pb.TagNumber(33)
  $7.RemoveFromGateway ensureRemoveFromGateway() => $_ensure(32);

  @$pb.TagNumber(34)
  $7.SetAccessUntil get setAccessUntil => $_getN(33);
  @$pb.TagNumber(34)
  set setAccessUntil($7.SetAccessUntil value) => $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasSetAccessUntil() => $_has(33);
  @$pb.TagNumber(34)
  void clearSetAccessUntil() => $_clearField(34);
  @$pb.TagNumber(34)
  $7.SetAccessUntil ensureSetAccessUntil() => $_ensure(33);

  /// Superseded, and refused as INVALID_REQUEST; see SetOwnerOrganisation.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  $7.SetOwnerOrganisation get setOwnerOrganisation => $_getN(34);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  set setOwnerOrganisation($7.SetOwnerOrganisation value) =>
      $_setField(35, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  $core.bool hasSetOwnerOrganisation() => $_has(34);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  void clearSetOwnerOrganisation() => $_clearField(35);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(35)
  $7.SetOwnerOrganisation ensureSetOwnerOrganisation() => $_ensure(34);

  /// Promotion requests; see members.proto.
  @$pb.TagNumber(36)
  $7.RequestPromotion get requestPromotion => $_getN(35);
  @$pb.TagNumber(36)
  set requestPromotion($7.RequestPromotion value) => $_setField(36, value);
  @$pb.TagNumber(36)
  $core.bool hasRequestPromotion() => $_has(35);
  @$pb.TagNumber(36)
  void clearRequestPromotion() => $_clearField(36);
  @$pb.TagNumber(36)
  $7.RequestPromotion ensureRequestPromotion() => $_ensure(35);

  @$pb.TagNumber(37)
  $7.AnswerPromotion get answerPromotion => $_getN(36);
  @$pb.TagNumber(37)
  set answerPromotion($7.AnswerPromotion value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasAnswerPromotion() => $_has(36);
  @$pb.TagNumber(37)
  void clearAnswerPromotion() => $_clearField(37);
  @$pb.TagNumber(37)
  $7.AnswerPromotion ensureAnswerPromotion() => $_ensure(36);

  @$pb.TagNumber(38)
  $7.ListPromotionRequests get listPromotionRequests => $_getN(37);
  @$pb.TagNumber(38)
  set listPromotionRequests($7.ListPromotionRequests value) =>
      $_setField(38, value);
  @$pb.TagNumber(38)
  $core.bool hasListPromotionRequests() => $_has(37);
  @$pb.TagNumber(38)
  void clearListPromotionRequests() => $_clearField(38);
  @$pb.TagNumber(38)
  $7.ListPromotionRequests ensureListPromotionRequests() => $_ensure(37);

  /// Heating records; see heating.v1.
  @$pb.TagNumber(39)
  ListHeating get listHeating => $_getN(38);
  @$pb.TagNumber(39)
  set listHeating(ListHeating value) => $_setField(39, value);
  @$pb.TagNumber(39)
  $core.bool hasListHeating() => $_has(38);
  @$pb.TagNumber(39)
  void clearListHeating() => $_clearField(39);
  @$pb.TagNumber(39)
  ListHeating ensureListHeating() => $_ensure(38);

  @$pb.TagNumber(40)
  PutHeatingPlant get putHeatingPlant => $_getN(39);
  @$pb.TagNumber(40)
  set putHeatingPlant(PutHeatingPlant value) => $_setField(40, value);
  @$pb.TagNumber(40)
  $core.bool hasPutHeatingPlant() => $_has(39);
  @$pb.TagNumber(40)
  void clearPutHeatingPlant() => $_clearField(40);
  @$pb.TagNumber(40)
  PutHeatingPlant ensurePutHeatingPlant() => $_ensure(39);

  @$pb.TagNumber(41)
  PutHeatingCircuit get putHeatingCircuit => $_getN(40);
  @$pb.TagNumber(41)
  set putHeatingCircuit(PutHeatingCircuit value) => $_setField(41, value);
  @$pb.TagNumber(41)
  $core.bool hasPutHeatingCircuit() => $_has(40);
  @$pb.TagNumber(41)
  void clearPutHeatingCircuit() => $_clearField(41);
  @$pb.TagNumber(41)
  PutHeatingCircuit ensurePutHeatingCircuit() => $_ensure(40);

  @$pb.TagNumber(42)
  PutFloorZone get putFloorZone => $_getN(41);
  @$pb.TagNumber(42)
  set putFloorZone(PutFloorZone value) => $_setField(42, value);
  @$pb.TagNumber(42)
  $core.bool hasPutFloorZone() => $_has(41);
  @$pb.TagNumber(42)
  void clearPutFloorZone() => $_clearField(42);
  @$pb.TagNumber(42)
  PutFloorZone ensurePutFloorZone() => $_ensure(41);

  @$pb.TagNumber(43)
  PutComfortLoad get putComfortLoad => $_getN(42);
  @$pb.TagNumber(43)
  set putComfortLoad(PutComfortLoad value) => $_setField(43, value);
  @$pb.TagNumber(43)
  $core.bool hasPutComfortLoad() => $_has(42);
  @$pb.TagNumber(43)
  void clearPutComfortLoad() => $_clearField(43);
  @$pb.TagNumber(43)
  PutComfortLoad ensurePutComfortLoad() => $_ensure(42);

  @$pb.TagNumber(44)
  RemoveHeatingRecord get removeHeatingRecord => $_getN(43);
  @$pb.TagNumber(44)
  set removeHeatingRecord(RemoveHeatingRecord value) => $_setField(44, value);
  @$pb.TagNumber(44)
  $core.bool hasRemoveHeatingRecord() => $_has(43);
  @$pb.TagNumber(44)
  void clearRemoveHeatingRecord() => $_clearField(44);
  @$pb.TagNumber(44)
  RemoveHeatingRecord ensureRemoveHeatingRecord() => $_ensure(43);

  @$pb.TagNumber(45)
  SetComfortWindows get setComfortWindows => $_getN(44);
  @$pb.TagNumber(45)
  set setComfortWindows(SetComfortWindows value) => $_setField(45, value);
  @$pb.TagNumber(45)
  $core.bool hasSetComfortWindows() => $_has(44);
  @$pb.TagNumber(45)
  void clearSetComfortWindows() => $_clearField(45);
  @$pb.TagNumber(45)
  SetComfortWindows ensureSetComfortWindows() => $_ensure(44);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
