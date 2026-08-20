// This is a generated file - do not edit.
//
// Generated from kusinta/iot/access/v1/acl.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $1;
import '../../identity/v1/identity.pb.dart' as $0;
import 'roles.pbenum.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// AttributeRef names one attribute on one endpoint. Both parts are load-bearing.
///
/// The cluster is required because attribute names repeat across clusters — MeasuredValue
/// is Temperature (0x0402), Relative Humidity (0x0405) and Pressure (0x0403), so a bare
/// name is ambiguous on any device carrying two of them.
///
/// The endpoint is required on a GRANT. A device presents several endpoints, often of the
/// same device type: all four channels of a 4-channel actuator are OnOff on cluster 0006,
/// so a grant without an endpoint reaches all four and channel 1 cannot be granted alone.
/// Required rather than "absent = every endpoint" because omission must never be the thing
/// that widens access.
class AttributeRef extends $pb.GeneratedMessage {
  factory AttributeRef({
    $core.String? attributeName,
    $core.String? clusterIdHex,
    $core.int? endpointId,
  }) {
    final result = create();
    if (attributeName != null) result.attributeName = attributeName;
    if (clusterIdHex != null) result.clusterIdHex = clusterIdHex;
    if (endpointId != null) result.endpointId = endpointId;
    return result;
  }

  AttributeRef._();

  factory AttributeRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AttributeRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AttributeRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.access.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'attributeName')
    ..aOS(2, _omitFieldNames ? '' : 'clusterIdHex')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'endpointId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttributeRef clone() => AttributeRef()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttributeRef copyWith(void Function(AttributeRef) updates) =>
      super.copyWith((message) => updates(message as AttributeRef))
          as AttributeRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttributeRef create() => AttributeRef._();
  @$core.override
  AttributeRef createEmptyInstance() => create();
  static $pb.PbList<AttributeRef> createRepeated() =>
      $pb.PbList<AttributeRef>();
  @$core.pragma('dart2js:noInline')
  static AttributeRef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AttributeRef>(create);
  static AttributeRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get attributeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set attributeName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAttributeName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttributeName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get clusterIdHex => $_getSZ(1);
  @$pb.TagNumber(2)
  set clusterIdHex($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasClusterIdHex() => $_has(1);
  @$pb.TagNumber(2)
  void clearClusterIdHex() => $_clearField(2);

  /// Optional on the wire so that "not stated" is representable and a consumer can REJECT
  /// it, rather than a bare uint32 decoding an omission to endpoint 0 — indistinguishable
  /// from a producer that meant 0, and the reserved-zero sentinel this schema removes
  /// rather than adds. Required by rule: a grant that names no endpoint is invalid, not a
  /// grant over all of them.
  @$pb.TagNumber(3)
  $core.int get endpointId => $_getIZ(2);
  @$pb.TagNumber(3)
  set endpointId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndpointId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpointId() => $_clearField(3);
}

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
    $core.int? endpointId,
  }) {
    final result = create();
    if (attributeName != null) result.attributeName = attributeName;
    if (intMax != null) result.intMax = intMax;
    if (intMin != null) result.intMin = intMin;
    if (uintMax != null) result.uintMax = uintMax;
    if (uintMin != null) result.uintMin = uintMin;
    if (clusterIdHex != null) result.clusterIdHex = clusterIdHex;
    if (endpointId != null) result.endpointId = endpointId;
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
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intMax', $pb.PbFieldType.OS3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'intMin', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'uintMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'uintMin', $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'clusterIdHex')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'endpointId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyConstraint clone() => PropertyConstraint()..mergeFromMessage(this);
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
  static $pb.PbList<PropertyConstraint> createRepeated() =>
      $pb.PbList<PropertyConstraint>();
  @$core.pragma('dart2js:noInline')
  static PropertyConstraint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PropertyConstraint>(create);
  static PropertyConstraint? _defaultInstance;

  PropertyConstraint_Constraint whichConstraint() =>
      _PropertyConstraint_ConstraintByTag[$_whichOneof(0)]!;
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

  /// Which endpoint this bound applies to. Optional, and absent means EVERY endpoint of
  /// the device — the opposite default to AttributeRef.endpoint_id, deliberately. A
  /// constraint is a restriction, so omission broadens what is restricted; a grant is
  /// permission, so omission there would broaden access. Both defaults fail safe.
  @$pb.TagNumber(7)
  $core.int get endpointId => $_getIZ(6);
  @$pb.TagNumber(7)
  set endpointId($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasEndpointId() => $_has(6);
  @$pb.TagNumber(7)
  void clearEndpointId() => $_clearField(7);
}

class DeviceAcl extends $pb.GeneratedMessage {
  factory DeviceAcl({
    $0.DeviceId? deviceId,
    $0.UserId? userId,
    $2.Role? role,
    $core.Iterable<$2.PermissionAction>? allowedActions,
    $core.Iterable<PropertyConstraint>? propertyConstraints,
    $core.Iterable<AttributeRef>? allowedAttributeRefs,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (userId != null) result.userId = userId;
    if (role != null) result.role = role;
    if (allowedActions != null) result.allowedActions.addAll(allowedActions);
    if (propertyConstraints != null)
      result.propertyConstraints.addAll(propertyConstraints);
    if (allowedAttributeRefs != null)
      result.allowedAttributeRefs.addAll(allowedAttributeRefs);
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
    ..e<$2.Role>(3, _omitFieldNames ? '' : 'role', $pb.PbFieldType.OE,
        defaultOrMaker: $2.Role.ROLE_UNSPECIFIED,
        valueOf: $2.Role.valueOf,
        enumValues: $2.Role.values)
    ..pc<$2.PermissionAction>(
        4, _omitFieldNames ? '' : 'allowedActions', $pb.PbFieldType.KE,
        valueOf: $2.PermissionAction.valueOf,
        enumValues: $2.PermissionAction.values,
        defaultEnumValue: $2.PermissionAction.PERMISSION_ACTION_UNSPECIFIED)
    ..pc<PropertyConstraint>(
        6, _omitFieldNames ? '' : 'propertyConstraints', $pb.PbFieldType.PM,
        subBuilder: PropertyConstraint.create)
    ..pc<AttributeRef>(
        7, _omitFieldNames ? '' : 'allowedAttributeRefs', $pb.PbFieldType.PM,
        subBuilder: AttributeRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAcl clone() => DeviceAcl()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceAcl copyWith(void Function(DeviceAcl) updates) =>
      super.copyWith((message) => updates(message as DeviceAcl)) as DeviceAcl;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceAcl create() => DeviceAcl._();
  @$core.override
  DeviceAcl createEmptyInstance() => create();
  static $pb.PbList<DeviceAcl> createRepeated() => $pb.PbList<DeviceAcl>();
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

  @$pb.TagNumber(6)
  $pb.PbList<PropertyConstraint> get propertyConstraints => $_getList(4);

  /// Empty = all attributes on all endpoints allowed. Unchanged in meaning from the field
  /// it replaces.
  @$pb.TagNumber(7)
  $pb.PbList<AttributeRef> get allowedAttributeRefs => $_getList(5);
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
    ..pc<DeviceAcl>(3, _omitFieldNames ? '' : 'deviceAcls', $pb.PbFieldType.PM,
        subBuilder: DeviceAcl.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'validAt',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EffectivePermissions clone() =>
      EffectivePermissions()..mergeFromMessage(this);
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
  static $pb.PbList<EffectivePermissions> createRepeated() =>
      $pb.PbList<EffectivePermissions>();
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
