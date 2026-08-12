// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/property_update.proto.

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

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

enum PropertyUpdate_Value {
  intValue,
  uintValue,
  boolValue,
  floatValue,
  stringValue,
  bytesValue,
  notSet
}

/// PropertyUpdate carries a single attribute change from connector to gateway,
/// or from gateway to Flutter app.
///
/// Resolution rule (normative)
///
/// A consumer storing an update into device.v1.Device.properties resolves it in two
/// steps, both by reading options off the descriptor. Neither step involves
/// transforming a name.
///
///  1. Pick the properties message: the Device.properties case whose message type
///     declares (matter_device_type) == DeviceDescriptor.matter_device_type_id.
///  2. Pick the field: the one field of that message whose (matter_cluster_id) equals
///     cluster_id_hex parsed as a hex integer AND whose (matter_attribute) equals
///     attribute_name.
///
/// Both comparisons are exact. attribute_name is byte-for-byte equal to the Matter
/// attribute's spec spelling; it is NOT derived from the proto field name and case- or
/// separator-insensitive matching against field names is not a valid fallback —
/// OccupancySensorProperties and WindowCoveringProperties both have fields that no such
/// transformation reaches. See matter_options.proto.
///
/// When either step resolves to nothing the update is not storable. A consumer MUST NOT
/// silently drop it: log it at warning with device_id, cluster_id_hex and attribute_name,
/// and count it. A miss means one of three things, all of which need to be visible —
/// the device reports an attribute this schema does not model, the device type is not
/// modelled at all (see device.proto), or a connector is sending a non-Matter name.
/// Advancing Device.last_seen on a miss is correct; the update is still evidence of life.
///
/// Producers: attribute_name uses the Matter attribute's own PascalCase, acronyms
/// included (e.g. "OccupiedHeatingSetpoint", "PIROccupiedToUnoccupiedDelay").
/// cluster_id_hex is the Matter cluster ID as a 4-char lowercase-or-uppercase hex string
/// with no 0x prefix (e.g. "0201" for Thermostat). Both are required for resolution;
/// an update carrying only one of them cannot be stored.
class PropertyUpdate extends $pb.GeneratedMessage {
  factory PropertyUpdate({
    $0.DeviceId? deviceId,
    $core.String? attributeName,
    $core.int? intValue,
    $core.int? uintValue,
    $core.bool? boolValue,
    $core.double? floatValue,
    $core.String? stringValue,
    $core.List<$core.int>? bytesValue,
    $1.Timestamp? timestamp,
    $core.String? clusterIdHex,
  }) {
    final result = create();
    if (deviceId != null) result.deviceId = deviceId;
    if (attributeName != null) result.attributeName = attributeName;
    if (intValue != null) result.intValue = intValue;
    if (uintValue != null) result.uintValue = uintValue;
    if (boolValue != null) result.boolValue = boolValue;
    if (floatValue != null) result.floatValue = floatValue;
    if (stringValue != null) result.stringValue = stringValue;
    if (bytesValue != null) result.bytesValue = bytesValue;
    if (timestamp != null) result.timestamp = timestamp;
    if (clusterIdHex != null) result.clusterIdHex = clusterIdHex;
    return result;
  }

  PropertyUpdate._();

  factory PropertyUpdate.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PropertyUpdate.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PropertyUpdate_Value>
      _PropertyUpdate_ValueByTag = {
    3: PropertyUpdate_Value.intValue,
    4: PropertyUpdate_Value.uintValue,
    5: PropertyUpdate_Value.boolValue,
    6: PropertyUpdate_Value.floatValue,
    7: PropertyUpdate_Value.stringValue,
    8: PropertyUpdate_Value.bytesValue,
    0: PropertyUpdate_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PropertyUpdate',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6, 7, 8])
    ..aOM<$0.DeviceId>(1, _omitFieldNames ? '' : 'deviceId',
        subBuilder: $0.DeviceId.create)
    ..aOS(2, _omitFieldNames ? '' : 'attributeName')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'intValue', $pb.PbFieldType.OS3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'uintValue', $pb.PbFieldType.OU3)
    ..aOB(5, _omitFieldNames ? '' : 'boolValue')
    ..a<$core.double>(
        6, _omitFieldNames ? '' : 'floatValue', $pb.PbFieldType.OF)
    ..aOS(7, _omitFieldNames ? '' : 'stringValue')
    ..a<$core.List<$core.int>>(
        8, _omitFieldNames ? '' : 'bytesValue', $pb.PbFieldType.OY)
    ..aOM<$1.Timestamp>(9, _omitFieldNames ? '' : 'timestamp',
        subBuilder: $1.Timestamp.create)
    ..aOS(10, _omitFieldNames ? '' : 'clusterIdHex')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyUpdate clone() => PropertyUpdate()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyUpdate copyWith(void Function(PropertyUpdate) updates) =>
      super.copyWith((message) => updates(message as PropertyUpdate))
          as PropertyUpdate;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyUpdate create() => PropertyUpdate._();
  @$core.override
  PropertyUpdate createEmptyInstance() => create();
  static $pb.PbList<PropertyUpdate> createRepeated() =>
      $pb.PbList<PropertyUpdate>();
  @$core.pragma('dart2js:noInline')
  static PropertyUpdate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PropertyUpdate>(create);
  static PropertyUpdate? _defaultInstance;

  PropertyUpdate_Value whichValue() =>
      _PropertyUpdate_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => $_clearField($_whichOneof(0));

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
  $core.String get attributeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set attributeName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAttributeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearAttributeName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get intValue => $_getIZ(2);
  @$pb.TagNumber(3)
  set intValue($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIntValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get uintValue => $_getIZ(3);
  @$pb.TagNumber(4)
  set uintValue($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUintValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearUintValue() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get boolValue => $_getBF(4);
  @$pb.TagNumber(5)
  set boolValue($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBoolValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearBoolValue() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get floatValue => $_getN(5);
  @$pb.TagNumber(6)
  set floatValue($core.double value) => $_setFloat(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFloatValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearFloatValue() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get stringValue => $_getSZ(6);
  @$pb.TagNumber(7)
  set stringValue($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStringValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearStringValue() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.int> get bytesValue => $_getN(7);
  @$pb.TagNumber(8)
  set bytesValue($core.List<$core.int> value) => $_setBytes(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBytesValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearBytesValue() => $_clearField(8);

  @$pb.TagNumber(9)
  $1.Timestamp get timestamp => $_getN(8);
  @$pb.TagNumber(9)
  set timestamp($1.Timestamp value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearTimestamp() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.Timestamp ensureTimestamp() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get clusterIdHex => $_getSZ(9);
  @$pb.TagNumber(10)
  set clusterIdHex($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasClusterIdHex() => $_has(9);
  @$pb.TagNumber(10)
  void clearClusterIdHex() => $_clearField(10);
}

class PropertyUpdateBatch extends $pb.GeneratedMessage {
  factory PropertyUpdateBatch({
    $core.Iterable<PropertyUpdate>? updates,
    $1.Timestamp? batchTimestamp,
  }) {
    final result = create();
    if (updates != null) result.updates.addAll(updates);
    if (batchTimestamp != null) result.batchTimestamp = batchTimestamp;
    return result;
  }

  PropertyUpdateBatch._();

  factory PropertyUpdateBatch.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PropertyUpdateBatch.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PropertyUpdateBatch',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..pc<PropertyUpdate>(
        1, _omitFieldNames ? '' : 'updates', $pb.PbFieldType.PM,
        subBuilder: PropertyUpdate.create)
    ..aOM<$1.Timestamp>(2, _omitFieldNames ? '' : 'batchTimestamp',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyUpdateBatch clone() => PropertyUpdateBatch()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyUpdateBatch copyWith(void Function(PropertyUpdateBatch) updates) =>
      super.copyWith((message) => updates(message as PropertyUpdateBatch))
          as PropertyUpdateBatch;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyUpdateBatch create() => PropertyUpdateBatch._();
  @$core.override
  PropertyUpdateBatch createEmptyInstance() => create();
  static $pb.PbList<PropertyUpdateBatch> createRepeated() =>
      $pb.PbList<PropertyUpdateBatch>();
  @$core.pragma('dart2js:noInline')
  static PropertyUpdateBatch getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PropertyUpdateBatch>(create);
  static PropertyUpdateBatch? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PropertyUpdate> get updates => $_getList(0);

  @$pb.TagNumber(2)
  $1.Timestamp get batchTimestamp => $_getN(1);
  @$pb.TagNumber(2)
  set batchTimestamp($1.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBatchTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearBatchTimestamp() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Timestamp ensureBatchTimestamp() => $_ensure(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
