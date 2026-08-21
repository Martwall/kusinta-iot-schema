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
  '8': [
    {'1': '_mode'},
  ],
};

/// Descriptor for `ThermostatSetpointParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thermostatSetpointParamsDescriptor =
    $convert.base64Decode(
        'ChhUaGVybW9zdGF0U2V0cG9pbnRQYXJhbXMSFwoEbW9kZRgBIAEoDUgAUgRtb2RliAEBEhYKBm'
        'Ftb3VudBgCIAEoEVIGYW1vdW50QgcKBV9tb2Rl');

@$core.Deprecated('Use thermostatSetpointWriteParamsDescriptor instead')
const ThermostatSetpointWriteParams$json = {
  '1': 'ThermostatSetpointWriteParams',
  '2': [
    {'1': 'mode', '3': 1, '4': 1, '5': 13, '9': 0, '10': 'mode', '17': true},
    {
      '1': 'setpoint_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'setpointCentidegrees'
    },
  ],
  '8': [
    {'1': '_mode'},
  ],
};

/// Descriptor for `ThermostatSetpointWriteParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thermostatSetpointWriteParamsDescriptor =
    $convert.base64Decode(
        'Ch1UaGVybW9zdGF0U2V0cG9pbnRXcml0ZVBhcmFtcxIXCgRtb2RlGAEgASgNSABSBG1vZGWIAQ'
        'ESMwoVc2V0cG9pbnRfY2VudGlkZWdyZWVzGAIgASgRUhRzZXRwb2ludENlbnRpZGVncmVlc0IH'
        'CgVfbW9kZQ==');

@$core.Deprecated('Use levelControlParamsDescriptor instead')
const LevelControlParams$json = {
  '1': 'LevelControlParams',
  '2': [
    {'1': 'level', '3': 1, '4': 1, '5': 13, '10': 'level'},
    {'1': 'transition_time', '3': 2, '4': 1, '5': 13, '10': 'transitionTime'},
  ],
};

/// Descriptor for `LevelControlParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List levelControlParamsDescriptor = $convert.base64Decode(
    'ChJMZXZlbENvbnRyb2xQYXJhbXMSFAoFbGV2ZWwYASABKA1SBWxldmVsEicKD3RyYW5zaXRpb2'
    '5fdGltZRgCIAEoDVIOdHJhbnNpdGlvblRpbWU=');

@$core.Deprecated('Use onOffParamsDescriptor instead')
const OnOffParams$json = {
  '1': 'OnOffParams',
  '2': [
    {'1': 'on', '3': 1, '4': 1, '5': 8, '10': 'on'},
    {'1': 'toggle', '3': 2, '4': 1, '5': 8, '10': 'toggle'},
  ],
};

/// Descriptor for `OnOffParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onOffParamsDescriptor = $convert.base64Decode(
    'CgtPbk9mZlBhcmFtcxIOCgJvbhgBIAEoCFICb24SFgoGdG9nZ2xlGAIgASgIUgZ0b2dnbGU=');

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
};

/// Descriptor for `WindowCoveringLiftParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List windowCoveringLiftParamsDescriptor =
    $convert.base64Decode(
        'ChhXaW5kb3dDb3ZlcmluZ0xpZnRQYXJhbXMSLQoSbGlmdF9wZXJjZW50MTAwdGhzGAEgASgNUh'
        'FsaWZ0UGVyY2VudDEwMHRocw==');

@$core.Deprecated('Use doorLockParamsDescriptor instead')
const DoorLockParams$json = {
  '1': 'DoorLockParams',
  '2': [
    {'1': 'lock_state', '3': 1, '4': 1, '5': 13, '10': 'lockState'},
    {'1': 'pin_code', '3': 2, '4': 1, '5': 9, '10': 'pinCode'},
  ],
};

/// Descriptor for `DoorLockParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doorLockParamsDescriptor = $convert.base64Decode(
    'Cg5Eb29yTG9ja1BhcmFtcxIdCgpsb2NrX3N0YXRlGAEgASgNUglsb2NrU3RhdGUSGQoIcGluX2'
    'NvZGUYAiABKAlSB3BpbkNvZGU=');

@$core.Deprecated('Use deviceCommandDescriptor instead')
const DeviceCommand$json = {
  '1': 'DeviceCommand',
  '2': [
    {'1': 'command_id', '3': 1, '4': 1, '5': 9, '10': 'commandId'},
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
      '1': 'endpoint_id',
      '3': 11,
      '4': 1,
      '5': 13,
      '9': 1,
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
    {
      '1': 'thermostat_setpoint_write',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.ThermostatSetpointWriteParams',
      '9': 0,
      '10': 'thermostatSetpointWrite'
    },
    {'1': 'raw_tlv', '3': 99, '4': 1, '5': 12, '9': 0, '10': 'rawTlv'},
  ],
  '8': [
    {'1': 'parameters'},
    {'1': '_endpoint_id'},
  ],
  '9': [
    {'1': 3, '2': 4},
  ],
  '10': ['cluster_id_hex'],
};

/// Descriptor for `DeviceCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceCommandDescriptor = $convert.base64Decode(
    'Cg1EZXZpY2VDb21tYW5kEh0KCmNvbW1hbmRfaWQYASABKAlSCWNvbW1hbmRJZBI+CglkZXZpY2'
    'VfaWQYAiABKAsyIS5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5EZXZpY2VJZFIIZGV2aWNlSWQS'
    'IQoMY29tbWFuZF9uYW1lGAQgASgJUgtjb21tYW5kTmFtZRIdCgpjbHVzdGVyX2lkGAwgASgNUg'
    'ljbHVzdGVySWQSJAoLZW5kcG9pbnRfaWQYCyABKA1IAVIKZW5kcG9pbnRJZIgBARJiChN0aGVy'
    'bW9zdGF0X3NldHBvaW50GAUgASgLMi8ua3VzaW50YS5pb3Qud2VicnRjLnYxLlRoZXJtb3N0YX'
    'RTZXRwb2ludFBhcmFtc0gAUhJ0aGVybW9zdGF0U2V0cG9pbnQSUAoNbGV2ZWxfY29udHJvbBgG'
    'IAEoCzIpLmt1c2ludGEuaW90LndlYnJ0Yy52MS5MZXZlbENvbnRyb2xQYXJhbXNIAFIMbGV2ZW'
    'xDb250cm9sEjsKBm9uX29mZhgHIAEoCzIiLmt1c2ludGEuaW90LndlYnJ0Yy52MS5Pbk9mZlBh'
    'cmFtc0gAUgVvbk9mZhJjChR3aW5kb3dfY292ZXJpbmdfbGlmdBgIIAEoCzIvLmt1c2ludGEuaW'
    '90LndlYnJ0Yy52MS5XaW5kb3dDb3ZlcmluZ0xpZnRQYXJhbXNIAFISd2luZG93Q292ZXJpbmdM'
    'aWZ0EkQKCWRvb3JfbG9jaxgJIAEoCzIlLmt1c2ludGEuaW90LndlYnJ0Yy52MS5Eb29yTG9ja1'
    'BhcmFtc0gAUghkb29yTG9jaxJyChl0aGVybW9zdGF0X3NldHBvaW50X3dyaXRlGAogASgLMjQu'
    'a3VzaW50YS5pb3Qud2VicnRjLnYxLlRoZXJtb3N0YXRTZXRwb2ludFdyaXRlUGFyYW1zSABSF3'
    'RoZXJtb3N0YXRTZXRwb2ludFdyaXRlEhkKB3Jhd190bHYYYyABKAxIAFIGcmF3VGx2QgwKCnBh'
    'cmFtZXRlcnNCDgoMX2VuZHBvaW50X2lkSgQIAxAEUg5jbHVzdGVyX2lkX2hleA==');

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
    {'1': 'command_id', '3': 1, '4': 1, '5': 9, '10': 'commandId'},
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
    'Cg1Db21tYW5kUmVzdWx0Eh0KCmNvbW1hbmRfaWQYASABKAlSCWNvbW1hbmRJZBIYCgdzdWNjZX'
    'NzGAIgASgIUgdzdWNjZXNzEjkKBWVycm9yGAMgASgLMiMua3VzaW50YS5pb3Qud2VicnRjLnYx'
    'LkNvbW1hbmRFcnJvclIFZXJyb3ISPQoMY29tcGxldGVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3'
    'RvYnVmLlRpbWVzdGFtcFILY29tcGxldGVkQXQSPgoKc2V0dGxlc19ieRgFIAEoCzIaLmdvb2ds'
    'ZS5wcm90b2J1Zi5UaW1lc3RhbXBIAFIJc2V0dGxlc0J5iAEBQg0KC19zZXR0bGVzX2J5');
