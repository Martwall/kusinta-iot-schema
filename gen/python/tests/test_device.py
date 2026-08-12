from kusinta.iot.device.v1 import properties_pb2, descriptor_pb2, property_update_pb2
from kusinta.iot.common.v1 import types_pb2
from kusinta.iot.identity.v1 import identity_pb2


def test_thermostat_round_trip():
    original = properties_pb2.ThermostatProperties(occupied_heating_setpoint=2150)
    decoded = properties_pb2.ThermostatProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.occupied_heating_setpoint == 2150


def test_negative_local_temperature():
    original = properties_pb2.ThermostatProperties(local_temperature=-500)
    decoded = properties_pb2.ThermostatProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.local_temperature == -500


def test_thermostat_min_max_setpoint():
    original = properties_pb2.ThermostatProperties(
        min_heat_setpoint_limit=1600,
        max_heat_setpoint_limit=2200,
    )
    decoded = properties_pb2.ThermostatProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.min_heat_setpoint_limit == 1600
    assert decoded.max_heat_setpoint_limit == 2200


def test_temperature_sensor_round_trip():
    original = properties_pb2.TemperatureSensorProperties(measured_value=2100)
    decoded = properties_pb2.TemperatureSensorProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.measured_value == 2100


def test_device_descriptor_round_trip():
    original = descriptor_pb2.DeviceDescriptor(
        device_id=identity_pb2.DeviceId(value="dev-001"),
        matter_device_type_id=0x0301,
        vendor_name="eQ-3",
        product_name="HmIP-eTRV-2",
        ownership=types_pb2.DEVICE_OWNERSHIP_TYPE_COMPANY,
        lifecycle=types_pb2.DEVICE_LIFECYCLE_STATE_OWNED,
    )
    decoded = descriptor_pb2.DeviceDescriptor()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.device_id.value == "dev-001"
    assert decoded.matter_device_type_id == 0x0301
    assert decoded.vendor_name == "eQ-3"
    assert decoded.ownership == types_pb2.DEVICE_OWNERSHIP_TYPE_COMPANY


def test_property_update_int_value():
    original = property_update_pb2.PropertyUpdate(
        device_id=identity_pb2.DeviceId(value="therm-1"),
        attribute_name="OccupiedHeatingSetpoint",
        int_value=2150,
        cluster_id_hex="0201",
    )
    decoded = property_update_pb2.PropertyUpdate()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.attribute_name == "OccupiedHeatingSetpoint"
    assert decoded.int_value == 2150
    assert decoded.HasField("int_value")


def test_property_update_bool_value():
    original = property_update_pb2.PropertyUpdate(
        device_id=identity_pb2.DeviceId(value="light-1"),
        attribute_name="OnOff",
        bool_value=True,
        cluster_id_hex="0006",
    )
    decoded = property_update_pb2.PropertyUpdate()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.bool_value is True
    assert decoded.HasField("bool_value")


def test_property_update_batch():
    batch = property_update_pb2.PropertyUpdateBatch(
        updates=[
            property_update_pb2.PropertyUpdate(
                device_id=identity_pb2.DeviceId(value="d1"),
                attribute_name="LocalTemperature",
                int_value=1900,
            ),
            property_update_pb2.PropertyUpdate(
                device_id=identity_pb2.DeviceId(value="d1"),
                attribute_name="OccupiedHeatingSetpoint",
                int_value=2100,
            ),
        ]
    )
    decoded = property_update_pb2.PropertyUpdateBatch()
    decoded.ParseFromString(batch.SerializeToString())
    assert len(decoded.updates) == 2
    assert decoded.updates[0].attribute_name == "LocalTemperature"


def test_energy_sensor_rejects_no_longer_used_field_numbers():
    numbers = {f.number for f in properties_pb2.EnergySensorProperties.DESCRIPTOR.fields}
    assert numbers == {5, 6, 7, 8}


def test_active_power_carries_milliwatts_above_the_int32_ceiling():
    original = properties_pb2.EnergySensorProperties(active_power=3_500_000_000)
    decoded = properties_pb2.EnergySensorProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.active_power == 3_500_000_000


def test_active_power_carries_export_as_negative_milliwatts():
    original = properties_pb2.EnergySensorProperties(active_power=-1_500_000)
    decoded = properties_pb2.EnergySensorProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.active_power == -1_500_000


def test_active_power_keeps_sub_watt_resolution():
    original = properties_pb2.EnergySensorProperties(active_power=1)
    decoded = properties_pb2.EnergySensorProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.active_power == 1


def test_voltage_carries_millivolts():
    original = properties_pb2.EnergySensorProperties(voltage=230_500)
    decoded = properties_pb2.EnergySensorProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.voltage == 230_500


def test_active_current_carries_milliamps_and_direction():
    original = properties_pb2.EnergySensorProperties(active_current=-16_250)
    decoded = properties_pb2.EnergySensorProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.active_current == -16_250


def test_frequency_carries_millihertz():
    original = properties_pb2.EnergySensorProperties(frequency=49_985)
    decoded = properties_pb2.EnergySensorProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.frequency == 49_985
