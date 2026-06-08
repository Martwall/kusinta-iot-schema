//
//  Generated code. Do not modify.
//  source: kusinta/iot/signaling/v1/signaling_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "signaling.pb.dart" as kusintaiotsignalingv1signaling;

abstract final class GatewaySignalingService {
  /// Fully-qualified name of the GatewaySignalingService service.
  static const name = 'kusinta.iot.signaling.v1.GatewaySignalingService';

  static const gatewayConnect = connect.Spec(
    '/$name/GatewayConnect',
    connect.StreamType.bidi,
    kusintaiotsignalingv1signaling.GatewayConnectRequest.new,
    kusintaiotsignalingv1signaling.GatewayConnectResponse.new,
  );

  static const userConnect = connect.Spec(
    '/$name/UserConnect',
    connect.StreamType.bidi,
    kusintaiotsignalingv1signaling.UserConnectRequest.new,
    kusintaiotsignalingv1signaling.UserConnectResponse.new,
  );
}
