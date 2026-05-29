// This is a generated file - do not edit.
//
// Generated from kusinta/iot/vendor/homematic/v1/homematic.proto.

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

@$core.Deprecated('Use hmThermostatPropsDescriptor instead')
const HmThermostatProps$json = {
  '1': 'HmThermostatProps',
  '2': [
    {'1': 'boost_mode', '3': 1, '4': 1, '5': 8, '10': 'boostMode'},
    {'1': 'boost_time_period', '3': 2, '4': 1, '5': 2, '10': 'boostTimePeriod'},
    {'1': 'control_mode', '3': 3, '4': 1, '5': 13, '10': 'controlMode'},
    {'1': 'frost_protection', '3': 4, '4': 1, '5': 8, '10': 'frostProtection'},
    {
      '1': 'current_profile_period',
      '3': 5,
      '4': 1,
      '5': 2,
      '10': 'currentProfilePeriod'
    },
  ],
};

/// Descriptor for `HmThermostatProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hmThermostatPropsDescriptor = $convert.base64Decode(
    'ChFIbVRoZXJtb3N0YXRQcm9wcxIdCgpib29zdF9tb2RlGAEgASgIUglib29zdE1vZGUSKgoRYm'
    '9vc3RfdGltZV9wZXJpb2QYAiABKAJSD2Jvb3N0VGltZVBlcmlvZBIhCgxjb250cm9sX21vZGUY'
    'AyABKA1SC2NvbnRyb2xNb2RlEikKEGZyb3N0X3Byb3RlY3Rpb24YBCABKAhSD2Zyb3N0UHJvdG'
    'VjdGlvbhI0ChZjdXJyZW50X3Byb2ZpbGVfcGVyaW9kGAUgASgCUhRjdXJyZW50UHJvZmlsZVBl'
    'cmlvZA==');

@$core.Deprecated('Use hmWallThermostatPropsDescriptor instead')
const HmWallThermostatProps$json = {
  '1': 'HmWallThermostatProps',
  '2': [
    {'1': 'display_mode', '3': 1, '4': 1, '5': 13, '10': 'displayMode'},
  ],
};

/// Descriptor for `HmWallThermostatProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hmWallThermostatPropsDescriptor = $convert.base64Decode(
    'ChVIbVdhbGxUaGVybW9zdGF0UHJvcHMSIQoMZGlzcGxheV9tb2RlGAEgASgNUgtkaXNwbGF5TW'
    '9kZQ==');

@$core.Deprecated('Use hmWindowActuatorPropsDescriptor instead')
const HmWindowActuatorProps$json = {
  '1': 'HmWindowActuatorProps',
  '2': [
    {'1': 'drive_state', '3': 1, '4': 1, '5': 13, '10': 'driveState'},
    {'1': 'error_efuse', '3': 2, '4': 1, '5': 8, '10': 'errorEfuse'},
    {
      '1': 'error_motor_coils_temp',
      '3': 3,
      '4': 1,
      '5': 8,
      '10': 'errorMotorCoilsTemp'
    },
  ],
};

/// Descriptor for `HmWindowActuatorProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hmWindowActuatorPropsDescriptor = $convert.base64Decode(
    'ChVIbVdpbmRvd0FjdHVhdG9yUHJvcHMSHwoLZHJpdmVfc3RhdGUYASABKA1SCmRyaXZlU3RhdG'
    'USHwoLZXJyb3JfZWZ1c2UYAiABKAhSCmVycm9yRWZ1c2USMwoWZXJyb3JfbW90b3JfY29pbHNf'
    'dGVtcBgDIAEoCFITZXJyb3JNb3RvckNvaWxzVGVtcA==');

@$core.Deprecated('Use hmDoorSensorPropsDescriptor instead')
const HmDoorSensorProps$json = {
  '1': 'HmDoorSensorProps',
  '2': [
    {'1': 'sabotage', '3': 1, '4': 1, '5': 8, '10': 'sabotage'},
    {'1': 'low_battery', '3': 2, '4': 1, '5': 8, '10': 'lowBattery'},
  ],
};

/// Descriptor for `HmDoorSensorProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hmDoorSensorPropsDescriptor = $convert.base64Decode(
    'ChFIbURvb3JTZW5zb3JQcm9wcxIaCghzYWJvdGFnZRgBIAEoCFIIc2Fib3RhZ2USHwoLbG93X2'
    'JhdHRlcnkYAiABKAhSCmxvd0JhdHRlcnk=');

@$core.Deprecated('Use hmSmokeDetectorPropsDescriptor instead')
const HmSmokeDetectorProps$json = {
  '1': 'HmSmokeDetectorProps',
  '2': [
    {'1': 'alarm_triggered', '3': 1, '4': 1, '5': 8, '10': 'alarmTriggered'},
    {'1': 'low_battery', '3': 2, '4': 1, '5': 8, '10': 'lowBattery'},
  ],
};

/// Descriptor for `HmSmokeDetectorProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hmSmokeDetectorPropsDescriptor = $convert.base64Decode(
    'ChRIbVNtb2tlRGV0ZWN0b3JQcm9wcxInCg9hbGFybV90cmlnZ2VyZWQYASABKAhSDmFsYXJtVH'
    'JpZ2dlcmVkEh8KC2xvd19iYXR0ZXJ5GAIgASgIUgpsb3dCYXR0ZXJ5');

@$core.Deprecated('Use homematicVendorExtensionDescriptor instead')
const HomematicVendorExtension$json = {
  '1': 'HomematicVendorExtension',
  '2': [
    {
      '1': 'homematic_address',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'homematicAddress'
    },
    {'1': 'homematic_type', '3': 2, '4': 1, '5': 9, '10': 'homematicType'},
    {
      '1': 'hm_thermostat',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.vendor.homematic.v1.HmThermostatProps',
      '9': 0,
      '10': 'hmThermostat'
    },
    {
      '1': 'hm_wall_thermostat',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.vendor.homematic.v1.HmWallThermostatProps',
      '9': 0,
      '10': 'hmWallThermostat'
    },
    {
      '1': 'hm_window_actuator',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.vendor.homematic.v1.HmWindowActuatorProps',
      '9': 0,
      '10': 'hmWindowActuator'
    },
    {
      '1': 'hm_door_sensor',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.vendor.homematic.v1.HmDoorSensorProps',
      '9': 0,
      '10': 'hmDoorSensor'
    },
    {
      '1': 'hm_smoke_detector',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.vendor.homematic.v1.HmSmokeDetectorProps',
      '9': 0,
      '10': 'hmSmokeDetector'
    },
  ],
  '8': [
    {'1': 'homematic_props'},
  ],
};

/// Descriptor for `HomematicVendorExtension`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List homematicVendorExtensionDescriptor = $convert.base64Decode(
    'ChhIb21lbWF0aWNWZW5kb3JFeHRlbnNpb24SKwoRaG9tZW1hdGljX2FkZHJlc3MYASABKAlSEG'
    'hvbWVtYXRpY0FkZHJlc3MSJQoOaG9tZW1hdGljX3R5cGUYAiABKAlSDWhvbWVtYXRpY1R5cGUS'
    'WQoNaG1fdGhlcm1vc3RhdBgKIAEoCzIyLmt1c2ludGEuaW90LnZlbmRvci5ob21lbWF0aWMudj'
    'EuSG1UaGVybW9zdGF0UHJvcHNIAFIMaG1UaGVybW9zdGF0EmYKEmhtX3dhbGxfdGhlcm1vc3Rh'
    'dBgLIAEoCzI2Lmt1c2ludGEuaW90LnZlbmRvci5ob21lbWF0aWMudjEuSG1XYWxsVGhlcm1vc3'
    'RhdFByb3BzSABSEGhtV2FsbFRoZXJtb3N0YXQSZgoSaG1fd2luZG93X2FjdHVhdG9yGAwgASgL'
    'MjYua3VzaW50YS5pb3QudmVuZG9yLmhvbWVtYXRpYy52MS5IbVdpbmRvd0FjdHVhdG9yUHJvcH'
    'NIAFIQaG1XaW5kb3dBY3R1YXRvchJaCg5obV9kb29yX3NlbnNvchgNIAEoCzIyLmt1c2ludGEu'
    'aW90LnZlbmRvci5ob21lbWF0aWMudjEuSG1Eb29yU2Vuc29yUHJvcHNIAFIMaG1Eb29yU2Vuc2'
    '9yEmMKEWhtX3Ntb2tlX2RldGVjdG9yGA4gASgLMjUua3VzaW50YS5pb3QudmVuZG9yLmhvbWVt'
    'YXRpYy52MS5IbVNtb2tlRGV0ZWN0b3JQcm9wc0gAUg9obVNtb2tlRGV0ZWN0b3JCEQoPaG9tZW'
    '1hdGljX3Byb3Bz');
