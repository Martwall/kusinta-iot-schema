// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import { Role } from '../kusinta/iot/access/v1/roles_pb.js'
import {
  GatewayMemberSchema,
  ReportMembersRequestSchema,
  ReportMembersResponseSchema,
  ReportInviteRoutesRequestSchema,
} from '../kusinta/iot/reporting/v1/reporting_pb.js'
import { GatewayReportingService } from '../kusinta/iot/reporting/v1/reporting_service_pb.js'

describe('ReportMembers', () => {
  it('carries a member with its service roles', () => {
    const member = create(GatewayMemberSchema, {
      userId: { value: 'tekniker' },
      roles: [Role.TECHNICIAN],
    })
    const decoded = fromBinary(GatewayMemberSchema, toBinary(GatewayMemberSchema, member))
    expect(decoded.userId?.value).toBe('tekniker')
    expect(decoded.roles).toEqual([Role.TECHNICIAN])
  })

  it('carries a resident as a member with no role', () => {
    const member = create(GatewayMemberSchema, { userId: { value: 'anna' } })
    const decoded = fromBinary(GatewayMemberSchema, toBinary(GatewayMemberSchema, member))
    expect(decoded.roles).toEqual([])
  })

  it('says since when an administrator administers', () => {
    const member = create(GatewayMemberSchema, {
      userId: { value: 'förvaltare' },
      roles: [Role.GATEWAY_ADMIN],
      administratorSince: { seconds: 1790000100n },
    })
    const decoded = fromBinary(GatewayMemberSchema, toBinary(GatewayMemberSchema, member))
    expect(decoded.administratorSince?.seconds).toBe(1790000100n)
  })

  it('names the users no longer members, on a stream with a seq', () => {
    const request = create(ReportMembersRequestSchema, {
      streamId: 's-1',
      previousStreamIds: ['s-0'],
      seq: 4n,
      removedUserIds: [{ value: 'flyttat' }],
      snapshot: { snapshotId: 'm-1', part: 0, last: true },
    })
    const decoded = fromBinary(ReportMembersRequestSchema, toBinary(ReportMembersRequestSchema, request))
    expect(decoded.streamId).toBe('s-1')
    expect(decoded.previousStreamIds).toEqual(['s-0'])
    expect(decoded.seq).toBe(4n)
    expect(decoded.removedUserIds.map((u) => u.value)).toEqual(['flyttat'])
    expect(decoded.snapshot?.last).toBe(true)
  })

  it('answers how far it has applied', () => {
    const response = create(ReportMembersResponseSchema, { appliedSeq: 4n, resyncRequired: true })
    const decoded = fromBinary(ReportMembersResponseSchema, toBinary(ReportMembersResponseSchema, response))
    expect(decoded.appliedSeq).toBe(4n)
    expect(decoded.resyncRequired).toBe(true)
  })

  it('is a method of the reporting service', () => {
    expect(GatewayReportingService.method.reportMembers.name).toBe('ReportMembers')
  })
})

describe('ReportInviteRoutes', () => {
  it('carries secret hashes added and removed', () => {
    const request = create(ReportInviteRoutesRequestSchema, {
      streamId: 's-1',
      seq: 2n,
      secretHashes: [new Uint8Array(32).fill(1)],
      removedSecretHashes: [new Uint8Array(32).fill(2)],
    })
    const decoded = fromBinary(ReportInviteRoutesRequestSchema, toBinary(ReportInviteRoutesRequestSchema, request))
    expect([decoded.secretHashes[0][0], decoded.removedSecretHashes[0][0]]).toEqual([1, 2])
  })

  it('is a method of the reporting service', () => {
    expect(GatewayReportingService.method.reportInviteRoutes.name).toBe('ReportInviteRoutes')
  })
})
