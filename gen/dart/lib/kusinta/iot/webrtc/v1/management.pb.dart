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

import 'package:protobuf/protobuf.dart' as $pb;

import '../../common/v1/types.pbenum.dart' as $2;
import '../../identity/v1/identity.pb.dart' as $0;
import '../../space/v1/space.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Creates a space. A space with no parent_space_id is top level, which is a
/// stronger request than it looks: there is no parent whose reach could authorize
/// it, so it is reserved to the gateway's administrator.
class CreateSpace extends $pb.GeneratedMessage {
  factory CreateSpace({
    $2.SpaceType? spaceType,
    $core.String? name,
    $core.String? description,
    $core.int? floor,
    $0.SpaceId? parentSpaceId,
  }) {
    final result = create();
    if (spaceType != null) result.spaceType = spaceType;
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (floor != null) result.floor = floor;
    if (parentSpaceId != null) result.parentSpaceId = parentSpaceId;
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
    ..e<$2.SpaceType>(1, _omitFieldNames ? '' : 'spaceType', $pb.PbFieldType.OE,
        defaultOrMaker: $2.SpaceType.SPACE_TYPE_UNSPECIFIED,
        valueOf: $2.SpaceType.valueOf,
        enumValues: $2.SpaceType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'floor', $pb.PbFieldType.O3)
    ..aOM<$0.SpaceId>(5, _omitFieldNames ? '' : 'parentSpaceId',
        subBuilder: $0.SpaceId.create)
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
  $2.SpaceType get spaceType => $_getN(0);
  @$pb.TagNumber(1)
  set spaceType($2.SpaceType value) => $_setField(1, value);
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
}

enum UpdateSpace_ParentChange { parentSpaceId, detach, notSet }

/// Changes a space in place. Every descriptive field carries explicit presence:
/// absent means leave it alone, present means set it to this — including to the
/// empty string, which is how a description is cleared.
class UpdateSpace extends $pb.GeneratedMessage {
  factory UpdateSpace({
    $0.SpaceId? spaceId,
    $2.SpaceType? spaceType,
    $core.String? name,
    $core.String? description,
    $core.int? floor,
    $0.SpaceId? parentSpaceId,
    $core.bool? detach,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (spaceType != null) result.spaceType = spaceType;
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (floor != null) result.floor = floor;
    if (parentSpaceId != null) result.parentSpaceId = parentSpaceId;
    if (detach != null) result.detach = detach;
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
    ..e<$2.SpaceType>(2, _omitFieldNames ? '' : 'spaceType', $pb.PbFieldType.OE,
        defaultOrMaker: $2.SpaceType.SPACE_TYPE_UNSPECIFIED,
        valueOf: $2.SpaceType.valueOf,
        enumValues: $2.SpaceType.values)
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'floor', $pb.PbFieldType.O3)
    ..aOM<$0.SpaceId>(6, _omitFieldNames ? '' : 'parentSpaceId',
        subBuilder: $0.SpaceId.create)
    ..aOB(7, _omitFieldNames ? '' : 'detach')
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
  $2.SpaceType get spaceType => $_getN(1);
  @$pb.TagNumber(2)
  set spaceType($2.SpaceType value) => $_setField(2, value);
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
}

/// Deletes a space. Refused if the space still holds devices or sub-spaces unless
/// cascade is set, so that emptying a building is always something the caller
/// asked for rather than something a stale client did by accident.
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

/// Adds a user to a space, granting them reach of it and everything beneath it.
/// The user need not be known to the gateway beforehand — identities are minted by
/// the token issuer, and this records that one of them belongs here.
class AssignUserToSpace extends $pb.GeneratedMessage {
  factory AssignUserToSpace({
    $0.SpaceId? spaceId,
    $0.UserId? userId,
  }) {
    final result = create();
    if (spaceId != null) result.spaceId = spaceId;
    if (userId != null) result.userId = userId;
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
}

/// Removes a user's membership of a space. Losing reach also drops whatever the
/// user was streaming from it, announced by LivePermissionUpdate.
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
/// file it into spaces they belong to.
class ClaimDevice extends $pb.GeneratedMessage {
  factory ClaimDevice({
    $0.DeviceId? deviceId,
    $2.DeviceOwnershipType? ownership,
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
    ..e<$2.DeviceOwnershipType>(
        2, _omitFieldNames ? '' : 'ownership', $pb.PbFieldType.OE,
        defaultOrMaker:
            $2.DeviceOwnershipType.DEVICE_OWNERSHIP_TYPE_UNSPECIFIED,
        valueOf: $2.DeviceOwnershipType.valueOf,
        enumValues: $2.DeviceOwnershipType.values)
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
  $2.DeviceOwnershipType get ownership => $_getN(1);
  @$pb.TagNumber(2)
  set ownership($2.DeviceOwnershipType value) => $_setField(2, value);
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

/// Gives up ownership. The device keeps whatever space filing it has; if it has
/// none it becomes unfiled.
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
/// enumeration channel the snapshot filter exists to close.
class SpaceTree extends $pb.GeneratedMessage {
  factory SpaceTree({
    $core.Iterable<$1.Space>? spaces,
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
    ..pc<$1.Space>(1, _omitFieldNames ? '' : 'spaces', $pb.PbFieldType.PM,
        subBuilder: $1.Space.create)
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
  $pb.PbList<$1.Space> get spaces => $_getList(0);
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
  notSet
}

/// A single filing operation, app → gateway. One wrapper rather than ten payload
/// cases on AppMessage: authorization for filing depends on the target, not on the
/// message kind, so these can never be gated by a table keyed on the envelope case
/// the way device messages are. Keeping them behind one case means one place that
/// must authorize, and one refusal path that must not leak whether a target exists.
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
    0: ManagementRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ManagementRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
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
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
