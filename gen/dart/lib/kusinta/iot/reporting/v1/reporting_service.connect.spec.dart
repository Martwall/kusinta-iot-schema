//
//  Generated code. Do not modify.
//  source: kusinta/iot/reporting/v1/reporting_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "reporting.pb.dart" as kusintaiotreportingv1reporting;

/// The building-server gateway's reports to the api-server, over the gateway's client
/// certificate: which gateway is reporting comes from the certificate. Three unary calls, one
/// per concern, each with its own stream of reports, so a slow call for one never holds back
/// another.
abstract final class GatewayReportingService {
  /// Fully-qualified name of the GatewayReportingService service.
  static const name = 'kusinta.iot.reporting.v1.GatewayReportingService';

  static const reportProblems = connect.Spec(
    '/$name/ReportProblems',
    connect.StreamType.unary,
    kusintaiotreportingv1reporting.ReportProblemsRequest.new,
    kusintaiotreportingv1reporting.ReportProblemsResponse.new,
  );

  static const reportServiceReach = connect.Spec(
    '/$name/ReportServiceReach',
    connect.StreamType.unary,
    kusintaiotreportingv1reporting.ReportServiceReachRequest.new,
    kusintaiotreportingv1reporting.ReportServiceReachResponse.new,
  );

  static const reportServedSpaces = connect.Spec(
    '/$name/ReportServedSpaces',
    connect.StreamType.unary,
    kusintaiotreportingv1reporting.ReportServedSpacesRequest.new,
    kusintaiotreportingv1reporting.ReportServedSpacesResponse.new,
  );
}
