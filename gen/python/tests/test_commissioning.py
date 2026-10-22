"""Contract tests for a home's commissioning profile: facts, templates, feature states and tests.

These assert the decisions the shape encodes:

  * a fact records who answered it, how and when, and "don't know" is an answer
  * a fact is a house fact or household data, and a deviation names its template version
  * a feature works, needs a fact or a test from a named party, or is blocked for safety
  * a commissioning test drives one binding of one heating record, and its pass can lapse
"""

from kusinta.iot.commissioning.v1 import commissioning_pb2
from kusinta.iot.device.v1 import cluster_state_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2

c = commissioning_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_a_fact_records_who_answered_it_and_how():
    fact = c.CommissioningFact(
        key="floor.pump_tolerates_all_zones_off",
        value=cluster_state_pb2.AttributeValue(bool_value=True),
        provenance=c.Provenance(
            party=c.PARTY_INSTALLER, evidence=c.EVIDENCE_MEASURED, by=identity_pb2.UserId(value="u-1")
        ),
    )

    provenance = _round_trip(fact).provenance
    assert (provenance.party, provenance.evidence, provenance.by.value) == (
        c.PARTY_INSTALLER,
        c.EVIDENCE_MEASURED,
        "u-1",
    )


def test_dont_know_is_an_answer_with_no_value():
    decoded = _round_trip(c.CommissioningFact(key="floor.actuator_travel_seconds", unknown=True))

    assert (decoded.unknown, decoded.HasField("value")) == (True, False)


def test_a_fact_is_no_deviation_until_it_names_a_template_version():
    assert not _round_trip(c.CommissioningFact()).HasField("template_version")


def test_a_deviation_names_the_template_version_it_departs_from():
    assert _round_trip(c.CommissioningFact(template_version=0)).HasField("template_version")


def test_a_deviation_names_its_template():
    decoded = _round_trip(c.CommissioningFact(template_id="tpl-a", template_version=3))

    assert (decoded.template_id, decoded.template_version) == ("tpl-a", 3)


def test_a_block_names_the_binding_on_a_record_with_several():
    status = c.FeatureStatus(blocks=[c.FeatureBlock(record_id="plant-1", field="sg_ready_block")])

    assert _round_trip(status).blocks[0].field == "sg_ready_block"


def test_household_data_is_told_apart_from_house_facts():
    assert _round_trip(c.CommissioningFact(scope=c.FACT_SCOPE_HOUSEHOLD)).scope == c.FACT_SCOPE_HOUSEHOLD


def test_a_need_names_a_test_and_who_can_run_it():
    status = c.FeatureStatus(
        feature=c.FEATURE_FLOOR_ZONES,
        state=c.FEATURE_STATE_NEEDS,
        needs=[c.Need(test=c.TEST_KIND_OUTPUT_LEASE, record_id="zone-2", answerer=c.PARTY_INSTALLER)],
    )

    need = _round_trip(status).needs[0]
    assert (need.WhichOneof("what"), need.test, need.answerer) == ("test", c.TEST_KIND_OUTPUT_LEASE, c.PARTY_INSTALLER)


def test_a_block_says_why_and_on_what():
    status = c.FeatureStatus(
        state=c.FEATURE_STATE_BLOCKED_FOR_SAFETY,
        blocks=[c.FeatureBlock(reason=c.BLOCK_REASON_OUTPUT_NOT_LEASED, record_id="plant-1")],
    )

    block = _round_trip(status).blocks[0]
    assert (block.reason, block.record_id) == (c.BLOCK_REASON_OUTPUT_NOT_LEASED, "plant-1")


def test_a_template_is_versioned():
    template = c.HouseTemplate(version=4, facts=[c.TemplateFact(key="floor.actuator_travel_seconds", subject_label="SL 2")])

    decoded = _round_trip(template)
    assert (decoded.version, decoded.facts[0].subject_label) == (4, "SL 2")


def test_a_failed_test_says_how():
    test = c.CommissioningTest(state=c.TEST_STATE_FAILED, failure=c.TEST_FAILURE_POWER_ON_NOT_AT_REST)

    assert _round_trip(test).failure == c.TEST_FAILURE_POWER_ON_NOT_AT_REST


def test_a_test_is_run_on_one_binding():
    request = management_pb2.ManagementRequest(
        run_commissioning_test=management_pb2.RunCommissioningTest(
            kind=c.TEST_KIND_OUTPUT_LEASE, record_id="plant-1", field="add_on_heater_block"
        )
    )

    decoded = _round_trip(request).run_commissioning_test
    assert (decoded.record_id, decoded.field) == ("plant-1", "add_on_heater_block")


def test_a_home_follows_a_template():
    request = management_pb2.ManagementRequest(
        set_home_template=management_pb2.SetHomeTemplate(home_id=identity_pb2.SpaceId(value="home-15"), template_id="tpl-a")
    )

    assert _round_trip(request).set_home_template.template_id == "tpl-a"


def test_a_test_changing_state_is_pushed():
    message = envelope_pb2.GatewayMessage(commissioning_test=c.CommissioningTest(test_id="t-1", state=c.TEST_STATE_PASSED))

    assert _round_trip(message).WhichOneof("payload") == "commissioning_test"


def test_the_owner_organisation_is_told_only_whether_a_home_is_set_up():
    result = envelope_pb2.ManagementResult(
        home_setups=c.HomeSetups(homes=[c.HomeSetup(home_id=identity_pb2.SpaceId(value="home-15"), set_up=False)])
    )

    assert _round_trip(result).home_setups.homes[0].set_up is False
