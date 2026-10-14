// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/invite.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use createInviteDescriptor instead')
const CreateInvite$json = {
  '1': 'CreateInvite',
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
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {
      '1': 'access_until',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'accessUntil'
    },
  ],
};

/// Descriptor for `CreateInvite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createInviteDescriptor = $convert.base64Decode(
    'CgxDcmVhdGVJbnZpdGUSOwoIc3BhY2VfaWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5TcGFjZUlkUgdzcGFjZUlkEkUKCHJlbGF0aW9uGAIgASgOMikua3VzaW50YS5pb3QuYWNj'
    'ZXNzLnYxLk1lbWJlcnNoaXBSZWxhdGlvblIIcmVsYXRpb24SFAoFZW1haWwYAyABKAlSBWVtYW'
    'lsEj0KDGFjY2Vzc191bnRpbBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2Fj'
    'Y2Vzc1VudGls');

@$core.Deprecated('Use resendInviteDescriptor instead')
const ResendInvite$json = {
  '1': 'ResendInvite',
  '2': [
    {'1': 'invite_id', '3': 1, '4': 1, '5': 9, '10': 'inviteId'},
  ],
};

/// Descriptor for `ResendInvite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resendInviteDescriptor = $convert.base64Decode(
    'CgxSZXNlbmRJbnZpdGUSGwoJaW52aXRlX2lkGAEgASgJUghpbnZpdGVJZA==');

@$core.Deprecated('Use revokeInviteDescriptor instead')
const RevokeInvite$json = {
  '1': 'RevokeInvite',
  '2': [
    {'1': 'invite_id', '3': 1, '4': 1, '5': 9, '10': 'inviteId'},
  ],
};

/// Descriptor for `RevokeInvite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeInviteDescriptor = $convert.base64Decode(
    'CgxSZXZva2VJbnZpdGUSGwoJaW52aXRlX2lkGAEgASgJUghpbnZpdGVJZA==');

@$core.Deprecated('Use markInviteEmailSentDescriptor instead')
const MarkInviteEmailSent$json = {
  '1': 'MarkInviteEmailSent',
  '2': [
    {'1': 'invite_id', '3': 1, '4': 1, '5': 9, '10': 'inviteId'},
  ],
};

/// Descriptor for `MarkInviteEmailSent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List markInviteEmailSentDescriptor =
    $convert.base64Decode(
        'ChNNYXJrSW52aXRlRW1haWxTZW50EhsKCWludml0ZV9pZBgBIAEoCVIIaW52aXRlSWQ=');

@$core.Deprecated('Use listSpaceInvitesDescriptor instead')
const ListSpaceInvites$json = {
  '1': 'ListSpaceInvites',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
  ],
};

/// Descriptor for `ListSpaceInvites`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSpaceInvitesDescriptor = $convert.base64Decode(
    'ChBMaXN0U3BhY2VJbnZpdGVzEjsKCHNwYWNlX2lkGAEgASgLMiAua3VzaW50YS5pb3QuaWRlbn'
    'RpdHkudjEuU3BhY2VJZFIHc3BhY2VJZA==');

@$core.Deprecated('Use approveJoinRequestDescriptor instead')
const ApproveJoinRequest$json = {
  '1': 'ApproveJoinRequest',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
  ],
};

/// Descriptor for `ApproveJoinRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List approveJoinRequestDescriptor =
    $convert.base64Decode(
        'ChJBcHByb3ZlSm9pblJlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElk');

@$core.Deprecated('Use denyJoinRequestDescriptor instead')
const DenyJoinRequest$json = {
  '1': 'DenyJoinRequest',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
  ],
};

/// Descriptor for `DenyJoinRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List denyJoinRequestDescriptor = $convert.base64Decode(
    'Cg9EZW55Sm9pblJlcXVlc3QSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElk');

@$core.Deprecated('Use inviteDescriptor instead')
const Invite$json = {
  '1': 'Invite',
  '2': [
    {'1': 'invite_id', '3': 1, '4': 1, '5': 9, '10': 'inviteId'},
    {
      '1': 'space_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'relation',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.MembershipRelation',
      '10': 'relation'
    },
    {
      '1': 'created_by',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'createdBy'
    },
    {
      '1': 'created_at',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {
      '1': 'token_expires_at',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'tokenExpiresAt'
    },
    {
      '1': 'code_expires_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'codeExpiresAt'
    },
    {'1': 'email', '3': 8, '4': 1, '5': 9, '10': 'email'},
    {
      '1': 'email_sent_at',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'emailSentAt'
    },
    {
      '1': 'access_until',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'accessUntil'
    },
  ],
};

/// Descriptor for `Invite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inviteDescriptor = $convert.base64Decode(
    'CgZJbnZpdGUSGwoJaW52aXRlX2lkGAEgASgJUghpbnZpdGVJZBI7CghzcGFjZV9pZBgCIAEoCz'
    'IgLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlNwYWNlSWRSB3NwYWNlSWQSRQoIcmVsYXRpb24Y'
    'AyABKA4yKS5rdXNpbnRhLmlvdC5hY2Nlc3MudjEuTWVtYmVyc2hpcFJlbGF0aW9uUghyZWxhdG'
    'lvbhI+CgpjcmVhdGVkX2J5GAQgASgLMh8ua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuVXNlcklk'
    'UgljcmVhdGVkQnkSOQoKY3JlYXRlZF9hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3'
    'RhbXBSCWNyZWF0ZWRBdBJEChB0b2tlbl9leHBpcmVzX2F0GAYgASgLMhouZ29vZ2xlLnByb3Rv'
    'YnVmLlRpbWVzdGFtcFIOdG9rZW5FeHBpcmVzQXQSQgoPY29kZV9leHBpcmVzX2F0GAcgASgLMh'
    'ouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFINY29kZUV4cGlyZXNBdBIUCgVlbWFpbBgIIAEo'
    'CVIFZW1haWwSPgoNZW1haWxfc2VudF9hdBgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3'
    'RhbXBSC2VtYWlsU2VudEF0Ej0KDGFjY2Vzc191bnRpbBgKIAEoCzIaLmdvb2dsZS5wcm90b2J1'
    'Zi5UaW1lc3RhbXBSC2FjY2Vzc1VudGls');

@$core.Deprecated('Use issuedInviteDescriptor instead')
const IssuedInvite$json = {
  '1': 'IssuedInvite',
  '2': [
    {
      '1': 'invite',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.Invite',
      '10': 'invite'
    },
    {'1': 'token', '3': 2, '4': 1, '5': 9, '10': 'token'},
    {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `IssuedInvite`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List issuedInviteDescriptor = $convert.base64Decode(
    'CgxJc3N1ZWRJbnZpdGUSNQoGaW52aXRlGAEgASgLMh0ua3VzaW50YS5pb3Qud2VicnRjLnYxLk'
    'ludml0ZVIGaW52aXRlEhQKBXRva2VuGAIgASgJUgV0b2tlbhISCgRjb2RlGAMgASgJUgRjb2Rl');

@$core.Deprecated('Use joinRequestDescriptor instead')
const JoinRequest$json = {
  '1': 'JoinRequest',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'space_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'relation',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.MembershipRelation',
      '10': 'relation'
    },
    {
      '1': 'user_id',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'userId'
    },
    {'1': 'display_name', '3': 5, '4': 1, '5': 9, '10': 'displayName'},
    {
      '1': 'invited_by',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'invitedBy'
    },
    {
      '1': 'requested_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'requestedAt'
    },
    {
      '1': 'expires_at',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'expiresAt'
    },
    {'1': 'email', '3': 9, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `JoinRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List joinRequestDescriptor = $convert.base64Decode(
    'CgtKb2luUmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSOwoIc3BhY2VfaW'
    'QYAiABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgdzcGFjZUlkEkUKCHJl'
    'bGF0aW9uGAMgASgOMikua3VzaW50YS5pb3QuYWNjZXNzLnYxLk1lbWJlcnNoaXBSZWxhdGlvbl'
    'IIcmVsYXRpb24SOAoHdXNlcl9pZBgEIAEoCzIfLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlVz'
    'ZXJJZFIGdXNlcklkEiEKDGRpc3BsYXlfbmFtZRgFIAEoCVILZGlzcGxheU5hbWUSPgoKaW52aX'
    'RlZF9ieRgGIAEoCzIfLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlVzZXJJZFIJaW52aXRlZEJ5'
    'Ej0KDHJlcXVlc3RlZF9hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC3JlcX'
    'Vlc3RlZEF0EjkKCmV4cGlyZXNfYXQYCCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1w'
    'UglleHBpcmVzQXQSFAoFZW1haWwYCSABKAlSBWVtYWls');

@$core.Deprecated('Use spaceInvitesDescriptor instead')
const SpaceInvites$json = {
  '1': 'SpaceInvites',
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
      '1': 'invites',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.Invite',
      '10': 'invites'
    },
    {
      '1': 'join_requests',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.webrtc.v1.JoinRequest',
      '10': 'joinRequests'
    },
  ],
};

/// Descriptor for `SpaceInvites`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spaceInvitesDescriptor = $convert.base64Decode(
    'CgxTcGFjZUludml0ZXMSOwoIc3BhY2VfaWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5TcGFjZUlkUgdzcGFjZUlkEjcKB2ludml0ZXMYAiADKAsyHS5rdXNpbnRhLmlvdC53ZWJy'
    'dGMudjEuSW52aXRlUgdpbnZpdGVzEkcKDWpvaW5fcmVxdWVzdHMYAyADKAsyIi5rdXNpbnRhLm'
    'lvdC53ZWJydGMudjEuSm9pblJlcXVlc3RSDGpvaW5SZXF1ZXN0cw==');
