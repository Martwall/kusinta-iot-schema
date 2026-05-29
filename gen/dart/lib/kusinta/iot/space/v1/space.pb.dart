// This is a generated file - do not edit.
//
// Generated from kusinta/iot/space/v1/space.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

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
    $0.UserId? residentUserId,
    $0.TenantId? tenantId,
    $0.GatewayId? gatewayId,
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
    ..aE<$1.SpaceType>(2, _omitFieldNames ? '' : 'spaceType',
        enumValues: $1.SpaceType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aI(5, _omitFieldNames ? '' : 'floor')
    ..aOM<$0.SpaceId>(6, _omitFieldNames ? '' : 'parentSpaceId',
        subBuilder: $0.SpaceId.create)
    ..pPM<$0.SpaceId>(7, _omitFieldNames ? '' : 'subSpaceIds',
        subBuilder: $0.SpaceId.create)
    ..pPM<$0.DeviceId>(8, _omitFieldNames ? '' : 'deviceIds',
        subBuilder: $0.DeviceId.create)
    ..aOM<$0.UserId>(9, _omitFieldNames ? '' : 'residentUserId',
        subBuilder: $0.UserId.create)
    ..aOM<$0.TenantId>(10, _omitFieldNames ? '' : 'tenantId',
        subBuilder: $0.TenantId.create)
    ..aOM<$0.GatewayId>(11, _omitFieldNames ? '' : 'gatewayId',
        subBuilder: $0.GatewayId.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Space clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Space copyWith(void Function(Space) updates) =>
      super.copyWith((message) => updates(message as Space)) as Space;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Space create() => Space._();
  @$core.override
  Space createEmptyInstance() => create();
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

  @$pb.TagNumber(7)
  $pb.PbList<$0.SpaceId> get subSpaceIds => $_getList(6);

  @$pb.TagNumber(8)
  $pb.PbList<$0.DeviceId> get deviceIds => $_getList(7);

  @$pb.TagNumber(9)
  $0.UserId get residentUserId => $_getN(8);
  @$pb.TagNumber(9)
  set residentUserId($0.UserId value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasResidentUserId() => $_has(8);
  @$pb.TagNumber(9)
  void clearResidentUserId() => $_clearField(9);
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
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
