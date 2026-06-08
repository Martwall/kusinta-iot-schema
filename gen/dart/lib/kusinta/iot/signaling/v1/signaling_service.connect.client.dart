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
}
