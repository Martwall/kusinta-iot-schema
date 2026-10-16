// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { Role } from '../kusinta/iot/access/v1/roles_pb.js'
import {
  GatewayConnectRequestSchema,
  GatewayConnectResponseSchema,
  GatewayDeletedSchema,
  OutgoingChoiceSchema,
  OutgoingStaffChoice,
  VouchedAdministratorsSchema,
  WipeScope,
} from '../kusinta/iot/signaling/v1/signaling_pb.js'
import { RegistrationCompleteSchema } from '../kusinta/iot/registration/v1/registration_pb.js'
import {
  MemberDetailSchema,
  PromotionRequestSchema,
} from '../kusinta/iot/webrtc/v1/members_pb.js'
import { ManagementRequestSchema } from '../kusinta/iot/webrtc/v1/management_pb.js'
import {
  GatewayMessageSchema,
  ManagementResultSchema,
} from '../kusinta/iot/webrtc/v1/envelope_pb.js'

/**
 * @param {import('@bufbuild/protobuf').MessageInitShape<typeof GatewayConnectResponseSchema>['payload']} payload
 */
const toGateway = (payload) =>
  fromBinary(
    GatewayConnectResponseSchema,
    toBinary(GatewayConnectResponseSchema, create(GatewayConnectResponseSchema, { payload })),
  ).payload

/**
 * @param {import('@bufbuild/protobuf').MessageInitShape<typeof GatewayConnectRequestSchema>['payload']} payload
 */
const fromGateway = (payload) =>
  fromBinary(
    GatewayConnectRequestSchema,
    toBinary(GatewayConnectRequestSchema, create(GatewayConnectRequestSchema, { payload })),
  ).payload

/**
 * @param {import('@bufbuild/protobuf').MessageInitShape<typeof ManagementRequestSchema>['request']} request
 */
const management = (request) =>
  fromBinary(
    ManagementRequestSchema,
    toBinary(ManagementRequestSchema, create(ManagementRequestSchema, { request })),
  ).request

describe('vouched administrators, api-server to gateway', () => {
  it('sends the set of administrators the owning organisation has', () => {
    const payload = toGateway({
      case: 'vouchedAdministrators',
      value: { version: 7n, administrators: [{ value: 'anna' }, { value: 'olle' }] },
    })
    expect(
      payload.case === 'vouchedAdministrators' && payload.value.administrators.map((u) => u.value),
    ).toEqual(['anna', 'olle'])
  })

  it('carries a version the gateway orders sets by', () => {
    const payload = toGateway({ case: 'vouchedAdministrators', value: { version: 7n } })
    expect(payload.case === 'vouchedAdministrators' && payload.value.version).toBe(7n)
  })

  it('names the organisation that owns the gateway', () => {
    const payload = toGateway({
      case: 'vouchedAdministrators',
      value: { organisationName: 'Brf Ek' },
    })
    expect(payload.case === 'vouchedAdministrators' && payload.value.organisationName).toBe('Brf Ek')
  })

  it('says when the set was issued', () => {
    const payload = toGateway({
      case: 'vouchedAdministrators',
      value: { issuedAt: { seconds: 1_800_000_000n } },
    })
    expect(payload.case === 'vouchedAdministrators' && payload.value.issuedAt?.seconds).toBe(
      1_800_000_000n,
    )
  })

  it('has no field for the organisation number, names or emails', () => {
    expect(VouchedAdministratorsSchema.fields.map((f) => f.name)).toEqual([
      'version',
      'administrators',
      'organisation_name',
      'issued_at',
    ])
  })

  it('is acknowledged by the version the gateway holds', () => {
    const payload = fromGateway({ case: 'vouchedAdministratorsApplied', value: { version: 7n } })
    expect(payload.case === 'vouchedAdministratorsApplied' && payload.value.version).toBe(7n)
  })
})

describe('transfer outcome, api-server to gateway', () => {
  it('names the transfer it applies', () => {
    const payload = toGateway({ case: 'transferOutcome', value: { transferId: 't-1' } })
    expect(payload.case === 'transferOutcome' && payload.value.transferId).toBe('t-1')
  })

  it('comes with the vouched set of the receiving organisation', () => {
    const payload = toGateway({
      case: 'transferOutcome',
      value: { administrators: { version: 8n, administrators: [{ value: 'nya' }] } },
    })
    expect(payload.case === 'transferOutcome' && payload.value.administrators?.version).toBe(8n)
  })

  it('lets an outgoing administrator stay as a technician until a date', () => {
    const payload = toGateway({
      case: 'transferOutcome',
      value: {
        outgoing: [
          {
            userId: { value: 'anna' },
            choice: OutgoingStaffChoice.STAY_AS_TECHNICIAN,
            accessUntil: { seconds: 1_800_000_000n },
          },
        ],
      },
    })
    expect(payload.case === 'transferOutcome' && payload.value.outgoing[0].accessUntil?.seconds).toBe(
      1_800_000_000n,
    )
  })

  it('reads an outgoing choice left unset as no stated choice', () => {
    const choice = create(OutgoingChoiceSchema, { userId: { value: 'olle' } })
    expect(fromBinary(OutgoingChoiceSchema, toBinary(OutgoingChoiceSchema, choice)).choice).toBe(
      OutgoingStaffChoice.UNSPECIFIED,
    )
  })

  it('has a value for leaving', () => {
    expect(OutgoingStaffChoice.LEAVE).toBe(1)
  })

  it('is acknowledged by its transfer id', () => {
    const payload = fromGateway({ case: 'transferOutcomeApplied', value: { transferId: 't-1' } })
    expect(payload.case === 'transferOutcomeApplied' && payload.value.transferId).toBe('t-1')
  })
})

describe('ownership epoch', () => {
  it('opens the gateway stream with the epoch of its owner record', () => {
    const payload = toGateway({ case: 'streamOpened', value: { ownershipEpoch: 'ep-2' } })
    expect(payload.case === 'streamOpened' && payload.value.ownershipEpoch).toBe('ep-2')
  })

  it('tells a connected gateway it was deleted, naming the epoch that ended', () => {
    const payload = toGateway({ case: 'gatewayDeleted', value: { ownershipEpoch: 'ep-2' } })
    expect(payload.case === 'gatewayDeleted' && payload.value.ownershipEpoch).toBe('ep-2')
  })

  it('asks a deleted gateway to give its spaces generic names', () => {
    const payload = toGateway({ case: 'gatewayDeleted', value: { clearSpaceNames: true } })
    expect(payload.case === 'gatewayDeleted' && payload.value.clearSpaceNames).toBe(true)
  })

  it('asks a deleted gateway for a factory reset', () => {
    const payload = toGateway({ case: 'gatewayDeleted', value: { scope: WipeScope.FACTORY_RESET } })
    expect(payload.case === 'gatewayDeleted' && payload.value.scope).toBe(WipeScope.FACTORY_RESET)
  })

  it('reads a delete notice with no scope as no stated scope', () => {
    const notice = create(GatewayDeletedSchema, { ownershipEpoch: 'ep-2' })
    expect(fromBinary(GatewayDeletedSchema, toBinary(GatewayDeletedSchema, notice)).scope).toBe(
      WipeScope.UNSPECIFIED,
    )
  })

  it('acknowledges a delete notice with the scope it applied', () => {
    const payload = fromGateway({
      case: 'wiped',
      value: { ownershipEpoch: 'ep-2', scope: WipeScope.PEOPLE_AND_HISTORY },
    })
    expect(payload.case === 'wiped' && payload.value.scope).toBe(WipeScope.PEOPLE_AND_HISTORY)
  })

  it('says which pairings a factory reset left in other hardware', () => {
    const payload = fromGateway({
      case: 'wiped',
      value: { scope: WipeScope.FACTORY_RESET, leftBehind: [{ displayName: 'CCU3' }] },
    })
    expect(payload.case === 'wiped' && payload.value.leftBehind[0].displayName).toBe('CCU3')
  })

  it('carries the space-name choice with the epoch at registration', () => {
    const complete = create(RegistrationCompleteSchema, { ownershipEpoch: 'ep-3', clearSpaceNames: true })
    expect(
      fromBinary(RegistrationCompleteSchema, toBinary(RegistrationCompleteSchema, complete))
        .clearSpaceNames,
    ).toBe(true)
  })

  it('completes a registration with the epoch of the owner record', () => {
    const complete = create(RegistrationCompleteSchema, { ownershipEpoch: 'ep-3' })
    expect(
      fromBinary(RegistrationCompleteSchema, toBinary(RegistrationCompleteSchema, complete))
        .ownershipEpoch,
    ).toBe('ep-3')
  })
})

describe('vouched administrators among the members', () => {
  it('marks a vouched administrator', () => {
    const member = create(MemberDetailSchema, { userId: { value: 'anna' }, vouchedAdmin: true })
    expect(fromBinary(MemberDetailSchema, toBinary(MemberDetailSchema, member)).vouchedAdmin).toBe(true)
  })
})

describe('promotion requests', () => {
  it('asks a member to accept a role', () => {
    const request = management({
      case: 'requestPromotion',
      value: { userId: { value: 'tek' }, role: Role.PROPERTY_OWNER },
    })
    expect(request?.case === 'requestPromotion' && request.value.role).toBe(Role.PROPERTY_OWNER)
  })

  it('accepts a promotion request by its id', () => {
    const request = management({ case: 'answerPromotion', value: { requestId: 'p-1', accept: true } })
    expect(request?.case === 'answerPromotion' && request.value.accept).toBe(true)
  })

  it('declines a promotion request by leaving accept unset', () => {
    const request = management({ case: 'answerPromotion', value: { requestId: 'p-1' } })
    expect(request?.case === 'answerPromotion' && request.value.accept).toBe(false)
  })

  it('asks for the promotion requests the caller made or was sent', () => {
    expect(management({ case: 'listPromotionRequests', value: {} })?.case).toBe(
      'listPromotionRequests',
    )
  })

  it('tells the person asked who asked them, by name', () => {
    const request = create(PromotionRequestSchema, {
      requestedBy: { value: 'anna' },
      requestedByName: 'Anna',
    })
    expect(
      fromBinary(PromotionRequestSchema, toBinary(PromotionRequestSchema, request)).requestedByName,
    ).toBe('Anna')
  })

  it('says when a promotion request lapses', () => {
    const request = create(PromotionRequestSchema, { expiresAt: { seconds: 1_800_604_800n } })
    expect(
      fromBinary(PromotionRequestSchema, toBinary(PromotionRequestSchema, request)).expiresAt?.seconds,
    ).toBe(1_800_604_800n)
  })

  it('answers the listing with the requests', () => {
    const result = create(ManagementResultSchema, {
      result: { case: 'promotionRequests', value: { requests: [{ requestId: 'p-1' }] } },
    })
    const decoded = fromBinary(ManagementResultSchema, toBinary(ManagementResultSchema, result))
    expect(decoded.result.case === 'promotionRequests' && decoded.result.value.requests[0].requestId).toBe(
      'p-1',
    )
  })

  it('pushes the requests when they change', () => {
    const message = create(GatewayMessageSchema, {
      payload: { case: 'promotionRequests', value: { requests: [{ requestId: 'p-1' }] } },
    })
    const decoded = fromBinary(GatewayMessageSchema, toBinary(GatewayMessageSchema, message))
    expect(decoded.payload.case).toBe('promotionRequests')
  })
})
