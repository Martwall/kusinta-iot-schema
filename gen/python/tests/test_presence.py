"""Presence tests for stream-assembled property fields.

Device.properties is assembled incrementally from PropertyUpdate messages, so a field
that has never been reported must be distinguishable from one reporting zero. Matter
gives zero a meaning almost everywhere — SystemMode Off=0, LockState NotFullyLocked=0,
StateValue false = contact open (alarm), a dimmer at level 0 — so implicit presence made
"never reported" and a real reading byte-identical.
"""

from kusinta.iot.device.v1 import properties_pb2
from kusinta.iot.vendor.homematic.v1 import homematic_pb2

PROPERTIES_MESSAGES = [
    properties_pb2.ThermostatProperties,
    properties_pb2.TemperatureSensorProperties,
    properties_pb2.HumiditySensorProperties,
    properties_pb2.OccupancySensorProperties,
    properties_pb2.ContactSensorProperties,
    properties_pb2.WindowCoveringProperties,
    properties_pb2.DoorLockProperties,
    properties_pb2.OnOffLightProperties,
    properties_pb2.DimmableLightProperties,
    properties_pb2.ColorTemperatureLightProperties,
    properties_pb2.EnergySensorProperties,
    properties_pb2.PressureSensorProperties,
    homematic_pb2.HmThermostatProps,
]


# --- the alarm case: a bool whose false is the dangerous reading ---------------


def test_unreported_contact_state_is_absent():
    unreported = properties_pb2.ContactSensorProperties()
    assert unreported.HasField("state_value") is False


def test_contact_open_alarm_survives_a_round_trip_as_a_reported_value():
    original = properties_pb2.ContactSensorProperties(state_value=False)
    decoded = properties_pb2.ContactSensorProperties()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.HasField("state_value") is True


def test_unreported_contact_state_is_not_confused_with_an_open_contact():
    unreported = properties_pb2.ContactSensorProperties().SerializeToString()
    reported_open = properties_pb2.ContactSensorProperties(state_value=False).SerializeToString()
    assert unreported != reported_open


# --- zero as a real reading ----------------------------------------------------


def test_zero_degrees_is_distinguishable_from_an_unreported_temperature():
    reported = properties_pb2.ThermostatProperties(local_temperature=0)
    decoded = properties_pb2.ThermostatProperties()
    decoded.ParseFromString(reported.SerializeToString())
    assert decoded.HasField("local_temperature") is True


def test_unreported_temperature_is_absent():
    assert properties_pb2.ThermostatProperties().HasField("local_temperature") is False


def test_system_mode_off_is_distinguishable_from_an_unreported_mode():
    reported = properties_pb2.ThermostatProperties(system_mode=0)  # Off=0
    decoded = properties_pb2.ThermostatProperties()
    decoded.ParseFromString(reported.SerializeToString())
    assert decoded.HasField("system_mode") is True


def test_dimmer_at_level_zero_is_distinguishable_from_an_unreported_level():
    reported = properties_pb2.DimmableLightProperties(current_level=0)
    decoded = properties_pb2.DimmableLightProperties()
    decoded.ParseFromString(reported.SerializeToString())
    assert decoded.HasField("current_level") is True


def test_lock_state_not_fully_locked_is_distinguishable_from_unreported():
    reported = properties_pb2.DoorLockProperties(lock_state=0)  # NotFullyLocked=0
    decoded = properties_pb2.DoorLockProperties()
    decoded.ParseFromString(reported.SerializeToString())
    assert decoded.HasField("lock_state") is True


def test_unoccupied_is_distinguishable_from_an_unreported_occupancy():
    reported = properties_pb2.OccupancySensorProperties(occupancy=0)
    decoded = properties_pb2.OccupancySensorProperties()
    decoded.ParseFromString(reported.SerializeToString())
    assert decoded.HasField("occupancy") is True


def test_idle_power_is_distinguishable_from_an_unreported_power():
    reported = properties_pb2.EnergySensorProperties(active_power=0)
    decoded = properties_pb2.EnergySensorProperties()
    decoded.ParseFromString(reported.SerializeToString())
    assert decoded.HasField("active_power") is True


def test_boost_mode_off_is_distinguishable_from_an_unreported_boost_mode():
    reported = homematic_pb2.HmThermostatProps(boost_mode=False)
    decoded = homematic_pb2.HmThermostatProps()
    decoded.ParseFromString(reported.SerializeToString())
    assert decoded.HasField("boost_mode") is True


# --- schema-wide invariant -----------------------------------------------------


def test_every_stream_assembled_property_field_has_explicit_presence():
    implicit = [
        f"{message.DESCRIPTOR.name}.{field.name}"
        for message in PROPERTIES_MESSAGES
        for field in message.DESCRIPTOR.fields
        if not field.has_presence
    ]
    assert implicit == []
