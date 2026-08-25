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

/// AttributeRef names one attribute on one endpoint. It is the schema's single way to say
/// "this attribute of this device" — used to grant it, to bound it, to read it and to write
/// it, so a consumer writes one matcher rather than several that must agree.
///
/// Addressed exactly as device.v1.PropertyUpdate is, and for the same reasons:
///
///   * cluster_id and attribute_id are NUMERIC and are what resolution matches. Attribute
///     names repeat across clusters — MeasuredValue is Temperature (0x0402), Relative
///     Humidity (0x0405) and Pressure (0x0403) — and a numeric pair is what the
///     (matter_cluster_id)/(matter_attribute_id) annotations carry, so nothing has to be
///     parsed or looked up to compare them.
///   * attribute_name is advisory: the attribute's own spelling, for logs and rendering. It
///     is NOT matched on the Matter branch. On the vendor branch it is the only address
///     there is, and there it is authoritative.
///   * endpoint_id matters because a device presents several endpoints, often of the same
///     device type: all four channels of a 4-channel actuator are OnOff on cluster 0x0006,
///     so a reference without one cannot tell channel 1 from channel 3.
///
/// What an ABSENT endpoint_id means is decided by the field holding this message, not here,
/// and the current holders mean opposite things on purpose — see
/// DeviceAcl.allowed_attribute_refs and PropertyConstraint.attribute. It is optional on the
/// wire so that "not stated" is representable and rejectable, rather than a bare uint32
/// decoding an omission to endpoint 0, which is the Matter root node.
class AttributeRef extends $pb.GeneratedMessage {
  factory AttributeRef({
    $core.String? attributeName,
    $core.int? clusterId,
    $core.int? endpointId,
    $core.int? attributeId,
    $core.String? vendorExtension,
  }) {
    final result = create();
    if (attributeName != null) result.attributeName = attributeName;
    if (clusterId != null) result.clusterId = clusterId;
    if (endpointId != null) result.endpointId = endpointId;
    if (attributeId != null) result.attributeId = attributeId;
    if (vendorExtension != null) result.vendorExtension = vendorExtension;
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
    ..a<$core.int>(2, _omitFieldNames ? '' : 'clusterId', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'endpointId', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'attributeId', $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'vendorExtension')
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

  /// Advisory on the Matter branch, authoritative on the vendor branch. See above.
  @$pb.TagNumber(1)
  $core.String get attributeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set attributeName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAttributeName() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttributeName() => $_clearField(1);

  /// Matter branch. Both required there, both unset on the vendor branch.
  @$pb.TagNumber(2)
  $core.int get clusterId => $_getIZ(1);
  @$pb.TagNumber(2)
  set clusterId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasClusterId() => $_has(1);
  @$pb.TagNumber(2)
  void clearClusterId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get endpointId => $_getIZ(2);
  @$pb.TagNumber(3)
  set endpointId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndpointId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpointId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get attributeId => $_getIZ(3);
  @$pb.TagNumber(4)
  set attributeId($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAttributeId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAttributeId() => $_clearField(4);

  /// Set to name a vendor parameter instead of a Matter attribute, by its
  /// (vendor_extension) key. Then attribute_name addresses it and cluster_id/attribute_id
  /// play no part — a vendor parameter has no Matter cluster and no numeric ID in any
  /// specification.
  ///
  /// Without this a vendor parameter could be reported but never granted, bounded or
  /// written: a valve position would be all-or-nothing for permissions, which would undo
  /// most of the point of making vendor extensions reachable at all.
  @$pb.TagNumber(5)
  $core.String get vendorExtension => $_getSZ(4);
  @$pb.TagNumber(5)
  set vendorExtension($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasVendorExtension() => $_has(4);
  @$pb.TagNumber(5)
  void clearVendorExtension() => $_clearField(5);
}

/// CommandRef names one command on one endpoint, for DeviceAcl.allowed_command_refs.
///
/// A separate type from AttributeRef because attributes and commands are numbered
/// independently within a cluster: On/Off (0x0006) has an attribute 0x0000 (OnOff) and a
/// command 0x0000 (Off) that have nothing to do with each other. Putting a command ID in a
/// field named attribute_id would be the same class of ambiguity this schema removed when
/// it made addressing numeric.
class CommandRef extends $pb.GeneratedMessage {
  factory CommandRef({
    $core.int? clusterId,
    $core.int? matterCommandId,
    $core.int? endpointId,
  }) {
    final result = create();
    if (clusterId != null) result.clusterId = clusterId;
    if (matterCommandId != null) result.matterCommandId = matterCommandId;
    if (endpointId != null) result.endpointId = endpointId;
    return result;
  }

  CommandRef._();

  factory CommandRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CommandRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CommandRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.access.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'clusterId', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'matterCommandId', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'endpointId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandRef clone() => CommandRef()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CommandRef copyWith(void Function(CommandRef) updates) =>
      super.copyWith((message) => updates(message as CommandRef)) as CommandRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommandRef create() => CommandRef._();
  @$core.override
  CommandRef createEmptyInstance() => create();
  static $pb.PbList<CommandRef> createRepeated() => $pb.PbList<CommandRef>();
  @$core.pragma('dart2js:noInline')
  static CommandRef getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CommandRef>(create);
  static CommandRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clusterId => $_getIZ(0);
  @$pb.TagNumber(1)
  set clusterId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClusterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClusterId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get matterCommandId => $_getIZ(1);
  @$pb.TagNumber(2)
  set matterCommandId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMatterCommandId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMatterCommandId() => $_clearField(2);

  /// Which endpoint. Required on a grant, for the same reason as AttributeRef.endpoint_id:
  /// all four channels of a 4-channel actuator accept the same command on the same cluster,
  /// so a ref without one cannot tell channel 1 from channel 3.
  @$pb.TagNumber(3)
  $core.int get endpointId => $_getIZ(2);
  @$pb.TagNumber(3)
  set endpointId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEndpointId() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndpointId() => $_clearField(3);
}

/// EventRef names one event on one endpoint, for DeviceAcl.allowed_event_refs.
///
/// Events are numbered independently of attributes and commands within a cluster, so this
/// is a third type rather than a reuse. On Door Lock (0x0101), the LockState attribute and
/// the lock-operation event are different elements answering different questions: what the
/// lock's state is, and who changed it.
class EventRef extends $pb.GeneratedMessage {
  factory EventRef({
    $core.int? clusterId,
    $core.int? eventId,
    $core.int? endpointId,
  }) {
    final result = create();
    if (clusterId != null) result.clusterId = clusterId;
    if (eventId != null) result.eventId = eventId;
    if (endpointId != null) result.endpointId = endpointId;
    return result;
  }

  EventRef._();

  factory EventRef.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EventRef.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EventRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.access.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'clusterId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'eventId', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'endpointId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventRef clone() => EventRef()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EventRef copyWith(void Function(EventRef) updates) =>
      super.copyWith((message) => updates(message as EventRef)) as EventRef;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventRef create() => EventRef._();
  @$core.override
  EventRef createEmptyInstance() => create();
  static $pb.PbList<EventRef> createRepeated() => $pb.PbList<EventRef>();
  @$core.pragma('dart2js:noInline')
  static EventRef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventRef>(create);
  static EventRef? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clusterId => $_getIZ(0);
  @$pb.TagNumber(1)
  set clusterId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClusterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClusterId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get eventId => $_getIZ(1);
  @$pb.TagNumber(2)
  set eventId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEventId() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventId() => $_clearField(2);

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
/// MaxHeatSetpointLimit and MinHeatSetpointLimit are actual Matter Thermostat cluster
/// attributes (0x0016, 0x0015) — the gateway writes them directly via the connector.
class PropertyConstraint extends $pb.GeneratedMessage {
  factory PropertyConstraint({
    $core.int? intMax,
    $core.int? intMin,
    $core.int? uintMax,
    $core.int? uintMin,
    AttributeRef? attribute,
  }) {
    final result = create();
    if (intMax != null) result.intMax = intMax;
    if (intMin != null) result.intMin = intMin;
    if (uintMax != null) result.uintMax = uintMax;
    if (uintMin != null) result.uintMin = uintMin;
    if (attribute != null) result.attribute = attribute;
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
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intMax', $pb.PbFieldType.OS3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'intMin', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'uintMax', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'uintMin', $pb.PbFieldType.OU3)
    ..aOM<AttributeRef>(8, _omitFieldNames ? '' : 'attribute',
        subBuilder: AttributeRef.create)
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

  @$pb.TagNumber(2)
  $core.int get intMax => $_getIZ(0);
  @$pb.TagNumber(2)
  set intMax($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(2)
  $core.bool hasIntMax() => $_has(0);
  @$pb.TagNumber(2)
  void clearIntMax() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get intMin => $_getIZ(1);
  @$pb.TagNumber(3)
  set intMin($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(3)
  $core.bool hasIntMin() => $_has(1);
  @$pb.TagNumber(3)
  void clearIntMin() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get uintMax => $_getIZ(2);
  @$pb.TagNumber(4)
  set uintMax($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(4)
  $core.bool hasUintMax() => $_has(2);
  @$pb.TagNumber(4)
  void clearUintMax() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get uintMin => $_getIZ(3);
  @$pb.TagNumber(5)
  set uintMin($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(5)
  $core.bool hasUintMin() => $_has(3);
  @$pb.TagNumber(5)
  void clearUintMin() => $_clearField(5);

  /// An absent AttributeRef.endpoint_id here means EVERY endpoint of the device — the
  /// opposite of what it means on a grant, deliberately. A constraint is a restriction, so
  /// omission broadens what is restricted; a grant is permission, so omission there would
  /// broaden access and is invalid instead. Both defaults fail safe.
  @$pb.TagNumber(8)
  AttributeRef get attribute => $_getN(4);
  @$pb.TagNumber(8)
  set attribute(AttributeRef value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasAttribute() => $_has(4);
  @$pb.TagNumber(8)
  void clearAttribute() => $_clearField(8);
  @$pb.TagNumber(8)
  AttributeRef ensureAttribute() => $_ensure(4);
}

class DeviceAcl extends $pb.GeneratedMessage {
  factory DeviceAcl({
    $0.DeviceId? deviceId,
    $0.UserId? userId,
    $2.Role? role,
    $core.Iterable<$2.PermissionAction>? allowedActions,
    $core.Iterable<PropertyConstraint>? propertyConstraints,
    $core.Iterable<AttributeRef>? allowedAttributeRefs,
    $core.Iterable<CommandRef>? allowedCommandRefs,
    $core.Iterable<EventRef>? allowedEventRefs,
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
    if (allowedCommandRefs != null)
      result.allowedCommandRefs.addAll(allowedCommandRefs);
    if (allowedEventRefs != null)
      result.allowedEventRefs.addAll(allowedEventRefs);
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
    ..pc<CommandRef>(
        9, _omitFieldNames ? '' : 'allowedCommandRefs', $pb.PbFieldType.PM,
        subBuilder: CommandRef.create)
    ..pc<EventRef>(
        10, _omitFieldNames ? '' : 'allowedEventRefs', $pb.PbFieldType.PM,
        subBuilder: EventRef.create)
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

  /// The user's role AS RESOLVED FOR THIS DEVICE. A gateway-wide role is a ceiling on the
  /// kinds of action a user may perform; reach — which devices — is decided separately by
  /// filing. This field is what the two produced together for this one device, so it may
  /// differ from any single role the user's token carries. See roles.proto.
  ///
  /// Descriptive. allowed_actions and the ref lists below are what a consumer enforces
  /// against; this says which relationship produced them.
  @$pb.TagNumber(3)
  $2.Role get role => $_getN(2);
  @$pb.TagNumber(3)
  set role($2.Role value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRole() => $_has(2);
  @$pb.TagNumber(3)
  void clearRole() => $_clearField(3);

  /// What this user may do to this device. EMPTY GRANTS NOTHING — an ACL with no actions
  /// permits no operation at all.
  ///
  /// Deliberately the opposite default to allowed_attribute_refs below, which is empty for
  /// "every attribute". The two are not the same kind of list: this one IS the grant, so an
  /// empty grant is empty, while that one is a FILTER narrowing the grant, so an empty
  /// filter narrows nothing. Reading either as the other fails open.
  ///
  /// PERMISSION_ACTION_UNSPECIFIED in this list is invalid and MUST be rejected; it is not
  /// a wildcard. See roles.proto for what each action authorizes.
  @$pb.TagNumber(4)
  $pb.PbList<$2.PermissionAction> get allowedActions => $_getList(3);

  @$pb.TagNumber(6)
  $pb.PbList<PropertyConstraint> get propertyConstraints => $_getList(4);

  /// Narrows allowed_actions to particular attributes. Empty = every attribute on every
  /// endpoint, unchanged in meaning from the field it replaces — an empty filter narrows
  /// nothing. It does NOT grant anything on its own: with allowed_actions empty, this
  /// being empty still permits no operation.
  ///
  /// A ref present with no endpoint_id is INVALID and MUST be rejected, not read as a grant
  /// over every endpoint: omission must never be what widens access.
  @$pb.TagNumber(7)
  $pb.PbList<AttributeRef> get allowedAttributeRefs => $_getList(5);

  /// Narrows PERMISSION_ACTION_INVOKE to particular commands. Empty = every command the
  /// device accepts, matching allowed_attribute_refs — it is a filter, and an empty filter
  /// narrows nothing. It grants nothing on its own: without INVOKE in allowed_actions, no
  /// command is permitted however this list reads.
  ///
  /// Without it INVOKE is all-or-nothing, and that is the operation that moves hardware —
  /// a grant covering a thermostat setpoint would equally cover UnlockDoor on a device
  /// exposing both.
  ///
  /// A ref present with no endpoint_id is INVALID and MUST be rejected.
  @$pb.TagNumber(9)
  $pb.PbList<CommandRef> get allowedCommandRefs => $_getList(6);

  /// Which events this user may receive. Empty = NONE.
  ///
  /// The opposite default to the two lists above, deliberately. Attributes and commands are
  /// a device's operating surface; events are its journal, and a journal discloses who did
  /// what and when. Reaching that must be an explicit grant, never something a user gets by
  /// holding SUBSCRIBE for ordinary readings.
  ///
  /// Requires PERMISSION_ACTION_SUBSCRIBE as well: the action says a standing stream is
  /// permitted, this list says which events travel on it.
  ///
  /// A ref present with no endpoint_id is INVALID and MUST be rejected.
  @$pb.TagNumber(10)
  $pb.PbList<EventRef> get allowedEventRefs => $_getList(7);
}

/// Every DeviceAcl in force for one user on one gateway, at valid_at.
///
/// ADVISORY WHEN SENT TO AN APP. The gateway is the sole authority and enforces every
/// read, write, invoke and subscription against its own copy, whether or not the app has
/// one. This is disclosed so an app can RENDER honestly — grey out a control the user may
/// not invoke, clamp a setpoint slider to a PropertyConstraint, hide a device — instead of
/// offering an action and discovering the refusal.
///
/// Two mistakes this exists to prevent. An app MUST still handle refusal: this snapshot can
/// be stale, and it is not a promise. A gateway MUST NOT treat having sent it as having
/// enforced anything.
///
/// It discloses only the recipient's own permissions. It says nothing about what any other
/// user holds.
///
/// Sent whole rather than as a delta, in webrtc.v1.DeviceStateSnapshot at connect and in
/// webrtc.v1.LivePermissionUpdate when it changes.
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
