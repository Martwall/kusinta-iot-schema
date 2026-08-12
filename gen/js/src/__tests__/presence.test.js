// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
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
  TemperatureSensorPropertiesSchema,
  ThermostatPropertiesSchema,
  WindowCoveringPropertiesSchema,
} from '../kusinta/iot/device/v1/properties_pb.js'
import { HmThermostatPropsSchema } from '../kusinta/iot/vendor/homematic/v1/homematic_pb.js'

// FeatureSet_FieldPresence.EXPLICIT
const EXPLICIT = 1

const PROPERTIES_MESSAGES = [
  ThermostatPropertiesSchema,
  TemperatureSensorPropertiesSchema,
  HumiditySensorPropertiesSchema,
  OccupancySensorPropertiesSchema,
  ContactSensorPropertiesSchema,
  WindowCoveringPropertiesSchema,
  DoorLockPropertiesSchema,
  OnOffLightPropertiesSchema,
  DimmableLightPropertiesSchema,
  ColorTemperatureLightPropertiesSchema,
  EnergySensorPropertiesSchema,
  PressureSensorPropertiesSchema,
  HmThermostatPropsSchema,
]

describe('contact state, where false is the alarm reading', () => {
  it('leaves an unreported contact state undefined', () => {
    const p = create(ContactSensorPropertiesSchema, {})
    expect(p.stateValue).toBeUndefined()
  })

  it('round-trips a reported open contact as a value, not an absence', () => {
    const p = create(ContactSensorPropertiesSchema, { stateValue: false })
    const decoded = fromBinary(ContactSensorPropertiesSchema, toBinary(ContactSensorPropertiesSchema, p))
    expect(decoded.stateValue).toBe(false)
  })

  it('does not encode an unreported contact state the same as an open one', () => {
    const unreported = toBinary(ContactSensorPropertiesSchema, create(ContactSensorPropertiesSchema, {}))
    const open = toBinary(
      ContactSensorPropertiesSchema,
      create(ContactSensorPropertiesSchema, { stateValue: false }),
    )
    expect(unreported).not.toEqual(open)
  })
})

describe('zero as a real reading', () => {
  it('distinguishes 0.00°C from an unreported temperature', () => {
    const p = create(ThermostatPropertiesSchema, { localTemperature: 0 })
    const decoded = fromBinary(ThermostatPropertiesSchema, toBinary(ThermostatPropertiesSchema, p))
    expect(decoded.localTemperature).toBe(0)
  })

  it('leaves an unreported temperature undefined', () => {
    expect(create(ThermostatPropertiesSchema, {}).localTemperature).toBeUndefined()
  })

  it('distinguishes SystemMode Off from an unreported mode', () => {
    const p = create(ThermostatPropertiesSchema, { systemMode: 0 })
    const decoded = fromBinary(ThermostatPropertiesSchema, toBinary(ThermostatPropertiesSchema, p))
    expect(decoded.systemMode).toBe(0)
  })

  it('distinguishes a dimmer at level 0 from an unreported level', () => {
    const p = create(DimmableLightPropertiesSchema, { currentLevel: 0 })
    const decoded = fromBinary(DimmableLightPropertiesSchema, toBinary(DimmableLightPropertiesSchema, p))
    expect(decoded.currentLevel).toBe(0)
  })

  it('distinguishes LockState NotFullyLocked from an unreported lock state', () => {
    const p = create(DoorLockPropertiesSchema, { lockState: 0 })
    const decoded = fromBinary(DoorLockPropertiesSchema, toBinary(DoorLockPropertiesSchema, p))
    expect(decoded.lockState).toBe(0)
  })

  it('distinguishes unoccupied from an unreported occupancy', () => {
    const p = create(OccupancySensorPropertiesSchema, { occupancy: 0 })
    const decoded = fromBinary(OccupancySensorPropertiesSchema, toBinary(OccupancySensorPropertiesSchema, p))
    expect(decoded.occupancy).toBe(0)
  })

  it('distinguishes idle power from an unreported power', () => {
    const p = create(EnergySensorPropertiesSchema, { activePower: 0n })
    const decoded = fromBinary(EnergySensorPropertiesSchema, toBinary(EnergySensorPropertiesSchema, p))
    expect(decoded.activePower).toBe(0n)
  })

  it('distinguishes boost mode off from an unreported boost mode', () => {
    const p = create(HmThermostatPropsSchema, { boostMode: false })
    const decoded = fromBinary(HmThermostatPropsSchema, toBinary(HmThermostatPropsSchema, p))
    expect(decoded.boostMode).toBe(false)
  })
})

describe('schema-wide invariant', () => {
  it('gives every stream-assembled property field explicit presence', () => {
    const implicit = PROPERTIES_MESSAGES.flatMap((schema) =>
      schema.fields.filter((f) => f.presence !== EXPLICIT).map((f) => `${schema.name}.${f.name}`),
    )
    expect(implicit).toEqual([])
  })
})
