"""Contract tests for how a write behaves and how late a reading arrives.

These assert the decisions the shape encodes:

  * write behaviour is stated per attribute on one endpoint's cluster, so each channel of a
    multi-channel device states its own
  * "not stated" is an absent key, never sticky or leased by default
  * a lease names its bounds, whether renewal restarts it, and the value the device returns to
  * lease bounds, intervals and lease lengths are absent rather than zero when not stated
  * a write to a leased attribute carries its lease length
"""

from kusinta.iot.device.v1 import cluster_state_pb2
from kusinta.iot.webrtc.v1 import command_pb2

_ON_OFF = 0x0000


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_write_behaviour_is_not_stated_by_default():
    state = cluster_state_pb2.ClusterState(cluster_id=0x0006)

    assert len(state.attribute_write_behaviours) == 0


def test_a_leased_attribute_states_its_bounds():
    state = cluster_state_pb2.ClusterState(cluster_id=0x0006)
    state.attribute_write_behaviours[_ON_OFF].CopyFrom(
        cluster_state_pb2.AttributeWriteBehaviour(
            persistence=cluster_state_pb2.WRITE_PERSISTENCE_LEASED,
            min_lease_seconds=60,
            max_lease_seconds=7200,
        )
    )

    assert _round_trip(state).attribute_write_behaviours[_ON_OFF].max_lease_seconds == 7200


def test_a_leased_attribute_states_whether_renewal_restarts_the_lease():
    behaviour = cluster_state_pb2.AttributeWriteBehaviour(
        persistence=cluster_state_pb2.WRITE_PERSISTENCE_LEASED, renewal_restarts_lease=True
    )

    assert _round_trip(behaviour).renewal_restarts_lease


def test_a_leased_attribute_states_its_rest_value():
    behaviour = cluster_state_pb2.AttributeWriteBehaviour(
        persistence=cluster_state_pb2.WRITE_PERSISTENCE_LEASED,
        rest_value=cluster_state_pb2.AttributeValue(bool_value=True),
    )

    assert _round_trip(behaviour).rest_value.bool_value


def test_lease_bounds_are_absent_rather_than_zero_when_not_stated():
    behaviour = cluster_state_pb2.AttributeWriteBehaviour(
        persistence=cluster_state_pb2.WRITE_PERSISTENCE_STICKY
    )

    assert not _round_trip(behaviour).HasField("max_lease_seconds")


def test_a_write_interval_is_absent_rather_than_zero_when_not_stated():
    behaviour = cluster_state_pb2.AttributeWriteBehaviour(
        persistence=cluster_state_pb2.WRITE_PERSISTENCE_STICKY
    )

    assert not _round_trip(behaviour).HasField("min_write_interval_seconds")


def test_read_latency_is_not_stated_by_default():
    state = cluster_state_pb2.ClusterState(cluster_id=0x0201)

    assert len(state.attribute_read_latencies) == 0


def test_a_delayed_reading_is_stated_per_attribute():
    state = cluster_state_pb2.ClusterState(cluster_id=0x0201)
    state.attribute_read_latencies[0x0000] = cluster_state_pb2.READ_LATENCY_DELAYED

    assert _round_trip(state).attribute_read_latencies[0x0000] == cluster_state_pb2.READ_LATENCY_DELAYED


def test_a_leased_write_carries_its_lease_length():
    req = command_pb2.AttributeWriteRequest(request_id="w-1", lease_seconds=1800)

    assert _round_trip(req).lease_seconds == 1800


def test_a_plain_write_has_no_lease():
    req = command_pb2.AttributeWriteRequest(request_id="w-2")

    assert not _round_trip(req).HasField("lease_seconds")
