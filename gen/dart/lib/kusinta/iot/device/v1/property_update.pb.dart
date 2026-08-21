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
import 'property_update.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'property_update.pbenum.dart';

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
/// or from gateway to app.
///
/// Resolution rule (normative)
///
/// A consumer storing an update into a device.v1.Device resolves it in three steps, all by
/// reading options off the descriptor. No step involves transforming a name.
///
///  1. Pick the endpoint: the Device.endpoints entry whose endpoint_id equals the update's
///     endpoint_id.
///  2. Pick the message. Two branches, chosen by whether vendor_extension is set:
///       - absent (Matter): the Endpoint.matter_properties case whose message type declares
///         (matter_device_type) == Endpoint.matter_device_type_id.
///       - present (vendor): the Endpoint.vendor_properties case whose message type declares
///         (vendor_extension) == the update's vendor_extension.
///  3. Pick the field:
///       - Matter branch: the one field whose (matter_cluster_id) equals cluster_id AND
///         whose (matter_attribute_id) equals attribute_id.
///       - Vendor branch: the one field whose (vendor_attribute) equals attribute_name.
///         cluster_id and attribute_id play no part; a vendor parameter has no Matter
///         cluster.
///
/// Both branches are the same shape: pick a message by a message option, then one field by
/// a field option. Nothing nests, and nothing is searched recursively.
///
/// Steps 2 and 3 depend only on the schema, never on the update: both maps are fixed at
/// compile time. Build them ONCE at startup — a device-type-to-case map and a
/// vendor-key-to-case map, plus a (cluster_id, attribute_id) map per message — and resolve
/// with lookups. Only step 1 reads per-device data.
///
/// Falling through to the generic carrier
///
/// On the MATTER branch, failing step 2 or 3 is NOT a miss. It means the schema does not
/// model this device type, or models it without this attribute — both legitimate, and both
/// have a home: store the value into the endpoint's ClusterState for cluster_id, as an
/// AttributeState with this attribute_id. See cluster_state.proto.
///
/// This is the one-value-one-place rule in force. An attribute with a typed field is
/// stored there and MUST NOT also appear in ClusterState.attributes; an attribute without
/// one is stored generically and appears nowhere else. A consumer reading a value looks in
/// the typed field first and the cluster carrier second, and never has to reconcile two
/// answers.
///
/// Cluster metadata is not subject to that rule: a ClusterState entry may exist for a fully
/// modelled cluster in order to carry its cluster_revision, feature_map and
/// accepted_command_ids.
///
/// What remains a miss
///
/// An update naming an endpoint the device does not have, or a vendor extension or vendor
/// attribute that resolves to nothing. Those are not storable and MUST NOT be dropped
/// silently: log at warning with device_id, endpoint_id, cluster_id and attribute_id, and
/// count it. A miss now means a real disagreement about the device's shape, rather than
/// merely an attribute this schema has not got around to modelling.
///
/// Advancing Device.last_seen on a miss is correct; the update is still evidence of life.
///
/// Addressing
///
/// Matter addresses attributes numerically and so does this schema: cluster_id and
/// attribute_id are what resolution matches on, and both are required on the Matter branch.
/// Numeric because the generic carrier must address attributes of clusters this schema does
/// not model, and a vendor-defined cluster has no specification name to address it by — two
/// addressing schemes would be worse than one.
///
/// attribute_name is the attribute's own spelling, carried for logs and for anything
/// rendering to a human. On the Matter branch it is optional and plays no part in
/// resolution. On the VENDOR branch it is required and is what resolution matches, because
/// a vendor parameter has no numeric ID in any specification — there, it is the vendor's own
/// spelling exactly ("LEVEL", not "level").
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
    ValueProvenance? provenance,
    $core.int? endpointId,
    $core.String? vendorExtension,
    $core.int? clusterId,
    $core.int? attributeId,
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
    if (provenance != null) result.provenance = provenance;
    if (endpointId != null) result.endpointId = endpointId;
    if (vendorExtension != null) result.vendorExtension = vendorExtension;
    if (clusterId != null) result.clusterId = clusterId;
    if (attributeId != null) result.attributeId = attributeId;
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
    ..e<ValueProvenance>(
        11, _omitFieldNames ? '' : 'provenance', $pb.PbFieldType.OE,
        defaultOrMaker: ValueProvenance.VALUE_PROVENANCE_UNSPECIFIED,
        valueOf: ValueProvenance.valueOf,
        enumValues: ValueProvenance.values)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'endpointId', $pb.PbFieldType.OU3)
    ..aOS(13, _omitFieldNames ? '' : 'vendorExtension')
    ..a<$core.int>(14, _omitFieldNames ? '' : 'clusterId', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        15, _omitFieldNames ? '' : 'attributeId', $pb.PbFieldType.OU3)
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

  /// The attribute's own spelling. Required on the vendor branch, where it is what
  /// resolution matches. Optional on the Matter branch, where attribute_id resolves and this
  /// is for logs — but send it there too when it is known: it is what makes an unresolvable
  /// update legible to whoever reads the warning.
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

  /// How much the producer believes this value. Unset means no claim, which is how every
  /// producer written before this field behaved, so a consumer that ignores it and a
  /// producer that never sets it both behave exactly as they did.
  ///
  /// Snapshots carry no provenance. Endpoint.matter_properties is a typed message whose fields
  /// hold a value and nothing else, so a gateway MUST NOT store an OPTIMISTIC value into
  /// its registry: an app reconnecting mid-window would receive it restated as plain
  /// fact. A snapshot is a statement of what has been confirmed. A reconnect during an
  /// optimistic window therefore shows the last confirmed value, and the correction or
  /// confirmation arrives on the live path as it would have anyway.
  @$pb.TagNumber(11)
  ValueProvenance get provenance => $_getN(9);
  @$pb.TagNumber(11)
  set provenance(ValueProvenance value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasProvenance() => $_has(9);
  @$pb.TagNumber(11)
  void clearProvenance() => $_clearField(11);

  /// Which endpoint of the device this attribute belongs to. Required by rule — proto3 has
  /// no `required`, and `optional` is what makes "not stated" representable so a consumer
  /// can reject it. An update that names no endpoint is a miss, logged like any other
  /// unresolvable update.
  ///
  /// Not defaulted to the primary endpoint. That fallback passes every test on a
  /// single-endpoint device and misroutes on the day one grows a second, which is
  /// precisely the class of silent failure this rule exists to prevent. Explicit presence
  /// rather than treating 0 as "unset": 0 is the Matter root node, and a reserved-zero
  /// sentinel is the pattern this schema has been removing, not adding.
  @$pb.TagNumber(12)
  $core.int get endpointId => $_getIZ(10);
  @$pb.TagNumber(12)
  set endpointId($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(12)
  $core.bool hasEndpointId() => $_has(10);
  @$pb.TagNumber(12)
  void clearEndpointId() => $_clearField(12);

  /// Set to route this update down the vendor branch of step 2, naming the extension by
  /// its (vendor_extension) key — e.g. "homematic.thermostat". Absent means the Matter
  /// branch, which
  /// is what every update carried before this field existed.
  ///
  /// A vendor parameter has no Matter cluster, so cluster_id stays unset here.
  @$pb.TagNumber(13)
  $core.String get vendorExtension => $_getSZ(11);
  @$pb.TagNumber(13)
  set vendorExtension($core.String value) => $_setString(11, value);
  @$pb.TagNumber(13)
  $core.bool hasVendorExtension() => $_has(11);
  @$pb.TagNumber(13)
  void clearVendorExtension() => $_clearField(13);

  /// The Matter cluster this attribute belongs to, e.g. 0x0201 for Thermostat. Compared
  /// directly against (matter_cluster_id), which is a uint32 too — a hex string on the
  /// wire meant every consumer parsed it on every update just to compare it with a number
  /// the descriptor already held, and it invented questions the wire should not ask
  /// ("0201" vs "201" vs "0x0201", upper or lower case).
  ///
  /// Required on the Matter branch, unset on the vendor branch: a vendor parameter has no
  /// Matter cluster.
  @$pb.TagNumber(14)
  $core.int get clusterId => $_getIZ(12);
  @$pb.TagNumber(14)
  set clusterId($core.int value) => $_setUnsignedInt32(12, value);
  @$pb.TagNumber(14)
  $core.bool hasClusterId() => $_has(12);
  @$pb.TagNumber(14)
  void clearClusterId() => $_clearField(14);

  /// The Matter attribute ID within that cluster, e.g. 0x0012 for OccupiedHeatingSetpoint.
  /// What step 3 matches against (matter_attribute_id) on the Matter branch, and what
  /// addresses an attribute of a cluster this schema does not model.
  ///
  /// Required on the Matter branch, unset on the vendor branch.
  @$pb.TagNumber(15)
  $core.int get attributeId => $_getIZ(13);
  @$pb.TagNumber(15)
  set attributeId($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(15)
  $core.bool hasAttributeId() => $_has(13);
  @$pb.TagNumber(15)
  void clearAttributeId() => $_clearField(15);
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
