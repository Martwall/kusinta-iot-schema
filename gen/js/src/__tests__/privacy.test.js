// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { MembershipRelation, Role } from '../kusinta/iot/access/v1/roles_pb.js'
import { ServiceSignal, DeviceAclSchema } from '../kusinta/iot/access/v1/acl_pb.js'
import {
  ClimateSummaryPeriod,
  ClimateSummaryWeighting,
  RoomClimateSchema,
} from '../kusinta/iot/climate/v1/climate_pb.js'
import { DeviceEventSchema } from '../kusinta/iot/device/v1/device_event_pb.js'
import { SpaceSchema } from '../kusinta/iot/space/v1/space_pb.js'
import { ManagementRequestSchema } from '../kusinta/iot/webrtc/v1/management_pb.js'
import { GatewayMessageSchema, ManagementResultSchema } from '../kusinta/iot/webrtc/v1/envelope_pb.js'
import {
  DeviceStateSnapshotSchema,
  ServiceFault,
  ServiceStatusSchema,
} from '../kusinta/iot/webrtc/v1/device_state_pb.js'

const APARTMENT = { value: 'apt-101' }

describe('membership relation', () => {
  it('carries the relation an assignment states', () => {
    const request = create(ManagementRequestSchema, {
      request: {
        case: 'assignUserToSpace',
        value: { spaceId: APARTMENT, userId: { value: 'u-1' }, relation: MembershipRelation.SERVICE },
      },
    })
    const decoded = fromBinary(ManagementRequestSchema, toBinary(ManagementRequestSchema, request))
    expect(decoded.request).toMatchObject({
      case: 'assignUserToSpace',
      value: { relation: MembershipRelation.SERVICE },
    })
  })

  it('lists a space’s members with their relations', () => {
    const space = create(SpaceSchema, {
      spaceId: APARTMENT,
      members: [{ userId: { value: 'u-1' }, relation: MembershipRelation.RESIDENT }],
    })
    const decoded = fromBinary(SpaceSchema, toBinary(SpaceSchema, space))
    expect(decoded.members[0].relation).toBe(MembershipRelation.RESIDENT)
  })

  it('marks a device ACL as a service view', () => {
    const acl = create(DeviceAclSchema, { deviceId: { value: 'etrv-1' }, relation: MembershipRelation.SERVICE })
    const decoded = fromBinary(DeviceAclSchema, toBinary(DeviceAclSchema, acl))
    expect(decoded.relation).toBe(MembershipRelation.SERVICE)
  })
})

describe('privacy disclosure', () => {
  it('answers a disclosure request as a management result', () => {
    const result = create(ManagementResultSchema, {
      inReplyTo: 'm-1',
      result: {
        case: 'privacyDisclosure',
        value: {
          spaceId: APARTMENT,
          serviceParties: [
            {
              role: Role.TECHNICIAN,
              signals: [
                ServiceSignal.REACHABILITY,
                ServiceSignal.BATTERY,
                ServiceSignal.RADIO_LINK,
                ServiceSignal.FIRMWARE,
                ServiceSignal.FAULT,
                ServiceSignal.FILING,
                ServiceSignal.ROOM_SETUP,
                ServiceSignal.LINKS,
              ],
            },
          ],
          climateSummaryPeriod: ClimateSummaryPeriod.WEEK,
        },
      },
    })
    const decoded = fromBinary(ManagementResultSchema, toBinary(ManagementResultSchema, result))
    expect(decoded.result.case).toBe('privacyDisclosure')
  })
})

describe('withheld room state', () => {
  it('keeps the configuration of a room whose state is withheld', () => {
    const room = create(RoomClimateSchema, { spaceId: { value: 'room-1' }, stateWithheld: true, maxCentidegrees: 2400 })
    const decoded = fromBinary(RoomClimateSchema, toBinary(RoomClimateSchema, room))
    expect([decoded.stateWithheld, decoded.targetCentidegrees, decoded.maxCentidegrees]).toEqual([
      true,
      undefined,
      2400,
    ])
  })
})

describe('apartment climate summary', () => {
  it('answers a summary request with its periods and their coverage', () => {
    const result = create(ManagementResultSchema, {
      inReplyTo: 'm-1',
      result: {
        case: 'apartmentClimateSummary',
        value: {
          apartmentId: APARTMENT,
          period: ClimateSummaryPeriod.WEEK,
          weighting: ClimateSummaryWeighting.ROOMS_EQUAL,
          periods: [{ measuredCentidegrees: 2140, measuredCoveragePermille: 870, roomsMeasured: 3, rooms: 4 }],
        },
      },
    })
    const decoded = fromBinary(ManagementResultSchema, toBinary(ManagementResultSchema, result))
    expect(decoded.result).toMatchObject({
      case: 'apartmentClimateSummary',
      value: { periods: [{ measuredCentidegrees: 2140, measuredCoveragePermille: 870, roomsMeasured: 3, rooms: 4 }] },
    })
  })
})

describe('event gaps', () => {
  it('names the previous event the user was due', () => {
    const event = create(DeviceEventSchema, { eventNumber: 17n, previousEventNumber: 12n })
    const decoded = fromBinary(DeviceEventSchema, toBinary(DeviceEventSchema, event))
    expect(decoded.previousEventNumber).toBe(12n)
  })

  it('says when the gateway itself missed events before it', () => {
    const event = create(DeviceEventSchema, { eventNumber: 17n, previousEventNumber: 12n, followsLoss: true })
    const decoded = fromBinary(DeviceEventSchema, toBinary(DeviceEventSchema, event))
    expect(decoded.followsLoss).toBe(true)
  })

  it('leaves the previous event unset when the user was due none since the gateway started', () => {
    const decoded = fromBinary(DeviceEventSchema, toBinary(DeviceEventSchema, create(DeviceEventSchema, { eventNumber: 17n })))
    expect(decoded.previousEventNumber).toBeUndefined()
  })
})

describe('service status', () => {
  it('leaves the battery percent unset for a device that does not report its charge', () => {
    const decoded = fromBinary(ServiceStatusSchema, toBinary(ServiceStatusSchema, create(ServiceStatusSchema, {})))
    expect(decoded.batteryPercent).toBeUndefined()
  })

  it('lists the faults a device reports', () => {
    const status = create(ServiceStatusSchema, { faults: [ServiceFault.TAMPER] })
    const decoded = fromBinary(ServiceStatusSchema, toBinary(ServiceStatusSchema, status))
    expect(decoded.faults).toEqual([ServiceFault.TAMPER])
  })

  it('carries a status for each device seen in a snapshot', () => {
    const snapshot = create(DeviceStateSnapshotSchema, { serviceStatuses: [{ deviceId: { value: 'etrv-1' } }] })
    const decoded = fromBinary(DeviceStateSnapshotSchema, toBinary(DeviceStateSnapshotSchema, snapshot))
    expect(decoded.serviceStatuses[0].deviceId?.value).toBe('etrv-1')
  })

  it('pushes changed statuses to the app', () => {
    const message = create(GatewayMessageSchema, {
      payload: { case: 'serviceStatusChanged', value: { statuses: [{ batteryLow: true }] } },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, message))
    expect(decoded.payload.case).toBe('serviceStatusChanged')
  })
})
