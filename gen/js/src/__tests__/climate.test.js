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
  RoomHistorySchema,
  RoomHistoryResolution,
  ClimateExplanationKind,
  ClimateExplanationSubject,
  RoomPlanning,
  OuterLimitKind,
  OuterLimitsCoverage,
} from '../kusinta/iot/climate/v1/climate_pb.js'
import {
  ConfigureRoomClimateSchema,
  GetRoomHistorySchema,
  SetInnerRoomLimitsSchema,
  RoomSensorsSchema,
  ManagementRequestSchema,
} from '../kusinta/iot/webrtc/v1/management_pb.js'
import { Role } from '../kusinta/iot/access/v1/roles_pb.js'
import {
  GatewayMessageSchema,
  ManagementResultSchema,
} from '../kusinta/iot/webrtc/v1/envelope_pb.js'

const ROOM = { value: 'room-1' }

/**
 * @template {import('@bufbuild/protobuf').DescMessage} T
 * @param {T} schema
 * @param {import('@bufbuild/protobuf').MessageInitShape<T>} init
 */
const onTheWire = (schema, init) => fromBinary(schema, toBinary(schema, create(schema, init)))

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

describe('why a room is where it is', () => {
  it('has no explanations when nothing beyond the target needs explaining', () => {
    expect(create(RoomClimateSchema, { spaceId: ROOM }).explanations).toEqual([])
  })

  it('keeps explanations in the order sent, most significant first', () => {
    const decoded = onTheWire(RoomClimateSchema, {
      spaceId: ROOM,
      explanations: [
        { kind: ClimateExplanationKind.HOT_WATER_PRIORITY },
        { kind: ClimateExplanationKind.PRICE_HIGH },
      ],
    })
    expect(decoded.explanations.map((e) => e.kind)).toEqual([
      ClimateExplanationKind.HOT_WATER_PRIORITY,
      ClimateExplanationKind.PRICE_HIGH,
    ])
  })

  it('names what a cause holds back when it is not the room’s heating as a whole', () => {
    const decoded = onTheWire(RoomClimateSchema, {
      spaceId: ROOM,
      explanations: [{ kind: ClimateExplanationKind.PRICE_HIGH, subject: ClimateExplanationSubject.FLOOR_ZONE }],
    })
    expect(decoded.explanations[0].subject).toBe(ClimateExplanationSubject.FLOOR_ZONE)
  })

  it('names the room’s heating as a whole as a subject of its own, not the default', () => {
    const decoded = onTheWire(RoomClimateSchema, {
      spaceId: ROOM,
      explanations: [{ kind: ClimateExplanationKind.PRICE_HIGH, subject: ClimateExplanationSubject.ROOM }],
    })
    expect(decoded.explanations[0].subject).toBe(ClimateExplanationSubject.ROOM)
  })

  it('carries when an explanation ends', () => {
    const decoded = onTheWire(RoomClimateSchema, {
      spaceId: ROOM,
      explanations: [{ kind: ClimateExplanationKind.PRE_HEAT, endsAt: timestampFromMs(1_800_000_000_000) }],
    })
    expect(decoded.explanations[0].endsAt?.seconds).toBe(1_800_000_000n)
  })

  it('says the room is not planned for', () => {
    const decoded = onTheWire(RoomClimateSchema, { spaceId: ROOM, planning: RoomPlanning.NOT_PLANNED })
    expect(decoded.planning).toBe(RoomPlanning.NOT_PLANNED)
  })

  it('carries the comfort band in centidegrees', () => {
    const decoded = onTheWire(RoomClimateSchema, { spaceId: ROOM, comfortBandLowCentidegrees: 2000, comfortBandHighCentidegrees: 2250 })
    expect([decoded.comfortBandLowCentidegrees, decoded.comfortBandHighCentidegrees]).toEqual([2000, 2250])
  })

  it('leaves the comfort band absent rather than 0 °C when there is none', () => {
    const room = create(RoomClimateSchema, { spaceId: ROOM })
    expect([room.comfortBandLowCentidegrees, room.comfortBandHighCentidegrees]).toEqual([undefined, undefined])
  })

  it('says until when a person’s target holds', () => {
    const decoded = onTheWire(RoomClimateSchema, { spaceId: ROOM, targetHeldUntil: timestampFromMs(1_800_000_000_000) })
    expect(decoded.targetHeldUntil?.seconds).toBe(1_800_000_000n)
  })

  it('leaves the hold absent when the target holds until somebody changes it', () => {
    expect(create(RoomClimateSchema, { spaceId: ROOM }).targetHeldUntil).toBeUndefined()
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
      decoded.floorHeatingSeconds,
    ]).toEqual([undefined, undefined, undefined, undefined, undefined, undefined])
  })

  it('round-trips a bucket\'s readings', () => {
    const sample = create(RoomHistorySampleSchema, {
      at: timestampFromMs(1_800_000_000_000),
      measuredCentidegrees: 2087,
      targetCentidegrees: 2100,
      effectiveTargetCentidegrees: 1700,
      valveOpenPermille: 420,
      valveOpenSeconds: 540,
      floorHeatingSeconds: 600,
    })
    const decoded = fromBinary(RoomHistorySampleSchema, toBinary(RoomHistorySampleSchema, sample))
    expect([
      decoded.measuredCentidegrees,
      decoded.targetCentidegrees,
      decoded.effectiveTargetCentidegrees,
      decoded.valveOpenPermille,
      decoded.valveOpenSeconds,
      decoded.floorHeatingSeconds,
    ]).toEqual([2087, 2100, 1700, 420, 540, 600])
  })

  it('is given in quarter hours or hours', () => {
    expect([RoomHistoryResolution.UNSPECIFIED, RoomHistoryResolution.QUARTER_HOUR, RoomHistoryResolution.HOUR]).toEqual([
      0, 1, 2,
    ])
  })

  it('names the resolution a request asks for', () => {
    const request = create(GetRoomHistorySchema, {
      roomId: ROOM,
      resolution: RoomHistoryResolution.HOUR,
    })
    const decoded = fromBinary(GetRoomHistorySchema, toBinary(GetRoomHistorySchema, request))
    expect(decoded.resolution).toBe(RoomHistoryResolution.HOUR)
  })

  it('says the resolution its samples are given in', () => {
    const history = create(RoomHistorySchema, {
      roomId: ROOM,
      resolution: RoomHistoryResolution.QUARTER_HOUR,
    })
    const decoded = fromBinary(RoomHistorySchema, toBinary(RoomHistorySchema, history))
    expect(decoded.resolution).toBe(RoomHistoryResolution.QUARTER_HOUR)
  })

  it('carries the range an answer covers apart from how far back it is kept', () => {
    const history = create(RoomHistorySchema, {
      roomId: ROOM,
      keptFrom: timestampFromMs(1_780_000_000_000),
      coveredFrom: timestampFromMs(1_797_321_600_000),
      coveredTo: timestampFromMs(1_800_000_000_000),
    })
    const decoded = fromBinary(RoomHistorySchema, toBinary(RoomHistorySchema, history))
    expect([decoded.keptFrom?.seconds, decoded.coveredFrom?.seconds, decoded.coveredTo?.seconds]).toEqual([
      1_780_000_000n,
      1_797_321_600n,
      1_800_000_000n,
    ])
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

describe('comfort limits', () => {
  it('leaves an outer bound nobody set absent rather than 0 °C', () => {
    const decoded = onTheWire(RoomClimateSchema, { spaceId: ROOM, outerLimits: { min: { centidegrees: 1800 } } })
    expect(decoded.outerLimits?.max).toBeUndefined()
  })

  it('carries each outer bound with the role that set it and when', () => {
    const decoded = onTheWire(RoomClimateSchema, {
      spaceId: ROOM,
      outerLimits: {
        awayMin: { centidegrees: 1500, setByRole: Role.GATEWAY_ADMIN, setAt: timestampFromMs(1_790_000_000_000) },
      },
    })
    const awayMin = decoded.outerLimits?.awayMin
    expect([awayMin?.centidegrees, awayMin?.setByRole, Number(awayMin?.setAt?.seconds)]).toEqual([
      1500,
      Role.GATEWAY_ADMIN,
      1_790_000_000,
    ])
  })

  it('records the threshold a minimum was accepted below', () => {
    const decoded = onTheWire(RoomClimateSchema, {
      spaceId: ROOM,
      outerLimits: { min: { centidegrees: 1600 }, minAcceptedThresholdCentidegrees: 1800 },
    })
    expect(decoded.outerLimits?.minAcceptedThresholdCentidegrees).toBe(1800)
  })

  it('leaves the threshold absent while no acceptance was needed', () => {
    const decoded = onTheWire(RoomClimateSchema, { spaceId: ROOM, outerLimits: { min: { centidegrees: 1900 } } })
    expect(decoded.outerLimits?.minAcceptedThresholdCentidegrees).toBeUndefined()
  })

  it('carries the household’s inner limits apart from the outer ones', () => {
    const decoded = onTheWire(RoomClimateSchema, {
      spaceId: ROOM,
      outerLimits: { max: { centidegrees: 2400 } },
      innerLimits: { maxCentidegrees: 2200 },
    })
    expect([decoded.innerLimits?.maxCentidegrees, decoded.outerLimits?.max?.centidegrees]).toEqual([2200, 2400])
  })

  it('says which outer bound clamps the room and where it would be held without it', () => {
    const decoded = onTheWire(RoomClimateSchema, {
      spaceId: ROOM,
      outerLimitClamp: { limit: OuterLimitKind.MAX, unclampedCentidegrees: 2500 },
    })
    expect([decoded.outerLimitClamp?.limit, decoded.outerLimitClamp?.unclampedCentidegrees]).toEqual([
      OuterLimitKind.MAX,
      2500,
    ])
  })

  it('says how many of a room’s heating outputs the outer limits bind', () => {
    const decoded = onTheWire(RoomClimateSchema, { spaceId: ROOM, outerLimitsCoverage: OuterLimitsCoverage.SOME })
    expect(decoded.outerLimitsCoverage).toBe(OuterLimitsCoverage.SOME)
  })

  it('says outer limits are kept, with none set, by an empty message rather than none', () => {
    const decoded = onTheWire(RoomClimateSchema, { spaceId: ROOM, outerLimits: {} })
    expect(decoded.outerLimits).toBeDefined()
  })

  it('leaves outer limits unset from a gateway that predates them', () => {
    const decoded = onTheWire(RoomClimateSchema, { spaceId: ROOM })
    expect(decoded.outerLimits).toBeUndefined()
  })

  it('names the devices whose outputs the outer limits bind', () => {
    const decoded = onTheWire(RoomClimateSchema, {
      spaceId: ROOM,
      outerLimitsCoverage: OuterLimitsCoverage.SOME,
      outerBoundDeviceIds: [{ value: 'lora:valve-1' }],
    })
    expect(decoded.outerBoundDeviceIds.map((d) => d.value)).toEqual(['lora:valve-1'])
  })

  it('tells a move-in target apart from a target a person set', () => {
    const decoded = onTheWire(TargetChangeSchema, { by: { case: 'moveIn', value: true } })
    expect(decoded.by).toEqual({ case: 'moveIn', value: true })
  })

  it('leaves the away minimum alone when a configuration does not name it', () => {
    const decoded = onTheWire(ConfigureRoomClimateSchema, { roomId: ROOM, limits: { minCentidegrees: 1800 } })
    expect(decoded.awayMin).toBeUndefined()
  })

  it('removes the away minimum when it is named without a value', () => {
    const decoded = onTheWire(ConfigureRoomClimateSchema, { roomId: ROOM, awayMin: {} })
    expect(decoded.awayMin).toBeDefined()
    expect(decoded.awayMin?.centidegrees).toBeUndefined()
  })

  it('sets the move-in target alone', () => {
    const decoded = onTheWire(ConfigureRoomClimateSchema, { roomId: ROOM, moveInTarget: { centidegrees: 2100 } })
    expect([decoded.moveInTarget?.centidegrees, decoded.limits]).toEqual([2100, undefined])
  })

  it('carries the acceptance of a minimum below the threshold', () => {
    const decoded = onTheWire(ConfigureRoomClimateSchema, { roomId: ROOM, limits: { minCentidegrees: 1600 }, acceptBelowThreshold: true })
    expect(decoded.acceptBelowThreshold).toBe(true)
  })

  it('sets a room’s inner limits as a management request', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: {
        case: 'setInnerRoomLimits',
        value: { roomId: ROOM, limits: { minCentidegrees: 1900, maxCentidegrees: 2300 } },
      },
    })
    expect(decoded.request).toMatchObject({
      case: 'setInnerRoomLimits',
      value: { limits: { minCentidegrees: 1900, maxCentidegrees: 2300 } },
    })
  })

  it('removes an inner bound by leaving it unset', () => {
    const decoded = onTheWire(SetInnerRoomLimitsSchema, { roomId: ROOM, limits: { maxCentidegrees: 2300 } })
    expect(decoded.limits?.minCentidegrees).toBeUndefined()
  })
})
