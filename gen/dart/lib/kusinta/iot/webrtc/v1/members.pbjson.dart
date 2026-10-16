// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/members.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use listGatewayMembersDescriptor instead')
const ListGatewayMembers$json = {
  '1': 'ListGatewayMembers',
};

/// Descriptor for `ListGatewayMembers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGatewayMembersDescriptor =
    $convert.base64Decode('ChJMaXN0R2F0ZXdheU1lbWJlcnM=');

@$core.Deprecated('Use setMemberRoleDescriptor instead')
const SetMemberRole$json = {
  '1': 'SetMemberRole',
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
      '1': 'role',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'role'
    },
    {'1': 'held', '3': 3, '4': 1, '5': 8, '10': 'held'},
  ],
};

/// Descriptor for `SetMemberRole`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setMemberRoleDescriptor = $convert.base64Decode(
    'Cg1TZXRNZW1iZXJSb2xlEjgKB3VzZXJfaWQYASABKAsyHy5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5Vc2VySWRSBnVzZXJJZBIvCgRyb2xlGAIgASgOMhsua3VzaW50YS5pb3QuYWNjZXNzLnYx'
    'LlJvbGVSBHJvbGUSEgoEaGVsZBgDIAEoCFIEaGVsZA==');

@$core.Deprecated('Use requestPromotionDescriptor instead')
const RequestPromotion$json = {
  '1': 'RequestPromotion',
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
      '1': 'role',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'role'
    },
  ],
};

/// Descriptor for `RequestPromotion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestPromotionDescriptor = $convert.base64Decode(
    'ChBSZXF1ZXN0UHJvbW90aW9uEjgKB3VzZXJfaWQYASABKAsyHy5rdXNpbnRhLmlvdC5pZGVudG'
    'l0eS52MS5Vc2VySWRSBnVzZXJJZBIvCgRyb2xlGAIgASgOMhsua3VzaW50YS5pb3QuYWNjZXNz'
    'LnYxLlJvbGVSBHJvbGU=');

@$core.Deprecated('Use answerPromotionDescriptor instead')
const AnswerPromotion$json = {
  '1': 'AnswerPromotion',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'accept', '3': 2, '4': 1, '5': 8, '10': 'accept'},
  ],
};

/// Descriptor for `AnswerPromotion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List answerPromotionDescriptor = $convert.base64Decode(
    'Cg9BbnN3ZXJQcm9tb3Rpb24SHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkEhYKBmFjY2'
    'VwdBgCIAEoCFIGYWNjZXB0');

@$core.Deprecated('Use listPromotionRequestsDescriptor instead')
const ListPromotionRequests$json = {
  '1': 'ListPromotionRequests',
};

/// Descriptor for `ListPromotionRequests`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPromotionRequestsDescriptor =
    $convert.base64Decode('ChVMaXN0UHJvbW90aW9uUmVxdWVzdHM=');

@$core.Deprecated('Use promotionRequestDescriptor instead')
const PromotionRequest$json = {
  '1': 'PromotionRequest',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
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
      '1': 'requested_by',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'requestedBy'
    },
    {'1': 'requested_by_name', '3': 5, '4': 1, '5': 9, '10': 'requestedByName'},
    {
      '1': 'requested_at',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'requestedAt'
    },
    {
      '1': 'expires_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'expiresAt'
    },
  ],
};

/// Descriptor for `PromotionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promotionRequestDescriptor = $convert.base64Decode(
    'ChBQcm9tb3Rpb25SZXF1ZXN0Eh0KCnJlcXVlc3RfaWQYASABKAlSCXJlcXVlc3RJZBI4Cgd1c2'
    'VyX2lkGAIgASgLMh8ua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuVXNlcklkUgZ1c2VySWQSLwoE'
    'cm9sZRgDIAEoDjIbLmt1c2ludGEuaW90LmFjY2Vzcy52MS5Sb2xlUgRyb2xlEkIKDHJlcXVlc3'
    'RlZF9ieRgEIAEoCzIfLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlVzZXJJZFILcmVxdWVzdGVk'
    'QnkSKgoRcmVxdWVzdGVkX2J5X25hbWUYBSABKAlSD3JlcXVlc3RlZEJ5TmFtZRI9CgxyZXF1ZX'
    'N0ZWRfYXQYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtyZXF1ZXN0ZWRBdBI5'
    'CgpleHBpcmVzX2F0GAcgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZXhwaXJlc0'
    'F0');

@$core.Deprecated('Use promotionRequestsDescriptor instead')
const PromotionRequests$json = {
  '1': 'PromotionRequests',
  '2': [
    {
      '1': 'requests',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.PromotionRequest',
      '10': 'requests'
    },
  ],
};

/// Descriptor for `PromotionRequests`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promotionRequestsDescriptor = $convert.base64Decode(
    'ChFQcm9tb3Rpb25SZXF1ZXN0cxJDCghyZXF1ZXN0cxgBIAMoCzInLmt1c2ludGEuaW90LndlYn'
    'J0Yy52MS5Qcm9tb3Rpb25SZXF1ZXN0UghyZXF1ZXN0cw==');

@$core.Deprecated('Use removeFromGatewayDescriptor instead')
const RemoveFromGateway$json = {
  '1': 'RemoveFromGateway',
  '2': [
    {
      '1': 'user_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'userId'
    },
  ],
};

/// Descriptor for `RemoveFromGateway`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeFromGatewayDescriptor = $convert.base64Decode(
    'ChFSZW1vdmVGcm9tR2F0ZXdheRI4Cgd1c2VyX2lkGAEgASgLMh8ua3VzaW50YS5pb3QuaWRlbn'
    'RpdHkudjEuVXNlcklkUgZ1c2VySWQ=');

@$core.Deprecated('Use setAccessUntilDescriptor instead')
const SetAccessUntil$json = {
  '1': 'SetAccessUntil',
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
      '1': 'access_until',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'accessUntil'
    },
  ],
};

/// Descriptor for `SetAccessUntil`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setAccessUntilDescriptor = $convert.base64Decode(
    'Cg5TZXRBY2Nlc3NVbnRpbBI4Cgd1c2VyX2lkGAEgASgLMh8ua3VzaW50YS5pb3QuaWRlbnRpdH'
    'kudjEuVXNlcklkUgZ1c2VySWQSPQoMYWNjZXNzX3VudGlsGAIgASgLMhouZ29vZ2xlLnByb3Rv'
    'YnVmLlRpbWVzdGFtcFILYWNjZXNzVW50aWw=');

@$core.Deprecated('Use setOwnerOrganisationDescriptor instead')
const SetOwnerOrganisation$json = {
  '1': 'SetOwnerOrganisation',
  '2': [
    {
      '1': 'organisation',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.OwnerOrganisation',
      '10': 'organisation'
    },
  ],
};

/// Descriptor for `SetOwnerOrganisation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setOwnerOrganisationDescriptor = $convert.base64Decode(
    'ChRTZXRPd25lck9yZ2FuaXNhdGlvbhJMCgxvcmdhbmlzYXRpb24YASABKAsyKC5rdXNpbnRhLm'
    'lvdC53ZWJydGMudjEuT3duZXJPcmdhbmlzYXRpb25SDG9yZ2FuaXNhdGlvbg==');

@$core.Deprecated('Use ownerOrganisationDescriptor instead')
const OwnerOrganisation$json = {
  '1': 'OwnerOrganisation',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'organisation_number',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': {'3': true},
      '10': 'organisationNumber',
    },
  ],
};

/// Descriptor for `OwnerOrganisation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ownerOrganisationDescriptor = $convert.base64Decode(
    'ChFPd25lck9yZ2FuaXNhdGlvbhISCgRuYW1lGAEgASgJUgRuYW1lEjMKE29yZ2FuaXNhdGlvbl'
    '9udW1iZXIYAiABKAlCAhgBUhJvcmdhbmlzYXRpb25OdW1iZXI=');

@$core.Deprecated('Use gatewayMembersDescriptor instead')
const GatewayMembers$json = {
  '1': 'GatewayMembers',
  '2': [
    {
      '1': 'members',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.MemberDetail',
      '10': 'members'
    },
    {
      '1': 'owner_organisation',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.OwnerOrganisation',
      '10': 'ownerOrganisation'
    },
  ],
};

/// Descriptor for `GatewayMembers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayMembersDescriptor = $convert.base64Decode(
    'Cg5HYXRld2F5TWVtYmVycxI9CgdtZW1iZXJzGAEgAygLMiMua3VzaW50YS5pb3Qud2VicnRjLn'
    'YxLk1lbWJlckRldGFpbFIHbWVtYmVycxJXChJvd25lcl9vcmdhbmlzYXRpb24YAiABKAsyKC5r'
    'dXNpbnRhLmlvdC53ZWJydGMudjEuT3duZXJPcmdhbmlzYXRpb25SEW93bmVyT3JnYW5pc2F0aW'
    '9u');

@$core.Deprecated('Use memberDetailDescriptor instead')
const MemberDetail$json = {
  '1': 'MemberDetail',
  '2': [
    {
      '1': 'user_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'userId'
    },
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'roles',
      '3': 3,
      '4': 3,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'roles'
    },
    {
      '1': 'memberships',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.MemberSpace',
      '10': 'memberships'
    },
    {
      '1': 'access_until',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'accessUntil'
    },
    {
      '1': 'registering_admin',
      '3': 6,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'registeringAdmin',
    },
    {'1': 'email', '3': 7, '4': 1, '5': 9, '10': 'email'},
    {'1': 'vouched_admin', '3': 8, '4': 1, '5': 8, '10': 'vouchedAdmin'},
  ],
};

/// Descriptor for `MemberDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberDetailDescriptor = $convert.base64Decode(
    'CgxNZW1iZXJEZXRhaWwSOAoHdXNlcl9pZBgBIAEoCzIfLmt1c2ludGEuaW90LmlkZW50aXR5Ln'
    'YxLlVzZXJJZFIGdXNlcklkEhIKBG5hbWUYAiABKAlSBG5hbWUSMQoFcm9sZXMYAyADKA4yGy5r'
    'dXNpbnRhLmlvdC5hY2Nlc3MudjEuUm9sZVIFcm9sZXMSRAoLbWVtYmVyc2hpcHMYBCADKAsyIi'
    '5rdXNpbnRhLmlvdC53ZWJydGMudjEuTWVtYmVyU3BhY2VSC21lbWJlcnNoaXBzEj0KDGFjY2Vz'
    'c191bnRpbBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2FjY2Vzc1VudGlsEi'
    '8KEXJlZ2lzdGVyaW5nX2FkbWluGAYgASgIQgIYAVIQcmVnaXN0ZXJpbmdBZG1pbhIUCgVlbWFp'
    'bBgHIAEoCVIFZW1haWwSIwoNdm91Y2hlZF9hZG1pbhgIIAEoCFIMdm91Y2hlZEFkbWlu');

@$core.Deprecated('Use memberSpaceDescriptor instead')
const MemberSpace$json = {
  '1': 'MemberSpace',
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
      '1': 'relation',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.MembershipRelation',
      '10': 'relation'
    },
    {
      '1': 'since',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'since'
    },
  ],
};

/// Descriptor for `MemberSpace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List memberSpaceDescriptor = $convert.base64Decode(
    'CgtNZW1iZXJTcGFjZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5Ln'
    'YxLlNwYWNlSWRSB3NwYWNlSWQSRQoIcmVsYXRpb24YAiABKA4yKS5rdXNpbnRhLmlvdC5hY2Nl'
    'c3MudjEuTWVtYmVyc2hpcFJlbGF0aW9uUghyZWxhdGlvbhIwCgVzaW5jZRgDIAEoCzIaLmdvb2'
    'dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBXNpbmNl');
