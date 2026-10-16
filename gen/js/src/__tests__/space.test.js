// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { SpaceType } from '../kusinta/iot/common/v1/types_pb.js'
import { SpaceSchema } from '../kusinta/iot/space/v1/space_pb.js'

describe('Space', () => {
  it('round-trips a building with sub-spaces', () => {
    const building = create(SpaceSchema, {
      spaceId: { value: 'building-1' },
      spaceType: SpaceType.BUILDING,
      name: 'Storgatan 5',
      tenantId: { value: 'tenant-1' },
      gatewayId: { value: 'gw-1' },
      subSpaceIds: [{ value: 'floor-1' }, { value: 'floor-2' }],
    })
    const decoded = fromBinary(SpaceSchema, toBinary(SpaceSchema, building))
    expect(decoded.spaceId?.value).toBe('building-1')
    expect(decoded.spaceType).toBe(SpaceType.BUILDING)
    expect(decoded.name).toBe('Storgatan 5')
    expect(decoded.subSpaceIds).toHaveLength(2)
    expect(decoded.subSpaceIds[0].value).toBe('floor-1')
  })

  it('round-trips an apartment with resident', () => {
    const apt = create(SpaceSchema, {
      spaceId: { value: 'apt-101' },
      spaceType: SpaceType.APARTMENT,
      name: 'Lgh 101',
      floor: 1,
      parentSpaceId: { value: 'floor-1' },
      residentUserId: { value: 'user-resident-1' },
      deviceIds: [{ value: 'therm-1' }, { value: 'temp-sensor-1' }],
    })
    const decoded = fromBinary(SpaceSchema, toBinary(SpaceSchema, apt))
    expect(decoded.spaceType).toBe(SpaceType.APARTMENT)
    expect(decoded.floor).toBe(1)
    expect(decoded.parentSpaceId?.value).toBe('floor-1')
    expect(decoded.residentUserId?.value).toBe('user-resident-1')
    expect(decoded.deviceIds).toHaveLength(2)
  })

  it('round-trips a room', () => {
    const room = create(SpaceSchema, {
      spaceId: { value: 'room-living' },
      spaceType: SpaceType.ROOM,
      name: 'Living Room',
      parentSpaceId: { value: 'apt-101' },
    })
    const decoded = fromBinary(SpaceSchema, toBinary(SpaceSchema, room))
    expect(decoded.spaceType).toBe(SpaceType.ROOM)
    expect(decoded.name).toBe('Living Room')
  })

  it('leaves an unknown time zone empty', () => {
    const space = create(SpaceSchema, { spaceId: { value: 'building-1' } })
    const decoded = fromBinary(SpaceSchema, toBinary(SpaceSchema, space))
    expect(decoded.timeZone).toBe('')
  })

  it('round-trips a building\'s IANA time zone', () => {
    const building = create(SpaceSchema, {
      spaceId: { value: 'building-1' },
      spaceType: SpaceType.BUILDING,
      timeZone: 'Europe/Stockholm',
    })
    const decoded = fromBinary(SpaceSchema, toBinary(SpaceSchema, building))
    expect(decoded.timeZone).toBe('Europe/Stockholm')
  })

  it('names a member as they gave their name', () => {
    const home = create(SpaceSchema, {
      spaceId: { value: 'lgh-1102' },
      members: [{ userId: { value: 'anna' }, name: 'Anna' }],
    })
    const decoded = fromBinary(SpaceSchema, toBinary(SpaceSchema, home))
    expect(decoded.members[0].name).toBe('Anna')
  })

  it('says since when a member holds their membership', () => {
    const home = create(SpaceSchema, {
      spaceId: { value: 'lgh-1102' },
      members: [{ userId: { value: 'anna' }, since: { seconds: 1_790_000_000n } }],
    })
    const decoded = fromBinary(SpaceSchema, toBinary(SpaceSchema, home))
    expect(decoded.members[0].since?.seconds).toBe(1_790_000_000n)
  })
})
