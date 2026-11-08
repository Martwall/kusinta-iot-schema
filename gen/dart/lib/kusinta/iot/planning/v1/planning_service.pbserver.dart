// This is a generated file - do not edit.
//
// Generated from kusinta/iot/planning/v1/planning_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'planning_service.pb.dart' as $2;
import 'planning_service.pbjson.dart';

export 'planning_service.pb.dart';

abstract class PlanningInputsServiceBase extends $pb.GeneratedService {
  $async.Future<$2.GetPlanningInputsResponse> getPlanningInputs(
      $pb.ServerContext ctx, $2.GetPlanningInputsRequest request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'GetPlanningInputs':
        return $2.GetPlanningInputsRequest();
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx,
      $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'GetPlanningInputs':
        return getPlanningInputs(ctx, request as $2.GetPlanningInputsRequest);
      default:
        throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json =>
      PlanningInputsServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
      get $messageJson => PlanningInputsServiceBase$messageJson;
}
