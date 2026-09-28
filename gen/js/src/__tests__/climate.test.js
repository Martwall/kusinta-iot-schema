import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  RoomClimateSchema,
  TargetChangeSchema,
  ClimateModeKind,
  RoomClimateCondition,
} from '../kusinta/iot/climate/v1/climate_pb.js'
import {
  ConfigureRoomClimateSchema,
  RoomSensorsSchema,
} from '../kusinta/iot/webrtc/v1/management_pb.js'
import { GatewayMessageSchema } from '../kusinta/iot/webrtc/v1/envelope_pb.js'

const ROOM = { value: 'room-1' }

describe('room climate', () => {
  it('leaves an unset target absent rather than 0 °C', () => {
    const room = create(RoomClimateSchema, { spaceId: ROOM })
    const decoded = fromBinary(RoomClimateSchema, toBinary(RoomClimateSchema, room))
    expect(decoded.targetCentidegrees).toBeUndefined()
  })

  it('names the device a target was turned at by hand', () => {
    const change = create(TargetChangeSchema, {
      by: { case: 'device', value: { value: 'lora:vicki' } },
    })
    const decoded = fromBinary(TargetChangeSchema, toBinary(TargetChangeSchema, change))
    expect(decoded.by.case).toBe('device')
  })

  it('reports a lost sensor as a condition of its own', () => {
    const room = create(RoomClimateSchema, {
      spaceId: ROOM,
      condition: RoomClimateCondition.SENSOR_LOST,
    })
    const decoded = fromBinary(RoomClimateSchema, toBinary(RoomClimateSchema, room))
    expect(decoded.condition).toBe(RoomClimateCondition.SENSOR_LOST)
  })

  it('tells leaving the sensors alone apart from setting none', () => {
    const untouched = create(ConfigureRoomClimateSchema, { roomId: ROOM })
    const cleared = create(ConfigureRoomClimateSchema, {
      roomId: ROOM,
      sensors: create(RoomSensorsSchema),
    })
    expect([untouched.sensors, cleared.sensors?.sensorIds]).toEqual([undefined, []])
  })

  it('pushes a room change on the gateway message', () => {
    const message = create(GatewayMessageSchema, {
      payload: {
        case: 'roomClimateChanged',
        value: { room: { spaceId: ROOM, targetCentidegrees: 2000 } },
      },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, message))
    expect(decoded.payload.case).toBe('roomClimateChanged')
  })

  it('switches a mode off with kind UNSPECIFIED', () => {
    expect(ClimateModeKind.UNSPECIFIED).toBe(0)
  })
})
