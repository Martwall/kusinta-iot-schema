//
//  Generated code. Do not modify.
//  source: kusinta/iot/registration/v1/registration_service.proto
//

import "package:connectrpc/connect.dart" as connect;
import "registration.pb.dart" as kusintaiotregistrationv1registration;

abstract final class GatewayRegistrationService {
  /// Fully-qualified name of the GatewayRegistrationService service.
  static const name = 'kusinta.iot.registration.v1.GatewayRegistrationService';

  static const registration = connect.Spec(
    '/$name/Registration',
    connect.StreamType.server,
    kusintaiotregistrationv1registration.RegistrationRequest.new,
    kusintaiotregistrationv1registration.RegistrationResponse.new,
  );

  static const certRenewal = connect.Spec(
    '/$name/CertRenewal',
    connect.StreamType.unary,
    kusintaiotregistrationv1registration.CertRenewalRequest.new,
    kusintaiotregistrationv1registration.CertRenewalResponse.new,
  );
}
