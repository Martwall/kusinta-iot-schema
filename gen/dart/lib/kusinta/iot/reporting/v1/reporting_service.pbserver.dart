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
import 'reporting_service.pbjson.dart';

export 'reporting_service.pb.dart';

abstract class GatewayReportingServiceBase extends $pb.GeneratedService {
  $async.Future<$0.ReportProblemsResponse> reportProblems(
      $pb.ServerContext ctx, $0.ReportProblemsRequest request);
  $async.Future<$0.ReportServiceReachResponse> reportServiceReach(
      $pb.ServerContext ctx, $0.ReportServiceReachRequest request);
  $async.Future<$0.ReportServedSpacesResponse> reportServedSpaces(
      $pb.ServerContext ctx, $0.ReportServedSpacesRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'ReportProblems':
        return $0.ReportProblemsRequest();
      case 'ReportServiceReach':
        return $0.ReportServiceReachRequest();
      case 'ReportServedSpaces':
        return $0.ReportServedSpacesRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'ReportProblems':
        return reportProblems(ctx, request as $0.ReportProblemsRequest);
      case 'ReportServiceReach':
        return reportServiceReach(ctx, request as $0.ReportServiceReachRequest);
      case 'ReportServedSpaces':
        return reportServedSpaces(ctx, request as $0.ReportServedSpacesRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json =>
      GatewayReportingServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => GatewayReportingServiceBase$messageJson;
}
