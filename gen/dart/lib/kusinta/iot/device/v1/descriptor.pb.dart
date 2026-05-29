// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/descriptor.proto.

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

import '../../common/v1/types.pbenum.dart' as $2;
import '../../identity/v1/identity.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// DeviceDescriptor holds identity and Matter BasicInformation cluster fields.
/// Fields 1-19 are stable Matter-aligned fields. Fields 20+ are ownership/lifecycle.
class DeviceDescriptor extends $pb.GeneratedMessage {
  factory DeviceDescriptor({
    $0.DeviceId? deviceId,
    $core.int? matterDeviceTypeId,
    $core.String? vendorName,
    $core.String? productName,
    $core.String? serialNumber,
    $core.String? nodeLabel,
    $core.int? vendorId,
    $core.int? productId,
    $core.String? hardwareVersionString,
    $core.String? softwareVersionString,
    $0.ConnectorId? connectorId,
    $0.SpaceId? spaceId,
    $2.DeviceOwnershipType? ownership,
    $2.DeviceLifecycleState? lifecycle,
    $0.UserId? ownerUserId,
    $1.Timestamp? claimedAt,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (matterDeviceTypeId != null)
      result.matterDeviceTypeId = matterDeviceTypeId;
    if (vendorName != null) result.vendorName = vendorName;
    if (productName != null) result.productName = productName;
    if (serialNumber != null) result.serialNumber = serialNumber;
    if (nodeLabel != null) result.nodeLabel = nodeLabel;
    if (vendorId != null) result.vendorId = vendorId;
    if (productId != null) result.productId = productId;
    if (hardwareVersionString != null)
      result.hardwareVersionString = hardwareVersionString;
    if (softwareVersionString != null)
      result.softwareVersionString = softwareVersionString;
    if (connectorId != null) result.connectorId = connectorId;
    if (spaceId != null) result.spaceId = spaceId;
    if (ownership != null) result.ownership = ownership;
    if (lifecycle != null) result.lifecycle = lifecycle;
    if (ownerUserId != null) result.ownerUserId = ownerUserId;
    if (claimedAt != null) result.claimedAt = claimedAt;
    return result;
  }

  DeviceDescriptor._();

  factory DeviceDescriptor.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DeviceDescriptor.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeviceDescriptor',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aI(2, _omitFieldNames ? '' : 'matterDeviceTypeId',
        fieldType: $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'vendorName')
    ..aOS(4, _omitFieldNames ? '' : 'productName')
    ..aOS(5, _omitFieldNames ? '' : 'serialNumber')
    ..aOS(6, _omitFieldNames ? '' : 'nodeLabel')
    ..aI(7, _omitFieldNames ? '' : 'vendorId', fieldType: $pb.PbFieldType.OU3)
    ..aI(8, _omitFieldNames ? '' : 'productId', fieldType: $pb.PbFieldType.OU3)
    ..aOS(9, _omitFieldNames ? '' : 'hardwareVersionString')
    ..aOS(10, _omitFieldNames ? '' : 'softwareVersionString')
    ..aOM<$0.ConnectorId>(11, _omitFieldNames ? '' : 'connectorId',
        subBuilder: $0.ConnectorId.create)
    ..aOM<$0.SpaceId>(12, _omitFieldNames ? '' : 'spaceId',
        subBuilder: $0.SpaceId.create)
    ..aE<$2.DeviceOwnershipType>(13, _omitFieldNames ? '' : 'ownership',
        enumValues: $2.DeviceOwnershipType.values)
    ..aE<$2.DeviceLifecycleState>(14, _omitFieldNames ? '' : 'lifecycle',
        enumValues: $2.DeviceLifecycleState.values)
    ..aOM<$0.UserId>(15, _omitFieldNames ? '' : 'ownerUserId',
        subBuilder: $0.UserId.create)
    ..aOM<$1.Timestamp>(16, _omitFieldNames ? '' : 'claimedAt',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceDescriptor clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeviceDescriptor copyWith(void Function(DeviceDescriptor) updates) =>
      super.copyWith((message) => updates(message as DeviceDescriptor))
          as DeviceDescriptor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeviceDescriptor create() => DeviceDescriptor._();
  @$core.override
  DeviceDescriptor createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DeviceDescriptor getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeviceDescriptor>(create);
  static DeviceDescriptor? _defaultInstance;

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

  /// Matter 1.5.1 device type ID (e.g. 0x0301 = Thermostat, 0x0302 = TemperatureSensor)
  @$pb.TagNumber(2)
  $core.int get matterDeviceTypeId => $_getIZ(1);
  @$pb.TagNumber(2)
  set matterDeviceTypeId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMatterDeviceTypeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearMatterDeviceTypeId() => $_clearField(2);

  /// Matter BasicInformation cluster attributes
  @$pb.TagNumber(3)
  $core.String get vendorName => $_getSZ(2);
  @$pb.TagNumber(3)
  set vendorName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVendorName() => $_has(2);
  @$pb.TagNumber(3)
  void clearVendorName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get productName => $_getSZ(3);
  @$pb.TagNumber(4)
  set productName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasProductName() => $_has(3);
  @$pb.TagNumber(4)
  void clearProductName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get serialNumber => $_getSZ(4);
  @$pb.TagNumber(5)
  set serialNumber($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSerialNumber() => $_has(4);
  @$pb.TagNumber(5)
  void clearSerialNumber() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get nodeLabel => $_getSZ(5);
  @$pb.TagNumber(6)
  set nodeLabel($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasNodeLabel() => $_has(5);
  @$pb.TagNumber(6)
  void clearNodeLabel() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get vendorId => $_getIZ(6);
  @$pb.TagNumber(7)
  set vendorId($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasVendorId() => $_has(6);
  @$pb.TagNumber(7)
  void clearVendorId() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get productId => $_getIZ(7);
  @$pb.TagNumber(8)
  set productId($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasProductId() => $_has(7);
  @$pb.TagNumber(8)
  void clearProductId() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get hardwareVersionString => $_getSZ(8);
  @$pb.TagNumber(9)
  set hardwareVersionString($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHardwareVersionString() => $_has(8);
  @$pb.TagNumber(9)
  void clearHardwareVersionString() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get softwareVersionString => $_getSZ(9);
  @$pb.TagNumber(10)
  set softwareVersionString($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasSoftwareVersionString() => $_has(9);
  @$pb.TagNumber(10)
  void clearSoftwareVersionString() => $_clearField(10);

  @$pb.TagNumber(11)
  $0.ConnectorId get connectorId => $_getN(10);
  @$pb.TagNumber(11)
  set connectorId($0.ConnectorId value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasConnectorId() => $_has(10);
  @$pb.TagNumber(11)
  void clearConnectorId() => $_clearField(11);
  @$pb.TagNumber(11)
  $0.ConnectorId ensureConnectorId() => $_ensure(10);

  @$pb.TagNumber(12)
  $0.SpaceId get spaceId => $_getN(11);
  @$pb.TagNumber(12)
  set spaceId($0.SpaceId value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasSpaceId() => $_has(11);
  @$pb.TagNumber(12)
  void clearSpaceId() => $_clearField(12);
  @$pb.TagNumber(12)
  $0.SpaceId ensureSpaceId() => $_ensure(11);

  @$pb.TagNumber(13)
  $2.DeviceOwnershipType get ownership => $_getN(12);
  @$pb.TagNumber(13)
  set ownership($2.DeviceOwnershipType value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasOwnership() => $_has(12);
  @$pb.TagNumber(13)
  void clearOwnership() => $_clearField(13);

  @$pb.TagNumber(14)
  $2.DeviceLifecycleState get lifecycle => $_getN(13);
  @$pb.TagNumber(14)
  set lifecycle($2.DeviceLifecycleState value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasLifecycle() => $_has(13);
  @$pb.TagNumber(14)
  void clearLifecycle() => $_clearField(14);

  /// Populated when ownership == RESIDENT
  @$pb.TagNumber(15)
  $0.UserId get ownerUserId => $_getN(14);
  @$pb.TagNumber(15)
  set ownerUserId($0.UserId value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasOwnerUserId() => $_has(14);
  @$pb.TagNumber(15)
  void clearOwnerUserId() => $_clearField(15);
  @$pb.TagNumber(15)
  $0.UserId ensureOwnerUserId() => $_ensure(14);

  @$pb.TagNumber(16)
  $1.Timestamp get claimedAt => $_getN(15);
  @$pb.TagNumber(16)
  set claimedAt($1.Timestamp value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasClaimedAt() => $_has(15);
  @$pb.TagNumber(16)
  void clearClaimedAt() => $_clearField(16);
  @$pb.TagNumber(16)
  $1.Timestamp ensureClaimedAt() => $_ensure(15);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
