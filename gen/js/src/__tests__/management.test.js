// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  ManagementRequestSchema,
  CreateSpaceSchema,
  UpdateSpaceSchema,
  DeleteSpaceSchema,
  AssignUserToSpaceSchema,
  RemoveUserFromSpaceSchema,
  PlaceDeviceInSpaceSchema,
  RemoveDeviceFromSpaceSchema,
  ClaimDeviceSchema,
  ReleaseDeviceSchema,
  ListSpacesSchema,
  SpaceTreeSchema,
  ManagementAckSchema,
} from '../kusinta/iot/webrtc/v1/management_pb.js'
import {
  AppMessageSchema,
  GatewayMessageSchema,
  ManagementResultSchema,
  GatewayErrorCode,
} from '../kusinta/iot/webrtc/v1/envelope_pb.js'
import { SpaceType, DeviceOwnershipType } from '../kusinta/iot/common/v1/types_pb.js'

/**
 * Round-trips a message through the wire so assertions read decoded bytes rather
 * than the literal they were built from.
 * @template T
 * @param {import('@bufbuild/protobuf').GenMessage<T>} schema
 * @param {import('@bufbuild/protobuf').MessageInitShape<import('@bufbuild/protobuf').GenMessage<T>>} init
 * @returns {T}
 */
const onTheWire = (schema, init) => fromBinary(schema, toBinary(schema, create(schema, init)))

describe('ManagementRequest', () => {
  it('round-trips create_space with its parent', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: {
        case: 'createSpace',
        value: {
          spaceType: SpaceType.APARTMENT,
          name: 'Apartment 2',
          floor: 1,
          parentSpaceId: { value: 'space-building' },
        },
      },
    })

    expect(decoded.request.case).toBe('createSpace')
    expect(decoded.request.value.name).toBe('Apartment 2')
    expect(decoded.request.value.parentSpaceId?.value).toBe('space-building')
  })

  it('round-trips a top-level create_space with no parent', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'createSpace', value: { spaceType: SpaceType.BUILDING, name: 'Storgatan 1' } },
    })

    expect(decoded.request.value.parentSpaceId).toBeUndefined()
  })

  it('distinguishes an unset update field from one cleared to empty', () => {
    const decoded = onTheWire(UpdateSpaceSchema, {
      spaceId: { value: 'space-1' },
      name: '',
    })

    expect(decoded.name).toBe('')
    expect(decoded.description).toBeUndefined()
  })

  it('round-trips a reparent to a new parent', () => {
    const decoded = onTheWire(UpdateSpaceSchema, {
      spaceId: { value: 'space-1' },
      parentChange: { case: 'parentSpaceId', value: { value: 'space-floor-2' } },
    })

    expect(decoded.parentChange.case).toBe('parentSpaceId')
    expect(decoded.parentChange.value.value).toBe('space-floor-2')
  })

  it('round-trips a detach to top level', () => {
    const decoded = onTheWire(UpdateSpaceSchema, {
      spaceId: { value: 'space-1' },
      parentChange: { case: 'detach', value: true },
    })

    expect(decoded.parentChange.case).toBe('detach')
  })

  it('round-trips delete_space with cascade', () => {
    const decoded = onTheWire(DeleteSpaceSchema, { spaceId: { value: 'space-1' }, cascade: true })

    expect(decoded.cascade).toBe(true)
  })

  it('round-trips assign_user_to_space', () => {
    const decoded = onTheWire(AssignUserToSpaceSchema, {
      spaceId: { value: 'space-1' },
      userId: { value: 'user-a' },
    })

    expect(decoded.spaceId?.value).toBe('space-1')
    expect(decoded.userId?.value).toBe('user-a')
  })

  it('round-trips remove_user_from_space', () => {
    const decoded = onTheWire(RemoveUserFromSpaceSchema, {
      spaceId: { value: 'space-1' },
      userId: { value: 'user-a' },
    })

    expect(decoded.userId?.value).toBe('user-a')
  })

  it('round-trips place_device_in_space', () => {
    const decoded = onTheWire(PlaceDeviceInSpaceSchema, {
      deviceId: { value: 'lamp-1' },
      spaceId: { value: 'space-1' },
    })

    expect(decoded.deviceId?.value).toBe('lamp-1')
    expect(decoded.spaceId?.value).toBe('space-1')
  })

  it('round-trips remove_device_from_space', () => {
    const decoded = onTheWire(RemoveDeviceFromSpaceSchema, {
      deviceId: { value: 'lamp-1' },
      spaceId: { value: 'space-1' },
    })

    expect(decoded.deviceId?.value).toBe('lamp-1')
  })

  it('round-trips claim_device carrying its possession proof', () => {
    const decoded = onTheWire(ClaimDeviceSchema, {
      deviceId: { value: 'lamp-1' },
      ownership: DeviceOwnershipType.RESIDENT,
      initialSpaceId: { value: 'space-apartment-2' },
      possessionProof: 'SN-04412-XZ',
    })

    expect(decoded.ownership).toBe(DeviceOwnershipType.RESIDENT)
    expect(decoded.possessionProof).toBe('SN-04412-XZ')
    expect(decoded.initialSpaceId?.value).toBe('space-apartment-2')
  })

  it('round-trips release_device', () => {
    const decoded = onTheWire(ReleaseDeviceSchema, { deviceId: { value: 'lamp-1' } })

    expect(decoded.deviceId?.value).toBe('lamp-1')
  })

  it('round-trips list_spaces rooted at a space', () => {
    const decoded = onTheWire(ListSpacesSchema, { rootSpaceId: { value: 'space-building' } })

    expect(decoded.rootSpaceId?.value).toBe('space-building')
  })

  it('round-trips list_spaces with no root, meaning everything reachable', () => {
    const decoded = onTheWire(ListSpacesSchema, {})

    expect(decoded.rootSpaceId).toBeUndefined()
  })
})

describe('SpaceTree', () => {
  it('round-trips a flat list whose structure is carried by parent_space_id', () => {
    const decoded = onTheWire(SpaceTreeSchema, {
      spaces: [
        { spaceId: { value: 'space-building' }, spaceType: SpaceType.BUILDING, name: 'Storgatan 1' },
        {
          spaceId: { value: 'space-apt-2' },
          spaceType: SpaceType.APARTMENT,
          name: 'Apartment 2',
          parentSpaceId: { value: 'space-building' },
        },
      ],
    })

    expect(decoded.spaces).toHaveLength(2)
    expect(decoded.spaces[0].parentSpaceId).toBeUndefined()
    expect(decoded.spaces[1].parentSpaceId?.value).toBe('space-building')
  })
})

describe('ManagementResult', () => {
  it('correlates to the request that produced it', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      inReplyTo: 'msg-42',
      result: { case: 'ack', value: {} },
    })

    expect(decoded.inReplyTo).toBe('msg-42')
    expect(decoded.result.case).toBe('ack')
  })

  it('round-trips a refusal as a GatewayError', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      inReplyTo: 'msg-42',
      result: {
        case: 'error',
        value: { code: GatewayErrorCode.NOT_ENTITLED, message: 'Not entitled to this space' },
      },
    })

    expect(decoded.result.case).toBe('error')
    expect(decoded.result.value.code).toBe(GatewayErrorCode.NOT_ENTITLED)
  })

  it('round-trips a created space', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      inReplyTo: 'msg-42',
      result: { case: 'space', value: { spaceId: { value: 'space-new' }, name: 'Apartment 2' } },
    })

    expect(decoded.result.case).toBe('space')
    expect(decoded.result.value.name).toBe('Apartment 2')
  })

  it('round-trips a space tree', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      inReplyTo: 'msg-42',
      result: { case: 'spaceTree', value: { spaces: [{ spaceId: { value: 'space-1' } }] } },
    })

    expect(decoded.result.case).toBe('spaceTree')
    expect(decoded.result.value.spaces).toHaveLength(1)
  })
})

describe('management on the envelopes', () => {
  it('carries a ManagementRequest as an AppMessage payload', () => {
    const decoded = onTheWire(AppMessageSchema, {
      messageId: 'msg-42',
      payload: {
        case: 'management',
        value: { request: { case: 'claimDevice', value: { deviceId: { value: 'lamp-1' } } } },
      },
    })

    expect(decoded.payload.case).toBe('management')
    expect(decoded.payload.value.request.case).toBe('claimDevice')
  })

  it('carries a ManagementResult as a GatewayMessage payload', () => {
    const decoded = onTheWire(GatewayMessageSchema, {
      messageId: 'msg-43',
      payload: { case: 'managementResult', value: { inReplyTo: 'msg-42', result: { case: 'ack', value: {} } } },
    })

    expect(decoded.payload.case).toBe('managementResult')
    expect(decoded.payload.value.inReplyTo).toBe('msg-42')
  })

  it('leaves the existing AppMessage payload cases decodable', () => {
    const decoded = onTheWire(AppMessageSchema, {
      messageId: 'msg-44',
      payload: { case: 'subscribe', value: { deviceIds: [{ value: 'dev-1' }] } },
    })

    expect(decoded.payload.case).toBe('subscribe')
  })

  it('does not collide with the ManagementAck message', () => {
    const decoded = onTheWire(ManagementAckSchema, {})

    expect(decoded.$typeName).toBe('kusinta.iot.webrtc.v1.ManagementAck')
  })
})
