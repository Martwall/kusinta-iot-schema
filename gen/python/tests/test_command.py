"""Command tests for the thermostat setpoint path and command addressing.

Two things are load-bearing here and neither is visible in a round-trip of the
happy path:

  * `mode` is Matter's SetpointRaiseLowerModeEnum — Heat=0, Cool=1, Both=2. Zero is
    a real mode, not "unset", so the field carries explicit presence. A bare proto3
    scalar would make a producer that means Heat and one that never set the field
    byte-identical on the wire.
  * a command names its Matter cluster and command numerically, and the parameters case
    declares which of those it can express, so the three cannot disagree silently.

An absolute setpoint is NOT here: writing an attribute is webrtc.v1.AttributeWriteRequest,
not a command. See test_attribute_write.py.
"""

from kusinta.iot.webrtc.v1 import command_pb2, setpoint_mode_pb2
from kusinta.iot.identity.v1 import identity_pb2


# --- mode: Matter numbering and explicit presence ---------------------------------


def test_setpoint_mode_absent_when_never_set():
    params = command_pb2.ThermostatSetpointParams(amount=50)
    assert not params.HasField("mode")


def test_setpoint_mode_present_when_set_to_heat():
    params = command_pb2.ThermostatSetpointParams(mode=0, amount=50)
    assert params.HasField("mode")
    assert params.mode == 0


def test_setpoint_mode_heat_survives_round_trip_as_present():
    original = command_pb2.ThermostatSetpointParams(mode=0, amount=50)
    decoded = command_pb2.ThermostatSetpointParams()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.HasField("mode")
    assert decoded.mode == 0


def test_setpoint_mode_unset_survives_round_trip_as_absent():
    original = command_pb2.ThermostatSetpointParams(amount=50)
    decoded = command_pb2.ThermostatSetpointParams()
    decoded.ParseFromString(original.SerializeToString())
    assert not decoded.HasField("mode")


# --- mode: a real enum, not a commented-on integer --------------------------------


def test_setpoint_adjust_mode_carries_matter_numbering():
    """Matter's SetpointRaiseLowerModeEnum. An older Heat=1/Cool=2/Both=3 convention
    reverses which physical behavior a command produces, so the numbering is asserted
    rather than left to a comment."""
    assert setpoint_mode_pb2.SETPOINT_ADJUST_MODE_HEAT == 0
    assert setpoint_mode_pb2.SETPOINT_ADJUST_MODE_COOL == 1
    assert setpoint_mode_pb2.SETPOINT_ADJUST_MODE_BOTH == 2


def test_setpoint_mode_is_typed_as_setpoint_adjust_mode():
    params = command_pb2.ThermostatSetpointParams(
        mode=setpoint_mode_pb2.SETPOINT_ADJUST_MODE_COOL, amount=-150
    )
    assert params.mode == setpoint_mode_pb2.SETPOINT_ADJUST_MODE_COOL


def test_setpoint_adjust_mode_is_not_system_mode():
    """Matter's SystemModeEnum, carried by ThermostatProperties.system_mode, numbers
    Cool 3; this enum numbers it 1. Reading one through the other's table silently
    commands the wrong thing."""
    assert setpoint_mode_pb2.SETPOINT_ADJUST_MODE_COOL != 3


# --- delta command ----------------------------------------------------------------


def test_setpoint_delta_round_trips_negative_amount():
    original = command_pb2.ThermostatSetpointParams(mode=1, amount=-150)
    decoded = command_pb2.ThermostatSetpointParams()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.mode == 1
    assert decoded.amount == -150


def test_device_command_carries_delta_case():
    cmd = command_pb2.DeviceCommand(
        request_id="cmd-1",
        device_id=identity_pb2.DeviceId(value="therm-1"),
        cluster_id=0x0201,
        command_name="SetpointRaiseLower",
        thermostat_setpoint=command_pb2.ThermostatSetpointParams(mode=0, amount=50),
    )
    decoded = command_pb2.DeviceCommand()
    decoded.ParseFromString(cmd.SerializeToString())
    assert decoded.WhichOneof("parameters") == "thermostat_setpoint"
    assert decoded.thermostat_setpoint.amount == 50


# --- CommandResult.settles_by -----------------------------------------------------


def test_command_result_settles_by_absent_by_default():
    result = command_pb2.CommandResult(request_id="cmd-1", success=True)
    assert not result.HasField("settles_by")


def test_command_result_settles_by_round_trips():
    result = command_pb2.CommandResult(request_id="cmd-1", success=True)
    result.settles_by.FromSeconds(1_700_000_000)
    decoded = command_pb2.CommandResult()
    decoded.ParseFromString(result.SerializeToString())
    assert decoded.HasField("settles_by")
    assert decoded.settles_by.ToSeconds() == 1_700_000_000


# --- refusals carry a machine-readable code ---------------------------------------


def test_command_error_code_defaults_to_unspecified():
    result = command_pb2.CommandResult(request_id="cmd-1", success=False)
    assert result.error.code == command_pb2.COMMAND_ERROR_CODE_UNSPECIFIED


def test_command_error_round_trips_a_refusal():
    result = command_pb2.CommandResult(
        request_id="cmd-1",
        success=False,
        error=command_pb2.CommandError(
            code=command_pb2.COMMAND_ERROR_CODE_NOT_ENTITLED,
            message="caller may not act on this device",
        ),
    )
    decoded = command_pb2.CommandResult()
    decoded.ParseFromString(result.SerializeToString())
    assert decoded.error.code == command_pb2.COMMAND_ERROR_CODE_NOT_ENTITLED


def test_timeout_is_distinct_from_a_refusal():
    """TIMEOUT says nothing about what happened to the device, so a consumer must not
    treat it as a refusal and roll a displayed value back."""
    assert (
        command_pb2.COMMAND_ERROR_CODE_TIMEOUT
        != command_pb2.COMMAND_ERROR_CODE_NOT_ENTITLED
    )
    assert (
        command_pb2.COMMAND_ERROR_CODE_TIMEOUT
        != command_pb2.COMMAND_ERROR_CODE_REJECTED_BY_DEVICE
    )


def test_constraint_violation_is_distinct_from_not_entitled():
    """One is about the user's request being out of bounds and is worth showing them;
    the other must not reveal whether the device exists."""
    assert (
        command_pb2.COMMAND_ERROR_CODE_CONSTRAINT_VIOLATED
        != command_pb2.COMMAND_ERROR_CODE_NOT_ENTITLED
    )
