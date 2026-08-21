"""Contract tests for the Matter command annotations.

The attribute side has been machine-readable for a while; the command side was prose.
These assert the mapping a consumer routes and authorizes on.
"""

from kusinta.iot.device.v1 import matter_options_pb2
from kusinta.iot.webrtc.v1 import command_pb2

PARAMETER_CASES = [
    field
    for field in command_pb2.DeviceCommand.DESCRIPTOR.oneofs_by_name["parameters"].fields
    if field.message_type is not None
]


def test_every_typed_parameters_case_declares_its_cluster():
    unannotated = [
        f.name
        for f in PARAMETER_CASES
        if not f.message_type.GetOptions().HasExtension(
            matter_options_pb2.matter_command_cluster
        )
    ]
    assert unannotated == []


# Verified against project-chip/connectedhomeip. A wrong ID routes silently to the wrong
# command and no structural test can catch it — only comparing with the spec can.
EXPECTED = {
    "ThermostatSetpointParams": (0x0201, 0x00),   # SetpointRaiseLower
    "LevelControlParams":       (0x0008, 0x00),   # MoveToLevel
    "WindowCoveringLiftParams": (0x0102, 0x05),   # GoToLiftPercentage
    "OnOffParams":              (0x0006, None),   # Off/On/Toggle share arguments (none)
    "DoorLockParams":           (0x0101, None),   # LockDoor/UnlockDoor share a PIN argument
}


def test_every_typed_parameters_case_is_covered_by_the_table():
    assert {f.message_type.name for f in PARAMETER_CASES} == set(EXPECTED)


def test_declared_clusters_and_command_ids_match_the_specification():
    for f in PARAMETER_CASES:
        o = f.message_type.GetOptions()
        cluster, command = EXPECTED[f.message_type.name]
        assert o.Extensions[matter_options_pb2.matter_command_cluster] == cluster
        if command is None:
            assert not o.HasExtension(matter_options_pb2.matter_command_id), f.message_type.name
        else:
            assert o.Extensions[matter_options_pb2.matter_command_id] == command


def test_a_message_shared_by_several_commands_declares_no_command_id():
    """Off, On and Toggle all take no arguments, so one message serves all three and
    DeviceCommand.matter_command_id alone says which is meant. The message must not encode
    that choice a second time."""
    fields = {f.name for f in command_pb2.OnOffParams.DESCRIPTOR.fields}
    assert fields == set()
    assert not command_pb2.OnOffParams.DESCRIPTOR.GetOptions().HasExtension(
        matter_options_pb2.matter_command_id
    )


def test_door_lock_keeps_only_its_real_argument():
    """lock_state restated LockDoor/UnlockDoor in a third numbering."""
    fields = {f.name for f in command_pb2.DoorLockParams.DESCRIPTOR.fields}
    assert fields == {"pin_code"}


def test_command_carries_a_numeric_command_id():
    cmd = command_pb2.DeviceCommand(
        request_id="c-1", cluster_id=0x0006, matter_command_id=0x02,
        on_off=command_pb2.OnOffParams(),
    )
    decoded = command_pb2.DeviceCommand()
    decoded.ParseFromString(cmd.SerializeToString())
    assert decoded.matter_command_id == 0x02


def test_matter_command_id_is_absent_rather_than_zero_when_unset():
    """Zero is a real Matter command ID — Off, LockDoor, MoveToLevel all use it — so it
    cannot double as 'not stated'."""
    cmd = command_pb2.DeviceCommand(request_id="c-1")
    assert not cmd.HasField("matter_command_id")
    cmd.matter_command_id = 0
    assert cmd.HasField("matter_command_id")


def test_cluster_is_checkable_against_the_case():
    """The check the annotation exists to make possible: a command naming a cluster its
    parameters case does not belong to is malformed."""
    case = command_pb2.DeviceCommand.DESCRIPTOR.fields_by_name["on_off"]
    declared = case.message_type.GetOptions().Extensions[
        matter_options_pb2.matter_command_cluster
    ]
    assert declared == 0x0006
    assert command_pb2.DeviceCommand(cluster_id=0x0201).cluster_id != declared
