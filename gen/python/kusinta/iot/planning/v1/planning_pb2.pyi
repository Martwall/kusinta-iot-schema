import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class ForecastCell(_message.Message):
    __slots__ = ("latitude_centidegrees", "longitude_centidegrees")
    LATITUDE_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    LONGITUDE_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    latitude_centidegrees: int
    longitude_centidegrees: int
    def __init__(self, latitude_centidegrees: _Optional[int] = ..., longitude_centidegrees: _Optional[int] = ...) -> None: ...

class PriceInterval(_message.Message):
    __slots__ = ("start", "end", "eur_cents_per_mwh")
    START_FIELD_NUMBER: _ClassVar[int]
    END_FIELD_NUMBER: _ClassVar[int]
    EUR_CENTS_PER_MWH_FIELD_NUMBER: _ClassVar[int]
    start: _timestamp_pb2.Timestamp
    end: _timestamp_pb2.Timestamp
    eur_cents_per_mwh: int
    def __init__(self, start: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., end: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., eur_cents_per_mwh: _Optional[int] = ...) -> None: ...

class ForecastPoint(_message.Message):
    __slots__ = ("valid_at", "temperature_centidegrees", "wind_speed_cm_per_s", "wind_from_degrees", "global_radiation_w_per_m2")
    VALID_AT_FIELD_NUMBER: _ClassVar[int]
    TEMPERATURE_CENTIDEGREES_FIELD_NUMBER: _ClassVar[int]
    WIND_SPEED_CM_PER_S_FIELD_NUMBER: _ClassVar[int]
    WIND_FROM_DEGREES_FIELD_NUMBER: _ClassVar[int]
    GLOBAL_RADIATION_W_PER_M2_FIELD_NUMBER: _ClassVar[int]
    valid_at: _timestamp_pb2.Timestamp
    temperature_centidegrees: int
    wind_speed_cm_per_s: int
    wind_from_degrees: int
    global_radiation_w_per_m2: int
    def __init__(self, valid_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., temperature_centidegrees: _Optional[int] = ..., wind_speed_cm_per_s: _Optional[int] = ..., wind_from_degrees: _Optional[int] = ..., global_radiation_w_per_m2: _Optional[int] = ...) -> None: ...

class ForecastIssue(_message.Message):
    __slots__ = ("issued_at", "attribution", "points")
    ISSUED_AT_FIELD_NUMBER: _ClassVar[int]
    ATTRIBUTION_FIELD_NUMBER: _ClassVar[int]
    POINTS_FIELD_NUMBER: _ClassVar[int]
    issued_at: _timestamp_pb2.Timestamp
    attribution: str
    points: _containers.RepeatedCompositeFieldContainer[ForecastPoint]
    def __init__(self, issued_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., attribution: _Optional[str] = ..., points: _Optional[_Iterable[_Union[ForecastPoint, _Mapping]]] = ...) -> None: ...
