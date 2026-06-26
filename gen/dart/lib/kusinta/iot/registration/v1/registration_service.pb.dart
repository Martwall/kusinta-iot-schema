// This is a generated file - do not edit.
//
// Generated from kusinta/iot/registration/v1/registration_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'registration.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GatewayRegistrationServiceApi {
  final $pb.RpcClient _client;

  GatewayRegistrationServiceApi(this._client);

  $async.Future<$0.RegistrationResponse> registration(
          $pb.ClientContext? ctx, $0.RegistrationRequest request) =>
      _client.invoke<$0.RegistrationResponse>(ctx, 'GatewayRegistrationService',
          'Registration', request, $0.RegistrationResponse());
  $async.Future<$0.CertRenewalResponse> certRenewal(
          $pb.ClientContext? ctx, $0.CertRenewalRequest request) =>
      _client.invoke<$0.CertRenewalResponse>(ctx, 'GatewayRegistrationService',
          'CertRenewal', request, $0.CertRenewalResponse());
}
