// This is a generated file - do not edit.
//
// Generated from kusinta/iot/signaling/v1/signaling_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'signaling.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GatewaySignalingServiceApi {
  final $pb.RpcClient _client;

  GatewaySignalingServiceApi(this._client);

  $async.Future<$0.GatewayConnectResponse> gatewayConnect(
          $pb.ClientContext? ctx, $0.GatewayConnectRequest request) =>
      _client.invoke<$0.GatewayConnectResponse>(ctx, 'GatewaySignalingService',
          'GatewayConnect', request, $0.GatewayConnectResponse());
  $async.Future<$0.UserConnectResponse> userConnect(
          $pb.ClientContext? ctx, $0.UserConnectRequest request) =>
      _client.invoke<$0.UserConnectResponse>(ctx, 'GatewaySignalingService',
          'UserConnect', request, $0.UserConnectResponse());
}
