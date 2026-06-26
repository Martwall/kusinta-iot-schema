// This is a generated file - do not edit.
//
// Generated from kusinta/iot/device/v1/descriptor.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use deviceDescriptorDescriptor instead')
const DeviceDescriptor$json = {
  '1': 'DeviceDescriptor',
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
      '1': 'matter_device_type_id',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'matterDeviceTypeId'
    },
    {'1': 'vendor_name', '3': 3, '4': 1, '5': 9, '10': 'vendorName'},
    {'1': 'product_name', '3': 4, '4': 1, '5': 9, '10': 'productName'},
    {'1': 'serial_number', '3': 5, '4': 1, '5': 9, '10': 'serialNumber'},
    {'1': 'node_label', '3': 6, '4': 1, '5': 9, '10': 'nodeLabel'},
    {'1': 'vendor_id', '3': 7, '4': 1, '5': 13, '10': 'vendorId'},
    {'1': 'product_id', '3': 8, '4': 1, '5': 13, '10': 'productId'},
    {
      '1': 'hardware_version_string',
      '3': 9,
      '4': 1,
      '5': 9,
      '10': 'hardwareVersionString'
    },
    {
      '1': 'software_version_string',
      '3': 10,
      '4': 1,
      '5': 9,
      '10': 'softwareVersionString'
    },
    {
      '1': 'connector_id',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.ConnectorId',
      '10': 'connectorId'
    },
    {
      '1': 'space_id',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'ownership',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.common.v1.DeviceOwnershipType',
      '10': 'ownership'
    },
    {
      '1': 'lifecycle',
      '3': 14,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.common.v1.DeviceLifecycleState',
      '10': 'lifecycle'
    },
    {
      '1': 'owner_user_id',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'ownerUserId'
    },
    {
      '1': 'claimed_at',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'claimedAt'
    },
  ],
};

/// Descriptor for `DeviceDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDescriptorDescriptor = $convert.base64Decode(
    'ChBEZXZpY2VEZXNjcmlwdG9yEj4KCWRldmljZV9pZBgBIAEoCzIhLmt1c2ludGEuaW90LmlkZW'
    '50aXR5LnYxLkRldmljZUlkUghkZXZpY2VJZBIxChVtYXR0ZXJfZGV2aWNlX3R5cGVfaWQYAiAB'
    'KA1SEm1hdHRlckRldmljZVR5cGVJZBIfCgt2ZW5kb3JfbmFtZRgDIAEoCVIKdmVuZG9yTmFtZR'
    'IhCgxwcm9kdWN0X25hbWUYBCABKAlSC3Byb2R1Y3ROYW1lEiMKDXNlcmlhbF9udW1iZXIYBSAB'
    'KAlSDHNlcmlhbE51bWJlchIdCgpub2RlX2xhYmVsGAYgASgJUglub2RlTGFiZWwSGwoJdmVuZG'
    '9yX2lkGAcgASgNUgh2ZW5kb3JJZBIdCgpwcm9kdWN0X2lkGAggASgNUglwcm9kdWN0SWQSNgoX'
    'aGFyZHdhcmVfdmVyc2lvbl9zdHJpbmcYCSABKAlSFWhhcmR3YXJlVmVyc2lvblN0cmluZxI2Ch'
    'dzb2Z0d2FyZV92ZXJzaW9uX3N0cmluZxgKIAEoCVIVc29mdHdhcmVWZXJzaW9uU3RyaW5nEkcK'
    'DGNvbm5lY3Rvcl9pZBgLIAEoCzIkLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLkNvbm5lY3Rvck'
    'lkUgtjb25uZWN0b3JJZBI7CghzcGFjZV9pZBgMIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5'
    'LnYxLlNwYWNlSWRSB3NwYWNlSWQSSAoJb3duZXJzaGlwGA0gASgOMioua3VzaW50YS5pb3QuY2'
    '9tbW9uLnYxLkRldmljZU93bmVyc2hpcFR5cGVSCW93bmVyc2hpcBJJCglsaWZlY3ljbGUYDiAB'
    'KA4yKy5rdXNpbnRhLmlvdC5jb21tb24udjEuRGV2aWNlTGlmZWN5Y2xlU3RhdGVSCWxpZmVjeW'
    'NsZRJDCg1vd25lcl91c2VyX2lkGA8gASgLMh8ua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuVXNl'
    'cklkUgtvd25lclVzZXJJZBI5CgpjbGFpbWVkX2F0GBAgASgLMhouZ29vZ2xlLnByb3RvYnVmLl'
    'RpbWVzdGFtcFIJY2xhaW1lZEF0');
