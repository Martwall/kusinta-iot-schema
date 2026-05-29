import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.device.v1 import device_pb2 as _device_pb2
from kusinta.iot.device.v1 import property_update_pb2 as _property_update_pb2
from kusinta.iot.access.v1 import acl_pb2 as _acl_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class DeviceStateSnapshot(_message.Message):
    __slots__ = ("devices", "permissions", "snapshotted_at")
    DEVICES_FIELD_NUMBER: _ClassVar[int]
    PERMISSIONS_FIELD_NUMBER: _ClassVar[int]
    SNAPSHOTTED_AT_FIELD_NUMBER: _ClassVar[int]
    devices: _containers.RepeatedCompositeFieldContainer[_device_pb2.Device]
    permissions: _acl_pb2.EffectivePermissions
    snapshotted_at: _timestamp_pb2.Timestamp
    def __init__(self, devices: _Optional[_Iterable[_Union[_device_pb2.Device, _Mapping]]] = ..., permissions: _Optional[_Union[_acl_pb2.EffectivePermissions, _Mapping]] = ..., snapshotted_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class DevicePropertyEvent(_message.Message):
    __slots__ = ("update", "gateway_processed_at")
    UPDATE_FIELD_NUMBER: _ClassVar[int]
    GATEWAY_PROCESSED_AT_FIELD_NUMBER: _ClassVar[int]
    update: _property_update_pb2.PropertyUpdate
    gateway_processed_at: _timestamp_pb2.Timestamp
    def __init__(self, update: _Optional[_Union[_property_update_pb2.PropertyUpdate, _Mapping]] = ..., gateway_processed_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...
