// This is a generated file - do not edit.
//
// Generated from kusinta/iot/access/v1/roles.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use roleDescriptor instead')
const Role$json = {
  '1': 'Role',
  '2': [
    {'1': 'ROLE_UNSPECIFIED', '2': 0},
    {'1': 'ROLE_RESIDENT', '2': 1},
    {'1': 'ROLE_PROPERTY_OWNER', '2': 2},
    {'1': 'ROLE_TECHNICIAN', '2': 3},
    {'1': 'ROLE_GATEWAY_ADMIN', '2': 4},
  ],
};

/// Descriptor for `Role`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List roleDescriptor = $convert.base64Decode(
    'CgRSb2xlEhQKEFJPTEVfVU5TUEVDSUZJRUQQABIRCg1ST0xFX1JFU0lERU5UEAESFwoTUk9MRV'
    '9QUk9QRVJUWV9PV05FUhACEhMKD1JPTEVfVEVDSE5JQ0lBThADEhYKElJPTEVfR0FURVdBWV9B'
    'RE1JThAE');

@$core.Deprecated('Use permissionActionDescriptor instead')
const PermissionAction$json = {
  '1': 'PermissionAction',
  '2': [
    {'1': 'PERMISSION_ACTION_UNSPECIFIED', '2': 0},
    {'1': 'PERMISSION_ACTION_READ', '2': 1},
    {'1': 'PERMISSION_ACTION_WRITE', '2': 2},
    {'1': 'PERMISSION_ACTION_SUBSCRIBE', '2': 3},
    {'1': 'PERMISSION_ACTION_INVOKE', '2': 4},
  ],
};

/// Descriptor for `PermissionAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List permissionActionDescriptor = $convert.base64Decode(
    'ChBQZXJtaXNzaW9uQWN0aW9uEiEKHVBFUk1JU1NJT05fQUNUSU9OX1VOU1BFQ0lGSUVEEAASGg'
    'oWUEVSTUlTU0lPTl9BQ1RJT05fUkVBRBABEhsKF1BFUk1JU1NJT05fQUNUSU9OX1dSSVRFEAIS'
    'HwobUEVSTUlTU0lPTl9BQ1RJT05fU1VCU0NSSUJFEAMSHAoYUEVSTUlTU0lPTl9BQ1RJT05fSU'
    '5WT0tFEAQ=');
