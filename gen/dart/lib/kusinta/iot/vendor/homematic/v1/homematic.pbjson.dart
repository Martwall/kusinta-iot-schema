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
      '5': 2,
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
      '1': 'current_profile_period',
      '3': 5,
      '4': 1,
      '5': 2,
      '8': {},
      '9': 4,
      '10': 'currentProfilePeriod',
      '17': true
    },
    {
      '1': 'level',
      '3': 6,
      '4': 1,
      '5': 2,
      '8': {},
      '9': 5,
      '10': 'level',
      '17': true
    },
    {
      '1': 'window_state',
      '3': 7,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 6,
      '10': 'windowState',
      '17': true
    },
    {
      '1': 'valve_state',
      '3': 8,
      '4': 1,
      '5': 13,
      '8': {},
      '9': 7,
      '10': 'valveState',
      '17': true
    },
  ],
  '7': {},
  '8': [
    {'1': '_boost_mode'},
    {'1': '_boost_time_period'},
    {'1': '_control_mode'},
    {'1': '_frost_protection'},
    {'1': '_current_profile_period'},
    {'1': '_level'},
    {'1': '_window_state'},
    {'1': '_valve_state'},
  ],
};

/// Descriptor for `HmThermostatProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hmThermostatPropsDescriptor = $convert.base64Decode(
    'ChFIbVRoZXJtb3N0YXRQcm9wcxIyCgpib29zdF9tb2RlGAEgASgIQg6itRgKQk9PU1RfTU9ERU'
    'gAUglib29zdE1vZGWIAQESPwoRYm9vc3RfdGltZV9wZXJpb2QYAiABKAJCDqK1GApCT09TVF9U'
    'SU1FSAFSD2Jvb3N0VGltZVBlcmlvZIgBARI4Cgxjb250cm9sX21vZGUYAyABKA1CEKK1GAxDT0'
    '5UUk9MX01PREVIAlILY29udHJvbE1vZGWIAQESRAoQZnJvc3RfcHJvdGVjdGlvbhgEIAEoCEIU'
    'orUYEEZST1NUX1BST1RFQ1RJT05IA1IPZnJvc3RQcm90ZWN0aW9uiAEBEkkKFmN1cnJlbnRfcH'
    'JvZmlsZV9wZXJpb2QYBSABKAJCDqK1GApQQVJUWV9NT0RFSARSFGN1cnJlbnRQcm9maWxlUGVy'
    'aW9kiAEBEiQKBWxldmVsGAYgASgCQgmitRgFTEVWRUxIBVIFbGV2ZWyIAQESOAoMd2luZG93X3'
    'N0YXRlGAcgASgNQhCitRgMV0lORE9XX1NUQVRFSAZSC3dpbmRvd1N0YXRliAEBEjUKC3ZhbHZl'
    'X3N0YXRlGAggASgNQg+itRgLVkFMVkVfU1RBVEVIB1IKdmFsdmVTdGF0ZYgBAToYqrUYFGhvbW'
    'VtYXRpYy50aGVybW9zdGF0Qg0KC19ib29zdF9tb2RlQhQKEl9ib29zdF90aW1lX3BlcmlvZEIP'
    'Cg1fY29udHJvbF9tb2RlQhMKEV9mcm9zdF9wcm90ZWN0aW9uQhkKF19jdXJyZW50X3Byb2ZpbG'
    'VfcGVyaW9kQggKBl9sZXZlbEIPCg1fd2luZG93X3N0YXRlQg4KDF92YWx2ZV9zdGF0ZQ==');
