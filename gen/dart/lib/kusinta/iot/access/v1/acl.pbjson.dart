// This is a generated file - do not edit.
//
// Generated from kusinta/iot/access/v1/acl.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use attributeRefDescriptor instead')
const AttributeRef$json = {
  '1': 'AttributeRef',
  '2': [
    {'1': 'attribute_name', '3': 1, '4': 1, '5': 9, '10': 'attributeName'},
    {'1': 'cluster_id', '3': 2, '4': 1, '5': 13, '10': 'clusterId'},
    {'1': 'attribute_id', '3': 4, '4': 1, '5': 13, '10': 'attributeId'},
    {
      '1': 'endpoint_id',
      '3': 3,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'endpointId',
      '17': true
    },
    {
      '1': 'vendor_extension',
      '3': 5,
      '4': 1,
      '5': 9,
      '9': 1,
      '10': 'vendorExtension',
      '17': true
    },
  ],
  '8': [
    {'1': '_endpoint_id'},
    {'1': '_vendor_extension'},
  ],
};

/// Descriptor for `AttributeRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attributeRefDescriptor = $convert.base64Decode(
    'CgxBdHRyaWJ1dGVSZWYSJQoOYXR0cmlidXRlX25hbWUYASABKAlSDWF0dHJpYnV0ZU5hbWUSHQ'
    'oKY2x1c3Rlcl9pZBgCIAEoDVIJY2x1c3RlcklkEiEKDGF0dHJpYnV0ZV9pZBgEIAEoDVILYXR0'
    'cmlidXRlSWQSJAoLZW5kcG9pbnRfaWQYAyABKA1IAFIKZW5kcG9pbnRJZIgBARIuChB2ZW5kb3'
    'JfZXh0ZW5zaW9uGAUgASgJSAFSD3ZlbmRvckV4dGVuc2lvbogBAUIOCgxfZW5kcG9pbnRfaWRC'
    'EwoRX3ZlbmRvcl9leHRlbnNpb24=');

@$core.Deprecated('Use propertyConstraintDescriptor instead')
const PropertyConstraint$json = {
  '1': 'PropertyConstraint',
  '2': [
    {
      '1': 'attribute',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.access.v1.AttributeRef',
      '10': 'attribute'
    },
    {'1': 'int_max', '3': 2, '4': 1, '5': 17, '9': 0, '10': 'intMax'},
    {'1': 'int_min', '3': 3, '4': 1, '5': 17, '9': 0, '10': 'intMin'},
    {'1': 'uint_max', '3': 4, '4': 1, '5': 13, '9': 0, '10': 'uintMax'},
    {'1': 'uint_min', '3': 5, '4': 1, '5': 13, '9': 0, '10': 'uintMin'},
  ],
  '8': [
    {'1': 'constraint'},
  ],
  '9': [
    {'1': 1, '2': 2},
    {'1': 6, '2': 7},
    {'1': 7, '2': 8},
  ],
  '10': ['attribute_name', 'cluster_id_hex', 'endpoint_id'],
};

/// Descriptor for `PropertyConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyConstraintDescriptor = $convert.base64Decode(
    'ChJQcm9wZXJ0eUNvbnN0cmFpbnQSQQoJYXR0cmlidXRlGAggASgLMiMua3VzaW50YS5pb3QuYW'
    'NjZXNzLnYxLkF0dHJpYnV0ZVJlZlIJYXR0cmlidXRlEhkKB2ludF9tYXgYAiABKBFIAFIGaW50'
    'TWF4EhkKB2ludF9taW4YAyABKBFIAFIGaW50TWluEhsKCHVpbnRfbWF4GAQgASgNSABSB3Vpbn'
    'RNYXgSGwoIdWludF9taW4YBSABKA1IAFIHdWludE1pbkIMCgpjb25zdHJhaW50SgQIARACSgQI'
    'BhAHSgQIBxAIUg5hdHRyaWJ1dGVfbmFtZVIOY2x1c3Rlcl9pZF9oZXhSC2VuZHBvaW50X2lk');

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
      '1': 'allowed_attribute_refs',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.access.v1.AttributeRef',
      '10': 'allowedAttributeRefs'
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
  '9': [
    {'1': 5, '2': 6},
  ],
  '10': ['allowed_attributes'],
};

/// Descriptor for `DeviceAcl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceAclDescriptor = $convert.base64Decode(
    'CglEZXZpY2VBY2wSPgoJZGV2aWNlX2lkGAEgASgLMiEua3VzaW50YS5pb3QuaWRlbnRpdHkudj'
    'EuRGV2aWNlSWRSCGRldmljZUlkEjgKB3VzZXJfaWQYAiABKAsyHy5rdXNpbnRhLmlvdC5pZGVu'
    'dGl0eS52MS5Vc2VySWRSBnVzZXJJZBIvCgRyb2xlGAMgASgOMhsua3VzaW50YS5pb3QuYWNjZX'
    'NzLnYxLlJvbGVSBHJvbGUSUAoPYWxsb3dlZF9hY3Rpb25zGAQgAygOMicua3VzaW50YS5pb3Qu'
    'YWNjZXNzLnYxLlBlcm1pc3Npb25BY3Rpb25SDmFsbG93ZWRBY3Rpb25zElkKFmFsbG93ZWRfYX'
    'R0cmlidXRlX3JlZnMYByADKAsyIy5rdXNpbnRhLmlvdC5hY2Nlc3MudjEuQXR0cmlidXRlUmVm'
    'UhRhbGxvd2VkQXR0cmlidXRlUmVmcxJcChRwcm9wZXJ0eV9jb25zdHJhaW50cxgGIAMoCzIpLm'
    't1c2ludGEuaW90LmFjY2Vzcy52MS5Qcm9wZXJ0eUNvbnN0cmFpbnRSE3Byb3BlcnR5Q29uc3Ry'
    'YWludHNKBAgFEAZSEmFsbG93ZWRfYXR0cmlidXRlcw==');

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
