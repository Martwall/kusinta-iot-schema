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
  device/          # DeviceDescriptor, per-type Properties messages, Device/Endpoint, PropertyUpdate
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

A device presents one or more **endpoints**, each carrying a single Matter device type and the
properties belonging to it — a wall thermostat is a Thermostat *and* a Humidity Sensor, a
4-channel actuator is four On/Off Lights, a battery valve is also a Power Source. Filing and
ownership stay per physical device: `DeviceId`, claiming and placement are unaffected.

`endpoint_id` is scoped to one device — an endpoint is identified by the pair
`(DeviceId, endpoint_id)`, and nothing coordinates numbering between devices. Producers must
keep it unique within the device and **stable for the device's life**: access grants reference
the pair, so renumbering on restart silently retargets permissions rather than failing.

`Device.endpoints` is the single endpoint list: each entry carries an `endpoint_id`, the Matter
device type it presents, and what it has reported. `Device` travels on **both** legs — a
connector announces one with `DeviceAnnouncement` — so there is one shape everywhere and no
parallel copy to keep in step.

There is no primary-device-type field. It was derived data guarded by a rule, so an icon could
disagree with the readings under it; compute it from the lowest-numbered endpoint where you
need it. Vendor *identity* (a device's address and model in its vendor's terms) is on
`DeviceDescriptor`; vendor *readings* are per endpoint.

All device type IDs are Matter 1.5.1 `uint32` values.

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
| `PowerSourceProperties` | `0x0011` | Power Source `0x002F` |

Temperatures are `sint32` centidegrees (°C × 100), matching Matter's `int16 × 0.01°C` encoding.
`EnergySensorProperties` values are `sint64` in Matter's own mW / mV / mA / mHz, so a connector
forwards what the cluster reports without rescaling; `active_power` and `active_current` go
negative on export.

`PowerSourceProperties.bat_percent_remaining` is Matter's **half-percent, 0–200** — 200 is a full
battery. Divide by two for display; do not rescale on the wire.

Vendor extensions sit in `Endpoint.vendor_properties`, a oneof separate from
`Endpoint.matter_properties` and
occupying fields 50–99. `HomematicVendorExtension` is at field 50. Separate oneofs so an endpoint
carries typed Matter properties *and* its vendor extension — one oneof spanning both made every
vendor field unreachable in practice.

This table is documentation only. The mapping itself lives in the schema as custom options
(see below), so consumers never transcribe it.

## Property or attribute?

The same datum, named from two sides, and both names are load-bearing:

- **Attribute** is Matter's word, used wherever the schema names a spec identity —
  `PropertyUpdate.attribute_name`, the `(matter_attribute)` annotation, `AttributeRef` in the
  ACL. It is the authoritative spelling, owned by the Matter specification.
- **Properties** is this schema's typed container — `ThermostatProperties`,
  `Endpoint.matter_properties`. A *field* of a Properties message **is** a Matter attribute;
  the annotations on it are what say which one.

So "grant the resident this attribute" and "the thermostat's properties" describe the same
values at different granularity. Vendor parameters work identically one namespace over:
`(vendor_attribute)` names them, `Endpoint.vendor_properties` holds them.

## Matter annotations

`proto/kusinta/iot/device/v1/matter_options.proto` defines the Matter annotations, and
`proto/kusinta/iot/vendor/v1/vendor_options.proto` the vendor ones. They live in separate packages
because vendor extension files import the vendor options while `device/v1` imports the extension
files — together they would form a package import cycle.

| Option | Applies to | Meaning |
|---|---|---|
| `(matter_cluster_id)` | properties field | Matter cluster ID, e.g. `0x0201` |
| `(matter_attribute)` | properties field | Matter attribute name, e.g. `"PIROccupiedToUnoccupiedDelay"` |
| `(matter_device_type)` | properties message | Matter device type IDs modelled, repeated |
| `(vendor_attribute)` | vendor field | Vendor parameter in the vendor's own spelling, e.g. `"LEVEL"` |
| `(vendor_extension)` | vendor message | Stable key selecting the extension, e.g. `"homematic.thermostat"` |

A `PropertyUpdate` resolves in three steps, all read from the descriptor:

1. **Endpoint** — the `Device.endpoints` entry whose `endpoint_id` matches. Required; an
   unaddressed update is a miss, never defaulted to the primary endpoint.
2. **Message** — Matter branch (no `vendor_extension` set): the `Endpoint.matter_properties` case whose
   message declares `(matter_device_type) == Endpoint.matter_device_type_id`. Vendor branch: the
   `Endpoint.vendor_properties` case whose message declares the named `(vendor_extension)`.
3. **Field** — Matter branch: exact match on `(matter_cluster_id, matter_attribute)` against
   `(cluster_id, attribute_name)`. Vendor branch: exact match on `(vendor_attribute)` against
   `attribute_name`; no cluster is involved.

Both branches are the same shape — pick a message by a message option, then one field by a
field option. Nothing nests and nothing is searched recursively. Cluster IDs are `uint32` on
the wire, matching the `(matter_cluster_id)` annotation, so no parsing stands between an update
and the comparison.

Steps 2 and 3 are fixed by the schema, not by the update. Build both maps **once at startup**
and resolve with lookups; walking the descriptor per update is ~30 option reads on the
highest-volume message here.

Proto field names are *not* derived from attribute names — `covering_type` carries the bare `Type`
attribute, and no case transformation reaches `PIROccupiedToUnoccupiedDelay` — so name-based
matching is wrong, not merely fragile. A device type the schema does not model leaves that
endpoint's oneof unset and the endpoint intact; it is not an error.

`property_update.proto` states the rule normatively, including what to do with an update that
resolves to nothing (log and count — never drop silently). Reading options at runtime:
`getOption(field, matter_attribute)` in JS, `field.GetOptions().Extensions[matter_attribute]` in
Python, and in Dart by parsing the generated `*Descriptor` bytes from `*.pbjson.dart` with the
`Matter_options` extension registry (the `$json` maps drop custom options; the binary descriptors
keep them).

**When adding a properties or vendor message or field, annotate it.** Nothing in `buf lint` enforces this;
the completeness tests do — `matter_options.test.js` / `test_matter_options.py` for the Matter
annotations, `test_endpoint.py` for the vendor ones. All of them derive their message lists from
the `Endpoint` oneofs, so a new message is swept automatically.

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
