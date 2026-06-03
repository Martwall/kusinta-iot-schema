# kusinta-iot-schema (Python)

Generated protobuf types for the Kusinta building automation platform.

## Install

Add to your `pyproject.toml`, pinned to a release tag:

```toml
dependencies = [
  "kusinta-iot-schema @ git+https://github.com/Martwall/kusinta-iot-schema.git@<TAG>#subdirectory=gen/python",
  "grpcio>=1.80.0",
]
```

## Usage

```python
from kusinta.iot.device.v1 import device_pb2
from kusinta.iot.space.v1 import space_pb2
```

Source: [github.com/Martwall/kusinta-iot-schema](https://github.com/Martwall/kusinta-iot-schema)
