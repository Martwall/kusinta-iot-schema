// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/device_event.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventPriorityDescriptor instead')
const EventPriority$json = {
  '1': 'EventPriority',
  '2': [
    {'1': 'EVENT_PRIORITY_UNSPECIFIED', '2': 0},
    {'1': 'EVENT_PRIORITY_DEBUG', '2': 1},
    {'1': 'EVENT_PRIORITY_INFO', '2': 2},
    {'1': 'EVENT_PRIORITY_CRITICAL', '2': 3},
  ],
};

/// Descriptor for `EventPriority`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List eventPriorityDescriptor = $convert.base64Decode(
    'Cg1FdmVudFByaW9yaXR5Eh4KGkVWRU5UX1BSSU9SSVRZX1VOU1BFQ0lGSUVEEAASGAoURVZFTl'
    'RfUFJJT1JJVFlfREVCVUcQARIXChNFVkVOVF9QUklPUklUWV9JTkZPEAISGwoXRVZFTlRfUFJJ'
    'T1JJVFlfQ1JJVElDQUwQAw==');

@$core.Deprecated('Use deviceEventDescriptor instead')
const DeviceEvent$json = {
  '1': 'DeviceEvent',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {
      '1': 'endpoint_id',
      '3': 2,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'endpointId',
      '17': true
    },
    {'1': 'cluster_id', '3': 3, '4': 1, '5': 13, '10': 'clusterId'},
    {'1': 'event_id', '3': 4, '4': 1, '5': 13, '10': 'eventId'},
    {'1': 'event_number', '3': 5, '4': 1, '5': 4, '10': 'eventNumber'},
    {
      '1': 'timestamp',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'timestamp'
    },
    {
      '1': 'priority',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.device.v1.EventPriority',
      '10': 'priority'
    },
    {
      '1': 'data',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '10': 'data'
    },
  ],
  '8': [
    {'1': '_endpoint_id'},
  ],
};

/// Descriptor for `DeviceEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceEventDescriptor = $convert.base64Decode(
    'CgtEZXZpY2VFdmVudBI+CglkZXZpY2VfaWQYASABKAsyIS5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5EZXZpY2VJZFIIZGV2aWNlSWQSJAoLZW5kcG9pbnRfaWQYAiABKA1IAFIKZW5kcG9pbnRJ'
    'ZIgBARIdCgpjbHVzdGVyX2lkGAMgASgNUgljbHVzdGVySWQSGQoIZXZlbnRfaWQYBCABKA1SB2'
    'V2ZW50SWQSIQoMZXZlbnRfbnVtYmVyGAUgASgEUgtldmVudE51bWJlchI4Cgl0aW1lc3RhbXAY'
    'BiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl0aW1lc3RhbXASQAoIcHJpb3JpdH'
    'kYByABKA4yJC5rdXNpbnRhLmlvdC5kZXZpY2UudjEuRXZlbnRQcmlvcml0eVIIcHJpb3JpdHkS'
    'OQoEZGF0YRgIIAEoCzIlLmt1c2ludGEuaW90LmRldmljZS52MS5BdHRyaWJ1dGVWYWx1ZVIEZG'
    'F0YUIOCgxfZW5kcG9pbnRfaWQ=');

@$core.Deprecated('Use deviceEventBatchDescriptor instead')
const DeviceEventBatch$json = {
  '1': 'DeviceEventBatch',
  '2': [
    {
      '1': 'events',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.DeviceEvent',
      '10': 'events'
    },
    {
      '1': 'received_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'receivedAt'
    },
  ],
};

/// Descriptor for `DeviceEventBatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceEventBatchDescriptor = $convert.base64Decode(
    'ChBEZXZpY2VFdmVudEJhdGNoEjoKBmV2ZW50cxgBIAMoCzIiLmt1c2ludGEuaW90LmRldmljZS'
    '52MS5EZXZpY2VFdmVudFIGZXZlbnRzEjsKC3JlY2VpdmVkX2F0GAIgASgLMhouZ29vZ2xlLnBy'
    'b3RvYnVmLlRpbWVzdGFtcFIKcmVjZWl2ZWRBdA==');
