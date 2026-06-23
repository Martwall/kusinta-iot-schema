// This is a generated file - do not edit.
//
// Generated from kusinta/iot/webrtc/v1/app_token.proto.

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

@$core.Deprecated('Use appTokenClaimsDescriptor instead')
const AppTokenClaims$json = {
  '1': 'AppTokenClaims',
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
    {
      '1': 'role',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'role'
    },
  ],
};

/// Descriptor for `AppTokenClaims`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appTokenClaimsDescriptor = $convert.base64Decode(
    'Cg5BcHBUb2tlbkNsYWltcxIQCgNpc3MYASABKAlSA2lzcxIQCgNhdWQYAiABKAlSA2F1ZBIQCg'
    'NzdWIYAyABKAlSA3N1YhIsCgNpYXQYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1w'
    'UgNpYXQSLAoDZXhwGAUgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIDZXhwEi8KBH'
    'JvbGUYBiABKA4yGy5rdXNpbnRhLmlvdC5hY2Nlc3MudjEuUm9sZVIEcm9sZQ==');
