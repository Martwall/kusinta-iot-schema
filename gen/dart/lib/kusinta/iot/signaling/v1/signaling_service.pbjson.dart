// This is a generated file - do not edit.
//
// Generated from kusinta/iot/signaling/v1/signaling_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import '../../identity/v1/identity.pbjson.dart' as $1;
import 'signaling.pbjson.dart' as $0;

const $core.Map<$core.String, $core.dynamic> GatewaySignalingServiceBase$json =
    {
  '1': 'GatewaySignalingService',
  '2': [
    {
      '1': 'GatewayConnect',
      '2': '.kusinta.iot.signaling.v1.GatewayConnectRequest',
      '3': '.kusinta.iot.signaling.v1.GatewayConnectResponse',
      '5': true,
      '6': true
    },
    {
      '1': 'UserConnect',
      '2': '.kusinta.iot.signaling.v1.UserConnectRequest',
      '3': '.kusinta.iot.signaling.v1.UserConnectResponse',
      '5': true,
      '6': true
    },
  ],
};

@$core.Deprecated('Use gatewaySignalingServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    GatewaySignalingServiceBase$messageJson = {
  '.kusinta.iot.signaling.v1.GatewayConnectRequest':
      $0.GatewayConnectRequest$json,
  '.kusinta.iot.identity.v1.UserId': $1.UserId$json,
  '.kusinta.iot.signaling.v1.SdpAnswer': $0.SdpAnswer$json,
  '.kusinta.iot.signaling.v1.IceCandidate': $0.IceCandidate$json,
  '.kusinta.iot.signaling.v1.HeartBeat': $0.HeartBeat$json,
  '.kusinta.iot.signaling.v1.GatewayConnectResponse':
      $0.GatewayConnectResponse$json,
  '.kusinta.iot.signaling.v1.SdpOffer': $0.SdpOffer$json,
  '.kusinta.iot.signaling.v1.UserConnectRequest': $0.UserConnectRequest$json,
  '.kusinta.iot.signaling.v1.UserHandshake': $0.UserHandshake$json,
  '.kusinta.iot.identity.v1.GatewayId': $1.GatewayId$json,
  '.kusinta.iot.signaling.v1.UserConnectResponse': $0.UserConnectResponse$json,
  '.kusinta.iot.signaling.v1.UserHandshakeAck': $0.UserHandshakeAck$json,
};

/// Descriptor for `GatewaySignalingService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List gatewaySignalingServiceDescriptor = $convert.base64Decode(
    'ChdHYXRld2F5U2lnbmFsaW5nU2VydmljZRJ3Cg5HYXRld2F5Q29ubmVjdBIvLmt1c2ludGEuaW'
    '90LnNpZ25hbGluZy52MS5HYXRld2F5Q29ubmVjdFJlcXVlc3QaMC5rdXNpbnRhLmlvdC5zaWdu'
    'YWxpbmcudjEuR2F0ZXdheUNvbm5lY3RSZXNwb25zZSgBMAESbgoLVXNlckNvbm5lY3QSLC5rdX'
    'NpbnRhLmlvdC5zaWduYWxpbmcudjEuVXNlckNvbm5lY3RSZXF1ZXN0Gi0ua3VzaW50YS5pb3Qu'
    'c2lnbmFsaW5nLnYxLlVzZXJDb25uZWN0UmVzcG9uc2UoATAB');
