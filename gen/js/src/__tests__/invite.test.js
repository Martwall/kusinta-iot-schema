// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { MembershipRelation } from '../kusinta/iot/access/v1/roles_pb.js'
import {
  InviteSchema,
  SpaceInvitesSchema,
} from '../kusinta/iot/webrtc/v1/invite_pb.js'
import { ManagementRequestSchema } from '../kusinta/iot/webrtc/v1/management_pb.js'
import {
  GatewayMessageSchema,
  ManagementResultSchema,
} from '../kusinta/iot/webrtc/v1/envelope_pb.js'

describe('invites over the session', () => {
  it('asks for an invite bound to an address', () => {
    const request = create(ManagementRequestSchema, {
      request: {
        case: 'createInvite',
        value: {
          spaceId: { value: 'lgh-1102' },
          relation: MembershipRelation.RESIDENT,
          email: 'anna@example.com',
        },
      },
    })
    const decoded = fromBinary(ManagementRequestSchema, toBinary(ManagementRequestSchema, request))
    expect(decoded.request.case === 'createInvite' && decoded.request.value.email).toBe('anna@example.com')
  })

  it('answers with the secrets of a new invite', () => {
    const result = create(ManagementResultSchema, {
      inReplyTo: 'm-1',
      result: {
        case: 'issuedInvite',
        value: { invite: { inviteId: 'inv-1' }, token: 'tKn', code: 'K7QM4RXD' },
      },
    })
    const decoded = fromBinary(ManagementResultSchema, toBinary(ManagementResultSchema, result))
    expect(decoded.result.case === 'issuedInvite' && decoded.result.value.code).toBe('K7QM4RXD')
  })

  it('lists a join request with who asked', () => {
    const invites = create(SpaceInvitesSchema, {
      spaceId: { value: 'lgh-1102' },
      joinRequests: [{ requestId: 'jr-1', userId: { value: 'anna' }, displayName: 'Anna' }],
    })
    const decoded = fromBinary(SpaceInvitesSchema, toBinary(SpaceInvitesSchema, invites))
    expect(decoded.joinRequests.map((r) => r.displayName)).toEqual(['Anna'])
  })

  it('lists a join request with the access end it asks for', () => {
    const invites = create(SpaceInvitesSchema, {
      spaceId: { value: 'bbv-29' },
      joinRequests: [{ requestId: 'jr-1', accessUntil: { seconds: 1_800_000_000n } }],
    })
    const decoded = fromBinary(SpaceInvitesSchema, toBinary(SpaceInvitesSchema, invites))
    expect(decoded.joinRequests[0].accessUntil?.seconds).toBe(1_800_000_000n)
  })

  it('pushes a space whose invites changed', () => {
    const message = create(GatewayMessageSchema, {
      messageId: 'g-1',
      payload: { case: 'spaceInvites', value: { spaceId: { value: 'lgh-1102' } } },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, message))
    expect(decoded.payload.case).toBe('spaceInvites')
  })

  it('has no field for a secret on a listed invite', () => {
    expect(InviteSchema.fields.map((f) => f.name)).not.toContain('token')
  })
})
