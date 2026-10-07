//
//  Generated code. Do not modify.
//  source: kusinta/iot/reporting/v1/reporting_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "reporting.pb.dart" as kusintaiotreportingv1reporting;
import "reporting_service.connect.spec.dart" as specs;

/// The building-server gateway's reports to the api-server, over the gateway's client
/// certificate: which gateway is reporting comes from the certificate. Three unary calls, one
/// per concern, each with its own stream of reports, so a slow call for one never holds back
/// another.
extension type GatewayReportingServiceClient (connect.Transport _transport) {
  Future<kusintaiotreportingv1reporting.ReportProblemsResponse> reportProblems(
    kusintaiotreportingv1reporting.ReportProblemsRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.GatewayReportingService.reportProblems,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  Future<kusintaiotreportingv1reporting.ReportServiceReachResponse> reportServiceReach(
    kusintaiotreportingv1reporting.ReportServiceReachRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.GatewayReportingService.reportServiceReach,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  Future<kusintaiotreportingv1reporting.ReportServedSpacesResponse> reportServedSpaces(
    kusintaiotreportingv1reporting.ReportServedSpacesRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.GatewayReportingService.reportServedSpaces,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }
}
