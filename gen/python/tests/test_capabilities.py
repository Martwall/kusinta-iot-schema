"""Contract tests for the attribute capability annotations.

(matter_attribute_capabilities) and (vendor_attribute_capabilities) say what an
attribute IS — readable, writable, reportable — as a READ=1 / WRITE=2 / REPORT=4
bitmask. Without them CONTROL_MODE, which is write-only and never reported, and
VALVE_STATE, which is reported and never writable, are indistinguishable fields.

They are NOT permission (access/v1/acl.proto is that) and NOT the per-device
implemented set (ClusterState.attribute_ids and Endpoint.vendor_attribute_names are
that).
"""

from kusinta.iot.device.v1 import device_pb2, matter_options_pb2, properties_pb2
from kusinta.iot.vendor.homematic.v1 import homematic_pb2
from kusinta.iot.vendor.v1 import vendor_options_pb2

READ = 1
WRITE = 2
REPORT = 4


def matter_capabilities_of(message_class, field_name):
    return (
        message_class.DESCRIPTOR.fields_by_name[field_name]
        .GetOptions()
        .Extensions[matter_options_pb2.matter_attribute_capabilities]
    )


def vendor_capabilities_of(message_class, field_name):
    return (
        message_class.DESCRIPTOR.fields_by_name[field_name]
        .GetOptions()
        .Extensions[vendor_options_pb2.vendor_attribute_capabilities]
    )


# --- the two ends of the surface that were indistinguishable ------------------


def test_a_write_only_parameter_declares_write_without_read_or_report():
    """CONTROL_MODE is -W-: the CCU accepts it and never reports it back, so a consumer
    that renders it as a reading shows a value the device never gave."""
    capabilities = vendor_capabilities_of(homematic_pb2.HmThermostatProps, "control_mode")
    assert capabilities == WRITE


def test_a_report_only_parameter_declares_read_and_report_without_write():
    capabilities = vendor_capabilities_of(homematic_pb2.HmThermostatProps, "valve_state")
    assert capabilities == READ | REPORT


def test_a_writable_reported_parameter_declares_all_three():
    capabilities = vendor_capabilities_of(homematic_pb2.HmThermostatProps, "set_point_mode")
    assert capabilities == READ | WRITE | REPORT


def test_maintenance_readings_are_read_and_report_only():
    capabilities = vendor_capabilities_of(homematic_pb2.HmMaintenanceProps, "rssi_device")
    assert capabilities == READ | REPORT


# --- the Matter branch carries the same mask ----------------------------------


def test_heating_demand_is_readable_and_reportable_but_not_writable():
    """PIHeatingDemand is a report of what the device is doing, not a control."""
    capabilities = matter_capabilities_of(properties_pb2.ThermostatProperties, "pi_heating_demand")
    assert capabilities == READ | REPORT


def test_a_setpoint_is_writable():
    capabilities = matter_capabilities_of(
        properties_pb2.ThermostatProperties, "occupied_heating_setpoint"
    )
    assert capabilities & WRITE == WRITE


# --- capability is not permission ---------------------------------------------


def test_capabilities_are_annotated_on_fields_not_on_grants():
    """A user may hold WRITE on an attribute the device will never accept a write for.
    The two must not be read off the same place."""
    field_options = set(matter_options_pb2.DESCRIPTOR.extensions_by_name)
    assert "matter_attribute_capabilities" in field_options
    assert "allowed_actions" not in field_options


# --- completeness: an unannotated field silently claims nothing ---------------

PROPERTIES_MESSAGES = [
    field.message_type._concrete_class
    for field in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name["matter_properties"].fields
]

VENDOR_EXTENSIONS = [
    field.message_type._concrete_class
    for field in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name["vendor_properties"].fields
]


def test_every_matter_attribute_declares_its_capabilities():
    """Absent reads as 0 — no capability at all — which is never what is meant. Without
    this sweep the next field added is silently unannotated."""
    unannotated = [
        f"{message.DESCRIPTOR.name}.{field.name}"
        for message in PROPERTIES_MESSAGES
        for field in message.DESCRIPTOR.fields
        if not field.GetOptions().HasExtension(matter_options_pb2.matter_attribute_capabilities)
    ]
    assert unannotated == []


def test_every_vendor_parameter_declares_its_capabilities():
    unannotated = [
        f"{message.DESCRIPTOR.name}.{field.name}"
        for message in VENDOR_EXTENSIONS
        for field in message.DESCRIPTOR.fields
        if not field.GetOptions().HasExtension(vendor_options_pb2.vendor_attribute_capabilities)
    ]
    assert unannotated == []


def test_no_attribute_claims_a_bit_outside_the_mask():
    """Only READ, WRITE and REPORT are defined. A fourth bit is a typo, not a capability."""
    out_of_range = [
        f"{message.DESCRIPTOR.name}.{field.name}"
        for message in PROPERTIES_MESSAGES
        for field in message.DESCRIPTOR.fields
        if field.GetOptions().Extensions[matter_options_pb2.matter_attribute_capabilities]
        & ~(READ | WRITE | REPORT)
    ]
    assert out_of_range == []


def test_no_matter_attribute_claims_no_capability_at_all():
    """A zero mask says the attribute can neither be read, written nor reported, which
    would make carrying it pointless."""
    empty = [
        f"{message.DESCRIPTOR.name}.{field.name}"
        for message in PROPERTIES_MESSAGES
        for field in message.DESCRIPTOR.fields
        if field.GetOptions().Extensions[matter_options_pb2.matter_attribute_capabilities] == 0
    ]
    assert empty == []


def test_no_vendor_parameter_claims_no_capability_at_all():
    empty = [
        f"{message.DESCRIPTOR.name}.{field.name}"
        for message in VENDOR_EXTENSIONS
        for field in message.DESCRIPTOR.fields
        if field.GetOptions().Extensions[vendor_options_pb2.vendor_attribute_capabilities] == 0
    ]
    assert empty == []


def test_a_measurement_is_not_writable():
    """The whole point of the mask: a consumer must not offer a control for a reading."""
    capabilities = matter_capabilities_of(properties_pb2.ThermostatProperties, "local_temperature")
    assert capabilities & WRITE == 0


def test_the_same_matter_attribute_declares_the_same_capabilities_everywhere():
    """OnOff appears in three properties messages. One occurrence annotated differently
    is a transcription error, and a consumer would see the attribute change nature by
    device type."""
    seen = {}
    for message in PROPERTIES_MESSAGES:
        for field in message.DESCRIPTOR.fields:
            options = field.GetOptions().Extensions
            key = (
                options[matter_options_pb2.matter_cluster_id],
                options[matter_options_pb2.matter_attribute],
            )
            mask = options[matter_options_pb2.matter_attribute_capabilities]
            if key in seen:
                assert seen[key] == mask, f"{key} annotated as {seen[key]} and {mask}"
            seen[key] = mask
