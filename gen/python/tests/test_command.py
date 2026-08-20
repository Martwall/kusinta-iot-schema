"""Command tests for the thermostat setpoint paths.

Two things are load-bearing here and neither is visible in a round-trip of the
happy path:

  * `mode` is Matter's SetpointRaiseLowerModeEnum — Heat=0, Cool=1, Both=2. Zero is
    a real mode, not "unset", so the field carries explicit presence. A bare proto3
    scalar would make a producer that means Heat and one that never set the field
    byte-identical on the wire.
  * the delta command and the absolute write are separate messages, so a producer
    reading the wrong one cannot happen by parsing a message that looks valid.
"""

from kusinta.iot.webrtc.v1 import command_pb2
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


# --- delta command ----------------------------------------------------------------


def test_setpoint_delta_round_trips_negative_amount():
    original = command_pb2.ThermostatSetpointParams(mode=1, amount=-150)
    decoded = command_pb2.ThermostatSetpointParams()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.mode == 1
    assert decoded.amount == -150


def test_device_command_carries_delta_case():
    cmd = command_pb2.DeviceCommand(
        command_id="cmd-1",
        device_id=identity_pb2.DeviceId(value="therm-1"),
        cluster_id_hex="0201",
        command_name="SetpointRaiseLower",
        thermostat_setpoint=command_pb2.ThermostatSetpointParams(mode=0, amount=50),
    )
    decoded = command_pb2.DeviceCommand()
    decoded.ParseFromString(cmd.SerializeToString())
    assert decoded.WhichOneof("parameters") == "thermostat_setpoint"
    assert decoded.thermostat_setpoint.amount == 50


# --- absolute write command -------------------------------------------------------


def test_device_command_carries_absolute_write_case():
    cmd = command_pb2.DeviceCommand(
        command_id="cmd-2",
        device_id=identity_pb2.DeviceId(value="therm-1"),
        cluster_id_hex="0201",
        command_name="WriteAttribute",
        thermostat_setpoint_write=command_pb2.ThermostatSetpointWriteParams(
            mode=0, setpoint_centidegrees=2150
        ),
    )
    decoded = command_pb2.DeviceCommand()
    decoded.ParseFromString(cmd.SerializeToString())
    assert decoded.WhichOneof("parameters") == "thermostat_setpoint_write"
    assert decoded.thermostat_setpoint_write.setpoint_centidegrees == 2150


def test_absolute_write_round_trips_negative_setpoint():
    original = command_pb2.ThermostatSetpointWriteParams(
        mode=1, setpoint_centidegrees=-500
    )
    decoded = command_pb2.ThermostatSetpointWriteParams()
    decoded.ParseFromString(original.SerializeToString())
    assert decoded.setpoint_centidegrees == -500


def test_absolute_write_mode_absent_when_never_set():
    params = command_pb2.ThermostatSetpointWriteParams(setpoint_centidegrees=2150)
    assert not params.HasField("mode")


def test_absolute_write_mode_present_when_set_to_heat():
    params = command_pb2.ThermostatSetpointWriteParams(
        mode=0, setpoint_centidegrees=2150
    )
    assert params.HasField("mode")
    assert params.mode == 0


def test_delta_and_absolute_write_are_distinct_oneof_cases():
    cmd = command_pb2.DeviceCommand(
        thermostat_setpoint=command_pb2.ThermostatSetpointParams(mode=0, amount=50)
    )
    cmd.thermostat_setpoint_write.setpoint_centidegrees = 2150
    assert cmd.WhichOneof("parameters") == "thermostat_setpoint_write"
    assert not cmd.HasField("thermostat_setpoint")


# --- CommandResult.settles_by -----------------------------------------------------


def test_command_result_settles_by_absent_by_default():
    result = command_pb2.CommandResult(command_id="cmd-1", success=True)
    assert not result.HasField("settles_by")


def test_command_result_settles_by_round_trips():
    result = command_pb2.CommandResult(command_id="cmd-1", success=True)
    result.settles_by.FromSeconds(1_700_000_000)
    decoded = command_pb2.CommandResult()
    decoded.ParseFromString(result.SerializeToString())
    assert decoded.HasField("settles_by")
    assert decoded.settles_by.ToSeconds() == 1_700_000_000
