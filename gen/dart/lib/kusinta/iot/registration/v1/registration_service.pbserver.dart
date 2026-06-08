// This is a generated file - do not edit.
//
// Generated from kusinta/iot/registration/v1/registration_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'registration.pb.dart' as $0;
import 'registration_service.pbjson.dart';

export 'registration_service.pb.dart';

abstract class GatewayRegistrationServiceBase extends $pb.GeneratedService {
  $async.Future<$0.RegistrationResponse> registration(
      $pb.ServerContext ctx, $0.RegistrationRequest request);
  $async.Future<$0.CertRenewalResponse> certRenewal(
      $pb.ServerContext ctx, $0.CertRenewalRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'Registration':
        return $0.RegistrationRequest();
      case 'CertRenewal':
        return $0.CertRenewalRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'Registration':
        return registration(ctx, request as $0.RegistrationRequest);
      case 'CertRenewal':
        return certRenewal(ctx, request as $0.CertRenewalRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json =>
      GatewayRegistrationServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => GatewayRegistrationServiceBase$messageJson;
}
