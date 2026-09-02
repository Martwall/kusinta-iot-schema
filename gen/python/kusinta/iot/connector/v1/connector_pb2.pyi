import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.common.v1 import pairing_pb2 as _pairing_pb2
from kusinta.iot.common.v1 import types_pb2 as _types_pb2
from kusinta.iot.device.v1 import device_pb2 as _device_pb2
from kusinta.iot.device.v1 import device_event_pb2 as _device_event_pb2
from kusinta.iot.device.v1 import property_update_pb2 as _property_update_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from kusinta.iot.link.v1 import link_pb2 as _link_pb2
from kusinta.iot.webrtc.v1 import command_pb2 as _command_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class ConnectorInfo(_message.Message):
    __slots__ = ("connector_id", "display_name", "version", "transport", "endpoint", "supported_device_type_ids")
    CONNECTOR_ID_FIELD_NUMBER: _ClassVar[int]
    DISPLAY_NAME_FIELD_NUMBER: _ClassVar[int]
    VERSION_FIELD_NUMBER: _ClassVar[int]
    TRANSPORT_FIELD_NUMBER: _ClassVar[int]
    ENDPOINT_FIELD_NUMBER: _ClassVar[int]
    SUPPORTED_DEVICE_TYPE_IDS_FIELD_NUMBER: _ClassVar[int]
    connector_id: _identity_pb2.ConnectorId
    display_name: str
    version: str
    transport: _types_pb2.ConnectorTransport
    endpoint: str
    supported_device_type_ids: _containers.RepeatedScalarFieldContainer[int]
    def __init__(self, connector_id: _Optional[_Union[_identity_pb2.ConnectorId, _Mapping]] = ..., display_name: _Optional[str] = ..., version: _Optional[str] = ..., transport: _Optional[_Union[_types_pb2.ConnectorTransport, str]] = ..., endpoint: _Optional[str] = ..., supported_device_type_ids: _Optional[_Iterable[int]] = ...) -> None: ...

class ConnectorHandshake(_message.Message):
    __slots__ = ("info", "known_devices", "known_links")
    INFO_FIELD_NUMBER: _ClassVar[int]
    KNOWN_DEVICES_FIELD_NUMBER: _ClassVar[int]
    KNOWN_LINKS_FIELD_NUMBER: _ClassVar[int]
    info: ConnectorInfo
    known_devices: _containers.RepeatedCompositeFieldContainer[_device_pb2.Device]
    known_links: _containers.RepeatedCompositeFieldContainer[_link_pb2.DeviceLink]
    def __init__(self, info: _Optional[_Union[ConnectorInfo, _Mapping]] = ..., known_devices: _Optional[_Iterable[_Union[_device_pb2.Device, _Mapping]]] = ..., known_links: _Optional[_Iterable[_Union[_link_pb2.DeviceLink, _Mapping]]] = ...) -> None: ...

class CreateLink(_message.Message):
    __slots__ = ("link_id", "sender", "receiver", "function")
    LINK_ID_FIELD_NUMBER: _ClassVar[int]
    SENDER_FIELD_NUMBER: _ClassVar[int]
    RECEIVER_FIELD_NUMBER: _ClassVar[int]
    FUNCTION_FIELD_NUMBER: _ClassVar[int]
    link_id: str
    sender: _identity_pb2.DeviceId
    receiver: _identity_pb2.DeviceId
    function: _link_pb2.LinkFunction
    def __init__(self, link_id: _Optional[str] = ..., sender: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., receiver: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., function: _Optional[_Union[_link_pb2.LinkFunction, str]] = ...) -> None: ...

class RemoveLink(_message.Message):
    __slots__ = ("link_id", "sender", "receiver", "function")
    LINK_ID_FIELD_NUMBER: _ClassVar[int]
    SENDER_FIELD_NUMBER: _ClassVar[int]
    RECEIVER_FIELD_NUMBER: _ClassVar[int]
    FUNCTION_FIELD_NUMBER: _ClassVar[int]
    link_id: str
    sender: _identity_pb2.DeviceId
    receiver: _identity_pb2.DeviceId
    function: _link_pb2.LinkFunction
    def __init__(self, link_id: _Optional[str] = ..., sender: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., receiver: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., function: _Optional[_Union[_link_pb2.LinkFunction, str]] = ...) -> None: ...

class ListLinks(_message.Message):
    __slots__ = ("device_id",)
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ...) -> None: ...

class LinkResult(_message.Message):
    __slots__ = ("link_id", "success", "state", "detail")
    LINK_ID_FIELD_NUMBER: _ClassVar[int]
    SUCCESS_FIELD_NUMBER: _ClassVar[int]
    STATE_FIELD_NUMBER: _ClassVar[int]
    DETAIL_FIELD_NUMBER: _ClassVar[int]
    link_id: str
    success: bool
    state: _link_pb2.LinkState
    detail: str
    def __init__(self, link_id: _Optional[str] = ..., success: _Optional[bool] = ..., state: _Optional[_Union[_link_pb2.LinkState, str]] = ..., detail: _Optional[str] = ...) -> None: ...

class LinksReported(_message.Message):
    __slots__ = ("links",)
    LINKS_FIELD_NUMBER: _ClassVar[int]
    links: _containers.RepeatedCompositeFieldContainer[_link_pb2.DeviceLink]
    def __init__(self, links: _Optional[_Iterable[_Union[_link_pb2.DeviceLink, _Mapping]]] = ...) -> None: ...

class HandshakeAck(_message.Message):
    __slots__ = ("accepted", "reason", "gateway_id")
    ACCEPTED_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    GATEWAY_ID_FIELD_NUMBER: _ClassVar[int]
    accepted: bool
    reason: str
    gateway_id: _identity_pb2.GatewayId
    def __init__(self, accepted: _Optional[bool] = ..., reason: _Optional[str] = ..., gateway_id: _Optional[_Union[_identity_pb2.GatewayId, _Mapping]] = ...) -> None: ...

class DeviceAnnouncement(_message.Message):
    __slots__ = ("device", "pairing_request_id")
    DEVICE_FIELD_NUMBER: _ClassVar[int]
    PAIRING_REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    device: _device_pb2.Device
    pairing_request_id: str
    def __init__(self, device: _Optional[_Union[_device_pb2.Device, _Mapping]] = ..., pairing_request_id: _Optional[str] = ...) -> None: ...

class DeviceRemoval(_message.Message):
    __slots__ = ("device_id", "reason")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    reason: str
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., reason: _Optional[str] = ...) -> None: ...

class HeartBeat(_message.Message):
    __slots__ = ()
    def __init__(self) -> None: ...

class SubscribeDevice(_message.Message):
    __slots__ = ("device_id",)
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ...) -> None: ...

class UnsubscribeDevice(_message.Message):
    __slots__ = ("device_id",)
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ...) -> None: ...

class GatewayError(_message.Message):
    __slots__ = ("code", "message", "request_id")
    CODE_FIELD_NUMBER: _ClassVar[int]
    MESSAGE_FIELD_NUMBER: _ClassVar[int]
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    code: str
    message: str
    request_id: str
    def __init__(self, code: _Optional[str] = ..., message: _Optional[str] = ..., request_id: _Optional[str] = ...) -> None: ...

class ConnectorCommandResult(_message.Message):
    __slots__ = ("request_id", "success", "completed_at", "error", "settles_by")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    SUCCESS_FIELD_NUMBER: _ClassVar[int]
    COMPLETED_AT_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    SETTLES_BY_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    success: bool
    completed_at: _timestamp_pb2.Timestamp
    error: _command_pb2.CommandError
    settles_by: _timestamp_pb2.Timestamp
    def __init__(self, request_id: _Optional[str] = ..., success: _Optional[bool] = ..., completed_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., error: _Optional[_Union[_command_pb2.CommandError, _Mapping]] = ..., settles_by: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class EnterPairingMode(_message.Message):
    __slots__ = ("request_id", "window")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    WINDOW_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    window: _pairing_pb2.PairingWindow
    def __init__(self, request_id: _Optional[str] = ..., window: _Optional[_Union[_pairing_pb2.PairingWindow, _Mapping]] = ...) -> None: ...

class PairingModeResult(_message.Message):
    __slots__ = ("request_id", "accepted", "error", "expires_at")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    ACCEPTED_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    EXPIRES_AT_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    accepted: bool
    error: _pairing_pb2.PairingErrorDetail
    expires_at: _timestamp_pb2.Timestamp
    def __init__(self, request_id: _Optional[str] = ..., accepted: _Optional[bool] = ..., error: _Optional[_Union[_pairing_pb2.PairingErrorDetail, _Mapping]] = ..., expires_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class PairingModeEnded(_message.Message):
    __slots__ = ("request_id", "devices_attributed", "error")
    REQUEST_ID_FIELD_NUMBER: _ClassVar[int]
    DEVICES_ATTRIBUTED_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    request_id: str
    devices_attributed: int
    error: _pairing_pb2.PairingErrorDetail
    def __init__(self, request_id: _Optional[str] = ..., devices_attributed: _Optional[int] = ..., error: _Optional[_Union[_pairing_pb2.PairingErrorDetail, _Mapping]] = ...) -> None: ...

class SessionRequest(_message.Message):
    __slots__ = ("message_id", "sent_at", "handshake", "property_update", "device_announced", "device_removed", "command_result", "heartbeat", "device_events", "pairing_mode_result", "pairing_mode_ended", "link_result", "links_reported")
    MESSAGE_ID_FIELD_NUMBER: _ClassVar[int]
    SENT_AT_FIELD_NUMBER: _ClassVar[int]
    HANDSHAKE_FIELD_NUMBER: _ClassVar[int]
    PROPERTY_UPDATE_FIELD_NUMBER: _ClassVar[int]
    DEVICE_ANNOUNCED_FIELD_NUMBER: _ClassVar[int]
    DEVICE_REMOVED_FIELD_NUMBER: _ClassVar[int]
    COMMAND_RESULT_FIELD_NUMBER: _ClassVar[int]
    HEARTBEAT_FIELD_NUMBER: _ClassVar[int]
    DEVICE_EVENTS_FIELD_NUMBER: _ClassVar[int]
    PAIRING_MODE_RESULT_FIELD_NUMBER: _ClassVar[int]
    PAIRING_MODE_ENDED_FIELD_NUMBER: _ClassVar[int]
    LINK_RESULT_FIELD_NUMBER: _ClassVar[int]
    LINKS_REPORTED_FIELD_NUMBER: _ClassVar[int]
    message_id: str
    sent_at: _timestamp_pb2.Timestamp
    handshake: ConnectorHandshake
    property_update: _property_update_pb2.PropertyUpdateBatch
    device_announced: DeviceAnnouncement
    device_removed: DeviceRemoval
    command_result: ConnectorCommandResult
    heartbeat: HeartBeat
    device_events: _device_event_pb2.DeviceEventBatch
    pairing_mode_result: PairingModeResult
    pairing_mode_ended: PairingModeEnded
    link_result: LinkResult
    links_reported: LinksReported
    def __init__(self, message_id: _Optional[str] = ..., sent_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., handshake: _Optional[_Union[ConnectorHandshake, _Mapping]] = ..., property_update: _Optional[_Union[_property_update_pb2.PropertyUpdateBatch, _Mapping]] = ..., device_announced: _Optional[_Union[DeviceAnnouncement, _Mapping]] = ..., device_removed: _Optional[_Union[DeviceRemoval, _Mapping]] = ..., command_result: _Optional[_Union[ConnectorCommandResult, _Mapping]] = ..., heartbeat: _Optional[_Union[HeartBeat, _Mapping]] = ..., device_events: _Optional[_Union[_device_event_pb2.DeviceEventBatch, _Mapping]] = ..., pairing_mode_result: _Optional[_Union[PairingModeResult, _Mapping]] = ..., pairing_mode_ended: _Optional[_Union[PairingModeEnded, _Mapping]] = ..., link_result: _Optional[_Union[LinkResult, _Mapping]] = ..., links_reported: _Optional[_Union[LinksReported, _Mapping]] = ...) -> None: ...

class SessionResponse(_message.Message):
    __slots__ = ("message_id", "sent_at", "handshake_ack", "subscribe", "unsubscribe", "error", "execute_command", "execute_attribute_write", "enter_pairing_mode", "create_link", "remove_link", "list_links")
    MESSAGE_ID_FIELD_NUMBER: _ClassVar[int]
    SENT_AT_FIELD_NUMBER: _ClassVar[int]
    HANDSHAKE_ACK_FIELD_NUMBER: _ClassVar[int]
    SUBSCRIBE_FIELD_NUMBER: _ClassVar[int]
    UNSUBSCRIBE_FIELD_NUMBER: _ClassVar[int]
    ERROR_FIELD_NUMBER: _ClassVar[int]
    EXECUTE_COMMAND_FIELD_NUMBER: _ClassVar[int]
    EXECUTE_ATTRIBUTE_WRITE_FIELD_NUMBER: _ClassVar[int]
    ENTER_PAIRING_MODE_FIELD_NUMBER: _ClassVar[int]
    CREATE_LINK_FIELD_NUMBER: _ClassVar[int]
    REMOVE_LINK_FIELD_NUMBER: _ClassVar[int]
    LIST_LINKS_FIELD_NUMBER: _ClassVar[int]
    message_id: str
    sent_at: _timestamp_pb2.Timestamp
    handshake_ack: HandshakeAck
    subscribe: SubscribeDevice
    unsubscribe: UnsubscribeDevice
    error: GatewayError
    execute_command: _command_pb2.DeviceCommand
    execute_attribute_write: _command_pb2.AttributeWriteRequest
    enter_pairing_mode: EnterPairingMode
    create_link: CreateLink
    remove_link: RemoveLink
    list_links: ListLinks
    def __init__(self, message_id: _Optional[str] = ..., sent_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., handshake_ack: _Optional[_Union[HandshakeAck, _Mapping]] = ..., subscribe: _Optional[_Union[SubscribeDevice, _Mapping]] = ..., unsubscribe: _Optional[_Union[UnsubscribeDevice, _Mapping]] = ..., error: _Optional[_Union[GatewayError, _Mapping]] = ..., execute_command: _Optional[_Union[_command_pb2.DeviceCommand, _Mapping]] = ..., execute_attribute_write: _Optional[_Union[_command_pb2.AttributeWriteRequest, _Mapping]] = ..., enter_pairing_mode: _Optional[_Union[EnterPairingMode, _Mapping]] = ..., create_link: _Optional[_Union[CreateLink, _Mapping]] = ..., remove_link: _Optional[_Union[RemoveLink, _Mapping]] = ..., list_links: _Optional[_Union[ListLinks, _Mapping]] = ...) -> None: ...
