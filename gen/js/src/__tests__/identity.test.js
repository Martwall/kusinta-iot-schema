// @ts-check
import { describe, it, expect } from 'vitest'
import { create, toBinary, fromBinary } from '@bufbuild/protobuf'
import {
  DeviceIdSchema,
  GatewayIdSchema,
  UserIdSchema,
  SpaceIdSchema,
  ConnectorIdSchema,
  TenantIdSchema,
} from '../kusinta/iot/identity/v1/identity_pb.js'

describe('Identity wrapper types', () => {
  it('DeviceId round-trips value', () => {
    const id = create(DeviceIdSchema, { value: 'device-abc-123' })
    expect(fromBinary(DeviceIdSchema, toBinary(DeviceIdSchema, id)).value).toBe('device-abc-123')
  })

  it('GatewayId round-trips value', () => {
    const id = create(GatewayIdSchema, { value: 'gw-hmac-sha256-result' })
    expect(fromBinary(GatewayIdSchema, toBinary(GatewayIdSchema, id)).value).toBe('gw-hmac-sha256-result')
  })

  it('UserId round-trips value', () => {
    const id = create(UserIdSchema, { value: 'user-keycloak-sub' })
    expect(fromBinary(UserIdSchema, toBinary(UserIdSchema, id)).value).toBe('user-keycloak-sub')
  })

  it('SpaceId round-trips value', () => {
    const id = create(SpaceIdSchema, { value: 'space-uuid-v4' })
    expect(fromBinary(SpaceIdSchema, toBinary(SpaceIdSchema, id)).value).toBe('space-uuid-v4')
  })

  it('ConnectorId round-trips value', () => {
    const id = create(ConnectorIdSchema, { value: 'homematic-ccu3' })
    expect(fromBinary(ConnectorIdSchema, toBinary(ConnectorIdSchema, id)).value).toBe('homematic-ccu3')
  })

  it('TenantId round-trips value', () => {
    const id = create(TenantIdSchema, { value: 'tenant-property-co' })
    expect(fromBinary(TenantIdSchema, toBinary(TenantIdSchema, id)).value).toBe('tenant-property-co')
  })
})
