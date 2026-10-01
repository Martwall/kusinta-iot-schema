import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { timestampFromMs } from '@bufbuild/protobuf/wkt'
import {
  RoomClimateSchema,
  TargetChangeSchema,
  ClimateModeKind,
  RoomClimateCondition,
  ClimateModeSchema,
  RoomHistorySampleSchema,
} from '../kusinta/iot/climate/v1/climate_pb.js'
import {
  ConfigureRoomClimateSchema,
  RoomSensorsSchema,
  ManagementRequestSchema,
} from '../kusinta/iot/webrtc/v1/management_pb.js'
import {
  GatewayMessageSchema,
  ManagementResultSchema,
} from '../kusinta/iot/webrtc/v1/envelope_pb.js'

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

  it('leaves warm_from absent on a mode without a warm-up lead', () => {
    const mode = create(ClimateModeSchema, { kind: ClimateModeKind.AWAY })
    const decoded = fromBinary(ClimateModeSchema, toBinary(ClimateModeSchema, mode))
    expect(decoded.warmFrom).toBeUndefined()
  })

  it('round-trips when a holiday\'s setback ends ahead of ends_at', () => {
    const mode = create(ClimateModeSchema, {
      kind: ClimateModeKind.HOLIDAY,
      endsAt: timestampFromMs(1_800_600_000_000),
      warmFrom: timestampFromMs(1_800_589_200_000),
    })
    const decoded = fromBinary(ClimateModeSchema, toBinary(ClimateModeSchema, mode))
    expect(decoded.warmFrom?.seconds).toBe(1_800_589_200n)
  })
})

describe('room history', () => {
  it('asks for a room\'s history as a management request', () => {
    const request = create(ManagementRequestSchema, {
      request: {
        case: 'getRoomHistory',
        value: {
          roomId: ROOM,
          fromTime: timestampFromMs(1_800_000_000_000),
          toTime: timestampFromMs(1_800_086_400_000),
        },
      },
    })
    const decoded = fromBinary(ManagementRequestSchema, toBinary(ManagementRequestSchema, request))
    expect(decoded.request.case).toBe('getRoomHistory')
  })

  it('leaves a bucket\'s missing readings absent rather than zero', () => {
    const sample = create(RoomHistorySampleSchema, { at: timestampFromMs(1_800_000_000_000) })
    const decoded = fromBinary(RoomHistorySampleSchema, toBinary(RoomHistorySampleSchema, sample))
    expect([
      decoded.measuredCentidegrees,
      decoded.targetCentidegrees,
      decoded.effectiveTargetCentidegrees,
      decoded.valveOpenPermille,
      decoded.valveOpenSeconds,
    ]).toEqual([undefined, undefined, undefined, undefined, undefined])
  })

  it('round-trips a bucket\'s readings', () => {
    const sample = create(RoomHistorySampleSchema, {
      at: timestampFromMs(1_800_000_000_000),
      measuredCentidegrees: 2087,
      targetCentidegrees: 2100,
      effectiveTargetCentidegrees: 1700,
      valveOpenPermille: 420,
      valveOpenSeconds: 540,
    })
    const decoded = fromBinary(RoomHistorySampleSchema, toBinary(RoomHistorySampleSchema, sample))
    expect([
      decoded.measuredCentidegrees,
      decoded.targetCentidegrees,
      decoded.effectiveTargetCentidegrees,
      decoded.valveOpenPermille,
      decoded.valveOpenSeconds,
    ]).toEqual([2087, 2100, 1700, 420, 540])
  })

  it('answers with how far back it is kept and its samples', () => {
    const result = create(ManagementResultSchema, {
      inReplyTo: 'm-1',
      result: {
        case: 'roomHistory',
        value: {
          roomId: ROOM,
          keptFrom: timestampFromMs(1_799_000_000_000),
          samples: [{ at: timestampFromMs(1_800_000_000_000) }],
        },
      },
    })
    const decoded = fromBinary(ManagementResultSchema, toBinary(ManagementResultSchema, result))
    expect(decoded.result.case).toBe('roomHistory')
  })
})
