//
//  Generated code. Do not modify.
//  source: kusinta/iot/connector/v1/connector_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "connector.pb.dart" as kusintaiotconnectorv1connector;
import "connector_service.connect.spec.dart" as specs;

/// ConnectorGatewayService: connector dials the gateway on startup.
/// A single persistent bidirectional stream carries all traffic for the connector's lifetime.
extension type ConnectorGatewayServiceClient (connect.Transport _transport) {
  Stream<kusintaiotconnectorv1connector.SessionResponse> session(
    Stream<kusintaiotconnectorv1connector.SessionRequest> input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).bidi(
      specs.ConnectorGatewayService.session,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }
}
