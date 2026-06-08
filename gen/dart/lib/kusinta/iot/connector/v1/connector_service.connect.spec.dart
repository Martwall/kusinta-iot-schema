//
//  Generated code. Do not modify.
//  source: kusinta/iot/connector/v1/connector_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "connector.pb.dart" as kusintaiotconnectorv1connector;

/// ConnectorGatewayService: connector dials the gateway on startup.
/// A single persistent bidirectional stream carries all traffic for the connector's lifetime.
abstract final class ConnectorGatewayService {
  /// Fully-qualified name of the ConnectorGatewayService service.
  static const name = 'kusinta.iot.connector.v1.ConnectorGatewayService';

  static const connect = connect.Spec(
    '/$name/Connect',
    connect.StreamType.bidi,
    kusintaiotconnectorv1connector.ConnectRequest.new,
    kusintaiotconnectorv1connector.ConnectResponse.new,
  );
}
