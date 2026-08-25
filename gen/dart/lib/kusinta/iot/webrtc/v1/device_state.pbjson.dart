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
  ],
};

/// Descriptor for `DeviceStateSnapshot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceStateSnapshotDescriptor = $convert.base64Decode(
    'ChNEZXZpY2VTdGF0ZVNuYXBzaG90EjcKB2RldmljZXMYASADKAsyHS5rdXNpbnRhLmlvdC5kZX'
    'ZpY2UudjEuRGV2aWNlUgdkZXZpY2VzEk0KC3Blcm1pc3Npb25zGAIgASgLMisua3VzaW50YS5p'
    'b3QuYWNjZXNzLnYxLkVmZmVjdGl2ZVBlcm1pc3Npb25zUgtwZXJtaXNzaW9ucxJBCg5zbmFwc2'
    'hvdHRlZF9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDXNuYXBzaG90dGVk'
    'QXQ=');

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
