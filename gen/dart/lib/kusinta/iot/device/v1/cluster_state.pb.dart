// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/cluster_state.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// Matter null. Distinct from a field being absent: Matter types many attributes as
/// nullable, where null is a reported value meaning "not currently known" — a thermostat
/// that cannot read its local temperature reports null, which is not the same as never
/// having reported at all.
class NullValue extends $pb.GeneratedMessage {
  factory NullValue() => create();

  NullValue._();

  factory NullValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NullValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NullValue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NullValue clone() => NullValue()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NullValue copyWith(void Function(NullValue) updates) =>
      super.copyWith((message) => updates(message as NullValue)) as NullValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NullValue create() => NullValue._();
  @$core.override
  NullValue createEmptyInstance() => create();
  static $pb.PbList<NullValue> createRepeated() => $pb.PbList<NullValue>();
  @$core.pragma('dart2js:noInline')
  static NullValue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NullValue>(create);
  static NullValue? _defaultInstance;
}

enum AttributeValue_Value {
  boolValue,
  intValue,
  uintValue,
  doubleValue,
  stringValue,
  bytesValue,
  listValue,
  structValue,
  nullValue,
  notSet
}

/// A Matter attribute value of any shape, including the ones a scalar cannot carry.
///
/// Self-describing rather than Matter's own TLV as opaque bytes: an app that cannot decode
/// a value cannot show it, and TLV would make the generic path useful only to the gateway.
/// The cost is a recursive message; the benefit is that an attribute this schema has never
/// heard of is still renderable.
///
/// Widths are deliberately wider than most attributes need — sint64 covers every signed
/// Matter integer type and uint64 every unsigned one, so a generic carrier never has to
/// know an attribute's declared width to carry its value.
class AttributeValue extends $pb.GeneratedMessage {
  factory AttributeValue({
    $core.bool? boolValue,
    $fixnum.Int64? intValue,
    $fixnum.Int64? uintValue,
    $core.double? doubleValue,
    $core.String? stringValue,
    $core.List<$core.int>? bytesValue,
    AttributeValueList? listValue,
    AttributeValueStruct? structValue,
    NullValue? nullValue,
  }) {
    final result = create();
    if (boolValue != null) result.boolValue = boolValue;
    if (intValue != null) result.intValue = intValue;
    if (uintValue != null) result.uintValue = uintValue;
    if (doubleValue != null) result.doubleValue = doubleValue;
    if (stringValue != null) result.stringValue = stringValue;
    if (bytesValue != null) result.bytesValue = bytesValue;
    if (listValue != null) result.listValue = listValue;
    if (structValue != null) result.structValue = structValue;
    if (nullValue != null) result.nullValue = nullValue;
    return result;
  }

  AttributeValue._();

  factory AttributeValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AttributeValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, AttributeValue_Value>
      _AttributeValue_ValueByTag = {
    1: AttributeValue_Value.boolValue,
    2: AttributeValue_Value.intValue,
    3: AttributeValue_Value.uintValue,
    4: AttributeValue_Value.doubleValue,
    5: AttributeValue_Value.stringValue,
    6: AttributeValue_Value.bytesValue,
    7: AttributeValue_Value.listValue,
    8: AttributeValue_Value.structValue,
    9: AttributeValue_Value.nullValue,
    0: AttributeValue_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AttributeValue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    ..aOB(1, _omitFieldNames ? '' : 'boolValue')
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'intValue', $pb.PbFieldType.OS6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'uintValue', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.double>(
        4, _omitFieldNames ? '' : 'doubleValue', $pb.PbFieldType.OD)
    ..aOS(5, _omitFieldNames ? '' : 'stringValue')
    ..a<$core.List<$core.int>>(
        6, _omitFieldNames ? '' : 'bytesValue', $pb.PbFieldType.OY)
    ..aOM<AttributeValueList>(7, _omitFieldNames ? '' : 'listValue',
        subBuilder: AttributeValueList.create)
    ..aOM<AttributeValueStruct>(8, _omitFieldNames ? '' : 'structValue',
        subBuilder: AttributeValueStruct.create)
    ..aOM<NullValue>(9, _omitFieldNames ? '' : 'nullValue',
        subBuilder: NullValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttributeValue clone() => AttributeValue()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttributeValue copyWith(void Function(AttributeValue) updates) =>
      super.copyWith((message) => updates(message as AttributeValue))
          as AttributeValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttributeValue create() => AttributeValue._();
  @$core.override
  AttributeValue createEmptyInstance() => create();
  static $pb.PbList<AttributeValue> createRepeated() =>
      $pb.PbList<AttributeValue>();
  @$core.pragma('dart2js:noInline')
  static AttributeValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AttributeValue>(create);
  static AttributeValue? _defaultInstance;

  AttributeValue_Value whichValue() =>
      _AttributeValue_ValueByTag[$_whichOneof(0)]!;
  void clearValue() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get boolValue => $_getBF(0);
  @$pb.TagNumber(1)
  set boolValue($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBoolValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearBoolValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get intValue => $_getI64(1);
  @$pb.TagNumber(2)
  set intValue($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIntValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get uintValue => $_getI64(2);
  @$pb.TagNumber(3)
  set uintValue($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUintValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearUintValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get doubleValue => $_getN(3);
  @$pb.TagNumber(4)
  set doubleValue($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDoubleValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearDoubleValue() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get stringValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set stringValue($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStringValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearStringValue() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get bytesValue => $_getN(5);
  @$pb.TagNumber(6)
  set bytesValue($core.List<$core.int> value) => $_setBytes(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBytesValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearBytesValue() => $_clearField(6);

  @$pb.TagNumber(7)
  AttributeValueList get listValue => $_getN(6);
  @$pb.TagNumber(7)
  set listValue(AttributeValueList value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasListValue() => $_has(6);
  @$pb.TagNumber(7)
  void clearListValue() => $_clearField(7);
  @$pb.TagNumber(7)
  AttributeValueList ensureListValue() => $_ensure(6);

  @$pb.TagNumber(8)
  AttributeValueStruct get structValue => $_getN(7);
  @$pb.TagNumber(8)
  set structValue(AttributeValueStruct value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasStructValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearStructValue() => $_clearField(8);
  @$pb.TagNumber(8)
  AttributeValueStruct ensureStructValue() => $_ensure(7);

  @$pb.TagNumber(9)
  NullValue get nullValue => $_getN(8);
  @$pb.TagNumber(9)
  set nullValue(NullValue value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasNullValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearNullValue() => $_clearField(9);
  @$pb.TagNumber(9)
  NullValue ensureNullValue() => $_ensure(8);
}

class AttributeValueList extends $pb.GeneratedMessage {
  factory AttributeValueList({
    $core.Iterable<AttributeValue>? values,
  }) {
    final result = create();
    if (values != null) result.values.addAll(values);
    return result;
  }

  AttributeValueList._();

  factory AttributeValueList.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AttributeValueList.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AttributeValueList',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..pc<AttributeValue>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.PM,
        subBuilder: AttributeValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttributeValueList clone() => AttributeValueList()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttributeValueList copyWith(void Function(AttributeValueList) updates) =>
      super.copyWith((message) => updates(message as AttributeValueList))
          as AttributeValueList;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttributeValueList create() => AttributeValueList._();
  @$core.override
  AttributeValueList createEmptyInstance() => create();
  static $pb.PbList<AttributeValueList> createRepeated() =>
      $pb.PbList<AttributeValueList>();
  @$core.pragma('dart2js:noInline')
  static AttributeValueList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AttributeValueList>(create);
  static AttributeValueList? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AttributeValue> get values => $_getList(0);
}

/// Matter struct fields are addressed by numeric context tag, not by name, so the map is
/// keyed by tag. A consumer that knows the struct's definition reads the tags it wants; one
/// that does not can still carry and re-emit the whole thing.
class AttributeValueStruct extends $pb.GeneratedMessage {
  factory AttributeValueStruct({
    $core.Iterable<$core.MapEntry<$core.int, AttributeValue>>? fields,
  }) {
    final result = create();
    if (fields != null) result.fields.addEntries(fields);
    return result;
  }

  AttributeValueStruct._();

  factory AttributeValueStruct.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AttributeValueStruct.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AttributeValueStruct',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..m<$core.int, AttributeValue>(1, _omitFieldNames ? '' : 'fields',
        entryClassName: 'AttributeValueStruct.FieldsEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: AttributeValue.create,
        valueDefaultOrMaker: AttributeValue.getDefault,
        packageName: const $pb.PackageName('kusinta.iot.device.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttributeValueStruct clone() =>
      AttributeValueStruct()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttributeValueStruct copyWith(void Function(AttributeValueStruct) updates) =>
      super.copyWith((message) => updates(message as AttributeValueStruct))
          as AttributeValueStruct;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttributeValueStruct create() => AttributeValueStruct._();
  @$core.override
  AttributeValueStruct createEmptyInstance() => create();
  static $pb.PbList<AttributeValueStruct> createRepeated() =>
      $pb.PbList<AttributeValueStruct>();
  @$core.pragma('dart2js:noInline')
  static AttributeValueStruct getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AttributeValueStruct>(create);
  static AttributeValueStruct? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.int, AttributeValue> get fields => $_getMap(0);
}

class AttributeState extends $pb.GeneratedMessage {
  factory AttributeState({
    $core.int? attributeId,
    AttributeValue? value,
  }) {
    final result = create();
    if (attributeId != null) result.attributeId = attributeId;
    if (value != null) result.value = value;
    return result;
  }

  AttributeState._();

  factory AttributeState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AttributeState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AttributeState',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'attributeId', $pb.PbFieldType.OU3)
    ..aOM<AttributeValue>(2, _omitFieldNames ? '' : 'value',
        subBuilder: AttributeValue.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttributeState clone() => AttributeState()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttributeState copyWith(void Function(AttributeState) updates) =>
      super.copyWith((message) => updates(message as AttributeState))
          as AttributeState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttributeState create() => AttributeState._();
  @$core.override
  AttributeState createEmptyInstance() => create();
  static $pb.PbList<AttributeState> createRepeated() =>
      $pb.PbList<AttributeState>();
  @$core.pragma('dart2js:noInline')
  static AttributeState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AttributeState>(create);
  static AttributeState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get attributeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set attributeId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAttributeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttributeId() => $_clearField(1);

  @$pb.TagNumber(2)
  AttributeValue get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(AttributeValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
  @$pb.TagNumber(2)
  AttributeValue ensureValue() => $_ensure(1);
}

/// One cluster hosted by an endpoint: what it is, what it supports, and any attribute value
/// that has no typed home.
///
/// An entry exists for EVERY cluster the endpoint hosts, including clusters this schema
/// models with a typed properties message. That is not a contradiction of the
/// one-value-one-place rule below — cluster_revision, feature_map and
/// accepted_command_ids describe the cluster itself and have nowhere else to live.
///
/// attributes is where the rule applies: it holds ONLY the attribute values that no typed
/// field covers. An attribute the schema models is carried in its typed field and MUST NOT
/// be repeated here — a value that exists in two places is a value that can disagree with
/// itself.
///
/// This is what lets an endpoint report something useful when its device type is not
/// modelled, or when it carries a cluster beyond its device type's set, which the Matter
/// specification explicitly permits.
class ClusterState extends $pb.GeneratedMessage {
  factory ClusterState({
    $core.int? clusterId,
    $core.int? clusterRevision,
    $core.int? featureMap,
    $core.Iterable<AttributeState>? attributes,
    $core.Iterable<$core.int>? acceptedCommandIds,
  }) {
    final result = create();
    if (clusterId != null) result.clusterId = clusterId;
    if (clusterRevision != null) result.clusterRevision = clusterRevision;
    if (featureMap != null) result.featureMap = featureMap;
    if (attributes != null) result.attributes.addAll(attributes);
    if (acceptedCommandIds != null)
      result.acceptedCommandIds.addAll(acceptedCommandIds);
    return result;
  }

  ClusterState._();

  factory ClusterState.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ClusterState.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClusterState',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.device.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'clusterId', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'clusterRevision', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'featureMap', $pb.PbFieldType.OU3)
    ..pc<AttributeState>(
        4, _omitFieldNames ? '' : 'attributes', $pb.PbFieldType.PM,
        subBuilder: AttributeState.create)
    ..p<$core.int>(
        5, _omitFieldNames ? '' : 'acceptedCommandIds', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClusterState clone() => ClusterState()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ClusterState copyWith(void Function(ClusterState) updates) =>
      super.copyWith((message) => updates(message as ClusterState))
          as ClusterState;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClusterState create() => ClusterState._();
  @$core.override
  ClusterState createEmptyInstance() => create();
  static $pb.PbList<ClusterState> createRepeated() =>
      $pb.PbList<ClusterState>();
  @$core.pragma('dart2js:noInline')
  static ClusterState getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClusterState>(create);
  static ClusterState? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get clusterId => $_getIZ(0);
  @$pb.TagNumber(1)
  set clusterId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasClusterId() => $_has(0);
  @$pb.TagNumber(1)
  void clearClusterId() => $_clearField(1);

  /// Matter's ClusterRevision. Which revision of the cluster definition the device
  /// implements.
  @$pb.TagNumber(2)
  $core.int get clusterRevision => $_getIZ(1);
  @$pb.TagNumber(2)
  set clusterRevision($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasClusterRevision() => $_has(1);
  @$pb.TagNumber(2)
  void clearClusterRevision() => $_clearField(2);

  /// Matter's FeatureMap: a bitmap of the optional features this cluster supports on this
  /// endpoint.
  ///
  /// Worth carrying even for fully-modelled clusters, because it resolves an ambiguity the
  /// presence rule cannot. properties.proto says an absent field means "never reported" —
  /// but without a FeatureMap, absent is also what an attribute the device does not
  /// implement looks like. With it, a consumer can tell "not supported" from "not yet
  /// seen".
  @$pb.TagNumber(3)
  $core.int get featureMap => $_getIZ(2);
  @$pb.TagNumber(3)
  set featureMap($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFeatureMap() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeatureMap() => $_clearField(3);

  /// Attribute values with no typed field. See the message comment.
  @$pb.TagNumber(4)
  $pb.PbList<AttributeState> get attributes => $_getList(3);

  /// Matter's AcceptedCommandList: which commands this cluster accepts on this endpoint.
  /// Without it a consumer must infer a device's capabilities from its device type and
  /// discover the truth by sending a command and watching it fail.
  @$pb.TagNumber(5)
  $pb.PbList<$core.int> get acceptedCommandIds => $_getList(4);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
