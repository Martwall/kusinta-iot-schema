# kusinta-iot-schema

Protobuf schema definitions for the Kusinta building automation system.

## Architecture overview

- **Device model**: [Matter 1.5.1](https://csa-iot.org/developer-resource/specifications-download-request/) device type IDs and cluster attribute names throughout.
- **Vendor extensions**: HomeMatic-specific properties that have no Matter equivalent live in `proto/vendor/homematic/`.

## Repository layout

```
proto/
  common/          # shared enums (SpaceType, DeviceOwnershipType, ConnectorTransport, …)
  identity/        # strongly-typed ID wrappers (DeviceId, GatewayId, UserId, …)
  device/          # DeviceDescriptor, per-type Properties messages, Device oneof, PropertyUpdate
  space/           # Space (building hierarchy)
  access/          # Role, PermissionAction, DeviceAcl, EffectivePermissions
  connector/       # ConnectorToGatewayMessage, GatewayToConnectorMessage, gRPC service
  webrtc/          # GatewayMessage, AppMessage, DeviceCommand, DeviceStateSnapshot, …
  vendor/
    homematic/     # HomematicVendorExtension, HmThermostatProps (eTRV-C / eTRV-C-2)

gen/
  js/              # @kusinta/iot-schema npm package (generated, committed)
  python/          # kusinta-iot-schema Python package (generated, committed)
  dart/            # kusinta_iot_schema Dart package (generated, committed)

set-version.sh     # bumps version in all three package manifests at once
buf.gen.yaml       # buf generate config (remote plugins for JS, Python, Dart)
buf.yaml           # buf lint + breaking-change config
Jenkinsfile        # lint → generate → test → tag → npm publish
```

## Device types

All device type IDs are Matter 1.5.1 `uint32` values stored in `DeviceDescriptor.matter_device_type_id`.

| Proto message | Matter device type | Cluster |
|---|---|---|
| `ThermostatProperties` | `0x0301` | Thermostat `0x0201` |
| `TemperatureSensorProperties` | `0x0302` | Temperature Measurement `0x0402` |
| `HumiditySensorProperties` | `0x0307` | Relative Humidity `0x0405` |
| `OccupancySensorProperties` | `0x0107` | Occupancy Sensing `0x0406` |
| `ContactSensorProperties` | `0x0015` | Boolean State `0x0045` |
| `WindowCoveringProperties` | `0x0202` | Window Covering `0x0102` |
| `DoorLockProperties` | `0x000A` | Door Lock `0x0101` |
| `OnOffLightProperties` | `0x0100` | On/Off `0x0006` |
| `DimmableLightProperties` | `0x010B` | On/Off + Level Control `0x0008` |
| `ColorTemperatureLightProperties` | `0x010C` | On/Off + Level + Color Control `0x0300` |
| `EnergySensorProperties` | `0x0510` | Electrical Measurement `0x0B04` |
| `PressureSensorProperties` | `0x0305` | Pressure Measurement `0x0403` |

Temperatures are `sint32` centidegrees (°C × 100), matching Matter's `int16 × 0.01°C` encoding.

Vendor extensions occupy `Device.properties` fields 50–99. `HomematicVendorExtension` sits at field 50.

## Consuming the packages

### Javsript/TypeScript (decl) (gateway server / connector snap)

```javascript
// @ts-check
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { ConnectorGatewayService } from '@kusinta/iot-schema/connector/service'
import { ConnectRequestSchema, ConnectResponseSchema } from '@kusinta/iot-schema/connector'
import { GatewayMessageSchema, AppMessageSchema } from '@kusinta/iot-schema/webrtc'
import { DeviceSchema } from '@kusinta/iot-schema/device'

// Encode
const msg = create(GatewayMessageSchema, { messageId: 'gw-1', payload: { case: 'pong', value: {} } })
const bytes = toBinary(GatewayMessageSchema, msg)
dataChannel.send(bytes)

// Decode
const decoded = fromBinary(AppMessageSchema, new Uint8Array(data))
switch (decoded.payload?.case) {
  case 'handshake': /* validate JWT */ break
  case 'command':   /* forward to connector */ break
}
```

### Python

```toml
# pyproject.toml
dependencies = [
  "kusinta-iot-schema @ git+https://github.com/Martwall/kusinta-iot-schema.git@<TAG>#subdirectory=gen/python",
  "grpcio>=1.80.0",
]
```

## Regenerating code

Requires: [`buf` CLI](https://buf.build/docs/installation) (remote plugins — no local protoc needed).

```bash
buf generate
```

Then run the tests:

```bash
# JavaScript (primary test suite)
cd gen/js && npm test

# Python
cd gen/python && python3 -m pytest tests/ -v
```

## Linting and breaking-change detection

```bash
buf lint
buf breaking --against ".git#branch=main"
```

## Proto rules

- **never reuse a field number** after removal. Reserve removed numbers with a
`reserved` statement.

```protobuf
// Example: if field 3 is later removed from HmThermostatProps
reserved 3;
reserved "control_mode";
```

## Versioning

Use `set-version.sh` to bump the version — it updates all three package manifests in one step:

```bash
./set-version.sh 0.2.0
```

Jenkins verifies all three manifests match before tagging and publishing to npm. Consumers install by version:

```bash
npm install @kusinta/iot-schema@<version>
```

When adding a new proto package, add an `exports` entry to `gen/js/package.json`.
