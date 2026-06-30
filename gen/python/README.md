# kusinta-iot-schema (Python)

Generated protobuf types for the Kusinta building automation platform.

## Install

From PyPI:

```toml
dependencies = [
  "kusinta-iot-schema>=<VERSION>",
  # ConnectRPC clients (*_connect.py):
  # "kusinta-iot-schema[connect]>=<VERSION>",
  # gRPC stubs (*_pb2_grpc.py):
  # "kusinta-iot-schema[grpc]>=<VERSION>",
]
```

The base install ships only the protobuf message types. Install the `connect` or
`grpc` extra if you use the corresponding service stubs.

## Usage

```python
from kusinta.iot.device.v1 import device_pb2
from kusinta.iot.space.v1 import space_pb2
```

Source: [github.com/Martwall/kusinta-iot-schema](https://github.com/Martwall/kusinta-iot-schema)
