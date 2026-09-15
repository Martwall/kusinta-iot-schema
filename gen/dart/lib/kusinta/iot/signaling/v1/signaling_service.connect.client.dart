//
//  Generated code. Do not modify.
//  source: kusinta/iot/signaling/v1/signaling_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "signaling.pb.dart" as kusintaiotsignalingv1signaling;
import "signaling_service.connect.spec.dart" as specs;

extension type GatewaySignalingServiceClient (connect.Transport _transport) {
  Stream<kusintaiotsignalingv1signaling.GatewayConnectResponse> gatewayConnect(
    Stream<kusintaiotsignalingv1signaling.GatewayConnectRequest> input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).bidi(
      specs.GatewaySignalingService.gatewayConnect,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  Stream<kusintaiotsignalingv1signaling.UserConnectResponse> userConnect(
    Stream<kusintaiotsignalingv1signaling.UserConnectRequest> input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).bidi(
      specs.GatewaySignalingService.userConnect,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Opens the session and its downstream half, for a client whose transport
  /// cannot stream a request body and so cannot call UserConnect. The handshake
  /// travels in the request; the acknowledgement is the stream's first message.
  Stream<kusintaiotsignalingv1signaling.UserListenResponse> userListen(
    kusintaiotsignalingv1signaling.UserListenRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).server(
      specs.GatewaySignalingService.userListen,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  /// Delivers one upstream message into a session UserListen has already opened.
  /// A call naming a session the relay does not hold is refused, not queued.
  Future<kusintaiotsignalingv1signaling.UserSendResponse> userSend(
    kusintaiotsignalingv1signaling.UserSendRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.GatewaySignalingService.userSend,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }
}
