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

@$core.Deprecated('Use writePersistenceDescriptor instead')
const WritePersistence$json = {
  '1': 'WritePersistence',
  '2': [
    {'1': 'WRITE_PERSISTENCE_UNSPECIFIED', '2': 0},
    {'1': 'WRITE_PERSISTENCE_STICKY', '2': 1},
    {'1': 'WRITE_PERSISTENCE_LEASED', '2': 2},
  ],
};

/// Descriptor for `WritePersistence`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List writePersistenceDescriptor = $convert.base64Decode(
    'ChBXcml0ZVBlcnNpc3RlbmNlEiEKHVdSSVRFX1BFUlNJU1RFTkNFX1VOU1BFQ0lGSUVEEAASHA'
    'oYV1JJVEVfUEVSU0lTVEVOQ0VfU1RJQ0tZEAESHAoYV1JJVEVfUEVSU0lTVEVOQ0VfTEVBU0VE'
    'EAI=');

@$core.Deprecated('Use readLatencyDescriptor instead')
const ReadLatency$json = {
  '1': 'ReadLatency',
  '2': [
    {'1': 'READ_LATENCY_UNSPECIFIED', '2': 0},
    {'1': 'READ_LATENCY_REAL_TIME', '2': 1},
    {'1': 'READ_LATENCY_DELAYED', '2': 2},
  ],
};

/// Descriptor for `ReadLatency`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List readLatencyDescriptor = $convert.base64Decode(
    'CgtSZWFkTGF0ZW5jeRIcChhSRUFEX0xBVEVOQ1lfVU5TUEVDSUZJRUQQABIaChZSRUFEX0xBVE'
    'VOQ1lfUkVBTF9USU1FEAESGAoUUkVBRF9MQVRFTkNZX0RFTEFZRUQQAg==');

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
    {'1': 'attribute_ids', '3': 6, '4': 3, '5': 13, '10': 'attributeIds'},
    {
      '1': 'attribute_steps',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.ClusterState.AttributeStepsEntry',
      '10': 'attributeSteps'
    },
    {
      '1': 'attribute_write_behaviours',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.ClusterState.AttributeWriteBehavioursEntry',
      '10': 'attributeWriteBehaviours'
    },
    {
      '1': 'attribute_read_latencies',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.ClusterState.AttributeReadLatenciesEntry',
      '10': 'attributeReadLatencies'
    },
  ],
  '3': [
    ClusterState_AttributeStepsEntry$json,
    ClusterState_AttributeWriteBehavioursEntry$json,
    ClusterState_AttributeReadLatenciesEntry$json
  ],
  '8': [
    {'1': '_cluster_revision'},
    {'1': '_feature_map'},
  ],
};

@$core.Deprecated('Use clusterStateDescriptor instead')
const ClusterState_AttributeStepsEntry$json = {
  '1': 'AttributeStepsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 13, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use clusterStateDescriptor instead')
const ClusterState_AttributeWriteBehavioursEntry$json = {
  '1': 'AttributeWriteBehavioursEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeWriteBehaviour',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use clusterStateDescriptor instead')
const ClusterState_AttributeReadLatenciesEntry$json = {
  '1': 'AttributeReadLatenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.device.v1.ReadLatency',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `ClusterState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterStateDescriptor = $convert.base64Decode(
    'CgxDbHVzdGVyU3RhdGUSHQoKY2x1c3Rlcl9pZBgBIAEoDVIJY2x1c3RlcklkEi4KEGNsdXN0ZX'
    'JfcmV2aXNpb24YAiABKA1IAFIPY2x1c3RlclJldmlzaW9uiAEBEiQKC2ZlYXR1cmVfbWFwGAMg'
    'ASgNSAFSCmZlYXR1cmVNYXCIAQESRQoKYXR0cmlidXRlcxgEIAMoCzIlLmt1c2ludGEuaW90Lm'
    'RldmljZS52MS5BdHRyaWJ1dGVTdGF0ZVIKYXR0cmlidXRlcxIwChRhY2NlcHRlZF9jb21tYW5k'
    'X2lkcxgFIAMoDVISYWNjZXB0ZWRDb21tYW5kSWRzEiMKDWF0dHJpYnV0ZV9pZHMYBiADKA1SDG'
    'F0dHJpYnV0ZUlkcxJgCg9hdHRyaWJ1dGVfc3RlcHMYByADKAsyNy5rdXNpbnRhLmlvdC5kZXZp'
    'Y2UudjEuQ2x1c3RlclN0YXRlLkF0dHJpYnV0ZVN0ZXBzRW50cnlSDmF0dHJpYnV0ZVN0ZXBzEn'
    '8KGmF0dHJpYnV0ZV93cml0ZV9iZWhhdmlvdXJzGAggAygLMkEua3VzaW50YS5pb3QuZGV2aWNl'
    'LnYxLkNsdXN0ZXJTdGF0ZS5BdHRyaWJ1dGVXcml0ZUJlaGF2aW91cnNFbnRyeVIYYXR0cmlidX'
    'RlV3JpdGVCZWhhdmlvdXJzEnkKGGF0dHJpYnV0ZV9yZWFkX2xhdGVuY2llcxgJIAMoCzI/Lmt1'
    'c2ludGEuaW90LmRldmljZS52MS5DbHVzdGVyU3RhdGUuQXR0cmlidXRlUmVhZExhdGVuY2llc0'
    'VudHJ5UhZhdHRyaWJ1dGVSZWFkTGF0ZW5jaWVzGkEKE0F0dHJpYnV0ZVN0ZXBzRW50cnkSEAoD'
    'a2V5GAEgASgNUgNrZXkSFAoFdmFsdWUYAiABKA1SBXZhbHVlOgI4ARp7Ch1BdHRyaWJ1dGVXcm'
    'l0ZUJlaGF2aW91cnNFbnRyeRIQCgNrZXkYASABKA1SA2tleRJECgV2YWx1ZRgCIAEoCzIuLmt1'
    'c2ludGEuaW90LmRldmljZS52MS5BdHRyaWJ1dGVXcml0ZUJlaGF2aW91clIFdmFsdWU6AjgBGm'
    '0KG0F0dHJpYnV0ZVJlYWRMYXRlbmNpZXNFbnRyeRIQCgNrZXkYASABKA1SA2tleRI4CgV2YWx1'
    'ZRgCIAEoDjIiLmt1c2ludGEuaW90LmRldmljZS52MS5SZWFkTGF0ZW5jeVIFdmFsdWU6AjgBQh'
    'MKEV9jbHVzdGVyX3JldmlzaW9uQg4KDF9mZWF0dXJlX21hcA==');

@$core.Deprecated('Use attributeWriteBehaviourDescriptor instead')
const AttributeWriteBehaviour$json = {
  '1': 'AttributeWriteBehaviour',
  '2': [
    {
      '1': 'persistence',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.device.v1.WritePersistence',
      '10': 'persistence'
    },
    {
      '1': 'min_lease_seconds',
      '3': 2,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'minLeaseSeconds',
      '17': true
    },
    {
      '1': 'max_lease_seconds',
      '3': 3,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'maxLeaseSeconds',
      '17': true
    },
    {
      '1': 'renewal_restarts_lease',
      '3': 4,
      '4': 1,
      '5': 8,
      '10': 'renewalRestartsLease'
    },
    {
      '1': 'rest_value',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '10': 'restValue'
    },
    {
      '1': 'min_write_interval_seconds',
      '3': 6,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'minWriteIntervalSeconds',
      '17': true
    },
  ],
  '8': [
    {'1': '_min_lease_seconds'},
    {'1': '_max_lease_seconds'},
    {'1': '_min_write_interval_seconds'},
  ],
};

/// Descriptor for `AttributeWriteBehaviour`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeWriteBehaviourDescriptor = $convert.base64Decode(
    'ChdBdHRyaWJ1dGVXcml0ZUJlaGF2aW91chJJCgtwZXJzaXN0ZW5jZRgBIAEoDjInLmt1c2ludG'
    'EuaW90LmRldmljZS52MS5Xcml0ZVBlcnNpc3RlbmNlUgtwZXJzaXN0ZW5jZRIvChFtaW5fbGVh'
    'c2Vfc2Vjb25kcxgCIAEoDUgAUg9taW5MZWFzZVNlY29uZHOIAQESLwoRbWF4X2xlYXNlX3NlY2'
    '9uZHMYAyABKA1IAVIPbWF4TGVhc2VTZWNvbmRziAEBEjQKFnJlbmV3YWxfcmVzdGFydHNfbGVh'
    'c2UYBCABKAhSFHJlbmV3YWxSZXN0YXJ0c0xlYXNlEkQKCnJlc3RfdmFsdWUYBSABKAsyJS5rdX'
    'NpbnRhLmlvdC5kZXZpY2UudjEuQXR0cmlidXRlVmFsdWVSCXJlc3RWYWx1ZRJAChptaW5fd3Jp'
    'dGVfaW50ZXJ2YWxfc2Vjb25kcxgGIAEoDUgCUhdtaW5Xcml0ZUludGVydmFsU2Vjb25kc4gBAU'
    'IUChJfbWluX2xlYXNlX3NlY29uZHNCFAoSX21heF9sZWFzZV9zZWNvbmRzQh0KG19taW5fd3Jp'
    'dGVfaW50ZXJ2YWxfc2Vjb25kcw==');
