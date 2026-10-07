// This is a generated file - do not edit.
//
// Generated from kusinta/iot/space/v1/space.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use spaceDescriptor instead')
const Space$json = {
  '1': 'Space',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'space_type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.common.v1.SpaceType',
      '10': 'spaceType'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'floor', '3': 5, '4': 1, '5': 5, '10': 'floor'},
    {
      '1': 'parent_space_id',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'parentSpaceId'
    },
    {
      '1': 'sub_space_ids',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'subSpaceIds'
    },
    {
      '1': 'device_ids',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceIds'
    },
    {
      '1': 'resident_user_id',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '8': {'3': true},
      '10': 'residentUserId',
    },
    {
      '1': 'tenant_id',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.TenantId',
      '10': 'tenantId'
    },
    {
      '1': 'gateway_id',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.GatewayId',
      '10': 'gatewayId'
    },
    {'1': 'time_zone', '3': 12, '4': 1, '5': 9, '10': 'timeZone'},
    {
      '1': 'members',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.space.v1.SpaceMember',
      '10': 'members'
    },
    {'1': 'members_withheld', '3': 14, '4': 1, '5': 8, '10': 'membersWithheld'},
  ],
};

/// Descriptor for `Space`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceDescriptor = $convert.base64Decode(
    'CgVTcGFjZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlNwYW'
    'NlSWRSB3NwYWNlSWQSPwoKc3BhY2VfdHlwZRgCIAEoDjIgLmt1c2ludGEuaW90LmNvbW1vbi52'
    'MS5TcGFjZVR5cGVSCXNwYWNlVHlwZRISCgRuYW1lGAMgASgJUgRuYW1lEiAKC2Rlc2NyaXB0aW'
    '9uGAQgASgJUgtkZXNjcmlwdGlvbhIUCgVmbG9vchgFIAEoBVIFZmxvb3ISSAoPcGFyZW50X3Nw'
    'YWNlX2lkGAYgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZFINcGFyZW50U3'
    'BhY2VJZBJECg1zdWJfc3BhY2VfaWRzGAcgAygLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudjEu'
    'U3BhY2VJZFILc3ViU3BhY2VJZHMSQAoKZGV2aWNlX2lkcxgIIAMoCzIhLmt1c2ludGEuaW90Lm'
    'lkZW50aXR5LnYxLkRldmljZUlkUglkZXZpY2VJZHMSTQoQcmVzaWRlbnRfdXNlcl9pZBgJIAEo'
    'CzIfLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlVzZXJJZEICGAFSDnJlc2lkZW50VXNlcklkEj'
    '4KCXRlbmFudF9pZBgKIAEoCzIhLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlRlbmFudElkUgh0'
    'ZW5hbnRJZBJBCgpnYXRld2F5X2lkGAsgASgLMiIua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuR2'
    'F0ZXdheUlkUglnYXRld2F5SWQSGwoJdGltZV96b25lGAwgASgJUgh0aW1lWm9uZRI7CgdtZW1i'
    'ZXJzGA0gAygLMiEua3VzaW50YS5pb3Quc3BhY2UudjEuU3BhY2VNZW1iZXJSB21lbWJlcnMSKQ'
    'oQbWVtYmVyc193aXRoaGVsZBgOIAEoCFIPbWVtYmVyc1dpdGhoZWxk');

@$core.Deprecated('Use spaceMemberDescriptor instead')
const SpaceMember$json = {
  '1': 'SpaceMember',
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
      '1': 'relation',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.MembershipRelation',
      '10': 'relation'
    },
  ],
};

/// Descriptor for `SpaceMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceMemberDescriptor = $convert.base64Decode(
    'CgtTcGFjZU1lbWJlchI4Cgd1c2VyX2lkGAEgASgLMh8ua3VzaW50YS5pb3QuaWRlbnRpdHkudj'
    'EuVXNlcklkUgZ1c2VySWQSRQoIcmVsYXRpb24YAiABKA4yKS5rdXNpbnRhLmlvdC5hY2Nlc3Mu'
    'djEuTWVtYmVyc2hpcFJlbGF0aW9uUghyZWxhdGlvbg==');
