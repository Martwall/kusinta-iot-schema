// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/command.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use commandErrorCodeDescriptor instead')
const CommandErrorCode$json = {
  '1': 'CommandErrorCode',
  '2': [
    {'1': 'COMMAND_ERROR_CODE_UNSPECIFIED', '2': 0},
    {'1': 'COMMAND_ERROR_CODE_NOT_ENTITLED', '2': 1},
    {'1': 'COMMAND_ERROR_CODE_CONSTRAINT_VIOLATED', '2': 2},
    {'1': 'COMMAND_ERROR_CODE_INVALID_COMMAND', '2': 3},
    {'1': 'COMMAND_ERROR_CODE_UNREACHABLE', '2': 4},
    {'1': 'COMMAND_ERROR_CODE_TIMEOUT', '2': 5},
    {'1': 'COMMAND_ERROR_CODE_REJECTED_BY_DEVICE', '2': 6},
    {'1': 'COMMAND_ERROR_CODE_INTERNAL', '2': 7},
  ],
};

/// Descriptor for `CommandErrorCode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List commandErrorCodeDescriptor = $convert.base64Decode(
    'ChBDb21tYW5kRXJyb3JDb2RlEiIKHkNPTU1BTkRfRVJST1JfQ09ERV9VTlNQRUNJRklFRBAAEi'
    'MKH0NPTU1BTkRfRVJST1JfQ09ERV9OT1RfRU5USVRMRUQQARIqCiZDT01NQU5EX0VSUk9SX0NP'
    'REVfQ09OU1RSQUlOVF9WSU9MQVRFRBACEiYKIkNPTU1BTkRfRVJST1JfQ09ERV9JTlZBTElEX0'
    'NPTU1BTkQQAxIiCh5DT01NQU5EX0VSUk9SX0NPREVfVU5SRUFDSEFCTEUQBBIeChpDT01NQU5E'
    'X0VSUk9SX0NPREVfVElNRU9VVBAFEikKJUNPTU1BTkRfRVJST1JfQ09ERV9SRUpFQ1RFRF9CWV'
    '9ERVZJQ0UQBhIfChtDT01NQU5EX0VSUk9SX0NPREVfSU5URVJOQUwQBw==');

@$core.Deprecated('Use thermostatSetpointParamsDescriptor instead')
const ThermostatSetpointParams$json = {
  '1': 'ThermostatSetpointParams',
  '2': [
    {'1': 'mode', '3': 1, '4': 1, '5': 13, '9': 0, '10': 'mode', '17': true},
    {'1': 'amount', '3': 2, '4': 1, '5': 17, '10': 'amount'},
  ],
  '7': {},
  '8': [
    {'1': '_mode'},
  ],
};

/// Descriptor for `ThermostatSetpointParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thermostatSetpointParamsDescriptor =
    $convert.base64Decode(
        'ChhUaGVybW9zdGF0U2V0cG9pbnRQYXJhbXMSFwoEbW9kZRgBIAEoDUgAUgRtb2RliAEBEhYKBm'
        'Ftb3VudBgCIAEoEVIGYW1vdW50Ogm4tRiBBMC1GABCBwoFX21vZGU=');

@$core.Deprecated('Use levelControlParamsDescriptor instead')
const LevelControlParams$json = {
  '1': 'LevelControlParams',
  '2': [
    {'1': 'level', '3': 1, '4': 1, '5': 13, '10': 'level'},
    {'1': 'transition_time', '3': 2, '4': 1, '5': 13, '10': 'transitionTime'},
  ],
  '7': {},
};

/// Descriptor for `LevelControlParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List levelControlParamsDescriptor = $convert.base64Decode(
    'ChJMZXZlbENvbnRyb2xQYXJhbXMSFAoFbGV2ZWwYASABKA1SBWxldmVsEicKD3RyYW5zaXRpb2'
    '5fdGltZRgCIAEoDVIOdHJhbnNpdGlvblRpbWU6CLi1GAjAtRgA');

@$core.Deprecated('Use onOffParamsDescriptor instead')
const OnOffParams$json = {
  '1': 'OnOffParams',
  '7': {},
  '9': [
    {'1': 1, '2': 2},
    {'1': 2, '2': 3},
  ],
  '10': ['on', 'toggle'],
};

/// Descriptor for `OnOffParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onOffParamsDescriptor = $convert.base64Decode(
    'CgtPbk9mZlBhcmFtczoEuLUYBkoECAEQAkoECAIQA1ICb25SBnRvZ2dsZQ==');

@$core.Deprecated('Use windowCoveringLiftParamsDescriptor instead')
const WindowCoveringLiftParams$json = {
  '1': 'WindowCoveringLiftParams',
  '2': [
    {
      '1': 'lift_percent100ths',
      '3': 1,
      '4': 1,
      '5': 13,
      '10': 'liftPercent100ths'
    },
  ],
  '7': {},
};

/// Descriptor for `WindowCoveringLiftParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List windowCoveringLiftParamsDescriptor =
    $convert.base64Decode(
        'ChhXaW5kb3dDb3ZlcmluZ0xpZnRQYXJhbXMSLQoSbGlmdF9wZXJjZW50MTAwdGhzGAEgASgNUh'
        'FsaWZ0UGVyY2VudDEwMHRoczoJuLUYggLAtRgF');

@$core.Deprecated('Use doorLockParamsDescriptor instead')
const DoorLockParams$json = {
  '1': 'DoorLockParams',
  '2': [
    {'1': 'pin_code', '3': 2, '4': 1, '5': 9, '10': 'pinCode'},
  ],
  '7': {},
  '9': [
    {'1': 1, '2': 2},
  ],
  '10': ['lock_state'],
};

/// Descriptor for `DoorLockParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doorLockParamsDescriptor = $convert.base64Decode(
    'Cg5Eb29yTG9ja1BhcmFtcxIZCghwaW5fY29kZRgCIAEoCVIHcGluQ29kZToFuLUYgQJKBAgBEA'
    'JSCmxvY2tfc3RhdGU=');

@$core.Deprecated('Use deviceCommandDescriptor instead')
const DeviceCommand$json = {
  '1': 'DeviceCommand',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'device_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {'1': 'command_name', '3': 4, '4': 1, '5': 9, '10': 'commandName'},
    {'1': 'cluster_id', '3': 12, '4': 1, '5': 13, '10': 'clusterId'},
    {
      '1': 'matter_command_id',
      '3': 13,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'matterCommandId',
      '17': true
    },
    {
      '1': 'endpoint_id',
      '3': 11,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'endpointId',
      '17': true
    },
    {
      '1': 'thermostat_setpoint',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ThermostatSetpointParams',
      '9': 0,
      '10': 'thermostatSetpoint'
    },
    {
      '1': 'level_control',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.LevelControlParams',
      '9': 0,
      '10': 'levelControl'
    },
    {
      '1': 'on_off',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.OnOffParams',
      '9': 0,
      '10': 'onOff'
    },
    {
      '1': 'window_covering_lift',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.WindowCoveringLiftParams',
      '9': 0,
      '10': 'windowCoveringLift'
    },
    {
      '1': 'door_lock',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.DoorLockParams',
      '9': 0,
      '10': 'doorLock'
    },
    {'1': 'raw_tlv', '3': 99, '4': 1, '5': 12, '9': 0, '10': 'rawTlv'},
  ],
  '8': [
    {'1': 'parameters'},
    {'1': '_matter_command_id'},
    {'1': '_endpoint_id'},
  ],
  '9': [
    {'1': 3, '2': 4},
    {'1': 10, '2': 11},
  ],
  '10': ['cluster_id_hex', 'thermostat_setpoint_write'],
};

/// Descriptor for `DeviceCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceCommandDescriptor = $convert.base64Decode(
    'Cg1EZXZpY2VDb21tYW5kEh0KCnJlcXVlc3RfaWQYASABKAlSCXJlcXVlc3RJZBI+CglkZXZpY2'
    'VfaWQYAiABKAsyIS5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5EZXZpY2VJZFIIZGV2aWNlSWQS'
    'IQoMY29tbWFuZF9uYW1lGAQgASgJUgtjb21tYW5kTmFtZRIdCgpjbHVzdGVyX2lkGAwgASgNUg'
    'ljbHVzdGVySWQSLwoRbWF0dGVyX2NvbW1hbmRfaWQYDSABKA1IAVIPbWF0dGVyQ29tbWFuZElk'
    'iAEBEiQKC2VuZHBvaW50X2lkGAsgASgNSAJSCmVuZHBvaW50SWSIAQESYgoTdGhlcm1vc3RhdF'
    '9zZXRwb2ludBgFIAEoCzIvLmt1c2ludGEuaW90LndlYnJ0Yy52MS5UaGVybW9zdGF0U2V0cG9p'
    'bnRQYXJhbXNIAFISdGhlcm1vc3RhdFNldHBvaW50ElAKDWxldmVsX2NvbnRyb2wYBiABKAsyKS'
    '5rdXNpbnRhLmlvdC53ZWJydGMudjEuTGV2ZWxDb250cm9sUGFyYW1zSABSDGxldmVsQ29udHJv'
    'bBI7CgZvbl9vZmYYByABKAsyIi5rdXNpbnRhLmlvdC53ZWJydGMudjEuT25PZmZQYXJhbXNIAF'
    'IFb25PZmYSYwoUd2luZG93X2NvdmVyaW5nX2xpZnQYCCABKAsyLy5rdXNpbnRhLmlvdC53ZWJy'
    'dGMudjEuV2luZG93Q292ZXJpbmdMaWZ0UGFyYW1zSABSEndpbmRvd0NvdmVyaW5nTGlmdBJECg'
    'lkb29yX2xvY2sYCSABKAsyJS5rdXNpbnRhLmlvdC53ZWJydGMudjEuRG9vckxvY2tQYXJhbXNI'
    'AFIIZG9vckxvY2sSGQoHcmF3X3RsdhhjIAEoDEgAUgZyYXdUbHZCDAoKcGFyYW1ldGVyc0IUCh'
    'JfbWF0dGVyX2NvbW1hbmRfaWRCDgoMX2VuZHBvaW50X2lkSgQIAxAESgQIChALUg5jbHVzdGVy'
    'X2lkX2hleFIZdGhlcm1vc3RhdF9zZXRwb2ludF93cml0ZQ==');

@$core.Deprecated('Use commandErrorDescriptor instead')
const CommandError$json = {
  '1': 'CommandError',
  '2': [
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {
      '1': 'code',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.webrtc.v1.CommandErrorCode',
      '10': 'code'
    },
  ],
  '9': [
    {'1': 1, '2': 2},
  ],
};

/// Descriptor for `CommandError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandErrorDescriptor = $convert.base64Decode(
    'CgxDb21tYW5kRXJyb3ISGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZRI7CgRjb2RlGAMgASgOMi'
    'cua3VzaW50YS5pb3Qud2VicnRjLnYxLkNvbW1hbmRFcnJvckNvZGVSBGNvZGVKBAgBEAI=');

@$core.Deprecated('Use commandResultDescriptor instead')
const CommandResult$json = {
  '1': 'CommandResult',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
    {
      '1': 'error',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.CommandError',
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
    {
      '1': 'settles_by',
      '3': 5,
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
};

/// Descriptor for `CommandResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandResultDescriptor = $convert.base64Decode(
    'Cg1Db21tYW5kUmVzdWx0Eh0KCnJlcXVlc3RfaWQYASABKAlSCXJlcXVlc3RJZBIYCgdzdWNjZX'
    'NzGAIgASgIUgdzdWNjZXNzEjkKBWVycm9yGAMgASgLMiMua3VzaW50YS5pb3Qud2VicnRjLnYx'
    'LkNvbW1hbmRFcnJvclIFZXJyb3ISPQoMY29tcGxldGVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3'
    'RvYnVmLlRpbWVzdGFtcFILY29tcGxldGVkQXQSPgoKc2V0dGxlc19ieRgFIAEoCzIaLmdvb2ds'
    'ZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIJc2V0dGxlc0J5iAEBQg0KC19zZXR0bGVzX2J5');

@$core.Deprecated('Use attributeWriteRequestDescriptor instead')
const AttributeWriteRequest$json = {
  '1': 'AttributeWriteRequest',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'device_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {
      '1': 'target',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.access.v1.AttributeRef',
      '10': 'target'
    },
    {
      '1': 'value',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '10': 'value'
    },
  ],
};

/// Descriptor for `AttributeWriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeWriteRequestDescriptor = $convert.base64Decode(
    'ChVBdHRyaWJ1dGVXcml0ZVJlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkEj'
    '4KCWRldmljZV9pZBgCIAEoCzIhLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLkRldmljZUlkUghk'
    'ZXZpY2VJZBI7CgZ0YXJnZXQYAyABKAsyIy5rdXNpbnRhLmlvdC5hY2Nlc3MudjEuQXR0cmlidX'
    'RlUmVmUgZ0YXJnZXQSOwoFdmFsdWUYBCABKAsyJS5rdXNpbnRhLmlvdC5kZXZpY2UudjEuQXR0'
    'cmlidXRlVmFsdWVSBXZhbHVl');
