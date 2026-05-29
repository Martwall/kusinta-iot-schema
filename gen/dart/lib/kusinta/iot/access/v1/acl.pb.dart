// This is a generated file - do not edit.
//
// Generated from kusinta/iot/access/v1/acl.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $1;

import '../../identity/v1/identity.pb.dart' as $0;
import 'roles.pbenum.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum PropertyConstraint_Constraint { intMax, intMin, uintMax, uintMin, notSet }

/// PropertyConstraint bounds a single Matter cluster attribute.
/// attribute_name uses PascalCase Matter attribute naming (e.g. "MaxHeatSetpointLimit").
/// MaxHeatSetpointLimit and MinHeatSetpointLimit are actual Matter Thermostat cluster
/// attributes (0x0016, 0x0015) — the gateway writes them directly via the connector.
class PropertyConstraint extends $pb.GeneratedMessage {
  factory PropertyConstraint({
    $core.String? attributeName,
    $core.int? intMax,
    $core.int? intMin,
    $core.int? uintMax,
    $core.int? uintMin,
    $core.String? clusterIdHex,
  }) {
    final result = create();
    if (attributeName != null) result.attributeName = attributeName;
    if (intMax != null) result.intMax = intMax;
    if (intMin != null) result.intMin = intMin;
    if (uintMax != null) result.uintMax = uintMax;
    if (uintMin != null) result.uintMin = uintMin;
    if (clusterIdHex != null) result.clusterIdHex = clusterIdHex;
    return result;
  }

  PropertyConstraint._();

  factory PropertyConstraint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PropertyConstraint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PropertyConstraint_Constraint>
      _PropertyConstraint_ConstraintByTag = {
    2: PropertyConstraint_Constraint.intMax,
    3: PropertyConstraint_Constraint.intMin,
    4: PropertyConstraint_Constraint.uintMax,
    5: PropertyConstraint_Constraint.uintMin,
    0: PropertyConstraint_Constraint.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PropertyConstraint',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.access.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3, 4, 5])
    ..aOS(1, _omitFieldNames ? '' : 'attributeName')
    ..aI(2, _omitFieldNames ? '' : 'intMax', fieldType: $pb.PbFieldType.OS3)
    ..aI(3, _omitFieldNames ? '' : 'intMin', fieldType: $pb.PbFieldType.OS3)
    ..aI(4, _omitFieldNames ? '' : 'uintMax', fieldType: $pb.PbFieldType.OU3)
    ..aI(5, _omitFieldNames ? '' : 'uintMin', fieldType: $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'clusterIdHex')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyConstraint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyConstraint copyWith(void Function(PropertyConstraint) updates) =>
      super.copyWith((message) => updates(message as PropertyConstraint))
          as PropertyConstraint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyConstraint create() => PropertyConstraint._();
  @$core.override
  PropertyConstraint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PropertyConstraint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PropertyConstraint>(create);
  static PropertyConstraint? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  PropertyConstraint_Constraint whichConstraint() =>
      _PropertyConstraint_ConstraintByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearConstraint() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get attributeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set attributeName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAttributeName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttributeName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get intMax => $_getIZ(1);
  @$pb.TagNumber(2)
  set intMax($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntMax() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntMax() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get intMin => $_getIZ(2);
  @$pb.TagNumber(3)
  set intMin($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIntMin() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntMin() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get uintMax => $_getIZ(3);
  @$pb.TagNumber(4)
  set uintMax($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUintMax() => $_has(3);
  @$pb.TagNumber(4)
  void clearUintMax() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get uintMin => $_getIZ(4);
  @$pb.TagNumber(5)
  set uintMin($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUintMin() => $_has(4);
  @$pb.TagNumber(5)
  void clearUintMin() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get clusterIdHex => $_getSZ(5);
  @$pb.TagNumber(6)
  set clusterIdHex($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasClusterIdHex() => $_has(5);
  @$pb.TagNumber(6)
  void clearClusterIdHex() => $_clearField(6);
}

class DeviceAcl extends $pb.GeneratedMessage {
  factory DeviceAcl({
    $0.DeviceId? deviceId,
    $0.UserId? userId,
    $2.Role? role,
    $core.Iterable<$2.PermissionAction>? allowedActions,
    $core.Iterable<$core.String>? allowedAttributes,
    $core.Iterable<PropertyConstraint>? propertyConstraints,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (userId != null) result.userId = userId;
    if (role != null) result.role = role;
    if (allowedActions != null) result.allowedActions.addAll(allowedActions);
    if (allowedAttributes != null)
      result.allowedAttributes.addAll(allowedAttributes);
    if (propertyConstraints != null)
      result.propertyConstraints.addAll(propertyConstraints);
    return result;
  }

  DeviceAcl._();

  factory DeviceAcl.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceAcl.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceAcl',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.access.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOM<$0.UserId>(2, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..aE<$2.Role>(3, _omitFieldNames ? '' : 'role', enumValues: $2.Role.values)
    ..pc<$2.PermissionAction>(
        4, _omitFieldNames ? '' : 'allowedActions', $pb.PbFieldType.KE,
        valueOf: $2.PermissionAction.valueOf,
        enumValues: $2.PermissionAction.values,
        defaultEnumValue: $2.PermissionAction.PERMISSION_ACTION_UNSPECIFIED)
    ..pPS(5, _omitFieldNames ? '' : 'allowedAttributes')
    ..pPM<PropertyConstraint>(6, _omitFieldNames ? '' : 'propertyConstraints',
        subBuilder: PropertyConstraint.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAcl clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAcl copyWith(void Function(DeviceAcl) updates) =>
      super.copyWith((message) => updates(message as DeviceAcl)) as DeviceAcl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceAcl create() => DeviceAcl._();
  @$core.override
  DeviceAcl createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceAcl getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeviceAcl>(create);
  static DeviceAcl? _defaultInstance;

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
  $0.UserId get userId => $_getN(1);
  @$pb.TagNumber(2)
  set userId($0.UserId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.UserId ensureUserId() => $_ensure(1);

  @$pb.TagNumber(3)
  $2.Role get role => $_getN(2);
  @$pb.TagNumber(3)
  set role($2.Role value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$2.PermissionAction> get allowedActions => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get allowedAttributes => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<PropertyConstraint> get propertyConstraints => $_getList(5);
}

class EffectivePermissions extends $pb.GeneratedMessage {
  factory EffectivePermissions({
    $0.UserId? userId,
    $0.GatewayId? gatewayId,
    $core.Iterable<DeviceAcl>? deviceAcls,
    $1.Timestamp? validAt,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (gatewayId != null) result.gatewayId = gatewayId;
    if (deviceAcls != null) result.deviceAcls.addAll(deviceAcls);
    if (validAt != null) result.validAt = validAt;
    return result;
  }

  EffectivePermissions._();

  factory EffectivePermissions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EffectivePermissions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EffectivePermissions',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.access.v1'),
      createEmptyInstance: create)
    ..aOM<$0.UserId>(1, _omitFieldNames ? '' : 'userId',
        subBuilder: $0.UserId.create)
    ..aOM<$0.GatewayId>(2, _omitFieldNames ? '' : 'gatewayId',
        subBuilder: $0.GatewayId.create)
    ..pPM<DeviceAcl>(3, _omitFieldNames ? '' : 'deviceAcls',
        subBuilder: DeviceAcl.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'validAt',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EffectivePermissions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EffectivePermissions copyWith(void Function(EffectivePermissions) updates) =>
      super.copyWith((message) => updates(message as EffectivePermissions))
          as EffectivePermissions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EffectivePermissions create() => EffectivePermissions._();
  @$core.override
  EffectivePermissions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EffectivePermissions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EffectivePermissions>(create);
  static EffectivePermissions? _defaultInstance;

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
  $0.GatewayId get gatewayId => $_getN(1);
  @$pb.TagNumber(2)
  set gatewayId($0.GatewayId value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGatewayId() => $_has(1);
  @$pb.TagNumber(2)
  void clearGatewayId() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.GatewayId ensureGatewayId() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<DeviceAcl> get deviceAcls => $_getList(2);

  @$pb.TagNumber(4)
  $1.Timestamp get validAt => $_getN(3);
  @$pb.TagNumber(4)
  set validAt($1.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasValidAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearValidAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureValidAt() => $_ensure(3);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
