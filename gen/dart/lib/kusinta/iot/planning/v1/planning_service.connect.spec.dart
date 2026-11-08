//
//  Generated code. Do not modify.
//  source: kusinta/iot/planning/v1/planning_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "planning_service.pb.dart" as kusintaiotplanningv1planning_service;

/// The api-server's planning inputs for a gateway, over the gateway's client certificate. The
/// gateway asks; the api-server answers from what it has fetched for the fleet, and keeps no
/// record of which gateway asked for which cell.
abstract final class PlanningInputsService {
  /// Fully-qualified name of the PlanningInputsService service.
  static const name = 'kusinta.iot.planning.v1.PlanningInputsService';

  static const getPlanningInputs = connect.Spec(
    '/$name/GetPlanningInputs',
    connect.StreamType.unary,
    kusintaiotplanningv1planning_service.GetPlanningInputsRequest.new,
    kusintaiotplanningv1planning_service.GetPlanningInputsResponse.new,
  );
}
