// This is a generated file - do not edit.
//
// Generated from kusinta/iot/space/v1/space.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../access/v1/roles.pbenum.dart' as $2;
import '../../common/v1/types.pbenum.dart' as $1;
import '../../identity/v1/identity.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Space extends $pb.GeneratedMessage {
  factory Space({
    $0.SpaceId? spaceId,
    $1.SpaceType? spaceType,
    $core.String? name,
    $core.String? description,
    $core.int? floor,
    $0.SpaceId? parentSpaceId,
    $core.Iterable<$0.SpaceId>? subSpaceIds,
    $core.Iterable<$0.DeviceId>? deviceIds,
    @$core.Deprecated('This field is deprecated.') $0.UserId? residentUserId,
    $0.TenantId? tenantId,
    $0.GatewayId? gatewayId,
    $core.String? timeZone,
    $core.Iterable<SpaceMember>? members,
    $core.bool? membersWithheld,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (spaceType != null) result.spaceType = spaceType;
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (floor != null) result.floor = floor;
    if (parentSpaceId != null) result.parentSpaceId = parentSpaceId;
    if (subSpaceIds != null) result.subSpaceIds.addAll(subSpaceIds);
    if (deviceIds != null) result.deviceIds.addAll(deviceIds);
    if (residentUserId != null) result.residentUserId = residentUserId;
    if (tenantId != null) result.tenantId = tenantId;
    if (gatewayId != null) result.gatewayId = gatewayId;
    if (timeZone != null) result.timeZone = timeZone;
    if (members != null) result.members.addAll(members);
    if (membersWithheld != null) result.membersWithheld = membersWithheld;
    return result;
  }

  Space._();

  factory Space.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Space.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Space',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.space.v1'),
      createEmptyInstance: create)
    ..aOM<$0.SpaceId>(1, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..e<$1.SpaceType>(2, _omitFieldNames ? '' : 'spaceType', $pb.PbFieldType.OE,
        defaultOrMaker: $1.SpaceType.SPACE_TYPE_UNSPECIFIED,
        valueOf: $1.SpaceType.valueOf,
        enumValues: $1.SpaceType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'floor', $pb.PbFieldType.O3)
    ..aOM<$0.SpaceId>(6, _omitFieldNames ? '' : 'parentSpaceId',
        subBuilder: $0.SpaceId.create)
    ..pc<$0.SpaceId>(
        7, _omitFieldNames ? '' : 'subSpaceIds', $pb.PbFieldType.PM,
        subBuilder: $0.SpaceId.create)
    ..pc<$0.DeviceId>(8, _omitFieldNames ? '' : 'deviceIds', $pb.PbFieldType.PM,
        subBuilder: $0.DeviceId.create)
    ..aOM<$0.UserId>(9, _omitFieldNames ? '' : 'residentUserId',
        subBuilder: $0.UserId.create)
    ..aOM<$0.TenantId>(10, _omitFieldNames ? '' : 'tenantId',
        subBuilder: $0.TenantId.create)
    ..aOM<$0.GatewayId>(11, _omitFieldNames ? '' : 'gatewayId',
        subBuilder: $0.GatewayId.create)
    ..aOS(12, _omitFieldNames ? '' : 'timeZone')
    ..pc<SpaceMember>(13, _omitFieldNames ? '' : 'members', $pb.PbFieldType.PM,
        subBuilder: SpaceMember.create)
    ..aOB(14, _omitFieldNames ? '' : 'membersWithheld')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Space clone() => Space()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Space copyWith(void Function(Space) updates) =>
      super.copyWith((message) => updates(message as Space)) as Space;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Space create() => Space._();
  @$core.override
  Space createEmptyInstance() => create();
  static $pb.PbList<Space> createRepeated() => $pb.PbList<Space>();
  @$core.pragma('dart2js:noInline')
  static Space getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Space>(create);
  static Space? _defaultInstance;

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
  $1.SpaceType get spaceType => $_getN(1);
  @$pb.TagNumber(2)
  set spaceType($1.SpaceType value) => $_setField(2, value);
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

  /// Filtered to the spaces the caller reaches, as device_ids is.
  @$pb.TagNumber(7)
  $pb.PbList<$0.SpaceId> get subSpaceIds => $_getList(6);

  /// Filtered to the devices the caller may see (see webrtc.v1.SpaceTree): for service, no
  /// device a resident owns.
  @$pb.TagNumber(8)
  $pb.PbList<$0.DeviceId> get deviceIds => $_getList(7);

  /// Superseded by members, which can say that more than one person lives in an apartment,
  /// and how each member stands to the space. A gateway leaves it unset, so a client that
  /// still reads it sees no resident anywhere; read members instead.
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $0.UserId get residentUserId => $_getN(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  set residentUserId($0.UserId value) => $_setField(9, value);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $core.bool hasResidentUserId() => $_has(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  void clearResidentUserId() => $_clearField(9);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(9)
  $0.UserId ensureResidentUserId() => $_ensure(8);

  @$pb.TagNumber(10)
  $0.TenantId get tenantId => $_getN(9);
  @$pb.TagNumber(10)
  set tenantId($0.TenantId value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasTenantId() => $_has(9);
  @$pb.TagNumber(10)
  void clearTenantId() => $_clearField(10);
  @$pb.TagNumber(10)
  $0.TenantId ensureTenantId() => $_ensure(9);

  @$pb.TagNumber(11)
  $0.GatewayId get gatewayId => $_getN(10);
  @$pb.TagNumber(11)
  set gatewayId($0.GatewayId value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasGatewayId() => $_has(10);
  @$pb.TagNumber(11)
  void clearGatewayId() => $_clearField(11);
  @$pb.TagNumber(11)
  $0.GatewayId ensureGatewayId() => $_ensure(10);

  /// An IANA time zone name, e.g. "Europe/Stockholm". Written on the building — the
  /// top-level space. When listing, a gateway fills it on every space with the effective
  /// value, inherited from the nearest ancestor that has one, so every listed space
  /// carries it. Empty means unknown, not UTC.
  @$pb.TagNumber(12)
  $core.String get timeZone => $_getSZ(11);
  @$pb.TagNumber(12)
  set timeZone($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTimeZone() => $_has(11);
  @$pb.TagNumber(12)
  void clearTimeZone() => $_clearField(12);

  /// Who is filed directly on this space, and how each stands to it. Members of a space
  /// above it are listed there, not here.
  ///
  /// Filled according to who asks, since a membership list says who lives where:
  ///
  ///   * a caller holding ROLE_PROPERTY_OWNER or ROLE_GATEWAY_ADMIN who reaches the space
  ///     sees every member, in a home they see as service too, as the members change;
  ///   * a resident of an apartment sees every member filed on it or on its rooms — who they
  ///     live with, and anyone filed on their home as service, since being filed on a home
  ///     is an act on it its residents should see. Service reach from a building or floor
  ///     above is not listed; webrtc.v1.PrivacyDisclosure tells them what kinds of party
  ///     hold it, without naming anyone;
  ///   * anyone else sees none, residents of a building or floor included.
  @$pb.TagNumber(13)
  $pb.PbList<SpaceMember> get members => $_getList(12);

  /// Set when members are not listed to this caller, so that an empty list is not read as
  /// nobody being filed here.
  @$pb.TagNumber(14)
  $core.bool get membersWithheld => $_getBF(13);
  @$pb.TagNumber(14)
  set membersWithheld($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasMembersWithheld() => $_has(13);
  @$pb.TagNumber(14)
  void clearMembersWithheld() => $_clearField(14);
}

/// One membership of a space.
class SpaceMember extends $pb.GeneratedMessage {
  factory SpaceMember({
    $0.UserId? userId,
    $2.MembershipRelation? relation,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (relation != null) result.relation = relation;
    return result;
  }

  SpaceMember._();

  factory SpaceMember.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SpaceMember.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SpaceMember',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.space.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..e<$2.MembershipRelation>(
        2, _omitFieldNames ? '' : 'relation', $pb.PbFieldType.OE,
        defaultOrMaker: $2.MembershipRelation.MEMBERSHIP_RELATION_UNSPECIFIED,
        valueOf: $2.MembershipRelation.valueOf,
        enumValues: $2.MembershipRelation.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpaceMember clone() => SpaceMember()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SpaceMember copyWith(void Function(SpaceMember) updates) =>
      super.copyWith((message) => updates(message as SpaceMember))
          as SpaceMember;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SpaceMember create() => SpaceMember._();
  @$core.override
  SpaceMember createEmptyInstance() => create();
  static $pb.PbList<SpaceMember> createRepeated() => $pb.PbList<SpaceMember>();
  @$core.pragma('dart2js:noInline')
  static SpaceMember getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SpaceMember>(create);
  static SpaceMember? _defaultInstance;

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
