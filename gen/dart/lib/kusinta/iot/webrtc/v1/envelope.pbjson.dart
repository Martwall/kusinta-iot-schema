// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/envelope.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use gatewayErrorCodeDescriptor instead')
const GatewayErrorCode$json = {
  '1': 'GatewayErrorCode',
  '2': [
    {'1': 'GATEWAY_ERROR_CODE_UNSPECIFIED', '2': 0},
    {'1': 'GATEWAY_ERROR_CODE_NOT_ENTITLED', '2': 1},
    {'1': 'GATEWAY_ERROR_CODE_INVALID_REQUEST', '2': 2},
    {'1': 'GATEWAY_ERROR_CODE_UNAVAILABLE', '2': 3},
    {'1': 'GATEWAY_ERROR_CODE_INTERNAL', '2': 4},
  ],
};

/// Descriptor for `GatewayErrorCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gatewayErrorCodeDescriptor = $convert.base64Decode(
    'ChBHYXRld2F5RXJyb3JDb2RlEiIKHkdBVEVXQVlfRVJST1JfQ09ERV9VTlNQRUNJRklFRBAAEi'
    'MKH0dBVEVXQVlfRVJST1JfQ09ERV9OT1RfRU5USVRMRUQQARImCiJHQVRFV0FZX0VSUk9SX0NP'
    'REVfSU5WQUxJRF9SRVFVRVNUEAISIgoeR0FURVdBWV9FUlJPUl9DT0RFX1VOQVZBSUxBQkxFEA'
    'MSHwobR0FURVdBWV9FUlJPUl9DT0RFX0lOVEVSTkFMEAQ=');

@$core.Deprecated('Use pingDescriptor instead')
const Ping$json = {
  '1': 'Ping',
};

/// Descriptor for `Ping`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingDescriptor = $convert.base64Decode('CgRQaW5n');

@$core.Deprecated('Use pongDescriptor instead')
const Pong$json = {
  '1': 'Pong',
};

/// Descriptor for `Pong`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pongDescriptor = $convert.base64Decode('CgRQb25n');

@$core.Deprecated('Use handshakeRejectedDescriptor instead')
const HandshakeRejected$json = {
  '1': 'HandshakeRejected',
  '2': [
    {'1': 'reason', '3': 1, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `HandshakeRejected`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List handshakeRejectedDescriptor = $convert.base64Decode(
    'ChFIYW5kc2hha2VSZWplY3RlZBIWCgZyZWFzb24YASABKAlSBnJlYXNvbg==');

@$core.Deprecated('Use appHandshakeDescriptor instead')
const AppHandshake$json = {
  '1': 'AppHandshake',
  '2': [
    {'1': 'jwt', '3': 1, '4': 1, '5': 9, '10': 'jwt'},
    {
      '1': 'subscribe_device_ids',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'subscribeDeviceIds'
    },
  ],
};

/// Descriptor for `AppHandshake`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appHandshakeDescriptor = $convert.base64Decode(
    'CgxBcHBIYW5kc2hha2USEAoDand0GAEgASgJUgNqd3QSUwoUc3Vic2NyaWJlX2RldmljZV9pZH'
    'MYAiADKAsyIS5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5EZXZpY2VJZFISc3Vic2NyaWJlRGV2'
    'aWNlSWRz');

@$core.Deprecated('Use propertyReadRequestDescriptor instead')
const PropertyReadRequest$json = {
  '1': 'PropertyReadRequest',
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
    {'1': 'cluster_id_hex', '3': 3, '4': 1, '5': 9, '10': 'clusterIdHex'},
  ],
};

/// Descriptor for `PropertyReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyReadRequestDescriptor = $convert.base64Decode(
    'ChNQcm9wZXJ0eVJlYWRSZXF1ZXN0Ej4KCWRldmljZV9pZBgBIAEoCzIhLmt1c2ludGEuaW90Lm'
    'lkZW50aXR5LnYxLkRldmljZUlkUghkZXZpY2VJZBIlCg5hdHRyaWJ1dGVfbmFtZRgCIAEoCVIN'
    'YXR0cmlidXRlTmFtZRIkCg5jbHVzdGVyX2lkX2hleBgDIAEoCVIMY2x1c3RlcklkSGV4');

@$core.Deprecated('Use gatewayErrorDescriptor instead')
const GatewayError$json = {
  '1': 'GatewayError',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.webrtc.v1.GatewayErrorCode',
      '10': 'code'
    },
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {
      '1': 'metadata',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.GatewayError.MetadataEntry',
      '10': 'metadata'
    },
  ],
  '3': [GatewayError_MetadataEntry$json],
};

@$core.Deprecated('Use gatewayErrorDescriptor instead')
const GatewayError_MetadataEntry$json = {
  '1': 'MetadataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GatewayError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayErrorDescriptor = $convert.base64Decode(
    'CgxHYXRld2F5RXJyb3ISOwoEY29kZRgBIAEoDjInLmt1c2ludGEuaW90LndlYnJ0Yy52MS5HYX'
    'Rld2F5RXJyb3JDb2RlUgRjb2RlEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2USTQoIbWV0YWRh'
    'dGEYAyADKAsyMS5rdXNpbnRhLmlvdC53ZWJydGMudjEuR2F0ZXdheUVycm9yLk1ldGFkYXRhRW'
    '50cnlSCG1ldGFkYXRhGjsKDU1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFs'
    'dWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use gatewayMessageDescriptor instead')
const GatewayMessage$json = {
  '1': 'GatewayMessage',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
    {
      '1': 'sent_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'sentAt'
    },
    {
      '1': 'state_snapshot',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.DeviceStateSnapshot',
      '9': 0,
      '10': 'stateSnapshot'
    },
    {
      '1': 'property_event',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.DevicePropertyEvent',
      '9': 0,
      '10': 'propertyEvent'
    },
    {
      '1': 'permission_update',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.LivePermissionUpdate',
      '9': 0,
      '10': 'permissionUpdate'
    },
    {
      '1': 'command_result',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.CommandResult',
      '9': 0,
      '10': 'commandResult'
    },
    {
      '1': 'pong',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.Pong',
      '9': 0,
      '10': 'pong'
    },
    {
      '1': 'handshake_rejected',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.HandshakeRejected',
      '9': 0,
      '10': 'handshakeRejected'
    },
    {
      '1': 'error',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.GatewayError',
      '9': 0,
      '10': 'error'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
  '9': [
    {'1': 7, '2': 8},
  ],
};

/// Descriptor for `GatewayMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayMessageDescriptor = $convert.base64Decode(
    'Cg5HYXRld2F5TWVzc2FnZRIdCgptZXNzYWdlX2lkGAEgASgJUgltZXNzYWdlSWQSMwoHc2VudF'
    '9hdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBnNlbnRBdBJTCg5zdGF0ZV9z'
    'bmFwc2hvdBgDIAEoCzIqLmt1c2ludGEuaW90LndlYnJ0Yy52MS5EZXZpY2VTdGF0ZVNuYXBzaG'
    '90SABSDXN0YXRlU25hcHNob3QSUwoOcHJvcGVydHlfZXZlbnQYBCABKAsyKi5rdXNpbnRhLmlv'
    'dC53ZWJydGMudjEuRGV2aWNlUHJvcGVydHlFdmVudEgAUg1wcm9wZXJ0eUV2ZW50EloKEXBlcm'
    '1pc3Npb25fdXBkYXRlGAUgASgLMisua3VzaW50YS5pb3Qud2VicnRjLnYxLkxpdmVQZXJtaXNz'
    'aW9uVXBkYXRlSABSEHBlcm1pc3Npb25VcGRhdGUSTQoOY29tbWFuZF9yZXN1bHQYBiABKAsyJC'
    '5rdXNpbnRhLmlvdC53ZWJydGMudjEuQ29tbWFuZFJlc3VsdEgAUg1jb21tYW5kUmVzdWx0EjEK'
    'BHBvbmcYCCABKAsyGy5rdXNpbnRhLmlvdC53ZWJydGMudjEuUG9uZ0gAUgRwb25nElkKEmhhbm'
    'RzaGFrZV9yZWplY3RlZBgJIAEoCzIoLmt1c2ludGEuaW90LndlYnJ0Yy52MS5IYW5kc2hha2VS'
    'ZWplY3RlZEgAUhFoYW5kc2hha2VSZWplY3RlZBI7CgVlcnJvchgKIAEoCzIjLmt1c2ludGEuaW'
    '90LndlYnJ0Yy52MS5HYXRld2F5RXJyb3JIAFIFZXJyb3JCCQoHcGF5bG9hZEoECAcQCA==');

@$core.Deprecated('Use appMessageDescriptor instead')
const AppMessage$json = {
  '1': 'AppMessage',
  '2': [
    {'1': 'message_id', '3': 1, '4': 1, '5': 9, '10': 'messageId'},
    {
      '1': 'sent_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'sentAt'
    },
    {
      '1': 'handshake',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.AppHandshake',
      '9': 0,
      '10': 'handshake'
    },
    {
      '1': 'command',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.DeviceCommand',
      '9': 0,
      '10': 'command'
    },
    {
      '1': 'read_request',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.PropertyReadRequest',
      '9': 0,
      '10': 'readRequest'
    },
    {
      '1': 'ping',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.Ping',
      '9': 0,
      '10': 'ping'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `AppMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appMessageDescriptor = $convert.base64Decode(
    'CgpBcHBNZXNzYWdlEh0KCm1lc3NhZ2VfaWQYASABKAlSCW1lc3NhZ2VJZBIzCgdzZW50X2F0GA'
    'IgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIGc2VudEF0EkMKCWhhbmRzaGFrZRgD'
    'IAEoCzIjLmt1c2ludGEuaW90LndlYnJ0Yy52MS5BcHBIYW5kc2hha2VIAFIJaGFuZHNoYWtlEk'
    'AKB2NvbW1hbmQYBCABKAsyJC5rdXNpbnRhLmlvdC53ZWJydGMudjEuRGV2aWNlQ29tbWFuZEgA'
    'Ugdjb21tYW5kEk8KDHJlYWRfcmVxdWVzdBgFIAEoCzIqLmt1c2ludGEuaW90LndlYnJ0Yy52MS'
    '5Qcm9wZXJ0eVJlYWRSZXF1ZXN0SABSC3JlYWRSZXF1ZXN0EjEKBHBpbmcYBiABKAsyGy5rdXNp'
    'bnRhLmlvdC53ZWJydGMudjEuUGluZ0gAUgRwaW5nQgkKB3BheWxvYWQ=');
