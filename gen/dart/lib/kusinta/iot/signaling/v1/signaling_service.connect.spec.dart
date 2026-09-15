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

  /// Opens the session and its downstream half, for a client whose transport
  /// cannot stream a request body and so cannot call UserConnect. The handshake
  /// travels in the request; the acknowledgement is the stream's first message.
  static const userListen = connect.Spec(
    '/$name/UserListen',
    connect.StreamType.server,
    kusintaiotsignalingv1signaling.UserListenRequest.new,
    kusintaiotsignalingv1signaling.UserListenResponse.new,
  );

  /// Delivers one upstream message into a session UserListen has already opened.
  /// A call naming a session the relay does not hold is refused, not queued.
  static const userSend = connect.Spec(
    '/$name/UserSend',
    connect.StreamType.unary,
    kusintaiotsignalingv1signaling.UserSendRequest.new,
    kusintaiotsignalingv1signaling.UserSendResponse.new,
  );
}
