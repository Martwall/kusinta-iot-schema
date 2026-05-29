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
})
