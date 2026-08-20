// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/property_update.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use valueProvenanceDescriptor instead')
const ValueProvenance$json = {
  '1': 'ValueProvenance',
  '2': [
    {'1': 'VALUE_PROVENANCE_UNSPECIFIED', '2': 0},
    {'1': 'VALUE_PROVENANCE_CONFIRMED', '2': 1},
    {'1': 'VALUE_PROVENANCE_OPTIMISTIC', '2': 2},
    {'1': 'VALUE_PROVENANCE_CORRECTED', '2': 3},
  ],
};

/// Descriptor for `ValueProvenance`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List valueProvenanceDescriptor = $convert.base64Decode(
    'Cg9WYWx1ZVByb3ZlbmFuY2USIAocVkFMVUVfUFJPVkVOQU5DRV9VTlNQRUNJRklFRBAAEh4KGl'
    'ZBTFVFX1BST1ZFTkFOQ0VfQ09ORklSTUVEEAESHwobVkFMVUVfUFJPVkVOQU5DRV9PUFRJTUlT'
    'VElDEAISHgoaVkFMVUVfUFJPVkVOQU5DRV9DT1JSRUNURUQQAw==');

@$core.Deprecated('Use propertyUpdateDescriptor instead')
const PropertyUpdate$json = {
  '1': 'PropertyUpdate',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {'1': 'attribute_name', '3': 2, '4': 1, '5': 9, '10': 'attributeName'},
    {'1': 'int_value', '3': 3, '4': 1, '5': 17, '9': 0, '10': 'intValue'},
    {'1': 'uint_value', '3': 4, '4': 1, '5': 13, '9': 0, '10': 'uintValue'},
    {'1': 'bool_value', '3': 5, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
    {'1': 'float_value', '3': 6, '4': 1, '5': 2, '9': 0, '10': 'floatValue'},
    {'1': 'string_value', '3': 7, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    {'1': 'bytes_value', '3': 8, '4': 1, '5': 12, '9': 0, '10': 'bytesValue'},
    {
      '1': 'timestamp',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'timestamp'
    },
    {'1': 'cluster_id_hex', '3': 10, '4': 1, '5': 9, '10': 'clusterIdHex'},
    {
      '1': 'provenance',
      '3': 11,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.device.v1.ValueProvenance',
      '10': 'provenance'
    },
    {
      '1': 'endpoint_id',
      '3': 12,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'endpointId',
      '17': true
    },
    {
      '1': 'vendor_extension',
      '3': 13,
      '4': 1,
      '5': 9,
      '9': 2,
      '10': 'vendorExtension',
      '17': true
    },
  ],
  '8': [
    {'1': 'value'},
    {'1': '_endpoint_id'},
    {'1': '_vendor_extension'},
  ],
};

/// Descriptor for `PropertyUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyUpdateDescriptor = $convert.base64Decode(
    'Cg5Qcm9wZXJ0eVVwZGF0ZRI+CglkZXZpY2VfaWQYASABKAsyIS5rdXNpbnRhLmlvdC5pZGVudG'
    'l0eS52MS5EZXZpY2VJZFIIZGV2aWNlSWQSJQoOYXR0cmlidXRlX25hbWUYAiABKAlSDWF0dHJp'
    'YnV0ZU5hbWUSHQoJaW50X3ZhbHVlGAMgASgRSABSCGludFZhbHVlEh8KCnVpbnRfdmFsdWUYBC'
    'ABKA1IAFIJdWludFZhbHVlEh8KCmJvb2xfdmFsdWUYBSABKAhIAFIJYm9vbFZhbHVlEiEKC2Zs'
    'b2F0X3ZhbHVlGAYgASgCSABSCmZsb2F0VmFsdWUSIwoMc3RyaW5nX3ZhbHVlGAcgASgJSABSC3'
    'N0cmluZ1ZhbHVlEiEKC2J5dGVzX3ZhbHVlGAggASgMSABSCmJ5dGVzVmFsdWUSOAoJdGltZXN0'
    'YW1wGAkgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJdGltZXN0YW1wEiQKDmNsdX'
    'N0ZXJfaWRfaGV4GAogASgJUgxjbHVzdGVySWRIZXgSRgoKcHJvdmVuYW5jZRgLIAEoDjImLmt1'
    'c2ludGEuaW90LmRldmljZS52MS5WYWx1ZVByb3ZlbmFuY2VSCnByb3ZlbmFuY2USJAoLZW5kcG'
    '9pbnRfaWQYDCABKA1IAVIKZW5kcG9pbnRJZIgBARIuChB2ZW5kb3JfZXh0ZW5zaW9uGA0gASgJ'
    'SAJSD3ZlbmRvckV4dGVuc2lvbogBAUIHCgV2YWx1ZUIOCgxfZW5kcG9pbnRfaWRCEwoRX3Zlbm'
    'Rvcl9leHRlbnNpb24=');

@$core.Deprecated('Use propertyUpdateBatchDescriptor instead')
const PropertyUpdateBatch$json = {
  '1': 'PropertyUpdateBatch',
  '2': [
    {
      '1': 'updates',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.PropertyUpdate',
      '10': 'updates'
    },
    {
      '1': 'batch_timestamp',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'batchTimestamp'
    },
  ],
};

/// Descriptor for `PropertyUpdateBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyUpdateBatchDescriptor = $convert.base64Decode(
    'ChNQcm9wZXJ0eVVwZGF0ZUJhdGNoEj8KB3VwZGF0ZXMYASADKAsyJS5rdXNpbnRhLmlvdC5kZX'
    'ZpY2UudjEuUHJvcGVydHlVcGRhdGVSB3VwZGF0ZXMSQwoPYmF0Y2hfdGltZXN0YW1wGAIgASgL'
    'MhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIOYmF0Y2hUaW1lc3RhbXA=');
