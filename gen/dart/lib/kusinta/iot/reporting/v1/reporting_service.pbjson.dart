// This is a generated file - do not edit.
//
// Generated from kusinta/iot/reporting/v1/reporting_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import '../../../../google/protobuf/timestamp.pbjson.dart' as $2;
import '../../identity/v1/identity.pbjson.dart' as $1;
import 'reporting.pbjson.dart' as $0;

const $core.Map<$core.String, $core.dynamic> GatewayReportingServiceBase$json =
    {
  '1': 'GatewayReportingService',
  '2': [
    {
      '1': 'ReportProblems',
      '2': '.kusinta.iot.reporting.v1.ReportProblemsRequest',
      '3': '.kusinta.iot.reporting.v1.ReportProblemsResponse'
    },
    {
      '1': 'ReportServiceReach',
      '2': '.kusinta.iot.reporting.v1.ReportServiceReachRequest',
      '3': '.kusinta.iot.reporting.v1.ReportServiceReachResponse'
    },
    {
      '1': 'ReportServedSpaces',
      '2': '.kusinta.iot.reporting.v1.ReportServedSpacesRequest',
      '3': '.kusinta.iot.reporting.v1.ReportServedSpacesResponse'
    },
  ],
};

@$core.Deprecated('Use gatewayReportingServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    GatewayReportingServiceBase$messageJson = {
  '.kusinta.iot.reporting.v1.ReportProblemsRequest':
      $0.ReportProblemsRequest$json,
  '.kusinta.iot.reporting.v1.ProblemTransition': $0.ProblemTransition$json,
  '.kusinta.iot.reporting.v1.Problem': $0.Problem$json,
  '.kusinta.iot.reporting.v1.ProblemSubject': $0.ProblemSubject$json,
  '.kusinta.iot.identity.v1.DeviceId': $1.DeviceId$json,
  '.kusinta.iot.identity.v1.ConnectorId': $1.ConnectorId$json,
  '.kusinta.iot.identity.v1.SpaceId': $1.SpaceId$json,
  '.google.protobuf.Timestamp': $2.Timestamp$json,
  '.kusinta.iot.reporting.v1.ProblemCleared': $0.ProblemCleared$json,
  '.kusinta.iot.reporting.v1.SnapshotPart': $0.SnapshotPart$json,
  '.kusinta.iot.reporting.v1.ReportProblemsResponse':
      $0.ReportProblemsResponse$json,
  '.kusinta.iot.reporting.v1.TransitionAck': $0.TransitionAck$json,
  '.kusinta.iot.reporting.v1.ReportServiceReachRequest':
      $0.ReportServiceReachRequest$json,
  '.kusinta.iot.reporting.v1.ServiceReach': $0.ServiceReach$json,
  '.kusinta.iot.identity.v1.UserId': $1.UserId$json,
  '.kusinta.iot.reporting.v1.ReachedSpace': $0.ReachedSpace$json,
  '.kusinta.iot.reporting.v1.ReportServiceReachResponse':
      $0.ReportServiceReachResponse$json,
  '.kusinta.iot.reporting.v1.ReportServedSpacesRequest':
      $0.ReportServedSpacesRequest$json,
  '.kusinta.iot.reporting.v1.ServedSpace': $0.ServedSpace$json,
  '.kusinta.iot.reporting.v1.ReportServedSpacesResponse':
      $0.ReportServedSpacesResponse$json,
};

/// Descriptor for `GatewayReportingService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List gatewayReportingServiceDescriptor = $convert.base64Decode(
    'ChdHYXRld2F5UmVwb3J0aW5nU2VydmljZRJzCg5SZXBvcnRQcm9ibGVtcxIvLmt1c2ludGEuaW'
    '90LnJlcG9ydGluZy52MS5SZXBvcnRQcm9ibGVtc1JlcXVlc3QaMC5rdXNpbnRhLmlvdC5yZXBv'
    'cnRpbmcudjEuUmVwb3J0UHJvYmxlbXNSZXNwb25zZRJ/ChJSZXBvcnRTZXJ2aWNlUmVhY2gSMy'
    '5rdXNpbnRhLmlvdC5yZXBvcnRpbmcudjEuUmVwb3J0U2VydmljZVJlYWNoUmVxdWVzdBo0Lmt1'
    'c2ludGEuaW90LnJlcG9ydGluZy52MS5SZXBvcnRTZXJ2aWNlUmVhY2hSZXNwb25zZRJ/ChJSZX'
    'BvcnRTZXJ2ZWRTcGFjZXMSMy5rdXNpbnRhLmlvdC5yZXBvcnRpbmcudjEuUmVwb3J0U2VydmVk'
    'U3BhY2VzUmVxdWVzdBo0Lmt1c2ludGEuaW90LnJlcG9ydGluZy52MS5SZXBvcnRTZXJ2ZWRTcG'
    'FjZXNSZXNwb25zZQ==');
