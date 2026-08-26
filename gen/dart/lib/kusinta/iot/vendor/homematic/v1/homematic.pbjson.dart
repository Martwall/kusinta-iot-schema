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

@$core.Deprecated('Use homematicDeviceIdentityDescriptor instead')
const HomematicDeviceIdentity$json = {
  '1': 'HomematicDeviceIdentity',
  '2': [
    {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `HomematicDeviceIdentity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List homematicDeviceIdentityDescriptor =
    $convert.base64Decode(
        'ChdIb21lbWF0aWNEZXZpY2VJZGVudGl0eRIYCgdhZGRyZXNzGAEgASgJUgdhZGRyZXNzEhIKBH'
        'R5cGUYAiABKAlSBHR5cGU=');

@$core.Deprecated('Use hmThermostatPropsDescriptor instead')
const HmThermostatProps$json = {
  '1': 'HmThermostatProps',
  '2': [
    {
      '1': 'boost_mode',
      '3': 1,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'boostMode',
      '17': true
    },
    {
      '1': 'boost_time_period',
      '3': 2,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 1,
      '10': 'boostTimePeriod',
      '17': true
    },
    {
      '1': 'control_mode',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 2,
      '10': 'controlMode',
      '17': true
    },
    {
      '1': 'frost_protection',
      '3': 4,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 3,
      '10': 'frostProtection',
      '17': true
    },
    {
      '1': 'party_mode',
      '3': 5,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 4,
      '10': 'partyMode',
      '17': true
    },
    {
      '1': 'window_state',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 5,
      '10': 'windowState',
      '17': true
    },
    {
      '1': 'valve_state',
      '3': 8,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 6,
      '10': 'valveState',
      '17': true
    },
    {
      '1': 'set_point_mode',
      '3': 9,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 7,
      '10': 'setPointMode',
      '17': true
    },
    {
      '1': 'active_profile',
      '3': 10,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 8,
      '10': 'activeProfile',
      '17': true
    },
    {
      '1': 'actual_temperature_status',
      '3': 11,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 9,
      '10': 'actualTemperatureStatus',
      '17': true
    },
    {
      '1': 'valve_adaption',
      '3': 12,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 10,
      '10': 'valveAdaption',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_boost_mode'},
    {'1': '_boost_time_period'},
    {'1': '_control_mode'},
    {'1': '_frost_protection'},
    {'1': '_party_mode'},
    {'1': '_window_state'},
    {'1': '_valve_state'},
    {'1': '_set_point_mode'},
    {'1': '_active_profile'},
    {'1': '_actual_temperature_status'},
    {'1': '_valve_adaption'},
  ],
  '9': [
    {'1': 6, '2': 7},
  ],
  '10': ['level', 'current_profile_period'],
};

/// Descriptor for `HmThermostatProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hmThermostatPropsDescriptor = $convert.base64Decode(
    'ChFIbVRoZXJtb3N0YXRQcm9wcxI2Cgpib29zdF9tb2RlGAEgASgIQhKitRgKQk9PU1RfTU9ERd'
    'C1GAZIAFIJYm9vc3RNb2RliAEBEkMKEWJvb3N0X3RpbWVfcGVyaW9kGAIgASgNQhKitRgKQk9P'
    'U1RfVElNRdC1GAVIAVIPYm9vc3RUaW1lUGVyaW9kiAEBEjwKDGNvbnRyb2xfbW9kZRgDIAEoDU'
    'IUorUYDENPTlRST0xfTU9ERdC1GAJIAlILY29udHJvbE1vZGWIAQESSAoQZnJvc3RfcHJvdGVj'
    'dGlvbhgEIAEoCEIYorUYEEZST1NUX1BST1RFQ1RJT07QtRgFSANSD2Zyb3N0UHJvdGVjdGlvbo'
    'gBARI2CgpwYXJ0eV9tb2RlGAUgASgIQhKitRgKUEFSVFlfTU9ERdC1GAVIBFIJcGFydHlNb2Rl'
    'iAEBEjwKDHdpbmRvd19zdGF0ZRgHIAEoDUIUorUYDFdJTkRPV19TVEFURdC1GAdIBVILd2luZG'
    '93U3RhdGWIAQESOQoLdmFsdmVfc3RhdGUYCCABKA1CE6K1GAtWQUxWRV9TVEFURdC1GAVIBlIK'
    'dmFsdmVTdGF0ZYgBARJBCg5zZXRfcG9pbnRfbW9kZRgJIAEoDUIWorUYDlNFVF9QT0lOVF9NT0'
    'RF0LUYB0gHUgxzZXRQb2ludE1vZGWIAQESQgoOYWN0aXZlX3Byb2ZpbGUYCiABKA1CFqK1GA5B'
    'Q1RJVkVfUFJPRklMRdC1GAdICFINYWN0aXZlUHJvZmlsZYgBARJiChlhY3R1YWxfdGVtcGVyYX'
    'R1cmVfc3RhdHVzGAsgASgNQiGitRgZQUNUVUFMX1RFTVBFUkFUVVJFX1NUQVRVU9C1GAVICVIX'
    'YWN0dWFsVGVtcGVyYXR1cmVTdGF0dXOIAQESQgoOdmFsdmVfYWRhcHRpb24YDCABKAhCFqK1GA'
    '5WQUxWRV9BREFQVElPTtC1GAdIClINdmFsdmVBZGFwdGlvbogBAToYqrUYFGhvbWVtYXRpYy50'
    'aGVybW9zdGF0Qg0KC19ib29zdF9tb2RlQhQKEl9ib29zdF90aW1lX3BlcmlvZEIPCg1fY29udH'
    'JvbF9tb2RlQhMKEV9mcm9zdF9wcm90ZWN0aW9uQg0KC19wYXJ0eV9tb2RlQg8KDV93aW5kb3df'
    'c3RhdGVCDgoMX3ZhbHZlX3N0YXRlQhEKD19zZXRfcG9pbnRfbW9kZUIRCg9fYWN0aXZlX3Byb2'
    'ZpbGVCHAoaX2FjdHVhbF90ZW1wZXJhdHVyZV9zdGF0dXNCEQoPX3ZhbHZlX2FkYXB0aW9uSgQI'
    'BhAHUgVsZXZlbFIWY3VycmVudF9wcm9maWxlX3BlcmlvZA==');

@$core.Deprecated('Use hmMaintenancePropsDescriptor instead')
const HmMaintenanceProps$json = {
  '1': 'HmMaintenanceProps',
  '2': [
    {
      '1': 'error_code',
      '3': 1,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 0,
      '10': 'errorCode',
      '17': true
    },
    {
      '1': 'sabotage',
      '3': 2,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 1,
      '10': 'sabotage',
      '17': true
    },
    {
      '1': 'rssi_device',
      '3': 3,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 2,
      '10': 'rssiDevice',
      '17': true
    },
    {
      '1': 'rssi_peer',
      '3': 4,
      '4': 1,
      '5': 17,
      '8': {},
      '9': 3,
      '10': 'rssiPeer',
      '17': true
    },
    {
      '1': 'operating_voltage_status',
      '3': 5,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 4,
      '10': 'operatingVoltageStatus',
      '17': true
    },
    {
      '1': 'unreach',
      '3': 6,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 5,
      '10': 'unreach',
      '17': true
    },
    {
      '1': 'config_pending',
      '3': 7,
      '4': 1,
      '5': 8,
      '8': {},
      '9': 6,
      '10': 'configPending',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_error_code'},
    {'1': '_sabotage'},
    {'1': '_rssi_device'},
    {'1': '_rssi_peer'},
    {'1': '_operating_voltage_status'},
    {'1': '_unreach'},
    {'1': '_config_pending'},
  ],
};

/// Descriptor for `HmMaintenanceProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hmMaintenancePropsDescriptor = $convert.base64Decode(
    'ChJIbU1haW50ZW5hbmNlUHJvcHMSNgoKZXJyb3JfY29kZRgBIAEoDUISorUYCkVSUk9SX0NPRE'
    'XQtRgFSABSCWVycm9yQ29kZYgBARIxCghzYWJvdGFnZRgCIAEoCEIQorUYCFNBQk9UQUdF0LUY'
    'BUgBUghzYWJvdGFnZYgBARI5Cgtyc3NpX2RldmljZRgDIAEoEUITorUYC1JTU0lfREVWSUNF0L'
    'UYBUgCUgpyc3NpRGV2aWNliAEBEjMKCXJzc2lfcGVlchgEIAEoEUIRorUYCVJTU0lfUEVFUtC1'
    'GAVIA1IIcnNzaVBlZXKIAQESXwoYb3BlcmF0aW5nX3ZvbHRhZ2Vfc3RhdHVzGAUgASgNQiCitR'
    'gYT1BFUkFUSU5HX1ZPTFRBR0VfU1RBVFVT0LUYBUgEUhZvcGVyYXRpbmdWb2x0YWdlU3RhdHVz'
    'iAEBEi4KB3VucmVhY2gYBiABKAhCD6K1GAdVTlJFQUNI0LUYBUgFUgd1bnJlYWNoiAEBEkIKDm'
    'NvbmZpZ19wZW5kaW5nGAcgASgIQhaitRgOQ09ORklHX1BFTkRJTkfQtRgFSAZSDWNvbmZpZ1Bl'
    'bmRpbmeIAQE6Gaq1GBVob21lbWF0aWMubWFpbnRlbmFuY2VCDQoLX2Vycm9yX2NvZGVCCwoJX3'
    'NhYm90YWdlQg4KDF9yc3NpX2RldmljZUIMCgpfcnNzaV9wZWVyQhsKGV9vcGVyYXRpbmdfdm9s'
    'dGFnZV9zdGF0dXNCCgoIX3VucmVhY2hCEQoPX2NvbmZpZ19wZW5kaW5n');
