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

import '../../../../google/protobuf/timestamp.pb.dart' as $4;
import '../../climate/v1/climate.pbenum.dart' as $6;
import '../../common/v1/types.pbenum.dart' as $5;
import '../../identity/v1/identity.pb.dart' as $0;
import '../../link/v1/link.pb.dart' as $3;
import '../../space/v1/space.pb.dart' as $2;
import '../../vendor/lorawan/v1/lorawan.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Creates a space. A space with no parent_space_id is top level, which is a
/// stronger request than it looks: there is no parent whose reach could authorize
/// it, so it is reserved to the gateway's administrator.
class CreateSpace extends $pb.GeneratedMessage {
  factory CreateSpace({
    $5.SpaceType? spaceType,
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
    ..e<$5.SpaceType>(1, _omitFieldNames ? '' : 'spaceType', $pb.PbFieldType.OE,
        defaultOrMaker: $5.SpaceType.SPACE_TYPE_UNSPECIFIED,
        valueOf: $5.SpaceType.valueOf,
        enumValues: $5.SpaceType.values)
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
  $5.SpaceType get spaceType => $_getN(0);
  @$pb.TagNumber(1)
  set spaceType($5.SpaceType value) => $_setField(1, value);
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

/// Changes a space in place. Every descriptive field carries explicit presence:
/// absent means leave it alone, present means set it to this — including to the
/// empty string, which is how a description is cleared.
class UpdateSpace extends $pb.GeneratedMessage {
  factory UpdateSpace({
    $0.SpaceId? spaceId,
    $5.SpaceType? spaceType,
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
    ..e<$5.SpaceType>(2, _omitFieldNames ? '' : 'spaceType', $pb.PbFieldType.OE,
        defaultOrMaker: $5.SpaceType.SPACE_TYPE_UNSPECIFIED,
        valueOf: $5.SpaceType.valueOf,
        enumValues: $5.SpaceType.values)
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
  $5.SpaceType get spaceType => $_getN(1);
  @$pb.TagNumber(2)
  set spaceType($5.SpaceType value) => $_setField(2, value);
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
    $5.DeviceOwnershipType? ownership,
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
    ..e<$5.DeviceOwnershipType>(
        2, _omitFieldNames ? '' : 'ownership', $pb.PbFieldType.OE,
        defaultOrMaker:
            $5.DeviceOwnershipType.DEVICE_OWNERSHIP_TYPE_UNSPECIFIED,
        valueOf: $5.DeviceOwnershipType.valueOf,
        enumValues: $5.DeviceOwnershipType.values)
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
  $5.DeviceOwnershipType get ownership => $_getN(1);
  @$pb.TagNumber(2)
  set ownership($5.DeviceOwnershipType value) => $_setField(2, value);
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
/// enumeration channel the snapshot filter exists to close.
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
/// turn a thermostat up.
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
/// Authorized as adjusting, not directing: WRITE on the room is enough — a resident in
/// their own apartment, as well as owners and filing roles. It is the same act as turning
/// a radiator's knob, which a resident can already do; setting up what the room obeys is
/// ConfigureRoomClimate, and stays with owners.
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
/// "leave the sensors alone" (unset) differs from "set" on the wire. Set but empty returns
/// the room to the default order, every temperature sensor filed in it in filing order.
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

  /// Only devices filed in this room; any other is refused.
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
/// refused.
class SetClimateMode extends $pb.GeneratedMessage {
  factory SetClimateMode({
    $0.SpaceId? spaceId,
    $6.ClimateModeKind? kind,
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
    ..e<$6.ClimateModeKind>(
        2, _omitFieldNames ? '' : 'kind', $pb.PbFieldType.OE,
        defaultOrMaker: $6.ClimateModeKind.CLIMATE_MODE_KIND_UNSPECIFIED,
        valueOf: $6.ClimateModeKind.valueOf,
        enumValues: $6.ClimateModeKind.values)
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
  $6.ClimateModeKind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind($6.ClimateModeKind value) => $_setField(2, value);
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
    0: ManagementRequest_Request.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ManagementRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.webrtc.v1'),
      createEmptyInstance: create)
    ..oo(0,
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])
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
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
