from kusinta.iot.registration.v1 import registration_pb2


def test_registration_request_round_trip():
    req = registration_pb2.RegistrationRequest(
        registration_token="tok-abc123",
        external_ip="203.0.113.42",
        csr_pem="-----BEGIN CERTIFICATE REQUEST-----\nMIIBIjAN\n-----END CERTIFICATE REQUEST-----",
    )
    decoded = registration_pb2.RegistrationRequest()
    decoded.ParseFromString(req.SerializeToString())
    assert decoded.registration_token == "tok-abc123"
    assert decoded.external_ip == "203.0.113.42"
    assert "BEGIN CERTIFICATE REQUEST" in decoded.csr_pem


def test_registration_response_progress_event():
    resp = registration_pb2.RegistrationResponse(
        progress=registration_pb2.RegistrationProgress(step="Validating token")
    )
    decoded = registration_pb2.RegistrationResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert decoded.WhichOneof("event") == "progress"
    assert decoded.progress.step == "Validating token"


def test_registration_response_complete_event():
    resp = registration_pb2.RegistrationResponse(
        complete=registration_pb2.RegistrationComplete(
            certificate_pem="-----BEGIN CERTIFICATE-----\nNEWCERT\n-----END CERTIFICATE-----",
            ca_bundle_pem="-----BEGIN CERTIFICATE-----\nCABUNDLE\n-----END CERTIFICATE-----",
        )
    )
    decoded = registration_pb2.RegistrationResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert decoded.WhichOneof("event") == "complete"
    assert "NEWCERT" in decoded.complete.certificate_pem
    assert "CABUNDLE" in decoded.complete.ca_bundle_pem


def test_registration_response_error_event():
    resp = registration_pb2.RegistrationResponse(
        error=registration_pb2.RegistrationError(
            code="TOKEN_EXPIRED",
            message="Registration token has expired",
        )
    )
    decoded = registration_pb2.RegistrationResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert decoded.WhichOneof("event") == "error"
    assert decoded.error.code == "TOKEN_EXPIRED"
    assert decoded.error.message == "Registration token has expired"


def test_registration_response_no_event():
    resp = registration_pb2.RegistrationResponse()
    decoded = registration_pb2.RegistrationResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert decoded.WhichOneof("event") is None


def test_cert_renewal_request_round_trip():
    req = registration_pb2.CertRenewalRequest(
        csr_pem="-----BEGIN CERTIFICATE REQUEST-----\nRENEWAL\n-----END CERTIFICATE REQUEST-----"
    )
    decoded = registration_pb2.CertRenewalRequest()
    decoded.ParseFromString(req.SerializeToString())
    assert "RENEWAL" in decoded.csr_pem


def test_cert_renewal_response_round_trip():
    resp = registration_pb2.CertRenewalResponse(
        certificate_pem="-----BEGIN CERTIFICATE-----\nNEWCERT\n-----END CERTIFICATE-----",
        ca_bundle_pem="-----BEGIN CERTIFICATE-----\nCABUNDLE\n-----END CERTIFICATE-----",
    )
    decoded = registration_pb2.CertRenewalResponse()
    decoded.ParseFromString(resp.SerializeToString())
    assert "NEWCERT" in decoded.certificate_pem
    assert "CABUNDLE" in decoded.ca_bundle_pem
