//
//  Generated code. Do not modify.
//  source: kusinta/iot/registration/v1/registration_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "registration.pb.dart" as kusintaiotregistrationv1registration;
import "registration_service.connect.spec.dart" as specs;

extension type GatewayRegistrationServiceClient (connect.Transport _transport) {
  Stream<kusintaiotregistrationv1registration.RegistrationResponse> registration(
    kusintaiotregistrationv1registration.RegistrationRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).server(
      specs.GatewayRegistrationService.registration,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }

  Future<kusintaiotregistrationv1registration.CertRenewalResponse> certRenewal(
    kusintaiotregistrationv1registration.CertRenewalRequest input, {
    connect.Headers? headers,
    connect.AbortSignal? signal,
    Function(connect.Headers)? onHeader,
    Function(connect.Headers)? onTrailer,
  }) {
    return connect.Client(_transport).unary(
      specs.GatewayRegistrationService.certRenewal,
      input,
      signal: signal,
      headers: headers,
      onHeader: onHeader,
      onTrailer: onTrailer,
    );
  }
}
