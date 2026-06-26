// This is a generated file - do not edit.
//
// Generated from kusinta/iot/signaling/v1/signaling.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sdpOfferDescriptor instead')
const SdpOffer$json = {
  '1': 'SdpOffer',
  '2': [
    {'1': 'sdp', '3': 1, '4': 1, '5': 9, '10': 'sdp'},
  ],
};

/// Descriptor for `SdpOffer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sdpOfferDescriptor =
    $convert.base64Decode('CghTZHBPZmZlchIQCgNzZHAYASABKAlSA3NkcA==');

@$core.Deprecated('Use sdpAnswerDescriptor instead')
const SdpAnswer$json = {
  '1': 'SdpAnswer',
  '2': [
    {'1': 'sdp', '3': 1, '4': 1, '5': 9, '10': 'sdp'},
  ],
};

/// Descriptor for `SdpAnswer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sdpAnswerDescriptor =
    $convert.base64Decode('CglTZHBBbnN3ZXISEAoDc2RwGAEgASgJUgNzZHA=');

@$core.Deprecated('Use iceCandidateDescriptor instead')
const IceCandidate$json = {
  '1': 'IceCandidate',
  '2': [
    {'1': 'candidate', '3': 1, '4': 1, '5': 9, '10': 'candidate'},
  ],
};

/// Descriptor for `IceCandidate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iceCandidateDescriptor = $convert.base64Decode(
    'CgxJY2VDYW5kaWRhdGUSHAoJY2FuZGlkYXRlGAEgASgJUgljYW5kaWRhdGU=');

@$core.Deprecated('Use userHandshakeDescriptor instead')
const UserHandshake$json = {
  '1': 'UserHandshake',
  '2': [
    {
      '1': 'target_gateway_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.GatewayId',
      '10': 'targetGatewayId'
    },
  ],
};

/// Descriptor for `UserHandshake`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userHandshakeDescriptor = $convert.base64Decode(
    'Cg1Vc2VySGFuZHNoYWtlEk4KEXRhcmdldF9nYXRld2F5X2lkGAEgASgLMiIua3VzaW50YS5pb3'
    'QuaWRlbnRpdHkudjEuR2F0ZXdheUlkUg90YXJnZXRHYXRld2F5SWQ=');

@$core.Deprecated('Use userHandshakeAckDescriptor instead')
const UserHandshakeAck$json = {
  '1': 'UserHandshakeAck',
  '2': [
    {'1': 'accepted', '3': 1, '4': 1, '5': 8, '10': 'accepted'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `UserHandshakeAck`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userHandshakeAckDescriptor = $convert.base64Decode(
    'ChBVc2VySGFuZHNoYWtlQWNrEhoKCGFjY2VwdGVkGAEgASgIUghhY2NlcHRlZBIWCgZyZWFzb2'
    '4YAiABKAlSBnJlYXNvbg==');

@$core.Deprecated('Use gatewayConnectRequestDescriptor instead')
const GatewayConnectRequest$json = {
  '1': 'GatewayConnectRequest',
  '2': [
    {
      '1': 'target_user_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'targetUserId'
    },
    {
      '1': 'answer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.SdpAnswer',
      '9': 0,
      '10': 'answer'
    },
    {
      '1': 'ice_candidate',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.IceCandidate',
      '9': 0,
      '10': 'iceCandidate'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `GatewayConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayConnectRequestDescriptor = $convert.base64Decode(
    'ChVHYXRld2F5Q29ubmVjdFJlcXVlc3QSRQoOdGFyZ2V0X3VzZXJfaWQYASABKAsyHy5rdXNpbn'
    'RhLmlvdC5pZGVudGl0eS52MS5Vc2VySWRSDHRhcmdldFVzZXJJZBI9CgZhbnN3ZXIYAiABKAsy'
    'Iy5rdXNpbnRhLmlvdC5zaWduYWxpbmcudjEuU2RwQW5zd2VySABSBmFuc3dlchJNCg1pY2VfY2'
    'FuZGlkYXRlGAMgASgLMiYua3VzaW50YS5pb3Quc2lnbmFsaW5nLnYxLkljZUNhbmRpZGF0ZUgA'
    'UgxpY2VDYW5kaWRhdGVCCQoHcGF5bG9hZA==');

@$core.Deprecated('Use gatewayConnectResponseDescriptor instead')
const GatewayConnectResponse$json = {
  '1': 'GatewayConnectResponse',
  '2': [
    {
      '1': 'from_user_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'fromUserId'
    },
    {
      '1': 'offer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.SdpOffer',
      '9': 0,
      '10': 'offer'
    },
    {
      '1': 'ice_candidate',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.IceCandidate',
      '9': 0,
      '10': 'iceCandidate'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `GatewayConnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gatewayConnectResponseDescriptor = $convert.base64Decode(
    'ChZHYXRld2F5Q29ubmVjdFJlc3BvbnNlEkEKDGZyb21fdXNlcl9pZBgBIAEoCzIfLmt1c2ludG'
    'EuaW90LmlkZW50aXR5LnYxLlVzZXJJZFIKZnJvbVVzZXJJZBI6CgVvZmZlchgCIAEoCzIiLmt1'
    'c2ludGEuaW90LnNpZ25hbGluZy52MS5TZHBPZmZlckgAUgVvZmZlchJNCg1pY2VfY2FuZGlkYX'
    'RlGAMgASgLMiYua3VzaW50YS5pb3Quc2lnbmFsaW5nLnYxLkljZUNhbmRpZGF0ZUgAUgxpY2VD'
    'YW5kaWRhdGVCCQoHcGF5bG9hZA==');

@$core.Deprecated('Use userConnectRequestDescriptor instead')
const UserConnectRequest$json = {
  '1': 'UserConnectRequest',
  '2': [
    {
      '1': 'handshake',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.UserHandshake',
      '9': 0,
      '10': 'handshake'
    },
    {
      '1': 'offer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.SdpOffer',
      '9': 0,
      '10': 'offer'
    },
    {
      '1': 'ice_candidate',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.IceCandidate',
      '9': 0,
      '10': 'iceCandidate'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `UserConnectRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userConnectRequestDescriptor = $convert.base64Decode(
    'ChJVc2VyQ29ubmVjdFJlcXVlc3QSRwoJaGFuZHNoYWtlGAEgASgLMicua3VzaW50YS5pb3Quc2'
    'lnbmFsaW5nLnYxLlVzZXJIYW5kc2hha2VIAFIJaGFuZHNoYWtlEjoKBW9mZmVyGAIgASgLMiIu'
    'a3VzaW50YS5pb3Quc2lnbmFsaW5nLnYxLlNkcE9mZmVySABSBW9mZmVyEk0KDWljZV9jYW5kaW'
    'RhdGUYAyABKAsyJi5rdXNpbnRhLmlvdC5zaWduYWxpbmcudjEuSWNlQ2FuZGlkYXRlSABSDGlj'
    'ZUNhbmRpZGF0ZUIJCgdwYXlsb2Fk');

@$core.Deprecated('Use userConnectResponseDescriptor instead')
const UserConnectResponse$json = {
  '1': 'UserConnectResponse',
  '2': [
    {
      '1': 'handshake_ack',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.UserHandshakeAck',
      '9': 0,
      '10': 'handshakeAck'
    },
    {
      '1': 'answer',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.SdpAnswer',
      '9': 0,
      '10': 'answer'
    },
    {
      '1': 'ice_candidate',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.signaling.v1.IceCandidate',
      '9': 0,
      '10': 'iceCandidate'
    },
  ],
  '8': [
    {'1': 'payload'},
  ],
};

/// Descriptor for `UserConnectResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userConnectResponseDescriptor = $convert.base64Decode(
    'ChNVc2VyQ29ubmVjdFJlc3BvbnNlElEKDWhhbmRzaGFrZV9hY2sYASABKAsyKi5rdXNpbnRhLm'
    'lvdC5zaWduYWxpbmcudjEuVXNlckhhbmRzaGFrZUFja0gAUgxoYW5kc2hha2VBY2sSPQoGYW5z'
    'd2VyGAIgASgLMiMua3VzaW50YS5pb3Quc2lnbmFsaW5nLnYxLlNkcEFuc3dlckgAUgZhbnN3ZX'
    'ISTQoNaWNlX2NhbmRpZGF0ZRgDIAEoCzImLmt1c2ludGEuaW90LnNpZ25hbGluZy52MS5JY2VD'
    'YW5kaWRhdGVIAFIMaWNlQ2FuZGlkYXRlQgkKB3BheWxvYWQ=');
