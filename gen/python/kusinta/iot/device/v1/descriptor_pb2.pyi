import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.common.v1 import types_pb2 as _types_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class DeviceDescriptor(_message.Message):
    __slots__ = ("device_id", "matter_device_type_id", "vendor_name", "product_name", "serial_number", "node_label", "vendor_id", "product_id", "hardware_version_string", "software_version_string", "connector_id", "space_id", "ownership", "lifecycle", "owner_user_id", "claimed_at")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    MATTER_DEVICE_TYPE_ID_FIELD_NUMBER: _ClassVar[int]
    VENDOR_NAME_FIELD_NUMBER: _ClassVar[int]
    PRODUCT_NAME_FIELD_NUMBER: _ClassVar[int]
    SERIAL_NUMBER_FIELD_NUMBER: _ClassVar[int]
    NODE_LABEL_FIELD_NUMBER: _ClassVar[int]
    VENDOR_ID_FIELD_NUMBER: _ClassVar[int]
    PRODUCT_ID_FIELD_NUMBER: _ClassVar[int]
    HARDWARE_VERSION_STRING_FIELD_NUMBER: _ClassVar[int]
    SOFTWARE_VERSION_STRING_FIELD_NUMBER: _ClassVar[int]
    CONNECTOR_ID_FIELD_NUMBER: _ClassVar[int]
    SPACE_ID_FIELD_NUMBER: _ClassVar[int]
    OWNERSHIP_FIELD_NUMBER: _ClassVar[int]
    LIFECYCLE_FIELD_NUMBER: _ClassVar[int]
    OWNER_USER_ID_FIELD_NUMBER: _ClassVar[int]
    CLAIMED_AT_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    matter_device_type_id: int
    vendor_name: str
    product_name: str
    serial_number: str
    node_label: str
    vendor_id: int
    product_id: int
    hardware_version_string: str
    software_version_string: str
    connector_id: _identity_pb2.ConnectorId
    space_id: _identity_pb2.SpaceId
    ownership: _types_pb2.DeviceOwnershipType
    lifecycle: _types_pb2.DeviceLifecycleState
    owner_user_id: _identity_pb2.UserId
    claimed_at: _timestamp_pb2.Timestamp
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., matter_device_type_id: _Optional[int] = ..., vendor_name: _Optional[str] = ..., product_name: _Optional[str] = ..., serial_number: _Optional[str] = ..., node_label: _Optional[str] = ..., vendor_id: _Optional[int] = ..., product_id: _Optional[int] = ..., hardware_version_string: _Optional[str] = ..., software_version_string: _Optional[str] = ..., connector_id: _Optional[_Union[_identity_pb2.ConnectorId, _Mapping]] = ..., space_id: _Optional[_Union[_identity_pb2.SpaceId, _Mapping]] = ..., ownership: _Optional[_Union[_types_pb2.DeviceOwnershipType, str]] = ..., lifecycle: _Optional[_Union[_types_pb2.DeviceLifecycleState, str]] = ..., owner_user_id: _Optional[_Union[_identity_pb2.UserId, _Mapping]] = ..., claimed_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...
