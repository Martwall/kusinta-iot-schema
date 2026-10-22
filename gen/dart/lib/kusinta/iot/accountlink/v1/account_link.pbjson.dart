// This is a generated file - do not edit.
//
// Generated from kusinta/iot/accountlink/v1/account_link.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use accountLinkStatusDescriptor instead')
const AccountLinkStatus$json = {
  '1': 'AccountLinkStatus',
  '2': [
    {'1': 'ACCOUNT_LINK_STATUS_UNSPECIFIED', '2': 0},
    {'1': 'ACCOUNT_LINK_STATUS_LINKED', '2': 1},
    {'1': 'ACCOUNT_LINK_STATUS_NEEDS_RELINK', '2': 2},
  ],
};

/// Descriptor for `AccountLinkStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accountLinkStatusDescriptor = $convert.base64Decode(
    'ChFBY2NvdW50TGlua1N0YXR1cxIjCh9BQ0NPVU5UX0xJTktfU1RBVFVTX1VOU1BFQ0lGSUVEEA'
    'ASHgoaQUNDT1VOVF9MSU5LX1NUQVRVU19MSU5LRUQQARIkCiBBQ0NPVU5UX0xJTktfU1RBVFVT'
    'X05FRURTX1JFTElOSxAC');

@$core.Deprecated('Use linkedServiceDescriptor instead')
const LinkedService$json = {
  '1': 'LinkedService',
  '2': [
    {'1': 'LINKED_SERVICE_UNSPECIFIED', '2': 0},
    {'1': 'LINKED_SERVICE_MYUPLINK', '2': 1},
  ],
};

/// Descriptor for `LinkedService`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List linkedServiceDescriptor = $convert.base64Decode(
    'Cg1MaW5rZWRTZXJ2aWNlEh4KGkxJTktFRF9TRVJWSUNFX1VOU1BFQ0lGSUVEEAASGwoXTElOS0'
    'VEX1NFUlZJQ0VfTVlVUExJTksQAQ==');

@$core.Deprecated('Use accountLinkOutcomeDescriptor instead')
const AccountLinkOutcome$json = {
  '1': 'AccountLinkOutcome',
  '2': [
    {'1': 'ACCOUNT_LINK_OUTCOME_UNSPECIFIED', '2': 0},
    {'1': 'ACCOUNT_LINK_OUTCOME_LINKED', '2': 1},
    {'1': 'ACCOUNT_LINK_OUTCOME_REJECTED', '2': 2},
  ],
};

/// Descriptor for `AccountLinkOutcome`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List accountLinkOutcomeDescriptor = $convert.base64Decode(
    'ChJBY2NvdW50TGlua091dGNvbWUSJAogQUNDT1VOVF9MSU5LX09VVENPTUVfVU5TUEVDSUZJRU'
    'QQABIfChtBQ0NPVU5UX0xJTktfT1VUQ09NRV9MSU5LRUQQARIhCh1BQ0NPVU5UX0xJTktfT1VU'
    'Q09NRV9SRUpFQ1RFRBAC');

@$core.Deprecated('Use tokenOutcomeDescriptor instead')
const TokenOutcome$json = {
  '1': 'TokenOutcome',
  '2': [
    {'1': 'TOKEN_OUTCOME_UNSPECIFIED', '2': 0},
    {'1': 'TOKEN_OUTCOME_OK', '2': 1},
    {'1': 'TOKEN_OUTCOME_REJECTED', '2': 2},
    {'1': 'TOKEN_OUTCOME_UNAVAILABLE', '2': 3},
  ],
};

/// Descriptor for `TokenOutcome`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List tokenOutcomeDescriptor = $convert.base64Decode(
    'CgxUb2tlbk91dGNvbWUSHQoZVE9LRU5fT1VUQ09NRV9VTlNQRUNJRklFRBAAEhQKEFRPS0VOX0'
    '9VVENPTUVfT0sQARIaChZUT0tFTl9PVVRDT01FX1JFSkVDVEVEEAISHQoZVE9LRU5fT1VUQ09N'
    'RV9VTkFWQUlMQUJMRRAD');

@$core.Deprecated('Use accountLinkDescriptor instead')
const AccountLink$json = {
  '1': 'AccountLink',
  '2': [
    {
      '1': 'service',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.accountlink.v1.LinkedService',
      '10': 'service'
    },
    {
      '1': 'status',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.accountlink.v1.AccountLinkStatus',
      '10': 'status'
    },
    {
      '1': 'linked_since',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'linkedSince'
    },
  ],
};

/// Descriptor for `AccountLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountLinkDescriptor = $convert.base64Decode(
    'CgtBY2NvdW50TGluaxJDCgdzZXJ2aWNlGAEgASgOMikua3VzaW50YS5pb3QuYWNjb3VudGxpbm'
    'sudjEuTGlua2VkU2VydmljZVIHc2VydmljZRJFCgZzdGF0dXMYAiABKA4yLS5rdXNpbnRhLmlv'
    'dC5hY2NvdW50bGluay52MS5BY2NvdW50TGlua1N0YXR1c1IGc3RhdHVzEj0KDGxpbmtlZF9zaW'
    '5jZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSC2xpbmtlZFNpbmNl');

@$core.Deprecated('Use accountLinksDescriptor instead')
const AccountLinks$json = {
  '1': 'AccountLinks',
  '2': [
    {
      '1': 'links',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.accountlink.v1.AccountLink',
      '10': 'links'
    },
  ],
};

/// Descriptor for `AccountLinks`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountLinksDescriptor = $convert.base64Decode(
    'CgxBY2NvdW50TGlua3MSPQoFbGlua3MYASADKAsyJy5rdXNpbnRhLmlvdC5hY2NvdW50bGluay'
    '52MS5BY2NvdW50TGlua1IFbGlua3M=');

@$core.Deprecated('Use accountLinkNonceDescriptor instead')
const AccountLinkNonce$json = {
  '1': 'AccountLinkNonce',
  '2': [
    {'1': 'nonce', '3': 1, '4': 1, '5': 9, '10': 'nonce'},
    {
      '1': 'expires_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'expiresAt'
    },
  ],
};

/// Descriptor for `AccountLinkNonce`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountLinkNonceDescriptor = $convert.base64Decode(
    'ChBBY2NvdW50TGlua05vbmNlEhQKBW5vbmNlGAEgASgJUgVub25jZRI5CgpleHBpcmVzX2F0GA'
    'IgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZXhwaXJlc0F0');

@$core.Deprecated('Use accountLinkNonceClaimsDescriptor instead')
const AccountLinkNonceClaims$json = {
  '1': 'AccountLinkNonceClaims',
  '2': [
    {'1': 'iss', '3': 1, '4': 1, '5': 9, '10': 'iss'},
    {'1': 'aud', '3': 2, '4': 1, '5': 9, '10': 'aud'},
    {'1': 'sub', '3': 3, '4': 1, '5': 9, '10': 'sub'},
    {
      '1': 'iat',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'iat'
    },
    {
      '1': 'exp',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'exp'
    },
    {'1': 'jti', '3': 6, '4': 1, '5': 9, '10': 'jti'},
    {'1': 'svc', '3': 8, '4': 1, '5': 9, '10': 'svc'},
  ],
  '9': [
    {'1': 7, '2': 8},
  ],
  '10': ['home'],
};

/// Descriptor for `AccountLinkNonceClaims`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountLinkNonceClaimsDescriptor = $convert.base64Decode(
    'ChZBY2NvdW50TGlua05vbmNlQ2xhaW1zEhAKA2lzcxgBIAEoCVIDaXNzEhAKA2F1ZBgCIAEoCV'
    'IDYXVkEhAKA3N1YhgDIAEoCVIDc3ViEiwKA2lhdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5U'
    'aW1lc3RhbXBSA2lhdBIsCgNleHAYBSABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUg'
    'NleHASEAoDanRpGAYgASgJUgNqdGkSEAoDc3ZjGAggASgJUgNzdmNKBAgHEAhSBGhvbWU=');

@$core.Deprecated('Use accessGrantDescriptor instead')
const AccessGrant$json = {
  '1': 'AccessGrant',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {
      '1': 'expires_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'expiresAt'
    },
    {'1': 'scope', '3': 3, '4': 1, '5': 9, '10': 'scope'},
  ],
};

/// Descriptor for `AccessGrant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessGrantDescriptor = $convert.base64Decode(
    'CgtBY2Nlc3NHcmFudBIhCgxhY2Nlc3NfdG9rZW4YASABKAlSC2FjY2Vzc1Rva2VuEjkKCmV4cG'
    'lyZXNfYXQYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUglleHBpcmVzQXQSFAoF'
    'c2NvcGUYAyABKAlSBXNjb3Bl');

@$core.Deprecated('Use tokenGrantDescriptor instead')
const TokenGrant$json = {
  '1': 'TokenGrant',
  '2': [
    {
      '1': 'access',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.accountlink.v1.AccessGrant',
      '10': 'access'
    },
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `TokenGrant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenGrantDescriptor = $convert.base64Decode(
    'CgpUb2tlbkdyYW50Ej8KBmFjY2VzcxgBIAEoCzInLmt1c2ludGEuaW90LmFjY291bnRsaW5rLn'
    'YxLkFjY2Vzc0dyYW50UgZhY2Nlc3MSIwoNcmVmcmVzaF90b2tlbhgCIAEoCVIMcmVmcmVzaFRv'
    'a2Vu');

@$core.Deprecated('Use accountLinkedDescriptor instead')
const AccountLinked$json = {
  '1': 'AccountLinked',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {'1': 'nonce', '3': 2, '4': 1, '5': 9, '10': 'nonce'},
    {
      '1': 'grant',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.accountlink.v1.TokenGrant',
      '10': 'grant'
    },
  ],
};

/// Descriptor for `AccountLinked`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountLinkedDescriptor = $convert.base64Decode(
    'Cg1BY2NvdW50TGlua2VkEh0KCnJlcXVlc3RfaWQYASABKAlSCXJlcXVlc3RJZBIUCgVub25jZR'
    'gCIAEoCVIFbm9uY2USPAoFZ3JhbnQYAyABKAsyJi5rdXNpbnRhLmlvdC5hY2NvdW50bGluay52'
    'MS5Ub2tlbkdyYW50UgVncmFudA==');

@$core.Deprecated('Use accountLinkCancelledDescriptor instead')
const AccountLinkCancelled$json = {
  '1': 'AccountLinkCancelled',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
  ],
};

/// Descriptor for `AccountLinkCancelled`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountLinkCancelledDescriptor = $convert.base64Decode(
    'ChRBY2NvdW50TGlua0NhbmNlbGxlZBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQ=');

@$core.Deprecated('Use accountLinkResultDescriptor instead')
const AccountLinkResult$json = {
  '1': 'AccountLinkResult',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'outcome',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.accountlink.v1.AccountLinkOutcome',
      '10': 'outcome'
    },
  ],
};

/// Descriptor for `AccountLinkResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountLinkResultDescriptor = $convert.base64Decode(
    'ChFBY2NvdW50TGlua1Jlc3VsdBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSSAoHb3'
    'V0Y29tZRgCIAEoDjIuLmt1c2ludGEuaW90LmFjY291bnRsaW5rLnYxLkFjY291bnRMaW5rT3V0'
    'Y29tZVIHb3V0Y29tZQ==');

@$core.Deprecated('Use refreshTokenDescriptor instead')
const RefreshToken$json = {
  '1': 'RefreshToken',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'service',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.accountlink.v1.LinkedService',
      '10': 'service'
    },
    {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RefreshToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenDescriptor = $convert.base64Decode(
    'CgxSZWZyZXNoVG9rZW4SHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkEkMKB3NlcnZpY2'
    'UYAiABKA4yKS5rdXNpbnRhLmlvdC5hY2NvdW50bGluay52MS5MaW5rZWRTZXJ2aWNlUgdzZXJ2'
    'aWNlEiMKDXJlZnJlc2hfdG9rZW4YAyABKAlSDHJlZnJlc2hUb2tlbg==');

@$core.Deprecated('Use tokenRefreshedDescriptor instead')
const TokenRefreshed$json = {
  '1': 'TokenRefreshed',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'outcome',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.accountlink.v1.TokenOutcome',
      '10': 'outcome'
    },
    {
      '1': 'grant',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.accountlink.v1.TokenGrant',
      '10': 'grant'
    },
    {
      '1': 'retry_after',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'retryAfter'
    },
  ],
};

/// Descriptor for `TokenRefreshed`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenRefreshedDescriptor = $convert.base64Decode(
    'Cg5Ub2tlblJlZnJlc2hlZBIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSQgoHb3V0Y2'
    '9tZRgCIAEoDjIoLmt1c2ludGEuaW90LmFjY291bnRsaW5rLnYxLlRva2VuT3V0Y29tZVIHb3V0'
    'Y29tZRI8CgVncmFudBgDIAEoCzImLmt1c2ludGEuaW90LmFjY291bnRsaW5rLnYxLlRva2VuR3'
    'JhbnRSBWdyYW50EjoKC3JldHJ5X2FmdGVyGAQgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0'
    'aW9uUgpyZXRyeUFmdGVy');

@$core.Deprecated('Use revokeTokenDescriptor instead')
const RevokeToken$json = {
  '1': 'RevokeToken',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'service',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.accountlink.v1.LinkedService',
      '10': 'service'
    },
    {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RevokeToken`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List revokeTokenDescriptor = $convert.base64Decode(
    'CgtSZXZva2VUb2tlbhIdCgpyZXF1ZXN0X2lkGAEgASgJUglyZXF1ZXN0SWQSQwoHc2VydmljZR'
    'gCIAEoDjIpLmt1c2ludGEuaW90LmFjY291bnRsaW5rLnYxLkxpbmtlZFNlcnZpY2VSB3NlcnZp'
    'Y2USIwoNcmVmcmVzaF90b2tlbhgDIAEoCVIMcmVmcmVzaFRva2Vu');

@$core.Deprecated('Use tokenRevokedDescriptor instead')
const TokenRevoked$json = {
  '1': 'TokenRevoked',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 9, '10': 'requestId'},
    {
      '1': 'outcome',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.accountlink.v1.TokenOutcome',
      '10': 'outcome'
    },
    {
      '1': 'retry_after',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'retryAfter'
    },
  ],
};

/// Descriptor for `TokenRevoked`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenRevokedDescriptor = $convert.base64Decode(
    'CgxUb2tlblJldm9rZWQSHQoKcmVxdWVzdF9pZBgBIAEoCVIJcmVxdWVzdElkEkIKB291dGNvbW'
    'UYAiABKA4yKC5rdXNpbnRhLmlvdC5hY2NvdW50bGluay52MS5Ub2tlbk91dGNvbWVSB291dGNv'
    'bWUSOgoLcmV0cnlfYWZ0ZXIYAyABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SCnJldH'
    'J5QWZ0ZXI=');
