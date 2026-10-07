import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.access.v1 import acl_pb2 as _acl_pb2
from kusinta.iot.device.v1 import device_pb2 as _device_pb2
from kusinta.iot.device.v1 import property_update_pb2 as _property_update_pb2
from kusinta.iot.identity.v1 import identity_pb2 as _identity_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class ServiceFault(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    SERVICE_FAULT_UNSPECIFIED: _ClassVar[ServiceFault]
    SERVICE_FAULT_ERROR: _ClassVar[ServiceFault]
    SERVICE_FAULT_TAMPER: _ClassVar[ServiceFault]
SERVICE_FAULT_UNSPECIFIED: ServiceFault
SERVICE_FAULT_ERROR: ServiceFault
SERVICE_FAULT_TAMPER: ServiceFault

class DeviceStateSnapshot(_message.Message):
    __slots__ = ("devices", "permissions", "snapshotted_at", "service_statuses")
    DEVICES_FIELD_NUMBER: _ClassVar[int]
    PERMISSIONS_FIELD_NUMBER: _ClassVar[int]
    SNAPSHOTTED_AT_FIELD_NUMBER: _ClassVar[int]
    SERVICE_STATUSES_FIELD_NUMBER: _ClassVar[int]
    devices: _containers.RepeatedCompositeFieldContainer[_device_pb2.Device]
    permissions: _acl_pb2.EffectivePermissions
    snapshotted_at: _timestamp_pb2.Timestamp
    service_statuses: _containers.RepeatedCompositeFieldContainer[ServiceStatus]
    def __init__(self, devices: _Optional[_Iterable[_Union[_device_pb2.Device, _Mapping]]] = ..., permissions: _Optional[_Union[_acl_pb2.EffectivePermissions, _Mapping]] = ..., snapshotted_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., service_statuses: _Optional[_Iterable[_Union[ServiceStatus, _Mapping]]] = ...) -> None: ...

class ServiceStatus(_message.Message):
    __slots__ = ("device_id", "as_of", "reachable", "unreachable_since", "battery_percent", "battery_low", "battery_replacement_needed", "radio_quality", "faults")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    AS_OF_FIELD_NUMBER: _ClassVar[int]
    REACHABLE_FIELD_NUMBER: _ClassVar[int]
    UNREACHABLE_SINCE_FIELD_NUMBER: _ClassVar[int]
    BATTERY_PERCENT_FIELD_NUMBER: _ClassVar[int]
    BATTERY_LOW_FIELD_NUMBER: _ClassVar[int]
    BATTERY_REPLACEMENT_NEEDED_FIELD_NUMBER: _ClassVar[int]
    RADIO_QUALITY_FIELD_NUMBER: _ClassVar[int]
    FAULTS_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    as_of: _timestamp_pb2.Timestamp
    reachable: bool
    unreachable_since: _timestamp_pb2.Timestamp
    battery_percent: int
    battery_low: bool
    battery_replacement_needed: bool
    radio_quality: int
    faults: _containers.RepeatedScalarFieldContainer[ServiceFault]
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., as_of: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., reachable: _Optional[bool] = ..., unreachable_since: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., battery_percent: _Optional[int] = ..., battery_low: _Optional[bool] = ..., battery_replacement_needed: _Optional[bool] = ..., radio_quality: _Optional[int] = ..., faults: _Optional[_Iterable[_Union[ServiceFault, str]]] = ...) -> None: ...

class ServiceStatusChanged(_message.Message):
    __slots__ = ("statuses",)
    STATUSES_FIELD_NUMBER: _ClassVar[int]
    statuses: _containers.RepeatedCompositeFieldContainer[ServiceStatus]
    def __init__(self, statuses: _Optional[_Iterable[_Union[ServiceStatus, _Mapping]]] = ...) -> None: ...

class PropertyReport(_message.Message):
    __slots__ = ("update", "gateway_processed_at")
    UPDATE_FIELD_NUMBER: _ClassVar[int]
    GATEWAY_PROCESSED_AT_FIELD_NUMBER: _ClassVar[int]
    update: _property_update_pb2.PropertyUpdate
    gateway_processed_at: _timestamp_pb2.Timestamp
    def __init__(self, update: _Optional[_Union[_property_update_pb2.PropertyUpdate, _Mapping]] = ..., gateway_processed_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class DeviceAdded(_message.Message):
    __slots__ = ("device",)
    DEVICE_FIELD_NUMBER: _ClassVar[int]
    device: _device_pb2.Device
    def __init__(self, device: _Optional[_Union[_device_pb2.Device, _Mapping]] = ...) -> None: ...

class DeviceRemoved(_message.Message):
    __slots__ = ("device_id", "reason")
    DEVICE_ID_FIELD_NUMBER: _ClassVar[int]
    REASON_FIELD_NUMBER: _ClassVar[int]
    device_id: _identity_pb2.DeviceId
    reason: str
    def __init__(self, device_id: _Optional[_Union[_identity_pb2.DeviceId, _Mapping]] = ..., reason: _Optional[str] = ...) -> None: ...
