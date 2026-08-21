"""Attribute writes, the carrier for PERMISSION_ACTION_WRITE.

A write and an invoke are different operations carrying different authority. These assert
the separation holds: a write is addressed like a PropertyUpdate, is not reachable through
DeviceCommand, and is answered by its own result.
"""

from kusinta.iot.access.v1 import acl_pb2
from kusinta.iot.device.v1 import cluster_state_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import command_pb2, envelope_pb2


def _target(attribute="OccupiedHeatingSetpoint", cluster=0x0201, attribute_id=0x0012, endpoint=1):
    return acl_pb2.AttributeRef(
        attribute_name=attribute,
        cluster_id=cluster,
        attribute_id=attribute_id,
        endpoint_id=endpoint,
    )


def test_attribute_write_round_trips():
    req = command_pb2.AttributeWriteRequest(
        request_id="w-1",
        device_id=identity_pb2.DeviceId(value="therm-1"),
        target=_target(),
        value=cluster_state_pb2.AttributeValue(int_value=2150),
    )
    decoded = command_pb2.AttributeWriteRequest()
    decoded.ParseFromString(req.SerializeToString())
    assert decoded.target.cluster_id == 0x0201
    assert decoded.target.endpoint_id == 1
    assert decoded.value.int_value == 2150


def test_attribute_write_is_addressed_like_a_property_update():
    """AttributeRef resolves numerically, as PropertyUpdate does, so a constraint can bound
    a written value by matching the target directly."""
    fields = {f.name for f in acl_pb2.AttributeRef.DESCRIPTOR.fields}
    assert {"cluster_id", "attribute_id", "endpoint_id"} <= fields


def test_attribute_write_is_not_a_command_case():
    """The whole point of #24: an attribute write no longer travels as a command."""
    cases = {f.name for f in command_pb2.DeviceCommand.DESCRIPTOR.oneofs_by_name["parameters"].fields}
    assert "thermostat_setpoint_write" not in cases
    assert "thermostat_setpoint" in cases  # SetpointRaiseLower is a real command, and stays


def test_attribute_write_rides_its_own_app_message_case():
    msg = envelope_pb2.AppMessage(
        message_id="m-1",
        attribute_write=command_pb2.AttributeWriteRequest(request_id="w-1"),
    )
    decoded = envelope_pb2.AppMessage()
    decoded.ParseFromString(msg.SerializeToString())
    assert decoded.WhichOneof("payload") == "attribute_write"


def test_a_write_is_answered_by_a_command_result():
    """One result type for both operations: they differ in what they do to a device, not in
    how the gateway reports having done it, and request_id says which is being answered."""
    result = command_pb2.CommandResult(
        request_id="w-1",
        success=False,
        error=command_pb2.CommandError(
            code=command_pb2.COMMAND_ERROR_CODE_CONSTRAINT_VIOLATED,
            message="above the property owner's cap",
        ),
    )
    decoded = command_pb2.CommandResult()
    decoded.ParseFromString(result.SerializeToString())
    assert decoded.error.code == command_pb2.COMMAND_ERROR_CODE_CONSTRAINT_VIOLATED


def test_there_is_no_separate_write_result_type():
    """It was a field-for-field clone of CommandResult."""
    assert not hasattr(envelope_pb2, "AttributeWriteResult")


def test_write_acceptance_is_not_confirmation():
    result = command_pb2.CommandResult(request_id="w-1", success=True)
    assert not result.HasField("settles_by")
    result.settles_by.FromSeconds(1_700_000_000)
    assert result.HasField("settles_by")


def test_a_write_can_carry_any_attribute_value_shape():
    req = command_pb2.AttributeWriteRequest(
        target=_target(attribute="StartUpOnOff", cluster=0x0006, attribute_id=0x4003),
        value=cluster_state_pb2.AttributeValue(
            null_value=cluster_state_pb2.NullValue()
        ),
    )
    decoded = command_pb2.AttributeWriteRequest()
    decoded.ParseFromString(req.SerializeToString())
    assert decoded.value.WhichOneof("value") == "null_value"


# --- reads use the same addressing type ---------------------------------------------


def test_read_and_write_address_an_attribute_identically():
    """One spelling of 'an attribute on a device' across read, write, grant and constraint,
    so a consumer writes one matcher instead of several that must agree."""
    read = envelope_pb2.PropertyReadRequest(
        device_id=identity_pb2.DeviceId(value="therm-1"), target=_target()
    )
    write = command_pb2.AttributeWriteRequest(
        device_id=identity_pb2.DeviceId(value="therm-1"), target=_target()
    )
    assert read.target == write.target
    assert (
        type(read.target)
        is type(write.target)
        is type(acl_pb2.PropertyConstraint().attribute)
    )


def test_read_no_longer_spells_the_triple_by_hand():
    fields = {f.name for f in envelope_pb2.PropertyReadRequest.DESCRIPTOR.fields}
    assert fields == {"device_id", "target"}


def test_a_vendor_parameter_can_be_read_written_and_granted():
    """It could previously be reported but never written or granted, which would have made
    a valve position all-or-nothing for permissions."""
    ref = acl_pb2.AttributeRef(
        vendor_extension="homematic.thermostat", attribute_name="LEVEL", endpoint_id=1
    )
    write = command_pb2.AttributeWriteRequest(target=ref)
    grant = acl_pb2.DeviceAcl(allowed_attribute_refs=[ref])
    read = envelope_pb2.PropertyReadRequest(target=ref)
    for msg in (write, grant, read):
        decoded = type(msg)()
        decoded.ParseFromString(msg.SerializeToString())
    assert grant.allowed_attribute_refs[0].vendor_extension == "homematic.thermostat"
    assert write.target.attribute_name == "LEVEL"
