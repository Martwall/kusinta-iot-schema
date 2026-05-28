import { describe, it, expect } from 'vitest'
import { DeviceId, GatewayId, UserId, SpaceId, ConnectorId, TenantId } from '../identity/identity.js'

describe('Identity wrapper types', () => {
  it('DeviceId round-trips value', () => {
    const id: DeviceId = { value: 'device-abc-123' }
    const decoded = DeviceId.decode(DeviceId.encode(id).finish())
    expect(decoded.value).toBe('device-abc-123')
  })

  it('GatewayId round-trips value', () => {
    const id: GatewayId = { value: 'gw-hmac-sha256-result' }
    const decoded = GatewayId.decode(GatewayId.encode(id).finish())
    expect(decoded.value).toBe('gw-hmac-sha256-result')
  })

  it('UserId round-trips value', () => {
    const id: UserId = { value: 'user-keycloak-sub' }
    const decoded = UserId.decode(UserId.encode(id).finish())
    expect(decoded.value).toBe('user-keycloak-sub')
  })

  it('SpaceId round-trips value', () => {
    const id: SpaceId = { value: 'space-uuid-v4' }
    const decoded = SpaceId.decode(SpaceId.encode(id).finish())
    expect(decoded.value).toBe('space-uuid-v4')
  })

  it('ConnectorId round-trips value', () => {
    const id: ConnectorId = { value: 'homematic-ccu3' }
    const decoded = ConnectorId.decode(ConnectorId.encode(id).finish())
    expect(decoded.value).toBe('homematic-ccu3')
  })

  it('TenantId round-trips value', () => {
    const id: TenantId = { value: 'tenant-property-co' }
    const decoded = TenantId.decode(TenantId.encode(id).finish())
    expect(decoded.value).toBe('tenant-property-co')
  })
})
