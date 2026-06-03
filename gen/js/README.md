# @kusinta/iot-schema

Generated protobuf types for the Kusinta building automation platform, built with [protobuf-es](https://github.com/bufbuild/protobuf-es).

## Install

```bash
npm install @kusinta/iot-schema
```

Requires `@bufbuild/protobuf` as a peer dependency (installed automatically).

## Requirements

- Node.js 18+ (ESM — `"type": "module"`)
- `@bufbuild/protobuf` ^2.x (installed automatically as a peer dependency)

Works in raw Node.js ESM projects without a bundler.

## Usage

```javascript
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { DeviceSchema } from '@kusinta/iot-schema/device'
import { SpaceSchema } from '@kusinta/iot-schema/space'

const device = create(DeviceSchema, { ... })
const bytes = toBinary(DeviceSchema, device)
const decoded = fromBinary(DeviceSchema, bytes)
```

## Available imports

| Import | Contents |
|---|---|
| `@kusinta/iot-schema/common` | Shared enums and types |
| `@kusinta/iot-schema/identity` | Strongly-typed ID wrappers |
| `@kusinta/iot-schema/device` | Device, DeviceDescriptor |
| `@kusinta/iot-schema/device/descriptor` | DeviceDescriptor |
| `@kusinta/iot-schema/device/properties` | Per-device-type property messages |
| `@kusinta/iot-schema/device/property-update` | PropertyUpdate |
| `@kusinta/iot-schema/space` | Space (building hierarchy) |
| `@kusinta/iot-schema/access` | DeviceAcl, EffectivePermissions |
| `@kusinta/iot-schema/access/roles` | Roles, PermissionAction |
| `@kusinta/iot-schema/connector` | Connector ↔ gateway messages |
| `@kusinta/iot-schema/connector/service` | gRPC service definition |
| `@kusinta/iot-schema/webrtc` | WebRTC envelope messages |

Source: [github.com/Martwall/kusinta-iot-schema](https://github.com/Martwall/kusinta-iot-schema)
