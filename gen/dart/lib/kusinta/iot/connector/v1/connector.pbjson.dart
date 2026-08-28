// This is a generated file - do not edit.
//
// Generated from kusinta/iot/connector/v1/connector.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

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
      '6': '.kusinta.iot.device.v1.Device',
      '10': 'knownDevices'
    },
  ],
};

/// Descriptor for `ConnectorHandshake`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectorHandshakeDescriptor = $convert.base64Decode(
    'ChJDb25uZWN0b3JIYW5kc2hha2USOwoEaW5mbxgBIAEoCzInLmt1c2ludGEuaW90LmNvbm5lY3'
    'Rvci52MS5Db25uZWN0b3JJbmZvUgRpbmZvEkIKDWtub3duX2RldmljZXMYAiADKAsyHS5rdXNp'
    'bnRhLmlvdC5kZXZpY2UudjEuRGV2aWNlUgxrbm93bkRldmljZXM=');

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
      '1': 'device',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.Device',
      '10': 'device'
    },
    {
      '1': 'pairing_request_id',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'pairingRequestId'
    },
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
  '10': ['descriptor'],
};

/// Descriptor for `DeviceAnnouncement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceAnnouncementDescriptor = $convert.base64Decode(
    'ChJEZXZpY2VBbm5vdW5jZW1lbnQSNQoGZGV2aWNlGAIgASgLMh0ua3VzaW50YS5pb3QuZGV2aW'
    'NlLnYxLkRldmljZVIGZGV2aWNlEiwKEnBhaXJpbmdfcmVxdWVzdF9pZBgDIAEoCVIQcGFpcmlu'
    'Z1JlcXVlc3RJZEoECAEQAlIKZGVzY3JpcHRvcg==');

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
    {'1': 'request_id', '3': 3, '4': 1, '5': 9, '10': 'requestId'},
  ],
};

/// Descriptor for `GatewayError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayErrorDescriptor = $convert.base64Decode(
    'CgxHYXRld2F5RXJyb3ISEgoEY29kZRgBIAEoCVIEY29kZRIYCgdtZXNzYWdlGAIgASgJUgdtZX'
    'NzYWdlEh0KCnJlcXVlc3RfaWQYAyABKAlSCXJlcXVlc3RJZA==');

@$core.Deprecated('Use connectorCommandResultDescriptor instead')
const ConnectorCommandResult$json = {
  '1': 'ConnectorCommandResult',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    {
      '1': 'completed_at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'completedAt'
    },
    {
      '1': 'error',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.CommandError',
      '10': 'error'
    },
    {
      '1': 'settles_by',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '9': 0,
      '10': 'settlesBy',
      '17': true
    },
  ],
  '8': [
    {'1': '_settles_by'},
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
};

/// Descriptor for `ConnectorCommandResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectorCommandResultDescriptor = $convert.base64Decode(
    'ChZDb25uZWN0b3JDb21tYW5kUmVzdWx0Eh0KCnJlcXVlc3RfaWQYASABKAlSCXJlcXVlc3RJZB'
    'IYCgdzdWNjZXNzGAIgASgIUgdzdWNjZXNzEj0KDGNvbXBsZXRlZF9hdBgEIAEoCzIaLmdvb2ds'
    'ZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2NvbXBsZXRlZEF0EjkKBWVycm9yGAUgASgLMiMua3VzaW'
    '50YS5pb3Qud2VicnRjLnYxLkNvbW1hbmRFcnJvclIFZXJyb3ISPgoKc2V0dGxlc19ieRgGIAEo'
    'CzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIJc2V0dGxlc0J5iAEBQg0KC19zZXR0bG'
    'VzX2J5SgQIAxAE');

@$core.Deprecated('Use enterPairingModeDescriptor instead')
const EnterPairingMode$json = {
  '1': 'EnterPairingMode',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'window',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.common.v1.PairingWindow',
      '10': 'window'
    },
  ],
};

/// Descriptor for `EnterPairingMode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enterPairingModeDescriptor = $convert.base64Decode(
    'ChBFbnRlclBhaXJpbmdNb2RlEh0KCnJlcXVlc3RfaWQYASABKAlSCXJlcXVlc3RJZBI8CgZ3aW'
    '5kb3cYAiABKAsyJC5rdXNpbnRhLmlvdC5jb21tb24udjEuUGFpcmluZ1dpbmRvd1IGd2luZG93');

@$core.Deprecated('Use pairingModeResultDescriptor instead')
const PairingModeResult$json = {
  '1': 'PairingModeResult',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'accepted', '3': 2, '4': 1, '5': 8, '10': 'accepted'},
    {
      '1': 'error',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.common.v1.PairingErrorDetail',
      '10': 'error'
    },
    {
      '1': 'expires_at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'expiresAt'
    },
  ],
};

/// Descriptor for `PairingModeResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairingModeResultDescriptor = $convert.base64Decode(
    'ChFQYWlyaW5nTW9kZVJlc3VsdBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSGgoIYW'
    'NjZXB0ZWQYAiABKAhSCGFjY2VwdGVkEj8KBWVycm9yGAMgASgLMikua3VzaW50YS5pb3QuY29t'
    'bW9uLnYxLlBhaXJpbmdFcnJvckRldGFpbFIFZXJyb3ISOQoKZXhwaXJlc19hdBgEIAEoCzIaLm'
    'dvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCWV4cGlyZXNBdA==');

@$core.Deprecated('Use pairingModeEndedDescriptor instead')
const PairingModeEnded$json = {
  '1': 'PairingModeEnded',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'devices_attributed',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'devicesAttributed'
    },
    {
      '1': 'error',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.common.v1.PairingErrorDetail',
      '10': 'error'
    },
  ],
};

/// Descriptor for `PairingModeEnded`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairingModeEndedDescriptor = $convert.base64Decode(
    'ChBQYWlyaW5nTW9kZUVuZGVkEh0KCnJlcXVlc3RfaWQYASABKAlSCXJlcXVlc3RJZBItChJkZX'
    'ZpY2VzX2F0dHJpYnV0ZWQYAiABKA1SEWRldmljZXNBdHRyaWJ1dGVkEj8KBWVycm9yGAMgASgL'
    'Mikua3VzaW50YS5pb3QuY29tbW9uLnYxLlBhaXJpbmdFcnJvckRldGFpbFIFZXJyb3I=');

@$core.Deprecated('Use sessionRequestDescriptor instead')
const SessionRequest$json = {
  '1': 'SessionRequest',
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
      '6': '.kusinta.iot.connector.v1.ConnectorCommandResult',
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
    {
      '1': 'device_events',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.DeviceEventBatch',
      '9': 0,
      '10': 'deviceEvents'
    },
    {
      '1': 'pairing_mode_result',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.PairingModeResult',
      '9': 0,
      '10': 'pairingModeResult'
    },
    {
      '1': 'pairing_mode_ended',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.PairingModeEnded',
      '9': 0,
      '10': 'pairingModeEnded'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `SessionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionRequestDescriptor = $convert.base64Decode(
    'Cg5TZXNzaW9uUmVxdWVzdBIdCgptZXNzYWdlX2lkGAEgASgJUgltZXNzYWdlSWQSMwoHc2VudF'
    '9hdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBnNlbnRBdBJMCgloYW5kc2hh'
    'a2UYAyABKAsyLC5rdXNpbnRhLmlvdC5jb25uZWN0b3IudjEuQ29ubmVjdG9ySGFuZHNoYWtlSA'
    'BSCWhhbmRzaGFrZRJVCg9wcm9wZXJ0eV91cGRhdGUYBCABKAsyKi5rdXNpbnRhLmlvdC5kZXZp'
    'Y2UudjEuUHJvcGVydHlVcGRhdGVCYXRjaEgAUg5wcm9wZXJ0eVVwZGF0ZRJZChBkZXZpY2VfYW'
    '5ub3VuY2VkGAUgASgLMiwua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLkRldmljZUFubm91bmNl'
    'bWVudEgAUg9kZXZpY2VBbm5vdW5jZWQSUAoOZGV2aWNlX3JlbW92ZWQYBiABKAsyJy5rdXNpbn'
    'RhLmlvdC5jb25uZWN0b3IudjEuRGV2aWNlUmVtb3ZhbEgAUg1kZXZpY2VSZW1vdmVkElkKDmNv'
    'bW1hbmRfcmVzdWx0GAcgASgLMjAua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLkNvbm5lY3Rvck'
    'NvbW1hbmRSZXN1bHRIAFINY29tbWFuZFJlc3VsdBJDCgloZWFydGJlYXQYCCABKAsyIy5rdXNp'
    'bnRhLmlvdC5jb25uZWN0b3IudjEuSGVhcnRCZWF0SABSCWhlYXJ0YmVhdBJOCg1kZXZpY2VfZX'
    'ZlbnRzGAkgASgLMicua3VzaW50YS5pb3QuZGV2aWNlLnYxLkRldmljZUV2ZW50QmF0Y2hIAFIM'
    'ZGV2aWNlRXZlbnRzEl0KE3BhaXJpbmdfbW9kZV9yZXN1bHQYCiABKAsyKy5rdXNpbnRhLmlvdC'
    '5jb25uZWN0b3IudjEuUGFpcmluZ01vZGVSZXN1bHRIAFIRcGFpcmluZ01vZGVSZXN1bHQSWgoS'
    'cGFpcmluZ19tb2RlX2VuZGVkGAsgASgLMioua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLlBhaX'
    'JpbmdNb2RlRW5kZWRIAFIQcGFpcmluZ01vZGVFbmRlZEIJCgdwYXlsb2Fk');

@$core.Deprecated('Use sessionResponseDescriptor instead')
const SessionResponse$json = {
  '1': 'SessionResponse',
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
    {
      '1': 'execute_attribute_write',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.AttributeWriteRequest',
      '9': 0,
      '10': 'executeAttributeWrite'
    },
    {
      '1': 'enter_pairing_mode',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.connector.v1.EnterPairingMode',
      '9': 0,
      '10': 'enterPairingMode'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
  '9': [
    {'1': 4, '2': 5},
  ],
};

/// Descriptor for `SessionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionResponseDescriptor = $convert.base64Decode(
    'Cg9TZXNzaW9uUmVzcG9uc2USHQoKbWVzc2FnZV9pZBgBIAEoCVIJbWVzc2FnZUlkEjMKB3Nlbn'
    'RfYXQYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgZzZW50QXQSTQoNaGFuZHNo'
    'YWtlX2FjaxgDIAEoCzImLmt1c2ludGEuaW90LmNvbm5lY3Rvci52MS5IYW5kc2hha2VBY2tIAF'
    'IMaGFuZHNoYWtlQWNrEkkKCXN1YnNjcmliZRgFIAEoCzIpLmt1c2ludGEuaW90LmNvbm5lY3Rv'
    'ci52MS5TdWJzY3JpYmVEZXZpY2VIAFIJc3Vic2NyaWJlEk8KC3Vuc3Vic2NyaWJlGAYgASgLMi'
    'sua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLlVuc3Vic2NyaWJlRGV2aWNlSABSC3Vuc3Vic2Ny'
    'aWJlEj4KBWVycm9yGAcgASgLMiYua3VzaW50YS5pb3QuY29ubmVjdG9yLnYxLkdhdGV3YXlFcn'
    'JvckgAUgVlcnJvchJPCg9leGVjdXRlX2NvbW1hbmQYCCABKAsyJC5rdXNpbnRhLmlvdC53ZWJy'
    'dGMudjEuRGV2aWNlQ29tbWFuZEgAUg5leGVjdXRlQ29tbWFuZBJmChdleGVjdXRlX2F0dHJpYn'
    'V0ZV93cml0ZRgJIAEoCzIsLmt1c2ludGEuaW90LndlYnJ0Yy52MS5BdHRyaWJ1dGVXcml0ZVJl'
    'cXVlc3RIAFIVZXhlY3V0ZUF0dHJpYnV0ZVdyaXRlEloKEmVudGVyX3BhaXJpbmdfbW9kZRgKIA'
    'EoCzIqLmt1c2ludGEuaW90LmNvbm5lY3Rvci52MS5FbnRlclBhaXJpbmdNb2RlSABSEGVudGVy'
    'UGFpcmluZ01vZGVCCQoHcGF5bG9hZEoECAQQBQ==');
