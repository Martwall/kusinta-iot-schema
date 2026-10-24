// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { MembershipRelation, MembershipRelationSchema } from '../kusinta/iot/access/v1/roles_pb.js'
import { AssetOwnerSchema } from '../kusinta/iot/common/v1/types_pb.js'
import { DeviceDescriptorSchema } from '../kusinta/iot/device/v1/descriptor_pb.js'
import { SpaceSchema } from '../kusinta/iot/space/v1/space_pb.js'
import {
  CommissioningGrantSchema,
  CommissioningGrantState,
  CommissioningGrantStateSchema,
  CommissioningGrantsSchema,
} from '../kusinta/iot/commissioning/v1/commissioning_pb.js'
import { RedeemOutcome } from '../kusinta/iot/signaling/v1/signaling_pb.js'
import {
  ClearClimateHistorySchema,
  HouseholdExportSchema,
  HouseholdHandoverSchema,
  HouseholdHandoverState,
  HouseholdHandoverStateSchema,
  StaffAppointmentKind,
} from '../kusinta/iot/webrtc/v1/household_pb.js'
import { CreateInviteSchema, InviteAdmission, InviteSchema } from '../kusinta/iot/webrtc/v1/invite_pb.js'
import { ManagementRequestSchema, PrivacyDisclosureSchema } from '../kusinta/iot/webrtc/v1/management_pb.js'
import { PromotionRequestSchema, RequestPromotionSchema } from '../kusinta/iot/webrtc/v1/members_pb.js'
import { GatewayMessageSchema, ManagementResultSchema } from '../kusinta/iot/webrtc/v1/envelope_pb.js'
import { Role } from '../kusinta/iot/access/v1/roles_pb.js'

/**
 * @template T
 * @param {import('@bufbuild/protobuf').GenMessage<T>} schema
 * @param {import('@bufbuild/protobuf').MessageInitShape<import('@bufbuild/protobuf').GenMessage<T>>} init
 * @returns {T}
 */
const onTheWire = (schema, init) => fromBinary(schema, toBinary(schema, create(schema, init)))

/** @param {import('@bufbuild/protobuf').DescEnum} e */
const valueNames = (e) => e.values.map((v) => v.name)

describe('household admin relation', () => {
  it('is a third relation on a membership, after resident and service', () => {
    expect(valueNames(MembershipRelationSchema)).toEqual([
      'MEMBERSHIP_RELATION_UNSPECIFIED',
      'MEMBERSHIP_RELATION_RESIDENT',
      'MEMBERSHIP_RELATION_SERVICE',
      'MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN',
    ])
  })

  it('can be what an invite on an empty home appoints', () => {
    const decoded = onTheWire(CreateInviteSchema, {
      spaceId: { value: 'home-15' },
      relation: MembershipRelation.HOUSEHOLD_ADMIN,
      email: 'new.owner@example.org',
    })
    expect(decoded.relation).toBe(MembershipRelation.HOUSEHOLD_ADMIN)
  })

  it('lists an appointment invite as bound to an address, admitting on its match', () => {
    const decoded = onTheWire(InviteSchema, {
      inviteId: 'inv-1',
      relation: MembershipRelation.HOUSEHOLD_ADMIN,
      email: 'new.owner@example.org',
      admission: InviteAdmission.ON_EMAIL_MATCH,
    })
    expect([decoded.relation, decoded.email, decoded.admission]).toEqual([
      MembershipRelation.HOUSEHOLD_ADMIN,
      'new.owner@example.org',
      InviteAdmission.ON_EMAIL_MATCH,
    ])
  })

  it('tells a staff member redeeming an appointment that they may not be appointed', () => {
    expect(RedeemOutcome.NOT_ELIGIBLE).toBe(5)
  })
})

describe('household promotion', () => {
  it('asks a resident to become household admin of one home, with no role', () => {
    const decoded = onTheWire(RequestPromotionSchema, {
      userId: { value: 'residency:7f3a' },
      homeId: { value: 'home-15' },
    })
    expect([decoded.homeId?.value, decoded.role]).toEqual(['home-15', Role.UNSPECIFIED])
  })

  it('lists a pending household promotion with its home', () => {
    const decoded = onTheWire(PromotionRequestSchema, {
      requestId: 'pr-1',
      homeId: { value: 'home-15' },
      expiresAt: { seconds: 1_790_604_800n },
    })
    expect(decoded.homeId?.value).toBe('home-15')
  })

  it('demotes a household admin of one home', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: {
        case: 'demoteHouseholdAdmin',
        value: { homeId: { value: 'home-15' }, userId: { value: 'user-2' } },
      },
    })
    expect(decoded.request).toMatchObject({ case: 'demoteHouseholdAdmin', value: { userId: { value: 'user-2' } } })
  })

  it('tells the household which staff member appointed whom, and how', () => {
    const decoded = onTheWire(PrivacyDisclosureSchema, {
      spaceId: { value: 'home-15' },
      staffAppointments: [
        {
          appointee: { value: 'user-2' },
          appointedBy: { value: 'user-board' },
          appointedByName: 'Board member',
          at: { seconds: 1_790_000_000n },
          kind: StaffAppointmentKind.PROMOTION,
        },
      ],
    })
    expect(decoded.staffAppointments[0]).toMatchObject({
      appointedBy: { value: 'user-board' },
      kind: StaffAppointmentKind.PROMOTION,
    })
  })
})

describe('commissioning grant', () => {
  it('has no state that grants before a household admin answered', () => {
    expect(valueNames(CommissioningGrantStateSchema)).toEqual([
      'COMMISSIONING_GRANT_STATE_UNSPECIFIED',
      'COMMISSIONING_GRANT_STATE_REQUESTED',
      'COMMISSIONING_GRANT_STATE_GRANTED',
    ])
  })

  it('names one installer on one space for a bounded time', () => {
    const decoded = onTheWire(CommissioningGrantSchema, {
      grantId: 'g-1',
      spaceId: { value: 'home-15' },
      installer: { value: 'user-installer' },
      installerName: 'Installer',
      state: CommissioningGrantState.GRANTED,
      startsAt: { seconds: 1_790_000_000n },
      endsAt: { seconds: 1_790_086_400n },
    })
    expect(decoded).toMatchObject({
      installer: { value: 'user-installer' },
      state: CommissioningGrantState.GRANTED,
      startsAt: { seconds: 1_790_000_000n },
      endsAt: { seconds: 1_790_086_400n },
    })
  })

  it('is requested by the installer for one space', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'requestCommissioningGrant', value: { spaceId: { value: 'home-15' } } },
    })
    expect(decoded.request).toMatchObject({ case: 'requestCommissioningGrant', value: { spaceId: { value: 'home-15' } } })
  })

  it('is granted with the time it starts and ends', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: {
        case: 'answerCommissioningGrant',
        value: { grantId: 'g-1', accept: true, endsAt: { seconds: 1_790_086_400n } },
      },
    })
    expect(decoded.request).toMatchObject({
      case: 'answerCommissioningGrant',
      value: { accept: true, endsAt: { seconds: 1_790_086_400n } },
    })
  })

  it('is ended by its id', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'endCommissioningGrant', value: { grantId: 'g-1' } },
    })
    expect(decoded.request).toMatchObject({ case: 'endCommissioningGrant', value: { grantId: 'g-1' } })
  })

  it('is listed under a space', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'listCommissioningGrants', value: { rootSpaceId: { value: 'home-15' } } },
    })
    expect(decoded.request).toMatchObject({ case: 'listCommissioningGrants', value: { rootSpaceId: { value: 'home-15' } } })
  })

  it('answers a request or a grant with the grant as stored', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      result: { case: 'commissioningGrant', value: { grantId: 'g-1', state: CommissioningGrantState.REQUESTED } },
    })
    expect(decoded.result).toMatchObject({ case: 'commissioningGrant', value: { state: CommissioningGrantState.REQUESTED } })
  })

  it('answers a listing with the grants of a space', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      result: { case: 'commissioningGrants', value: { spaceId: { value: 'home-15' }, grants: [{ grantId: 'g-1' }] } },
    })
    expect(decoded.result).toMatchObject({ case: 'commissioningGrants', value: { grants: [{ grantId: 'g-1' }] } })
  })

  it('pushes a space’s grants whole when one changes', () => {
    const decoded = onTheWire(GatewayMessageSchema, {
      payload: { case: 'commissioningGrants', value: create(CommissioningGrantsSchema, { spaceId: { value: 'home-15' } }) },
    })
    expect(decoded.payload).toMatchObject({ case: 'commissioningGrants', value: { spaceId: { value: 'home-15' } } })
  })
})

describe('asset owner', () => {
  it('is the organisation that owns the gateway', () => {
    const decoded = onTheWire(AssetOwnerSchema, { owner: { case: 'ownerOrganisation', value: true } })
    expect(decoded.owner).toEqual({ case: 'ownerOrganisation', value: true })
  })

  it('is a household, keyed to its home and never to a person', () => {
    const decoded = onTheWire(AssetOwnerSchema, { owner: { case: 'householdHomeId', value: { value: 'home-15' } } })
    expect(decoded.owner).toMatchObject({ case: 'householdHomeId', value: { value: 'home-15' } })
  })

  it('travels on a device’s descriptor beside who owns it outright', () => {
    const decoded = onTheWire(DeviceDescriptorSchema, {
      deviceId: { value: 'relay-1' },
      assetOwner: { owner: { case: 'householdHomeId', value: { value: 'home-15' } } },
    })
    expect(decoded.assetOwner?.owner.case).toBe('householdHomeId')
  })

  it('is set by a management request', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: {
        case: 'setAssetOwner',
        value: { deviceId: { value: 'relay-1' }, assetOwner: { owner: { case: 'ownerOrganisation', value: true } } },
      },
    })
    expect(decoded.request).toMatchObject({ case: 'setAssetOwner', value: { assetOwner: { owner: { case: 'ownerOrganisation' } } } })
  })
})

describe('household handover', () => {
  it('has a state that is pending, cancelled or done', () => {
    expect(valueNames(HouseholdHandoverStateSchema)).toEqual([
      'HOUSEHOLD_HANDOVER_STATE_UNSPECIFIED',
      'HOUSEHOLD_HANDOVER_STATE_PENDING',
      'HOUSEHOLD_HANDOVER_STATE_CANCELLED',
      'HOUSEHOLD_HANDOVER_STATE_DONE',
    ])
  })

  it('is started for one home', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'startHouseholdHandover', value: { homeId: { value: 'home-15' } } },
    })
    expect(decoded.request).toMatchObject({ case: 'startHouseholdHandover', value: { homeId: { value: 'home-15' } } })
  })

  it('is confirmed by its id', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'confirmHouseholdHandover', value: { handoverId: 'h-1' } },
    })
    expect(decoded.request).toMatchObject({ case: 'confirmHouseholdHandover', value: { handoverId: 'h-1' } })
  })

  it('is cancelled by its id', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'cancelHouseholdHandover', value: { handoverId: 'h-1' } },
    })
    expect(decoded.request).toMatchObject({ case: 'cancelHouseholdHandover', value: { handoverId: 'h-1' } })
  })

  it('says whether staff started it, and from when staff may confirm it', () => {
    const decoded = onTheWire(HouseholdHandoverSchema, {
      handoverId: 'h-1',
      homeId: { value: 'home-15' },
      state: HouseholdHandoverState.PENDING,
      startedByStaff: true,
      staffConfirmableFrom: { seconds: 1_790_604_800n },
    })
    expect(decoded).toMatchObject({ startedByStaff: true, staffConfirmableFrom: { seconds: 1_790_604_800n } })
  })

  it('says when it was started by the home’s last residency ending', () => {
    const decoded = onTheWire(HouseholdHandoverSchema, {
      handoverId: 'h-2',
      state: HouseholdHandoverState.PENDING,
      vacated: true,
      staffConfirmableFrom: { seconds: 1_790_604_800n },
    })
    expect([decoded.vacated, decoded.startedByStaff]).toEqual([true, false])
  })

  it('is answered with the handover when started', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      result: { case: 'householdHandover', value: { handoverId: 'h-1' } },
    })
    expect(decoded.result).toMatchObject({ case: 'householdHandover', value: { handoverId: 'h-1' } })
  })

  it('is pushed as it changes', () => {
    const decoded = onTheWire(GatewayMessageSchema, {
      payload: { case: 'householdHandover', value: { handoverId: 'h-1', state: HouseholdHandoverState.DONE } },
    })
    expect(decoded.payload).toMatchObject({ case: 'householdHandover', value: { state: HouseholdHandoverState.DONE } })
  })

  it('is listed under a space', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      result: { case: 'householdHandovers', value: { handovers: [{ handoverId: 'h-1' }] } },
    })
    expect(decoded.result).toMatchObject({ case: 'householdHandovers', value: { handovers: [{ handoverId: 'h-1' }] } })
  })
})

describe('home name', () => {
  it('travels on the apartment apart from the name the property owner gave it', () => {
    const decoded = onTheWire(SpaceSchema, {
      spaceId: { value: 'home-15' },
      name: 'Lgh 1102',
      homeName: 'Our place',
    })
    expect([decoded.name, decoded.homeName]).toEqual(['Lgh 1102', 'Our place'])
  })

  it('is set by a management request for one home', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'setHomeName', value: { homeId: { value: 'home-15' }, name: 'Our place' } },
    })
    expect(decoded.request).toMatchObject({ case: 'setHomeName', value: { name: 'Our place' } })
  })
})

describe('clearing a home\'s climate history', () => {
  it('is asked by a management request for one home', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'clearClimateHistory', value: { homeId: { value: 'home-15' } } },
    })
    expect(decoded.request).toMatchObject({
      case: 'clearClimateHistory',
      value: { homeId: { value: 'home-15' } },
    })
  })

  it('names nothing but the home, so no part of the history can be kept back', () => {
    expect(ClearClimateHistorySchema.fields.map((f) => f.name)).toEqual(['home_id'])
  })
})

describe('household export', () => {
  it('is asked first with no token', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'exportHouseholdData', value: { homeId: { value: 'home-15' } } },
    })
    expect(decoded.request).toMatchObject({ case: 'exportHouseholdData', value: { partToken: '' } })
  })

  it('asks each further part with the token of the part before', () => {
    const decoded = onTheWire(ManagementRequestSchema, {
      request: { case: 'exportHouseholdData', value: { homeId: { value: 'home-15' }, partToken: 'p-2' } },
    })
    expect(decoded.request).toMatchObject({ case: 'exportHouseholdData', value: { partToken: 'p-2' } })
  })

  it('carries one part and the token for the next', () => {
    const decoded = onTheWire(HouseholdExportSchema, {
      homeId: { value: 'home-15' },
      part: { case: 'roomHistory', value: { roomId: { value: 'room-1' } } },
      nextPartToken: 'p-3',
    })
    expect([decoded.part.case, decoded.nextPartToken]).toEqual(['roomHistory', 'p-3'])
  })

  it('holds no part for the gateway’s models', () => {
    expect(HouseholdExportSchema.oneofs[0].fields.map((f) => f.name)).toEqual([
      'room_climates',
      'room_history',
      'climate_summary',
      'commissioning',
      'heating',
    ])
  })

  it('is answered as an export part', () => {
    const decoded = onTheWire(ManagementResultSchema, {
      result: { case: 'householdExport', value: { nextPartToken: '' } },
    })
    expect(decoded.result.case).toBe('householdExport')
  })
})
