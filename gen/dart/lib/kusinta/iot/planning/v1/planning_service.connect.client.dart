//
//  Generated code. Do not modify.
//  source: kusinta/iot/planning/v1/planning_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "planning_service.pb.dart" as kusintaiotplanningv1planning_service;
import "planning_service.connect.spec.dart" as specs;

/// The api-server's planning inputs for a gateway, over the gateway's client certificate. The
/// gateway asks; the api-server answers from what it has fetched for the fleet, and keeps no
/// record of which gateway asked for which cell.
extension type PlanningInputsServiceClient (connect.Transport _transport) {
  Future<kusintaiotplanningv1planning_service.GetPlanningInputsResponse> getPlanningInputs(
    kusintaiotplanningv1planning_service.GetPlanningInputsRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.PlanningInputsService.getPlanningInputs,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }
}
