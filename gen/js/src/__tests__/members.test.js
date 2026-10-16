// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { MembershipRelation, Role } from '../kusinta/iot/access/v1/roles_pb.js'
import {
  GatewayMembersSchema,
  MemberDetailSchema,
} from '../kusinta/iot/webrtc/v1/members_pb.js'
import {
  ManagementRequestSchema,
  PrivacyDisclosureSchema,
} from '../kusinta/iot/webrtc/v1/management_pb.js'
import { ManagementResultSchema } from '../kusinta/iot/webrtc/v1/envelope_pb.js'
import { InviteSchema, CreateInviteSchema } from '../kusinta/iot/webrtc/v1/invite_pb.js'
import { AppTokenClaimsSchema } from '../kusinta/iot/webrtc/v1/app_token_pb.js'

/**
 * @param {import('@bufbuild/protobuf').MessageInitShape<typeof ManagementRequestSchema>['request']} request
 */
const roundTrip = (request) =>
  fromBinary(
    ManagementRequestSchema,
    toBinary(ManagementRequestSchema, create(ManagementRequestSchema, { request })),
  ).request

describe('members over the session', () => {
  it('asks for the members of the gateway', () => {
    expect(roundTrip({ case: 'listGatewayMembers', value: {} })?.case).toBe('listGatewayMembers')
  })

  it('answers with each member, their name and their memberships', () => {
    const result = create(ManagementResultSchema, {
      inReplyTo: 'm-1',
      result: {
        case: 'gatewayMembers',
        value: {
          members: [
            {
              userId: { value: 'anna' },
              name: 'Anna',
              roles: [Role.TECHNICIAN],
              memberships: [{ spaceId: { value: 'bbv-29' }, relation: MembershipRelation.SERVICE }],
            },
          ],
        },
      },
    })
    const decoded = fromBinary(ManagementResultSchema, toBinary(ManagementResultSchema, result))
    expect(
      decoded.result.case === 'gatewayMembers' &&
        decoded.result.value.members[0].memberships[0].spaceId?.value,
    ).toBe('bbv-29')
  })

  it('marks the registering administrator as last seen', () => {
    const member = create(MemberDetailSchema, { userId: { value: 'reg' }, registeringAdmin: true })
    expect(fromBinary(MemberDetailSchema, toBinary(MemberDetailSchema, member)).registeringAdmin).toBe(true)
  })

  it('carries the owner organisation with the members', () => {
    const members = create(GatewayMembersSchema, {
      ownerOrganisation: { name: 'Brf Ek', organisationNumber: '769600-1234' },
    })
    const decoded = fromBinary(GatewayMembersSchema, toBinary(GatewayMembersSchema, members))
    expect(decoded.ownerOrganisation?.organisationNumber).toBe('769600-1234')
  })

  it('takes away a role from a member', () => {
    const decoded = roundTrip({
      case: 'setMemberRole',
      value: { userId: { value: 'anna' }, role: Role.GATEWAY_ADMIN, held: false },
    })
    expect(decoded?.case === 'setMemberRole' && decoded.value.role).toBe(Role.GATEWAY_ADMIN)
  })

  it('removes a member from the whole gateway', () => {
    const decoded = roundTrip({ case: 'removeFromGateway', value: { userId: { value: 'anna' } } })
    expect(decoded?.case === 'removeFromGateway' && decoded.value.userId?.value).toBe('anna')
  })

  it('clears a technician end date by leaving it unset', () => {
    const decoded = roundTrip({ case: 'setAccessUntil', value: { userId: { value: 'tek' } } })
    expect(decoded?.case === 'setAccessUntil' && decoded.value.accessUntil).toBeUndefined()
  })

  it('sets the owner organisation', () => {
    const decoded = roundTrip({
      case: 'setOwnerOrganisation',
      value: { organisation: { name: 'Brf Ek' } },
    })
    expect(decoded?.case === 'setOwnerOrganisation' && decoded.value.organisation?.name).toBe('Brf Ek')
  })
})

describe('named service parties', () => {
  it('names each person under a role, keeping an unknown name as empty', () => {
    const disclosure = create(PrivacyDisclosureSchema, {
      serviceParties: [{ role: Role.TECHNICIAN, names: ['Tek', ''] }],
    })
    const decoded = fromBinary(PrivacyDisclosureSchema, toBinary(PrivacyDisclosureSchema, disclosure))
    expect(decoded.serviceParties[0].names).toEqual(['Tek', ''])
  })

  it('tells a resident the name of the owner organisation', () => {
    const disclosure = create(PrivacyDisclosureSchema, { ownerOrganisationName: 'Brf Ek' })
    const decoded = fromBinary(PrivacyDisclosureSchema, toBinary(PrivacyDisclosureSchema, disclosure))
    expect(decoded.ownerOrganisationName).toBe('Brf Ek')
  })

  it('has no field for the owner organisation number in a disclosure', () => {
    expect(PrivacyDisclosureSchema.fields.map((f) => f.name)).not.toContain('owner_organisation')
  })

  it('says when names are withheld from the caller', () => {
    const disclosure = create(PrivacyDisclosureSchema, { namesWithheld: true })
    const decoded = fromBinary(PrivacyDisclosureSchema, toBinary(PrivacyDisclosureSchema, disclosure))
    expect(decoded.namesWithheld).toBe(true)
  })
})

describe('technician end date on invites', () => {
  it('asks for a technician invite that ends', () => {
    const invite = create(CreateInviteSchema, { accessUntil: { seconds: 1800000000n } })
    expect(fromBinary(CreateInviteSchema, toBinary(CreateInviteSchema, invite)).accessUntil?.seconds).toBe(1800000000n)
  })

  it('lists the end date with a pending invite', () => {
    const invite = create(InviteSchema, { accessUntil: { seconds: 1800000000n } })
    expect(fromBinary(InviteSchema, toBinary(InviteSchema, invite)).accessUntil?.seconds).toBe(1800000000n)
  })
})

describe('the name in an app token', () => {
  it('has a name claim', () => {
    expect(AppTokenClaimsSchema.fields.map((f) => f.name)).toContain('name')
  })

  it('carries a staff member\'s verified email address', () => {
    const claims = create(AppTokenClaimsSchema, { email: 'tek@example.com' })
    expect(fromBinary(AppTokenClaimsSchema, toBinary(AppTokenClaimsSchema, claims)).email).toBe('tek@example.com')
  })

  it('leaves the email claim empty for a token that names no address', () => {
    const claims = create(AppTokenClaimsSchema, { sub: 'anna' })
    expect(fromBinary(AppTokenClaimsSchema, toBinary(AppTokenClaimsSchema, claims)).email).toBe('')
  })
})

describe('staff named, residents not', () => {
  it('lists a staff member with their email address', () => {
    const member = create(MemberDetailSchema, { userId: { value: 'tek' }, email: 'tek@example.com' })
    expect(fromBinary(MemberDetailSchema, toBinary(MemberDetailSchema, member)).email).toBe('tek@example.com')
  })

  it('leaves a resident\'s email empty', () => {
    const member = create(MemberDetailSchema, { userId: { value: 'anna' } })
    expect(fromBinary(MemberDetailSchema, toBinary(MemberDetailSchema, member)).email).toBe('')
  })

  it('says since when a member holds a membership', () => {
    const member = create(MemberDetailSchema, {
      userId: { value: 'anna' },
      memberships: [{ spaceId: { value: 'lgh-1102' }, since: { seconds: 1_790_000_000n } }],
    })
    const decoded = fromBinary(MemberDetailSchema, toBinary(MemberDetailSchema, member))
    expect(decoded.memberships[0].since?.seconds).toBe(1_790_000_000n)
  })
})
