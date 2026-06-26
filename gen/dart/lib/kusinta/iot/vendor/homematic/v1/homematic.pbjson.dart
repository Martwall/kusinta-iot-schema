// This is a generated file - do not edit.
//
// Generated from kusinta/iot/vendor/homematic/v1/homematic.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

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
    'EuSG1UaGVybW9zdGF0UHJvcHNIAFIMaG1UaGVybW9zdGF0QhEKD2hvbWVtYXRpY19wcm9wcw==');
