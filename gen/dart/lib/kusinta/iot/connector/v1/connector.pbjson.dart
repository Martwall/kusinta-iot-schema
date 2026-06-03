// This is a generated file - do not edit.
//
// Generated from kusinta/iot/connector/v1/connector.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use connectorInfoDescriptor instead')
const ConnectorInfo$json = {
  '1': 'ConnectorInfo',
  '2': [
    {
      '1': 'connector_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.ConnectorId',
      '10': 'connectorId'
    },
    {'1': 'display_name', '3': 2, '4': 1, '5': 9, '10': 'displayName'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    {
      '1': 'transport',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.common.v1.ConnectorTransport',
      '10': 'transport'
    },
    {'1': 'endpoint', '3': 5, '4': 1, '5': 9, '10': 'endpoint'},
    {
      '1': 'supported_device_type_ids',
      '3': 6,
      '4': 3,
      '5': 13,
      '10': 'supportedDeviceTypeIds'
    },
  ],
};

/// Descriptor for `ConnectorInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectorInfoDescriptor = $convert.base64Decode(
    'Cg1Db25uZWN0b3JJbmZvEkcKDGNvbm5lY3Rvcl9pZBgBIAEoCzIkLmt1c2ludGEuaW90LmlkZW'
    '50aXR5LnYxLkNvbm5lY3RvcklkUgtjb25uZWN0b3JJZBIhCgxkaXNwbGF5X25hbWUYAiABKAlS'
    'C2Rpc3BsYXlOYW1lEhgKB3ZlcnNpb24YAyABKAlSB3ZlcnNpb24SRwoJdHJhbnNwb3J0GAQgAS'
    'gOMikua3VzaW50YS5pb3QuY29tbW9uLnYxLkNvbm5lY3RvclRyYW5zcG9ydFIJdHJhbnNwb3J0'
    'EhoKCGVuZHBvaW50GAUgASgJUghlbmRwb2ludBI5ChlzdXBwb3J0ZWRfZGV2aWNlX3R5cGVfaW'
    'RzGAYgAygNUhZzdXBwb3J0ZWREZXZpY2VUeXBlSWRz');

@$core.Deprecated('Use connectorHandshakeDescriptor instead')
const ConnectorHandshake$json = {
  '1': 'ConnectorHandshake',
  '2': [
    {
      '1': 'info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.ConnectorInfo',
      '10': 'info'
    },
    {
      '1': 'known_devices',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.device.v1.DeviceDescriptor',
      '10': 'knownDevices'
    },
  ],
};

/// Descriptor for `ConnectorHandshake`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectorHandshakeDescriptor = $convert.base64Decode(
    'ChJDb25uZWN0b3JIYW5kc2hha2USOwoEaW5mbxgBIAEoCzInLmt1c2ludGEuaW90LmNvbm5lY3'
    'Rvci52MS5Db25uZWN0b3JJbmZvUgRpbmZvEkwKDWtub3duX2RldmljZXMYAiADKAsyJy5rdXNp'
    'bnRhLmlvdC5kZXZpY2UudjEuRGV2aWNlRGVzY3JpcHRvclIMa25vd25EZXZpY2Vz');

@$core.Deprecated('Use handshakeAckDescriptor instead')
const HandshakeAck$json = {
  '1': 'HandshakeAck',
  '2': [
    {'1': 'accepted', '3': 1, '4': 1, '5': 8, '10': 'accepted'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
    {
      '1': 'gateway_id',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.GatewayId',
      '10': 'gatewayId'
    },
  ],
};

/// Descriptor for `HandshakeAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List handshakeAckDescriptor = $convert.base64Decode(
    'CgxIYW5kc2hha2VBY2sSGgoIYWNjZXB0ZWQYASABKAhSCGFjY2VwdGVkEhYKBnJlYXNvbhgCIA'
    'EoCVIGcmVhc29uEkEKCmdhdGV3YXlfaWQYAyABKAsyIi5rdXNpbnRhLmlvdC5pZGVudGl0eS52'
    'MS5HYXRld2F5SWRSCWdhdGV3YXlJZA==');

@$core.Deprecated('Use deviceAnnouncementDescriptor instead')
const DeviceAnnouncement$json = {
  '1': 'DeviceAnnouncement',
  '2': [
    {
      '1': 'descriptor',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.DeviceDescriptor',
      '10': 'descriptor'
    },
  ],
};

/// Descriptor for `DeviceAnnouncement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceAnnouncementDescriptor = $convert.base64Decode(
    'ChJEZXZpY2VBbm5vdW5jZW1lbnQSRwoKZGVzY3JpcHRvchgBIAEoCzInLmt1c2ludGEuaW90Lm'
    'RldmljZS52MS5EZXZpY2VEZXNjcmlwdG9yUgpkZXNjcmlwdG9y');

@$core.Deprecated('Use deviceRemovalDescriptor instead')
const DeviceRemoval$json = {
  '1': 'DeviceRemoval',
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

/// Descriptor for `DeviceRemoval`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceRemovalDescriptor = $convert.base64Decode(
    'Cg1EZXZpY2VSZW1vdmFsEj4KCWRldmljZV9pZBgBIAEoCzIhLmt1c2ludGEuaW90LmlkZW50aX'
    'R5LnYxLkRldmljZUlkUghkZXZpY2VJZBIWCgZyZWFzb24YAiABKAlSBnJlYXNvbg==');

@$core.Deprecated('Use heartBeatDescriptor instead')
const HeartBeat$json = {
  '1': 'HeartBeat',
};

/// Descriptor for `HeartBeat`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heartBeatDescriptor =
    $convert.base64Decode('CglIZWFydEJlYXQ=');

@$core.Deprecated('Use subscribeDeviceDescriptor instead')
const SubscribeDevice$json = {
  '1': 'SubscribeDevice',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
  ],
};

/// Descriptor for `SubscribeDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeDeviceDescriptor = $convert.base64Decode(
    'Cg9TdWJzY3JpYmVEZXZpY2USPgoJZGV2aWNlX2lkGAEgASgLMiEua3VzaW50YS5pb3QuaWRlbn'
    'RpdHkudjEuRGV2aWNlSWRSCGRldmljZUlk');

@$core.Deprecated('Use unsubscribeDeviceDescriptor instead')
const UnsubscribeDevice$json = {
  '1': 'UnsubscribeDevice',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
  ],
};

/// Descriptor for `UnsubscribeDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unsubscribeDeviceDescriptor = $convert.base64Decode(
    'ChFVbnN1YnNjcmliZURldmljZRI+CglkZXZpY2VfaWQYASABKAsyIS5rdXNpbnRhLmlvdC5pZG'
    'VudGl0eS52MS5EZXZpY2VJZFIIZGV2aWNlSWQ=');

@$core.Deprecated('Use gatewayErrorDescriptor instead')
const GatewayError$json = {
  '1': 'GatewayError',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'command_id', '3': 3, '4': 1, '5': 9, '10': 'commandId'},
  ],
};

/// Descriptor for `GatewayError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayErrorDescriptor = $convert.base64Decode(
    'CgxHYXRld2F5RXJyb3ISEgoEY29kZRgBIAEoCVIEY29kZRIYCgdtZXNzYWdlGAIgASgJUgdtZX'
    'NzYWdlEh0KCmNvbW1hbmRfaWQYAyABKAlSCWNvbW1hbmRJZA==');

@$core.Deprecated('Use commandResultDescriptor instead')
const CommandResult$json = {
  '1': 'CommandResult',
  '2': [
    {'1': 'command_id', '3': 1, '4': 1, '5': 9, '10': 'commandId'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    {
      '1': 'error',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.GatewayError',
      '10': 'error'
    },
    {
      '1': 'completed_at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'completedAt'
    },
  ],
};

/// Descriptor for `CommandResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandResultDescriptor = $convert.base64Decode(
    'Cg1Db21tYW5kUmVzdWx0Eh0KCmNvbW1hbmRfaWQYASABKAlSCWNvbW1hbmRJZBIYCgdzdWNjZX'
    'NzGAIgASgIUgdzdWNjZXNzEjwKBWVycm9yGAMgASgLMiYua3VzaW50YS5pb3QuY29ubmVjdG9y'
    'LnYxLkdhdGV3YXlFcnJvclIFZXJyb3ISPQoMY29tcGxldGVkX2F0GAQgASgLMhouZ29vZ2xlLn'
    'Byb3RvYnVmLlRpbWVzdGFtcFILY29tcGxldGVkQXQ=');

@$core.Deprecated('Use connectRequestDescriptor instead')
const ConnectRequest$json = {
  '1': 'ConnectRequest',
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
      '6': '.kusinta.iot.connector.v1.ConnectorHandshake',
      '9': 0,
      '10': 'handshake'
    },
    {
      '1': 'property_update',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.PropertyUpdateBatch',
      '9': 0,
      '10': 'propertyUpdate'
    },
    {
      '1': 'device_announced',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.DeviceAnnouncement',
      '9': 0,
      '10': 'deviceAnnounced'
    },
    {
      '1': 'device_removed',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.DeviceRemoval',
      '9': 0,
      '10': 'deviceRemoved'
    },
    {
      '1': 'command_result',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.CommandResult',
      '9': 0,
      '10': 'commandResult'
    },
    {
      '1': 'heartbeat',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.HeartBeat',
      '9': 0,
      '10': 'heartbeat'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `ConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectRequestDescriptor = $convert.base64Decode(
    'Cg5Db25uZWN0UmVxdWVzdBIdCgptZXNzYWdlX2lkGAEgASgJUgltZXNzYWdlSWQSMwoHc2VudF'
    '9hdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBnNlbnRBdBJMCgloYW5kc2hh'
    'a2UYAyABKAsyLC5rdXNpbnRhLmlvdC5jb25uZWN0b3IudjEuQ29ubmVjdG9ySGFuZHNoYWtlSA'
    'BSCWhhbmRzaGFrZRJVCg9wcm9wZXJ0eV91cGRhdGUYBCABKAsyKi5rdXNpbnRhLmlvdC5kZXZp'
    'Y2UudjEuUHJvcGVydHlVcGRhdGVCYXRjaEgAUg5wcm9wZXJ0eVVwZGF0ZRJZChBkZXZpY2VfYW'
    '5ub3VuY2VkGAUgASgLMiwua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLkRldmljZUFubm91bmNl'
    'bWVudEgAUg9kZXZpY2VBbm5vdW5jZWQSUAoOZGV2aWNlX3JlbW92ZWQYBiABKAsyJy5rdXNpbn'
    'RhLmlvdC5jb25uZWN0b3IudjEuRGV2aWNlUmVtb3ZhbEgAUg1kZXZpY2VSZW1vdmVkElAKDmNv'
    'bW1hbmRfcmVzdWx0GAcgASgLMicua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLkNvbW1hbmRSZX'
    'N1bHRIAFINY29tbWFuZFJlc3VsdBJDCgloZWFydGJlYXQYCCABKAsyIy5rdXNpbnRhLmlvdC5j'
    'b25uZWN0b3IudjEuSGVhcnRCZWF0SABSCWhlYXJ0YmVhdEIJCgdwYXlsb2Fk');

@$core.Deprecated('Use connectResponseDescriptor instead')
const ConnectResponse$json = {
  '1': 'ConnectResponse',
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
      '1': 'handshake_ack',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.HandshakeAck',
      '9': 0,
      '10': 'handshakeAck'
    },
    {
      '1': 'subscribe',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.SubscribeDevice',
      '9': 0,
      '10': 'subscribe'
    },
    {
      '1': 'unsubscribe',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.UnsubscribeDevice',
      '9': 0,
      '10': 'unsubscribe'
    },
    {
      '1': 'error',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.GatewayError',
      '9': 0,
      '10': 'error'
    },
    {
      '1': 'execute_command',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.DeviceCommand',
      '9': 0,
      '10': 'executeCommand'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
  '9': [
    {'1': 4, '2': 5},
  ],
};

/// Descriptor for `ConnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectResponseDescriptor = $convert.base64Decode(
    'Cg9Db25uZWN0UmVzcG9uc2USHQoKbWVzc2FnZV9pZBgBIAEoCVIJbWVzc2FnZUlkEjMKB3Nlbn'
    'RfYXQYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgZzZW50QXQSTQoNaGFuZHNo'
    'YWtlX2FjaxgDIAEoCzImLmt1c2ludGEuaW90LmNvbm5lY3Rvci52MS5IYW5kc2hha2VBY2tIAF'
    'IMaGFuZHNoYWtlQWNrEkkKCXN1YnNjcmliZRgFIAEoCzIpLmt1c2ludGEuaW90LmNvbm5lY3Rv'
    'ci52MS5TdWJzY3JpYmVEZXZpY2VIAFIJc3Vic2NyaWJlEk8KC3Vuc3Vic2NyaWJlGAYgASgLMi'
    'sua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLlVuc3Vic2NyaWJlRGV2aWNlSABSC3Vuc3Vic2Ny'
    'aWJlEj4KBWVycm9yGAcgASgLMiYua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLkdhdGV3YXlFcn'
    'JvckgAUgVlcnJvchJPCg9leGVjdXRlX2NvbW1hbmQYCCABKAsyJC5rdXNpbnRhLmlvdC53ZWJy'
    'dGMudjEuRGV2aWNlQ29tbWFuZEgAUg5leGVjdXRlQ29tbWFuZEIJCgdwYXlsb2FkSgQIBBAF');
