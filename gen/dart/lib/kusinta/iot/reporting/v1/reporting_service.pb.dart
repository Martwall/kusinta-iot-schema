// This is a generated file - do not edit.
//
// Generated from kusinta/iot/reporting/v1/reporting_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'reporting.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// The building-server gateway's reports to the api-server, over the gateway's client
/// certificate: which gateway is reporting comes from the certificate. Three unary calls, one
/// per concern, each with its own stream of reports, so a slow call for one never holds back
/// another.
class GatewayReportingServiceApi {
  final $pb.RpcClient _client;

  GatewayReportingServiceApi(this._client);

  $async.Future<$0.ReportProblemsResponse> reportProblems(
          $pb.ClientContext? ctx, $0.ReportProblemsRequest request) =>
      _client.invoke<$0.ReportProblemsResponse>(ctx, 'GatewayReportingService',
          'ReportProblems', request, $0.ReportProblemsResponse());
  $async.Future<$0.ReportServiceReachResponse> reportServiceReach(
          $pb.ClientContext? ctx, $0.ReportServiceReachRequest request) =>
      _client.invoke<$0.ReportServiceReachResponse>(
          ctx,
          'GatewayReportingService',
          'ReportServiceReach',
          request,
          $0.ReportServiceReachResponse());
  $async.Future<$0.ReportServedSpacesResponse> reportServedSpaces(
          $pb.ClientContext? ctx, $0.ReportServedSpacesRequest request) =>
      _client.invoke<$0.ReportServedSpacesResponse>(
          ctx,
          'GatewayReportingService',
          'ReportServedSpaces',
          request,
          $0.ReportServedSpacesResponse());
}
