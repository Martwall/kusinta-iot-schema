// @ts-check
import { describe, it, expect } from 'vitest'
import { getOption, hasOption } from '@bufbuild/protobuf'
import {
  matter_attribute,
  matter_cluster_id,
  matter_device_type,
} from '../kusinta/iot/device/v1/matter_options_pb.js'
import {
  ColorTemperatureLightPropertiesSchema,
  ContactSensorPropertiesSchema,
  DimmableLightPropertiesSchema,
  DoorLockPropertiesSchema,
  EnergySensorPropertiesSchema,
  HumiditySensorPropertiesSchema,
  OccupancySensorPropertiesSchema,
  OnOffLightPropertiesSchema,
  PressureSensorPropertiesSchema,
  PowerSourcePropertiesSchema,
  TemperatureSensorPropertiesSchema,
  ThermostatPropertiesSchema,
  WindowCoveringPropertiesSchema,
} from '../kusinta/iot/device/v1/properties_pb.js'
import { EndpointSchema } from '../kusinta/iot/device/v1/device_pb.js'

// Derived from the Endpoint.properties oneof rather than hand-listed: a properties
// message added to the schema and forgotten here would silently drop out of every sweep
// below without a single test failing.
const PROPERTIES_MESSAGES = EndpointSchema.oneofs
  .find((o) => o.name === 'properties')
  .fields.map((f) => f.message)

/**
 * Resolve a PropertyUpdate to a field the way a consumer must: exact match on the
 * annotated (cluster, attribute) pair. Returns null when nothing matches.
 * @param {import('@bufbuild/protobuf').DescMessage} schema
 * @param {number} clusterId
 * @param {string} attributeName
 */
function resolveField(schema, clusterId, attributeName) {
  const matches = schema.fields.filter(
    (f) =>
      getOption(f, matter_cluster_id) === clusterId &&
      getOption(f, matter_attribute) === attributeName,
  )
  return matches.length === 1 ? matches[0].name : null
}

/**
 * Resolve an Endpoint.properties oneof case from a Matter device type ID.
 * Returns null for a device type the schema does not model.
 * @param {number} deviceTypeId
 */
function propertiesCaseForDeviceType(deviceTypeId) {
  const oneof = EndpointSchema.oneofs.find((o) => o.name === 'properties')
  const matches = (oneof?.fields ?? []).filter(
    (f) =>
      f.fieldKind === 'message' && getOption(f.message, matter_device_type).includes(deviceTypeId),
  )
  return matches.length === 1 ? matches[0].name : null
}

describe('attribute resolution', () => {
  it('resolves nothing for an attribute the schema does not model', () => {
    expect(resolveField(ThermostatPropertiesSchema, 0x0201, 'NoSuchAttribute')).toBeNull()
  })

  it('resolves nothing for a known attribute sent with the wrong cluster', () => {
    expect(resolveField(ThermostatPropertiesSchema, 0x0406, 'LocalTemperature')).toBeNull()
  })

  it('resolves PIROccupiedToUnoccupiedDelay despite the abbreviated field name', () => {
    expect(resolveField(OccupancySensorPropertiesSchema, 0x0406, 'PIROccupiedToUnoccupiedDelay'))
      .toBe('pir_occupied_to_unoccupied_delay')
  })

  it('resolves PIRUnoccupiedToOccupiedDelay despite the abbreviated field name', () => {
    expect(resolveField(OccupancySensorPropertiesSchema, 0x0406, 'PIRUnoccupiedToOccupiedDelay'))
      .toBe('pir_unoccupied_to_occupied_delay')
  })

  it('resolves the bare Type attribute to covering_type', () => {
    expect(resolveField(WindowCoveringPropertiesSchema, 0x0102, 'Type')).toBe('covering_type')
  })

  it('resolves an acronym attribute without case normalisation', () => {
    expect(resolveField(EnergySensorPropertiesSchema, 0x0090, 'ActiveCurrent')).toBe(
      'active_current',
    )
  })

  it('resolves StartUpColorTemperatureMireds despite inconsistent field spelling', () => {
    expect(
      resolveField(ColorTemperatureLightPropertiesSchema, 0x0300, 'StartUpColorTemperatureMireds'),
    ).toBe('startup_color_temperature_mireds')
  })
})

describe('annotation completeness', () => {
  it('annotates every properties field with a Matter attribute name', () => {
    const unannotated = PROPERTIES_MESSAGES.flatMap((schema) =>
      schema.fields.filter((f) => !hasOption(f, matter_attribute)).map((f) => `${schema.name}.${f.name}`),
    )
    expect(unannotated).toEqual([])
  })

  it('annotates every properties field with a Matter cluster ID', () => {
    const unannotated = PROPERTIES_MESSAGES.flatMap((schema) =>
      schema.fields
        .filter((f) => !hasOption(f, matter_cluster_id))
        .map((f) => `${schema.name}.${f.name}`),
    )
    expect(unannotated).toEqual([])
  })

  it('never annotates two fields of one message with the same cluster and attribute', () => {
    const keys = PROPERTIES_MESSAGES.flatMap((schema) =>
      schema.fields.map(
        (f) => `${schema.name}/${getOption(f, matter_cluster_id)}/${getOption(f, matter_attribute)}`,
      ),
    )
    expect(keys.length).toBe(new Set(keys).size)
  })
})

describe('multi-cluster properties messages', () => {
  it('annotates DimmableLightProperties.on_off with the On/Off cluster', () => {
    expect(resolveField(DimmableLightPropertiesSchema, 0x0006, 'OnOff')).toBe('on_off')
  })

  it('annotates DimmableLightProperties.current_level with the Level Control cluster', () => {
    expect(resolveField(DimmableLightPropertiesSchema, 0x0008, 'CurrentLevel')).toBe(
      'current_level',
    )
  })

  it('annotates EnergySensorProperties with Electrical Power Measurement only', () => {
    const clusters = new Set(
      EnergySensorPropertiesSchema.fields.map((f) => getOption(f, matter_cluster_id)),
    )
    expect([...clusters]).toEqual([0x0090])
  })
})

describe('device type resolution', () => {
  it('resolves no properties case for a device type the schema does not model', () => {
    expect(propertiesCaseForDeviceType(0x0106)).toBeNull()
  })

  it('resolves no properties case for device type 0', () => {
    expect(propertiesCaseForDeviceType(0)).toBeNull()
  })

  it('resolves device type 0x0301 to the thermostat case', () => {
    expect(propertiesCaseForDeviceType(0x0301)).toBe('thermostat')
  })

  it('resolves device type 0x0101 to dimmable_light, not a plug-in unit', () => {
    expect(propertiesCaseForDeviceType(0x0101)).toBe('dimmable_light')
  })

  it('does not model the Dimmable Plug-In Unit device type 0x010B', () => {
    expect(propertiesCaseForDeviceType(0x010b)).toBeNull()
  })

  it('annotates every non-vendor properties case with a device type', () => {
    const oneof = EndpointSchema.oneofs.find((o) => o.name === 'properties')
    const unannotated = (oneof?.fields ?? [])
      .filter(
        (f) =>
          f.fieldKind === 'message' &&
          f.message.file.proto.package.startsWith('kusinta.iot.device.') &&
          getOption(f.message, matter_device_type).length === 0,
      )
      .map((f) => f.name)
    expect(unannotated).toEqual([])
  })

  it('annotates no device type on the vendor extension case', () => {
    const homematic = EndpointSchema.fields.find((f) => f.name === 'hm_thermostat')
    expect(getOption(homematic.message, matter_device_type)).toEqual([])
  })

  it('never maps one device type to more than one properties case', () => {
    const oneof = EndpointSchema.oneofs.find((o) => o.name === 'properties')
    const deviceTypes = (oneof?.fields ?? []).flatMap((f) =>
      f.fieldKind === 'message' ? getOption(f.message, matter_device_type) : [],
    )
    expect(deviceTypes.length).toBe(new Set(deviceTypes).size)
  })
})
