// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/command.proto.

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

@$core.Deprecated('Use thermostatSetpointParamsDescriptor instead')
const ThermostatSetpointParams$json = {
  '1': 'ThermostatSetpointParams',
  '2': [
    {'1': 'mode', '3': 1, '4': 1, '5': 13, '10': 'mode'},
    {'1': 'amount', '3': 2, '4': 1, '5': 17, '10': 'amount'},
  ],
};

/// Descriptor for `ThermostatSetpointParams`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List thermostatSetpointParamsDescriptor =
    $convert.base64Decode(
        'ChhUaGVybW9zdGF0U2V0cG9pbnRQYXJhbXMSEgoEbW9kZRgBIAEoDVIEbW9kZRIWCgZhbW91bn'
        'QYAiABKBFSBmFtb3VudA==');

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
    {'1': 'cluster_id_hex', '3': 3, '4': 1, '5': 9, '10': 'clusterIdHex'},
    {'1': 'command_name', '3': 4, '4': 1, '5': 9, '10': 'commandName'},
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
  ],
};

/// Descriptor for `DeviceCommand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceCommandDescriptor = $convert.base64Decode(
    'Cg1EZXZpY2VDb21tYW5kEh0KCmNvbW1hbmRfaWQYASABKAlSCWNvbW1hbmRJZBI+CglkZXZpY2'
    'VfaWQYAiABKAsyIS5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5EZXZpY2VJZFIIZGV2aWNlSWQS'
    'JAoOY2x1c3Rlcl9pZF9oZXgYAyABKAlSDGNsdXN0ZXJJZEhleBIhCgxjb21tYW5kX25hbWUYBC'
    'ABKAlSC2NvbW1hbmROYW1lEmIKE3RoZXJtb3N0YXRfc2V0cG9pbnQYBSABKAsyLy5rdXNpbnRh'
    'LmlvdC53ZWJydGMudjEuVGhlcm1vc3RhdFNldHBvaW50UGFyYW1zSABSEnRoZXJtb3N0YXRTZX'
    'Rwb2ludBJQCg1sZXZlbF9jb250cm9sGAYgASgLMikua3VzaW50YS5pb3Qud2VicnRjLnYxLkxl'
    'dmVsQ29udHJvbFBhcmFtc0gAUgxsZXZlbENvbnRyb2wSOwoGb25fb2ZmGAcgASgLMiIua3VzaW'
    '50YS5pb3Qud2VicnRjLnYxLk9uT2ZmUGFyYW1zSABSBW9uT2ZmEmMKFHdpbmRvd19jb3Zlcmlu'
    'Z19saWZ0GAggASgLMi8ua3VzaW50YS5pb3Qud2VicnRjLnYxLldpbmRvd0NvdmVyaW5nTGlmdF'
    'BhcmFtc0gAUhJ3aW5kb3dDb3ZlcmluZ0xpZnQSRAoJZG9vcl9sb2NrGAkgASgLMiUua3VzaW50'
    'YS5pb3Qud2VicnRjLnYxLkRvb3JMb2NrUGFyYW1zSABSCGRvb3JMb2NrEhkKB3Jhd190bHYYYy'
    'ABKAxIAFIGcmF3VGx2QgwKCnBhcmFtZXRlcnM=');

@$core.Deprecated('Use commandErrorDescriptor instead')
const CommandError$json = {
  '1': 'CommandError',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CommandError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandErrorDescriptor = $convert.base64Decode(
    'CgxDb21tYW5kRXJyb3ISEgoEY29kZRgBIAEoCVIEY29kZRIYCgdtZXNzYWdlGAIgASgJUgdtZX'
    'NzYWdl');

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
  ],
};

/// Descriptor for `CommandResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandResultDescriptor = $convert.base64Decode(
    'Cg1Db21tYW5kUmVzdWx0Eh0KCmNvbW1hbmRfaWQYASABKAlSCWNvbW1hbmRJZBIYCgdzdWNjZX'
    'NzGAIgASgIUgdzdWNjZXNzEjkKBWVycm9yGAMgASgLMiMua3VzaW50YS5pb3Qud2VicnRjLnYx'
    'LkNvbW1hbmRFcnJvclIFZXJyb3ISPQoMY29tcGxldGVkX2F0GAQgASgLMhouZ29vZ2xlLnByb3'
    'RvYnVmLlRpbWVzdGFtcFILY29tcGxldGVkQXQ=');
