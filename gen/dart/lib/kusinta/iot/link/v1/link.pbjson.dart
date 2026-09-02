// This is a generated file - do not edit.
//
// Generated from kusinta/iot/link/v1/link.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use linkFunctionDescriptor instead')
const LinkFunction$json = {
  '1': 'LinkFunction',
  '2': [
    {'1': 'LINK_FUNCTION_UNSPECIFIED', '2': 0},
    {'1': 'LINK_FUNCTION_CLIMATE_LEAD', '2': 1},
    {'1': 'LINK_FUNCTION_WINDOW_STATE', '2': 2},
    {'1': 'LINK_FUNCTION_REMOTE_CONTROL', '2': 3},
  ],
};

/// Descriptor for `LinkFunction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List linkFunctionDescriptor = $convert.base64Decode(
    'CgxMaW5rRnVuY3Rpb24SHQoZTElOS19GVU5DVElPTl9VTlNQRUNJRklFRBAAEh4KGkxJTktfRl'
    'VOQ1RJT05fQ0xJTUFURV9MRUFEEAESHgoaTElOS19GVU5DVElPTl9XSU5ET1dfU1RBVEUQAhIg'
    'ChxMSU5LX0ZVTkNUSU9OX1JFTU9URV9DT05UUk9MEAM=');

@$core.Deprecated('Use linkDirectionDescriptor instead')
const LinkDirection$json = {
  '1': 'LinkDirection',
  '2': [
    {'1': 'LINK_DIRECTION_UNSPECIFIED', '2': 0},
    {'1': 'LINK_DIRECTION_SOURCE', '2': 1},
    {'1': 'LINK_DIRECTION_TARGET', '2': 2},
  ],
};

/// Descriptor for `LinkDirection`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List linkDirectionDescriptor = $convert.base64Decode(
    'Cg1MaW5rRGlyZWN0aW9uEh4KGkxJTktfRElSRUNUSU9OX1VOU1BFQ0lGSUVEEAASGQoVTElOS1'
    '9ESVJFQ1RJT05fU09VUkNFEAESGQoVTElOS19ESVJFQ1RJT05fVEFSR0VUEAI=');

@$core.Deprecated('Use linkModeDescriptor instead')
const LinkMode$json = {
  '1': 'LinkMode',
  '2': [
    {'1': 'LINK_MODE_UNSPECIFIED', '2': 0},
    {'1': 'LINK_MODE_HARD', '2': 1},
    {'1': 'LINK_MODE_SOFT', '2': 2},
  ],
};

/// Descriptor for `LinkMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List linkModeDescriptor = $convert.base64Decode(
    'CghMaW5rTW9kZRIZChVMSU5LX01PREVfVU5TUEVDSUZJRUQQABISCg5MSU5LX01PREVfSEFSRB'
    'ABEhIKDkxJTktfTU9ERV9TT0ZUEAI=');

@$core.Deprecated('Use linkStateDescriptor instead')
const LinkState$json = {
  '1': 'LinkState',
  '2': [
    {'1': 'LINK_STATE_UNSPECIFIED', '2': 0},
    {'1': 'LINK_STATE_ACTIVE', '2': 1},
    {'1': 'LINK_STATE_BROKEN', '2': 2},
    {'1': 'LINK_STATE_UNKNOWN', '2': 3},
  ],
};

/// Descriptor for `LinkState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List linkStateDescriptor = $convert.base64Decode(
    'CglMaW5rU3RhdGUSGgoWTElOS19TVEFURV9VTlNQRUNJRklFRBAAEhUKEUxJTktfU1RBVEVfQU'
    'NUSVZFEAESFQoRTElOS19TVEFURV9CUk9LRU4QAhIWChJMSU5LX1NUQVRFX1VOS05PV04QAw==');

@$core.Deprecated('Use deviceLinkDescriptor instead')
const DeviceLink$json = {
  '1': 'DeviceLink',
  '2': [
    {'1': 'link_id', '3': 1, '4': 1, '5': 9, '10': 'linkId'},
    {
      '1': 'sender',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'sender'
    },
    {
      '1': 'receiver',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'receiver'
    },
    {
      '1': 'function',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.link.v1.LinkFunction',
      '10': 'function'
    },
    {
      '1': 'mode',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.link.v1.LinkMode',
      '10': 'mode'
    },
    {
      '1': 'state',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.link.v1.LinkState',
      '10': 'state'
    },
    {
      '1': 'created_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'createdAt'
    },
    {'1': 'state_detail', '3': 8, '4': 1, '5': 9, '10': 'stateDetail'},
  ],
  '9': [
    {'1': 20, '2': 30},
  ],
};

/// Descriptor for `DeviceLink`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceLinkDescriptor = $convert.base64Decode(
    'CgpEZXZpY2VMaW5rEhcKB2xpbmtfaWQYASABKAlSBmxpbmtJZBI5CgZzZW5kZXIYAiABKAsyIS'
    '5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5EZXZpY2VJZFIGc2VuZGVyEj0KCHJlY2VpdmVyGAMg'
    'ASgLMiEua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuRGV2aWNlSWRSCHJlY2VpdmVyEj0KCGZ1bm'
    'N0aW9uGAQgASgOMiEua3VzaW50YS5pb3QubGluay52MS5MaW5rRnVuY3Rpb25SCGZ1bmN0aW9u'
    'EjEKBG1vZGUYBSABKA4yHS5rdXNpbnRhLmlvdC5saW5rLnYxLkxpbmtNb2RlUgRtb2RlEjQKBX'
    'N0YXRlGAYgASgOMh4ua3VzaW50YS5pb3QubGluay52MS5MaW5rU3RhdGVSBXN0YXRlEjkKCmNy'
    'ZWF0ZWRfYXQYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSIQ'
    'oMc3RhdGVfZGV0YWlsGAggASgJUgtzdGF0ZURldGFpbEoECBQQHg==');

@$core.Deprecated('Use linkCapabilityDescriptor instead')
const LinkCapability$json = {
  '1': 'LinkCapability',
  '2': [
    {
      '1': 'function',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.link.v1.LinkFunction',
      '10': 'function'
    },
    {
      '1': 'direction',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.link.v1.LinkDirection',
      '10': 'direction'
    },
    {
      '1': 'supported_modes',
      '3': 3,
      '4': 3,
      '5': 14,
      '6': '.kusinta.iot.link.v1.LinkMode',
      '10': 'supportedModes'
    },
    {
      '1': 'attribute',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.access.v1.AttributeRef',
      '10': 'attribute'
    },
    {'1': 'label', '3': 5, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `LinkCapability`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkCapabilityDescriptor = $convert.base64Decode(
    'Cg5MaW5rQ2FwYWJpbGl0eRI9CghmdW5jdGlvbhgBIAEoDjIhLmt1c2ludGEuaW90Lmxpbmsudj'
    'EuTGlua0Z1bmN0aW9uUghmdW5jdGlvbhJACglkaXJlY3Rpb24YAiABKA4yIi5rdXNpbnRhLmlv'
    'dC5saW5rLnYxLkxpbmtEaXJlY3Rpb25SCWRpcmVjdGlvbhJGCg9zdXBwb3J0ZWRfbW9kZXMYAy'
    'ADKA4yHS5rdXNpbnRhLmlvdC5saW5rLnYxLkxpbmtNb2RlUg5zdXBwb3J0ZWRNb2RlcxJBCglh'
    'dHRyaWJ1dGUYBCABKAsyIy5rdXNpbnRhLmlvdC5hY2Nlc3MudjEuQXR0cmlidXRlUmVmUglhdH'
    'RyaWJ1dGUSFAoFbGFiZWwYBSABKAlSBWxhYmVs');

@$core.Deprecated('Use deviceLinkListDescriptor instead')
const DeviceLinkList$json = {
  '1': 'DeviceLinkList',
  '2': [
    {
      '1': 'links',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.link.v1.DeviceLink',
      '10': 'links'
    },
  ],
};

/// Descriptor for `DeviceLinkList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceLinkListDescriptor = $convert.base64Decode(
    'Cg5EZXZpY2VMaW5rTGlzdBI1CgVsaW5rcxgBIAMoCzIfLmt1c2ludGEuaW90LmxpbmsudjEuRG'
    'V2aWNlTGlua1IFbGlua3M=');
