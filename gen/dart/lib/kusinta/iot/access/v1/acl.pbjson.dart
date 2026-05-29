// This is a generated file - do not edit.
//
// Generated from kusinta/iot/access/v1/acl.proto.

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

@$core.Deprecated('Use propertyConstraintDescriptor instead')
const PropertyConstraint$json = {
  '1': 'PropertyConstraint',
  '2': [
    {'1': 'attribute_name', '3': 1, '4': 1, '5': 9, '10': 'attributeName'},
    {'1': 'int_max', '3': 2, '4': 1, '5': 17, '9': 0, '10': 'intMax'},
    {'1': 'int_min', '3': 3, '4': 1, '5': 17, '9': 0, '10': 'intMin'},
    {'1': 'uint_max', '3': 4, '4': 1, '5': 13, '9': 0, '10': 'uintMax'},
    {'1': 'uint_min', '3': 5, '4': 1, '5': 13, '9': 0, '10': 'uintMin'},
    {'1': 'cluster_id_hex', '3': 6, '4': 1, '5': 9, '10': 'clusterIdHex'},
  ],
  '8': [
    {'1': 'constraint'},
  ],
};

/// Descriptor for `PropertyConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyConstraintDescriptor = $convert.base64Decode(
    'ChJQcm9wZXJ0eUNvbnN0cmFpbnQSJQoOYXR0cmlidXRlX25hbWUYASABKAlSDWF0dHJpYnV0ZU'
    '5hbWUSGQoHaW50X21heBgCIAEoEUgAUgZpbnRNYXgSGQoHaW50X21pbhgDIAEoEUgAUgZpbnRN'
    'aW4SGwoIdWludF9tYXgYBCABKA1IAFIHdWludE1heBIbCgh1aW50X21pbhgFIAEoDUgAUgd1aW'
    '50TWluEiQKDmNsdXN0ZXJfaWRfaGV4GAYgASgJUgxjbHVzdGVySWRIZXhCDAoKY29uc3RyYWlu'
    'dA==');

@$core.Deprecated('Use deviceAclDescriptor instead')
const DeviceAcl$json = {
  '1': 'DeviceAcl',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {
      '1': 'user_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'userId'
    },
    {
      '1': 'role',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'role'
    },
    {
      '1': 'allowed_actions',
      '3': 4,
      '4': 3,
      '5': 14,
      '6': '.kusinta.iot.access.v1.PermissionAction',
      '10': 'allowedActions'
    },
    {
      '1': 'allowed_attributes',
      '3': 5,
      '4': 3,
      '5': 9,
      '10': 'allowedAttributes'
    },
    {
      '1': 'property_constraints',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.access.v1.PropertyConstraint',
      '10': 'propertyConstraints'
    },
  ],
};

/// Descriptor for `DeviceAcl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceAclDescriptor = $convert.base64Decode(
    'CglEZXZpY2VBY2wSPgoJZGV2aWNlX2lkGAEgASgLMiEua3VzaW50YS5pb3QuaWRlbnRpdHkudj'
    'EuRGV2aWNlSWRSCGRldmljZUlkEjgKB3VzZXJfaWQYAiABKAsyHy5rdXNpbnRhLmlvdC5pZGVu'
    'dGl0eS52MS5Vc2VySWRSBnVzZXJJZBIvCgRyb2xlGAMgASgOMhsua3VzaW50YS5pb3QuYWNjZX'
    'NzLnYxLlJvbGVSBHJvbGUSUAoPYWxsb3dlZF9hY3Rpb25zGAQgAygOMicua3VzaW50YS5pb3Qu'
    'YWNjZXNzLnYxLlBlcm1pc3Npb25BY3Rpb25SDmFsbG93ZWRBY3Rpb25zEi0KEmFsbG93ZWRfYX'
    'R0cmlidXRlcxgFIAMoCVIRYWxsb3dlZEF0dHJpYnV0ZXMSXAoUcHJvcGVydHlfY29uc3RyYWlu'
    'dHMYBiADKAsyKS5rdXNpbnRhLmlvdC5hY2Nlc3MudjEuUHJvcGVydHlDb25zdHJhaW50UhNwcm'
    '9wZXJ0eUNvbnN0cmFpbnRz');

@$core.Deprecated('Use effectivePermissionsDescriptor instead')
const EffectivePermissions$json = {
  '1': 'EffectivePermissions',
  '2': [
    {
      '1': 'user_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'userId'
    },
    {
      '1': 'gateway_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.GatewayId',
      '10': 'gatewayId'
    },
    {
      '1': 'device_acls',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.access.v1.DeviceAcl',
      '10': 'deviceAcls'
    },
    {
      '1': 'valid_at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'validAt'
    },
  ],
};

/// Descriptor for `EffectivePermissions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List effectivePermissionsDescriptor = $convert.base64Decode(
    'ChRFZmZlY3RpdmVQZXJtaXNzaW9ucxI4Cgd1c2VyX2lkGAEgASgLMh8ua3VzaW50YS5pb3QuaW'
    'RlbnRpdHkudjEuVXNlcklkUgZ1c2VySWQSQQoKZ2F0ZXdheV9pZBgCIAEoCzIiLmt1c2ludGEu'
    'aW90LmlkZW50aXR5LnYxLkdhdGV3YXlJZFIJZ2F0ZXdheUlkEkEKC2RldmljZV9hY2xzGAMgAy'
    'gLMiAua3VzaW50YS5pb3QuYWNjZXNzLnYxLkRldmljZUFjbFIKZGV2aWNlQWNscxI1Cgh2YWxp'
    'ZF9hdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSB3ZhbGlkQXQ=');
