// This is a generated file - do not edit.
//
// Generated from kusinta/iot/signaling/v1/signaling_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'signaling.pb.dart' as $0;
import 'signaling_service.pbjson.dart';

export 'signaling_service.pb.dart';

abstract class GatewaySignalingServiceBase extends $pb.GeneratedService {
  $async.Future<$0.GatewayConnectResponse> gatewayConnect(
      $pb.ServerContext ctx, $0.GatewayConnectRequest request);
  $async.Future<$0.UserConnectResponse> userConnect(
      $pb.ServerContext ctx, $0.UserConnectRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'GatewayConnect':
        return $0.GatewayConnectRequest();
      case 'UserConnect':
        return $0.UserConnectRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'GatewayConnect':
        return gatewayConnect(ctx, request as $0.GatewayConnectRequest);
      case 'UserConnect':
        return userConnect(ctx, request as $0.UserConnectRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json =>
      GatewaySignalingServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => GatewaySignalingServiceBase$messageJson;
}
