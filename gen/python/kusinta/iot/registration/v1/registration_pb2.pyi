from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class RegistrationRequest(_message.Message):
    __slots__ = ("registration_token", "external_ip", "csr_pem")
    REGISTRATION_TOKEN_FIELD_NUMBER: _ClassVar[int]
    EXTERNAL_IP_FIELD_NUMBER: _ClassVar[int]
    CSR_PEM_FIELD_NUMBER: _ClassVar[int]
    registration_token: str
    external_ip: str
    csr_pem: str
    def __init__(self, registration_token: _Optional[str] = ..., external_ip: _Optional[str] = ..., csr_pem: _Optional[str] = ...) -> None: ...

class RegistrationProgress(_message.Message):
    __slots__ = ("step",)
    STEP_FIELD_NUMBER: _ClassVar[int]
    step: str
    def __init__(self, step: _Optional[str] = ...) -> None: ...

class RegistrationComplete(_message.Message):
    __slots__ = ("certificate_pem", "ca_bundle_pem")
    CERTIFICATE_PEM_FIELD_NUMBER: _ClassVar[int]
    CA_BUNDLE_PEM_FIELD_NUMBER: _ClassVar[int]
    certificate_pem: str
    ca_bundle_pem: str
    def __init__(self, certificate_pem: _Optional[str] = ..., ca_bundle_pem: _Optional[str] = ...) -> None: ...

class RegistrationError(_message.Message):
    __slots__ = ("code", "message")
    CODE_FIELD_NUMBER: _ClassVar[int]
    MESSAGE_FIELD_NUMBER: _ClassVar[int]
    code: str
    message: str
    def __init__(self, code: _Optional[str] = ..., message: _Optional[str] = ...) -> None: ...

class RegistrationResponse(_message.Message):
    __slots__ = ("progress", "complete", "error")
    PROGRESS_FIELD_NUMBER: _ClassVar[int]
    COMPLETE_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    progress: RegistrationProgress
    complete: RegistrationComplete
    error: RegistrationError
    def __init__(self, progress: _Optional[_Union[RegistrationProgress, _Mapping]] = ..., complete: _Optional[_Union[RegistrationComplete, _Mapping]] = ..., error: _Optional[_Union[RegistrationError, _Mapping]] = ...) -> None: ...

class CertRenewalRequest(_message.Message):
    __slots__ = ("csr_pem",)
    CSR_PEM_FIELD_NUMBER: _ClassVar[int]
    csr_pem: str
    def __init__(self, csr_pem: _Optional[str] = ...) -> None: ...

class CertRenewalResponse(_message.Message):
    __slots__ = ("certificate_pem", "ca_bundle_pem")
    CERTIFICATE_PEM_FIELD_NUMBER: _ClassVar[int]
    CA_BUNDLE_PEM_FIELD_NUMBER: _ClassVar[int]
    certificate_pem: str
    ca_bundle_pem: str
    def __init__(self, certificate_pem: _Optional[str] = ..., ca_bundle_pem: _Optional[str] = ...) -> None: ...
