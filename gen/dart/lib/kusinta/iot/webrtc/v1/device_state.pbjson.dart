// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/device_state.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use serviceFaultDescriptor instead')
const ServiceFault$json = {
  '1': 'ServiceFault',
  '2': [
    {'1': 'SERVICE_FAULT_UNSPECIFIED', '2': 0},
    {'1': 'SERVICE_FAULT_ERROR', '2': 1},
    {'1': 'SERVICE_FAULT_TAMPER', '2': 2},
  ],
};

/// Descriptor for `ServiceFault`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List serviceFaultDescriptor = $convert.base64Decode(
    'CgxTZXJ2aWNlRmF1bHQSHQoZU0VSVklDRV9GQVVMVF9VTlNQRUNJRklFRBAAEhcKE1NFUlZJQ0'
    'VfRkFVTFRfRVJST1IQARIYChRTRVJWSUNFX0ZBVUxUX1RBTVBFUhAC');

@$core.Deprecated('Use deviceStateSnapshotDescriptor instead')
const DeviceStateSnapshot$json = {
  '1': 'DeviceStateSnapshot',
  '2': [
    {
      '1': 'devices',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.Device',
      '10': 'devices'
    },
    {
      '1': 'permissions',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.access.v1.EffectivePermissions',
      '10': 'permissions'
    },
    {
      '1': 'snapshotted_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'snapshottedAt'
    },
    {
      '1': 'service_statuses',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ServiceStatus',
      '10': 'serviceStatuses'
    },
  ],
};

/// Descriptor for `DeviceStateSnapshot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceStateSnapshotDescriptor = $convert.base64Decode(
    'ChNEZXZpY2VTdGF0ZVNuYXBzaG90EjcKB2RldmljZXMYASADKAsyHS5rdXNpbnRhLmlvdC5kZX'
    'ZpY2UudjEuRGV2aWNlUgdkZXZpY2VzEk0KC3Blcm1pc3Npb25zGAIgASgLMisua3VzaW50YS5p'
    'b3QuYWNjZXNzLnYxLkVmZmVjdGl2ZVBlcm1pc3Npb25zUgtwZXJtaXNzaW9ucxJBCg5zbmFwc2'
    'hvdHRlZF9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDXNuYXBzaG90dGVk'
    'QXQSTwoQc2VydmljZV9zdGF0dXNlcxgEIAMoCzIkLmt1c2ludGEuaW90LndlYnJ0Yy52MS5TZX'
    'J2aWNlU3RhdHVzUg9zZXJ2aWNlU3RhdHVzZXM=');

@$core.Deprecated('Use serviceStatusDescriptor instead')
const ServiceStatus$json = {
  '1': 'ServiceStatus',
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
      '1': 'as_of',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'asOf'
    },
    {'1': 'reachable', '3': 3, '4': 1, '5': 8, '10': 'reachable'},
    {
      '1': 'unreachable_since',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'unreachableSince'
    },
    {
      '1': 'battery_percent',
      '3': 5,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'batteryPercent',
      '17': true
    },
    {'1': 'battery_low', '3': 6, '4': 1, '5': 8, '10': 'batteryLow'},
    {
      '1': 'battery_replacement_needed',
      '3': 7,
      '4': 1,
      '5': 8,
      '10': 'batteryReplacementNeeded'
    },
    {
      '1': 'radio_quality',
      '3': 8,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'radioQuality',
      '17': true
    },
    {
      '1': 'faults',
      '3': 9,
      '4': 3,
      '5': 14,
      '6': '.kusinta.iot.webrtc.v1.ServiceFault',
      '10': 'faults'
    },
  ],
  '8': [
    {'1': '_battery_percent'},
    {'1': '_radio_quality'},
  ],
};

/// Descriptor for `ServiceStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceStatusDescriptor = $convert.base64Decode(
    'Cg1TZXJ2aWNlU3RhdHVzEj4KCWRldmljZV9pZBgBIAEoCzIhLmt1c2ludGEuaW90LmlkZW50aX'
    'R5LnYxLkRldmljZUlkUghkZXZpY2VJZBIvCgVhc19vZhgCIAEoCzIaLmdvb2dsZS5wcm90b2J1'
    'Zi5UaW1lc3RhbXBSBGFzT2YSHAoJcmVhY2hhYmxlGAMgASgIUglyZWFjaGFibGUSRwoRdW5yZW'
    'FjaGFibGVfc2luY2UYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUhB1bnJlYWNo'
    'YWJsZVNpbmNlEiwKD2JhdHRlcnlfcGVyY2VudBgFIAEoDUgAUg5iYXR0ZXJ5UGVyY2VudIgBAR'
    'IfCgtiYXR0ZXJ5X2xvdxgGIAEoCFIKYmF0dGVyeUxvdxI8ChpiYXR0ZXJ5X3JlcGxhY2VtZW50'
    'X25lZWRlZBgHIAEoCFIYYmF0dGVyeVJlcGxhY2VtZW50TmVlZGVkEigKDXJhZGlvX3F1YWxpdH'
    'kYCCABKA1IAVIMcmFkaW9RdWFsaXR5iAEBEjsKBmZhdWx0cxgJIAMoDjIjLmt1c2ludGEuaW90'
    'LndlYnJ0Yy52MS5TZXJ2aWNlRmF1bHRSBmZhdWx0c0ISChBfYmF0dGVyeV9wZXJjZW50QhAKDl'
    '9yYWRpb19xdWFsaXR5');

@$core.Deprecated('Use serviceStatusChangedDescriptor instead')
const ServiceStatusChanged$json = {
  '1': 'ServiceStatusChanged',
  '2': [
    {
      '1': 'statuses',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ServiceStatus',
      '10': 'statuses'
    },
  ],
};

/// Descriptor for `ServiceStatusChanged`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceStatusChangedDescriptor = $convert.base64Decode(
    'ChRTZXJ2aWNlU3RhdHVzQ2hhbmdlZBJACghzdGF0dXNlcxgBIAMoCzIkLmt1c2ludGEuaW90Ln'
    'dlYnJ0Yy52MS5TZXJ2aWNlU3RhdHVzUghzdGF0dXNlcw==');

@$core.Deprecated('Use propertyReportDescriptor instead')
const PropertyReport$json = {
  '1': 'PropertyReport',
  '2': [
    {
      '1': 'update',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.PropertyUpdate',
      '10': 'update'
    },
    {
      '1': 'gateway_processed_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'gatewayProcessedAt'
    },
  ],
};

/// Descriptor for `PropertyReport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyReportDescriptor = $convert.base64Decode(
    'Cg5Qcm9wZXJ0eVJlcG9ydBI9CgZ1cGRhdGUYASABKAsyJS5rdXNpbnRhLmlvdC5kZXZpY2Uudj'
    'EuUHJvcGVydHlVcGRhdGVSBnVwZGF0ZRJMChRnYXRld2F5X3Byb2Nlc3NlZF9hdBgCIAEoCzIa'
    'Lmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSEmdhdGV3YXlQcm9jZXNzZWRBdA==');

@$core.Deprecated('Use deviceAddedDescriptor instead')
const DeviceAdded$json = {
  '1': 'DeviceAdded',
  '2': [
    {
      '1': 'device',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.Device',
      '10': 'device'
    },
  ],
};

/// Descriptor for `DeviceAdded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceAddedDescriptor = $convert.base64Decode(
    'CgtEZXZpY2VBZGRlZBI1CgZkZXZpY2UYASABKAsyHS5rdXNpbnRhLmlvdC5kZXZpY2UudjEuRG'
    'V2aWNlUgZkZXZpY2U=');

@$core.Deprecated('Use deviceRemovedDescriptor instead')
const DeviceRemoved$json = {
  '1': 'DeviceRemoved',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `DeviceRemoved`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceRemovedDescriptor = $convert.base64Decode(
    'Cg1EZXZpY2VSZW1vdmVkEj4KCWRldmljZV9pZBgBIAEoCzIhLmt1c2ludGEuaW90LmlkZW50aX'
    'R5LnYxLkRldmljZUlkUghkZXZpY2VJZBIWCgZyZWFzb24YAiABKAlSBnJlYXNvbg==');
