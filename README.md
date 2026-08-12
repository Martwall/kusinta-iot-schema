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
| `DimmableLightProperties` | `0x0101` | On/Off `0x0006` + Level Control `0x0008` |
| `ColorTemperatureLightProperties` | `0x010C` | On/Off + Level + Color Control `0x0300` |
| `EnergySensorProperties` | `0x0510` | Electrical Power Measurement `0x0090` |
| `PressureSensorProperties` | `0x0305` | Pressure Measurement `0x0403` |

Temperatures are `sint32` centidegrees (°C × 100), matching Matter's `int16 × 0.01°C` encoding.
`EnergySensorProperties` values are `sint64` in Matter's own mW / mV / mA / mHz, so a connector
forwards what the cluster reports without rescaling; `active_power` and `active_current` go
negative on export.

Vendor extensions occupy `Device.properties` fields 50–99. `HomematicVendorExtension` sits at field 50.

This table is documentation only. The mapping itself lives in the schema as custom options
(see below), so consumers never transcribe it.

## Matter annotations

`proto/kusinta/iot/device/v1/matter_options.proto` defines three custom options that make the
Matter mapping machine-readable:

| Option | Applies to | Meaning |
|---|---|---|
| `(matter_cluster_id)` | properties field | Matter cluster ID, e.g. `0x0201` |
| `(matter_attribute)` | properties field | Matter attribute name, e.g. `"PIROccupiedToUnoccupiedDelay"` |
| `(matter_device_type)` | properties message | Matter device type IDs modelled, repeated |

Two resolutions a consumer needs, both read from the descriptor:

- **`PropertyUpdate` → field**: exact match on `(matter_cluster_id, matter_attribute)` against
  `(cluster_id_hex, attribute_name)`. Proto field names are *not* derived from Matter attribute
  names — `covering_type` carries the bare `Type` attribute, and no case transformation reaches
  `PIROccupiedToUnoccupiedDelay` — so name-based matching is wrong, not merely fragile.
- **`matter_device_type_id` → `Device.properties` case**: find the oneof case whose message type
  declares that device type. A device type the schema does not model leaves the oneof unset and
  the `Device` intact; it is not an error.

`property_update.proto` states the rule normatively, including what to do with an update that
resolves to nothing (log and count — never drop silently). Reading options at runtime:
`getOption(field, matter_attribute)` in JS, `field.GetOptions().Extensions[matter_attribute]` in
Python, and in Dart by parsing the generated `*Descriptor` bytes from `*.pbjson.dart` with the
`Matter_options` extension registry (the `$json` maps drop custom options; the binary descriptors
keep them).

**When adding a properties message or field, annotate it.** Nothing in `buf lint` enforces this;
the completeness tests in `gen/js/src/__tests__/matter_options.test.js` and
`gen/python/tests/test_matter_options.py` do.

## Field presence in properties

Every field in `properties.proto` and in `HmThermostatProps` is `optional` — explicit presence.
These messages are assembled incrementally from a `PropertyUpdate` stream, and Matter gives zero
a meaning nearly everywhere: `SystemMode` `Off=0`, `LockState` `NotFullyLocked=0`, `Type`
`Rollershade=0`, a dimmer at level `0`, `0.00 °C`, `0 W`. `StateValue` is the sharpest — `false`
means contact open, which is the alarm.

- **absent** — the device has never reported this attribute
- **present** — a reading, including zero

Check presence (`HasField` / `hasX()` / `!== undefined`), never treat zero as "no data", and never
populate a field to mean "default" — leave it absent. New fields go in as `optional`; the presence
tests in `gen/python/tests/test_presence.py` and `gen/js/src/__tests__/presence.test.js` enforce it.

`DeviceDescriptor` is deliberately excluded: it is set once at announcement, not stream-assembled.

## Consuming the packages

| Language | Package | README |
|---|---|---|
| JavaScript / TypeScript | `@kusinta/iot-schema` | [gen/js/README.md](gen/js/README.md) |
| Python | `kusinta-iot-schema` | [gen/python/README.md](gen/python/README.md) |
| Dart | `kusinta_iot_schema` | [gen/dart/README.md](gen/dart/README.md) |

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
