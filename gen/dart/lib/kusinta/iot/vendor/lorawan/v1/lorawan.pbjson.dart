// This is a generated file - do not edit.
//
// Generated from kusinta/iot/vendor/lorawan/v1/lorawan.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use lorawanProvisioningDescriptor instead')
const LorawanProvisioning$json = {
  '1': 'LorawanProvisioning',
  '2': [
    {'1': 'dev_eui', '3': 1, '4': 1, '5': 9, '10': 'devEui'},
    {'1': 'app_key', '3': 2, '4': 1, '5': 9, '10': 'appKey'},
    {
      '1': 'join_eui',
      '3': 3,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'joinEui',
      '17': true
    },
  ],
  '8': [
    {'1': '_join_eui'},
  ],
};

/// Descriptor for `LorawanProvisioning`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lorawanProvisioningDescriptor = $convert.base64Decode(
    'ChNMb3Jhd2FuUHJvdmlzaW9uaW5nEhcKB2Rldl9ldWkYASABKAlSBmRldkV1aRIXCgdhcHBfa2'
    'V5GAIgASgJUgZhcHBLZXkSHgoIam9pbl9ldWkYAyABKAlIAFIHam9pbkV1aYgBAUILCglfam9p'
    'bl9ldWk=');
