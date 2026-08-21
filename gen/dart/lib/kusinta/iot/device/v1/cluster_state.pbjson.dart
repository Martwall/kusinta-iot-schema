// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/cluster_state.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use nullValueDescriptor instead')
const NullValue$json = {
  '1': 'NullValue',
};

/// Descriptor for `NullValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nullValueDescriptor =
    $convert.base64Decode('CglOdWxsVmFsdWU=');

@$core.Deprecated('Use attributeValueDescriptor instead')
const AttributeValue$json = {
  '1': 'AttributeValue',
  '2': [
    {'1': 'bool_value', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'int_value', '3': 2, '4': 1, '5': 18, '9': 0, '10': 'intValue'},
    {'1': 'uint_value', '3': 3, '4': 1, '5': 4, '9': 0, '10': 'uintValue'},
    {'1': 'double_value', '3': 4, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    {'1': 'string_value', '3': 5, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    {'1': 'bytes_value', '3': 6, '4': 1, '5': 12, '9': 0, '10': 'bytesValue'},
    {
      '1': 'list_value',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValueList',
      '9': 0,
      '10': 'listValue'
    },
    {
      '1': 'struct_value',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValueStruct',
      '9': 0,
      '10': 'structValue'
    },
    {
      '1': 'null_value',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.NullValue',
      '9': 0,
      '10': 'nullValue'
    },
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `AttributeValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeValueDescriptor = $convert.base64Decode(
    'Cg5BdHRyaWJ1dGVWYWx1ZRIfCgpib29sX3ZhbHVlGAEgASgISABSCWJvb2xWYWx1ZRIdCglpbn'
    'RfdmFsdWUYAiABKBJIAFIIaW50VmFsdWUSHwoKdWludF92YWx1ZRgDIAEoBEgAUgl1aW50VmFs'
    'dWUSIwoMZG91YmxlX3ZhbHVlGAQgASgBSABSC2RvdWJsZVZhbHVlEiMKDHN0cmluZ192YWx1ZR'
    'gFIAEoCUgAUgtzdHJpbmdWYWx1ZRIhCgtieXRlc192YWx1ZRgGIAEoDEgAUgpieXRlc1ZhbHVl'
    'EkoKCmxpc3RfdmFsdWUYByABKAsyKS5rdXNpbnRhLmlvdC5kZXZpY2UudjEuQXR0cmlidXRlVm'
    'FsdWVMaXN0SABSCWxpc3RWYWx1ZRJQCgxzdHJ1Y3RfdmFsdWUYCCABKAsyKy5rdXNpbnRhLmlv'
    'dC5kZXZpY2UudjEuQXR0cmlidXRlVmFsdWVTdHJ1Y3RIAFILc3RydWN0VmFsdWUSQQoKbnVsbF'
    '92YWx1ZRgJIAEoCzIgLmt1c2ludGEuaW90LmRldmljZS52MS5OdWxsVmFsdWVIAFIJbnVsbFZh'
    'bHVlQgcKBXZhbHVl');

@$core.Deprecated('Use attributeValueListDescriptor instead')
const AttributeValueList$json = {
  '1': 'AttributeValueList',
  '2': [
    {
      '1': 'values',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '10': 'values'
    },
  ],
};

/// Descriptor for `AttributeValueList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeValueListDescriptor = $convert.base64Decode(
    'ChJBdHRyaWJ1dGVWYWx1ZUxpc3QSPQoGdmFsdWVzGAEgAygLMiUua3VzaW50YS5pb3QuZGV2aW'
    'NlLnYxLkF0dHJpYnV0ZVZhbHVlUgZ2YWx1ZXM=');

@$core.Deprecated('Use attributeValueStructDescriptor instead')
const AttributeValueStruct$json = {
  '1': 'AttributeValueStruct',
  '2': [
    {
      '1': 'fields',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValueStruct.FieldsEntry',
      '10': 'fields'
    },
  ],
  '3': [AttributeValueStruct_FieldsEntry$json],
};

@$core.Deprecated('Use attributeValueStructDescriptor instead')
const AttributeValueStruct_FieldsEntry$json = {
  '1': 'FieldsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `AttributeValueStruct`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeValueStructDescriptor = $convert.base64Decode(
    'ChRBdHRyaWJ1dGVWYWx1ZVN0cnVjdBJPCgZmaWVsZHMYASADKAsyNy5rdXNpbnRhLmlvdC5kZX'
    'ZpY2UudjEuQXR0cmlidXRlVmFsdWVTdHJ1Y3QuRmllbGRzRW50cnlSBmZpZWxkcxpgCgtGaWVs'
    'ZHNFbnRyeRIQCgNrZXkYASABKA1SA2tleRI7CgV2YWx1ZRgCIAEoCzIlLmt1c2ludGEuaW90Lm'
    'RldmljZS52MS5BdHRyaWJ1dGVWYWx1ZVIFdmFsdWU6AjgB');

@$core.Deprecated('Use attributeStateDescriptor instead')
const AttributeState$json = {
  '1': 'AttributeState',
  '2': [
    {'1': 'attribute_id', '3': 1, '4': 1, '5': 13, '10': 'attributeId'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '10': 'value'
    },
  ],
};

/// Descriptor for `AttributeState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeStateDescriptor = $convert.base64Decode(
    'Cg5BdHRyaWJ1dGVTdGF0ZRIhCgxhdHRyaWJ1dGVfaWQYASABKA1SC2F0dHJpYnV0ZUlkEjsKBX'
    'ZhbHVlGAIgASgLMiUua3VzaW50YS5pb3QuZGV2aWNlLnYxLkF0dHJpYnV0ZVZhbHVlUgV2YWx1'
    'ZQ==');

@$core.Deprecated('Use clusterStateDescriptor instead')
const ClusterState$json = {
  '1': 'ClusterState',
  '2': [
    {'1': 'cluster_id', '3': 1, '4': 1, '5': 13, '10': 'clusterId'},
    {
      '1': 'cluster_revision',
      '3': 2,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'clusterRevision',
      '17': true
    },
    {
      '1': 'feature_map',
      '3': 3,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'featureMap',
      '17': true
    },
    {
      '1': 'attributes',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeState',
      '10': 'attributes'
    },
    {
      '1': 'accepted_command_ids',
      '3': 5,
      '4': 3,
      '5': 13,
      '10': 'acceptedCommandIds'
    },
  ],
  '8': [
    {'1': '_cluster_revision'},
    {'1': '_feature_map'},
  ],
};

/// Descriptor for `ClusterState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterStateDescriptor = $convert.base64Decode(
    'CgxDbHVzdGVyU3RhdGUSHQoKY2x1c3Rlcl9pZBgBIAEoDVIJY2x1c3RlcklkEi4KEGNsdXN0ZX'
    'JfcmV2aXNpb24YAiABKA1IAFIPY2x1c3RlclJldmlzaW9uiAEBEiQKC2ZlYXR1cmVfbWFwGAMg'
    'ASgNSAFSCmZlYXR1cmVNYXCIAQESRQoKYXR0cmlidXRlcxgEIAMoCzIlLmt1c2ludGEuaW90Lm'
    'RldmljZS52MS5BdHRyaWJ1dGVTdGF0ZVIKYXR0cmlidXRlcxIwChRhY2NlcHRlZF9jb21tYW5k'
    'X2lkcxgFIAMoDVISYWNjZXB0ZWRDb21tYW5kSWRzQhMKEV9jbHVzdGVyX3JldmlzaW9uQg4KDF'
    '9mZWF0dXJlX21hcA==');
