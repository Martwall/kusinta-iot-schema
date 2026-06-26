// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/permission_push.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use livePermissionUpdateDescriptor instead')
const LivePermissionUpdate$json = {
  '1': 'LivePermissionUpdate',
  '2': [
    {
      '1': 'new_permissions',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.access.v1.EffectivePermissions',
      '10': 'newPermissions'
    },
    {
      '1': 'added_devices',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'addedDevices'
    },
    {
      '1': 'removed_devices',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'removedDevices'
    },
    {'1': 'change_reason', '3': 4, '4': 1, '5': 9, '10': 'changeReason'},
  ],
};

/// Descriptor for `LivePermissionUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List livePermissionUpdateDescriptor = $convert.base64Decode(
    'ChRMaXZlUGVybWlzc2lvblVwZGF0ZRJUCg9uZXdfcGVybWlzc2lvbnMYASABKAsyKy5rdXNpbn'
    'RhLmlvdC5hY2Nlc3MudjEuRWZmZWN0aXZlUGVybWlzc2lvbnNSDm5ld1Blcm1pc3Npb25zEkYK'
    'DWFkZGVkX2RldmljZXMYAiADKAsyIS5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5EZXZpY2VJZF'
    'IMYWRkZWREZXZpY2VzEkoKD3JlbW92ZWRfZGV2aWNlcxgDIAMoCzIhLmt1c2ludGEuaW90Lmlk'
    'ZW50aXR5LnYxLkRldmljZUlkUg5yZW1vdmVkRGV2aWNlcxIjCg1jaGFuZ2VfcmVhc29uGAQgAS'
    'gJUgxjaGFuZ2VSZWFzb24=');
