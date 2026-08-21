"""Contract tests for the Matter endpoint model.

A physical device presents several Matter endpoints, each with its own device type.
These assert the three things that buys, none of which the single-properties model
could express:

  * two different device types on one device (wall thermostat: Thermostat + Humidity)
  * several endpoints of the SAME device type, told apart (4-channel actuator)
  * typed Matter properties and a vendor extension on one endpoint at once
"""

import pytest

from kusinta.iot.device.v1 import (
    descriptor_pb2,
    device_pb2,
    matter_options_pb2,
    properties_pb2,
    property_update_pb2,
)
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.vendor.homematic.v1 import homematic_pb2
from kusinta.iot.vendor.v1 import vendor_options_pb2


# --- the oneof is gone -------------------------------------------------------------


def test_device_no_longer_carries_the_typed_properties_fields():
    names = {f.name for f in device_pb2.Device.DESCRIPTOR.fields}
    assert "thermostat" not in names
    assert "homematic" not in names
    assert "endpoints" in names


# --- several device types on one device ---------------------------------------------


def test_device_carries_two_endpoints_of_different_device_types():
    device = device_pb2.Device(
        endpoints=[
            device_pb2.Endpoint(
                endpoint_id=1,
                matter_device_type_id=0x0301,
                thermostat=properties_pb2.ThermostatProperties(local_temperature=2150),
            ),
            device_pb2.Endpoint(
                endpoint_id=2,
                matter_device_type_id=0x0307,
                humidity_sensor=properties_pb2.HumiditySensorProperties(
                    measured_value=4500
                ),
            ),
        ]
    )
    decoded = device_pb2.Device()
    decoded.ParseFromString(device.SerializeToString())
    assert [e.matter_device_type_id for e in decoded.endpoints] == [0x0301, 0x0307]
    assert decoded.endpoints[0].thermostat.local_temperature == 2150
    assert decoded.endpoints[1].humidity_sensor.measured_value == 4500


def test_four_endpoints_of_the_same_device_type_stay_distinguishable():
    device = device_pb2.Device(
        endpoints=[
            device_pb2.Endpoint(
                endpoint_id=n,
                matter_device_type_id=0x0100,
                on_off_light=properties_pb2.OnOffLightProperties(on_off=(n % 2 == 1)),
            )
            for n in (1, 2, 3, 4)
        ]
    )
    decoded = device_pb2.Device()
    decoded.ParseFromString(device.SerializeToString())
    assert [e.endpoint_id for e in decoded.endpoints] == [1, 2, 3, 4]
    assert [e.on_off_light.on_off for e in decoded.endpoints] == [True, False, True, False]


# --- power source is an ordinary device type on its own endpoint --------------------


def test_power_source_is_its_own_endpoint():
    device = device_pb2.Device(
        endpoints=[
            device_pb2.Endpoint(
                endpoint_id=1,
                matter_device_type_id=0x0301,
                thermostat=properties_pb2.ThermostatProperties(local_temperature=2150),
            ),
            device_pb2.Endpoint(
                endpoint_id=2,
                matter_device_type_id=0x0011,
                power_source=properties_pb2.PowerSourceProperties(
                    bat_percent_remaining=150,
                    bat_charge_level=1,
                    bat_replacement_needed=False,
                ),
            ),
        ]
    )
    decoded = device_pb2.Device()
    decoded.ParseFromString(device.SerializeToString())
    assert decoded.endpoints[1].power_source.bat_percent_remaining == 150
    assert decoded.endpoints[1].power_source.bat_charge_level == 1


def test_power_source_declares_the_matter_device_type():
    declared = properties_pb2.PowerSourceProperties.DESCRIPTOR.GetOptions().Extensions[
        matter_options_pb2.matter_device_type
    ]
    assert 0x0011 in declared


def test_power_source_fields_carry_the_power_source_cluster():
    for field in properties_pb2.PowerSourceProperties.DESCRIPTOR.fields:
        assert (
            field.GetOptions().Extensions[matter_options_pb2.matter_cluster_id] == 0x002F
        )


# --- vendor extension sits BESIDE the properties, not instead of them ---------------


def test_endpoint_carries_matter_properties_and_a_vendor_extension_at_once():
    endpoint = device_pb2.Endpoint(
        endpoint_id=1,
        matter_device_type_id=0x0301,
        thermostat=properties_pb2.ThermostatProperties(local_temperature=2150),
        hm_thermostat=homematic_pb2.HmThermostatProps(level=0.42),
    )
    decoded = device_pb2.Endpoint()
    decoded.ParseFromString(endpoint.SerializeToString())
    assert decoded.thermostat.local_temperature == 2150
    assert decoded.hm_thermostat.level == pytest.approx(0.42)


def test_properties_and_vendor_are_separate_oneofs():
    assert "properties" in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name
    assert "vendor" in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name
    properties_fields = {
        f.name for f in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name["properties"].fields
    }
    vendor_fields = {
        f.name for f in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name["vendor"].fields
    }
    assert properties_fields.isdisjoint(vendor_fields)
    assert "hm_thermostat" in vendor_fields


# --- PropertyUpdate addresses an endpoint -------------------------------------------


def test_property_update_carries_an_endpoint_id():
    update = property_update_pb2.PropertyUpdate(
        device_id=identity_pb2.DeviceId(value="therm-1"),
        endpoint_id=2,
        attribute_name="MeasuredValue",
        uint_value=4500,
        cluster_id=0x0405,
    )
    decoded = property_update_pb2.PropertyUpdate()
    decoded.ParseFromString(update.SerializeToString())
    assert decoded.endpoint_id == 2


def test_property_update_endpoint_id_absent_is_a_miss_not_a_zero():
    update = property_update_pb2.PropertyUpdate(attribute_name="MeasuredValue")
    assert not update.HasField("endpoint_id")


def test_property_update_endpoint_zero_is_still_expressible_as_present():
    update = property_update_pb2.PropertyUpdate(endpoint_id=0)
    assert update.HasField("endpoint_id")


# --- vendor addressing: the second resolution branch --------------------------------


VENDOR_EXTENSIONS = [
    field.message_type
    for field in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name["vendor"].fields
]


def vendor_fields_of(message_descriptor):
    """Every field the vendor branch can reach. Flat: a vendor message carried in
    Endpoint.vendor holds its parameters directly, the same shape the Matter branch
    matches against."""
    return message_descriptor.fields


def test_every_vendor_extension_declares_a_resolution_key():
    unannotated = [
        m.full_name
        for m in VENDOR_EXTENSIONS
        if not m.GetOptions().Extensions[vendor_options_pb2.vendor_extension]
    ]
    assert unannotated == []


def test_no_two_vendor_extensions_share_a_resolution_key():
    keys = [
        m.GetOptions().Extensions[vendor_options_pb2.vendor_extension]
        for m in VENDOR_EXTENSIONS
    ]
    assert len(keys) == len(set(keys))


def test_homematic_declares_its_documented_key():
    assert (
        homematic_pb2.HmThermostatProps.DESCRIPTOR.GetOptions().Extensions[
            vendor_options_pb2.vendor_extension
        ]
        == "homematic.thermostat"
    )


def test_vendor_identity_lives_on_the_descriptor_not_the_endpoint():
    """Address and model describe the physical device, so they must not be duplicated
    onto every endpoint."""
    descriptor = descriptor_pb2.DeviceDescriptor(
        homematic=homematic_pb2.HomematicDeviceIdentity(
            address="MEQ1234567", type="HmIP-eTRV-C"
        )
    )
    decoded = descriptor_pb2.DeviceDescriptor()
    decoded.ParseFromString(descriptor.SerializeToString())
    assert decoded.homematic.address == "MEQ1234567"
    assert "homematic" not in {f.name for f in device_pb2.Endpoint.DESCRIPTOR.fields}


def test_every_vendor_parameter_field_declares_a_vendor_attribute():
    """Vendor messages carry only readings now — identity moved to the descriptor — so
    every field must be addressable."""
    unannotated = [
        f.full_name
        for m in VENDOR_EXTENSIONS
        for f in vendor_fields_of(m)
        if not f.GetOptions().Extensions[vendor_options_pb2.vendor_attribute]
    ]
    assert unannotated == []
    annotated = {
        field.GetOptions().Extensions[vendor_options_pb2.vendor_attribute]
        for m in VENDOR_EXTENSIONS
        for field in vendor_fields_of(m)
    }
    assert "LEVEL" in annotated
    assert "BOOST_MODE" in annotated


def test_vendor_attribute_names_are_unique_within_each_extension():
    """The vendor branch searches the whole extension including nested props, so a
    repeated name would make step 3 ambiguous."""
    for m in VENDOR_EXTENSIONS:
        names = [
            field.GetOptions().Extensions[vendor_options_pb2.vendor_attribute]
            for field in vendor_fields_of(m)
        ]
        named = [n for n in names if n]
        assert len(named) == len(set(named)), m.full_name


def test_property_update_carries_a_vendor_extension_selector():
    update = property_update_pb2.PropertyUpdate(
        device_id=identity_pb2.DeviceId(value="valve-1"),
        endpoint_id=1,
        vendor_extension="homematic.thermostat",
        attribute_name="LEVEL",
        float_value=0.42,
    )
    decoded = property_update_pb2.PropertyUpdate()
    decoded.ParseFromString(update.SerializeToString())
    assert decoded.vendor_extension == "homematic.thermostat"
    assert decoded.attribute_name == "LEVEL"


def test_vendor_update_needs_no_cluster_id():
    update = property_update_pb2.PropertyUpdate(
        endpoint_id=1, vendor_extension="homematic.thermostat", attribute_name="LEVEL"
    )
    assert not update.HasField("cluster_id")


def test_matter_update_has_no_vendor_extension_set():
    update = property_update_pb2.PropertyUpdate(
        endpoint_id=1, attribute_name="LocalTemperature", cluster_id=0x0201
    )
    assert not update.HasField("vendor_extension")
