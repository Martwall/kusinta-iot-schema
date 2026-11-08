import datetime

from google.protobuf import timestamp_pb2 as _timestamp_pb2
from kusinta.iot.planning.v1 import planning_pb2 as _planning_pb2
from google.protobuf.internal import containers as _containers
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from collections.abc import Iterable as _Iterable, Mapping as _Mapping
from typing import ClassVar as _ClassVar, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class GetPlanningInputsRequest(_message.Message):
    __slots__ = ("bidding_zone", "forecast_cell", "prices_from", "forecast_issued_after")
    BIDDING_ZONE_FIELD_NUMBER: _ClassVar[int]
    FORECAST_CELL_FIELD_NUMBER: _ClassVar[int]
    PRICES_FROM_FIELD_NUMBER: _ClassVar[int]
    FORECAST_ISSUED_AFTER_FIELD_NUMBER: _ClassVar[int]
    bidding_zone: str
    forecast_cell: _planning_pb2.ForecastCell
    prices_from: _timestamp_pb2.Timestamp
    forecast_issued_after: _timestamp_pb2.Timestamp
    def __init__(self, bidding_zone: _Optional[str] = ..., forecast_cell: _Optional[_Union[_planning_pb2.ForecastCell, _Mapping]] = ..., prices_from: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ..., forecast_issued_after: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...

class GetPlanningInputsResponse(_message.Message):
    __slots__ = ("prices", "forecast", "latest_forecast_issued_at")
    PRICES_FIELD_NUMBER: _ClassVar[int]
    FORECAST_FIELD_NUMBER: _ClassVar[int]
    LATEST_FORECAST_ISSUED_AT_FIELD_NUMBER: _ClassVar[int]
    prices: _containers.RepeatedCompositeFieldContainer[_planning_pb2.PriceInterval]
    forecast: _planning_pb2.ForecastIssue
    latest_forecast_issued_at: _timestamp_pb2.Timestamp
    def __init__(self, prices: _Optional[_Iterable[_Union[_planning_pb2.PriceInterval, _Mapping]]] = ..., forecast: _Optional[_Union[_planning_pb2.ForecastIssue, _Mapping]] = ..., latest_forecast_issued_at: _Optional[_Union[datetime.datetime, _timestamp_pb2.Timestamp, _Mapping]] = ...) -> None: ...
