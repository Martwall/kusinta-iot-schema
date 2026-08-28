// This is a generated file - do not edit.
//
// Generated from kusinta/iot/common/v1/pairing.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pairingErrorDescriptor instead')
const PairingError$json = {
  '1': 'PairingError',
  '2': [
    {'1': 'PAIRING_ERROR_UNSPECIFIED', '2': 0},
    {'1': 'PAIRING_ERROR_NOT_ENTITLED', '2': 1},
    {'1': 'PAIRING_ERROR_ALREADY_IN_PROGRESS', '2': 2},
    {'1': 'PAIRING_ERROR_CONNECTOR_UNAVAILABLE', '2': 3},
    {'1': 'PAIRING_ERROR_NO_DEVICE_APPEARED', '2': 4},
    {'1': 'PAIRING_ERROR_DEVICE_UNUSABLE', '2': 5},
    {'1': 'PAIRING_ERROR_WRONG_DEVICE', '2': 6},
    {'1': 'PAIRING_ERROR_INTERNAL', '2': 7},
  ],
};

/// Descriptor for `PairingError`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pairingErrorDescriptor = $convert.base64Decode(
    'CgxQYWlyaW5nRXJyb3ISHQoZUEFJUklOR19FUlJPUl9VTlNQRUNJRklFRBAAEh4KGlBBSVJJTk'
    'dfRVJST1JfTk9UX0VOVElUTEVEEAESJQohUEFJUklOR19FUlJPUl9BTFJFQURZX0lOX1BST0dS'
    'RVNTEAISJwojUEFJUklOR19FUlJPUl9DT05ORUNUT1JfVU5BVkFJTEFCTEUQAxIkCiBQQUlSSU'
    '5HX0VSUk9SX05PX0RFVklDRV9BUFBFQVJFRBAEEiEKHVBBSVJJTkdfRVJST1JfREVWSUNFX1VO'
    'VVNBQkxFEAUSHgoaUEFJUklOR19FUlJPUl9XUk9OR19ERVZJQ0UQBhIaChZQQUlSSU5HX0VSUk'
    '9SX0lOVEVSTkFMEAc=');

@$core.Deprecated('Use pairingErrorDetailDescriptor instead')
const PairingErrorDetail$json = {
  '1': 'PairingErrorDetail',
  '2': [
    {
      '1': 'code',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.common.v1.PairingError',
      '10': 'code'
    },
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PairingErrorDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairingErrorDetailDescriptor = $convert.base64Decode(
    'ChJQYWlyaW5nRXJyb3JEZXRhaWwSNwoEY29kZRgBIAEoDjIjLmt1c2ludGEuaW90LmNvbW1vbi'
    '52MS5QYWlyaW5nRXJyb3JSBGNvZGUSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use pairingWindowDescriptor instead')
const PairingWindow$json = {
  '1': 'PairingWindow',
  '2': [
    {
      '1': 'duration_seconds',
      '3': 1,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'durationSeconds',
      '17': true
    },
    {'1': 'device_hint', '3': 2, '4': 1, '5': 9, '10': 'deviceHint'},
    {
      '1': 'max_devices',
      '3': 3,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'maxDevices',
      '17': true
    },
  ],
  '8': [
    {'1': '_duration_seconds'},
    {'1': '_max_devices'},
  ],
};

/// Descriptor for `PairingWindow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairingWindowDescriptor = $convert.base64Decode(
    'Cg1QYWlyaW5nV2luZG93Ei4KEGR1cmF0aW9uX3NlY29uZHMYASABKA1IAFIPZHVyYXRpb25TZW'
    'NvbmRziAEBEh8KC2RldmljZV9oaW50GAIgASgJUgpkZXZpY2VIaW50EiQKC21heF9kZXZpY2Vz'
    'GAMgASgNSAFSCm1heERldmljZXOIAQFCEwoRX2R1cmF0aW9uX3NlY29uZHNCDgoMX21heF9kZX'
    'ZpY2Vz');
