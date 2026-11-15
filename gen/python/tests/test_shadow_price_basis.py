"""Contract tests for the price basis of a shadow's money figures, and the energy price adder.

These assert the decisions the shape encodes:

  * each scored day states the basis its money figures are on, spot or the payer's price,
    and on the payer's price whether the adder was the default or the payer's own
  * a day kept before price bases reads as not stated, which a client reads as spot
  * the summary carries the terms the gateway supplies itself (VAT, energy tax), dated, so a
    client can say what the figures include
  * the adder is read, set and reset to the default per home or per building plant, in
    millionths of the payer's currency per kWh, excluding VAT, with the terms in force
"""

from kusinta.iot.heating.v1 import heating_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, household_pb2, management_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def _home():
    return heating_pb2.EnergyPricePayer(home_id=identity_pb2.SpaceId(value="home-1"))


def test_a_day_kept_before_price_bases_does_not_state_one():
    decoded = _round_trip(heating_pb2.ShadowDay(date="2026-11-01", net_saving_micro_eur=125000))

    assert decoded.price_basis == heating_pb2.SHADOW_PRICE_BASIS_UNSPECIFIED


def test_a_spot_day_names_no_adder():
    decoded = _round_trip(heating_pb2.ShadowDay(date="2026-11-01", price_basis=heating_pb2.SHADOW_PRICE_BASIS_SPOT))

    assert decoded.adder_source == heating_pb2.ENERGY_PRICE_ADDER_SOURCE_UNSPECIFIED


def test_a_payer_day_says_it_rests_on_the_default_adder():
    day = heating_pb2.ShadowDay(
        date="2026-11-16",
        price_basis=heating_pb2.SHADOW_PRICE_BASIS_PAYER,
        adder_source=heating_pb2.ENERGY_PRICE_ADDER_SOURCE_DEFAULT,
    )

    decoded = _round_trip(day)
    assert (decoded.price_basis, decoded.adder_source) == (
        heating_pb2.SHADOW_PRICE_BASIS_PAYER,
        heating_pb2.ENERGY_PRICE_ADDER_SOURCE_DEFAULT,
    )


def test_the_summary_dates_the_vat_and_energy_tax_it_prices_with():
    summary = heating_pb2.ShadowSummary(
        price_terms=[
            heating_pb2.EnergyPriceTerms(
                valid_from="2026-01-01", vat_permille=250, currency="SEK", energy_tax_micro_per_kwh=360000
            )
        ]
    )

    terms = _round_trip(summary).price_terms[0]
    assert (terms.valid_from, terms.vat_permille, terms.currency, terms.energy_tax_micro_per_kwh) == (
        "2026-01-01",
        250,
        "SEK",
        360000,
    )


def test_an_adder_carries_the_terms_its_currency_and_vat_come_from():
    adder = heating_pb2.EnergyPriceAdder(
        payer=_home(),
        terms=heating_pb2.EnergyPriceTerms(vat_permille=250, currency="SEK"),
        micro_per_kwh=450000,
        source=heating_pb2.ENERGY_PRICE_ADDER_SOURCE_STATED,
    )

    decoded = _round_trip(adder)
    assert (decoded.terms.currency, decoded.micro_per_kwh, decoded.source) == (
        "SEK",
        450000,
        heating_pb2.ENERGY_PRICE_ADDER_SOURCE_STATED,
    )


def test_an_adder_without_a_price_area_has_no_terms():
    decoded = _round_trip(heating_pb2.EnergyPriceAdder(payer=_home()))

    assert not decoded.HasField("terms")


def test_a_default_of_zero_is_told_apart_from_no_default():
    decoded = _round_trip(heating_pb2.EnergyPriceAdder(payer=_home(), default_micro_per_kwh=0))

    assert decoded.HasField("default_micro_per_kwh")


def test_the_terms_bound_the_adder_in_their_own_currency():
    terms = heating_pb2.EnergyPriceTerms(currency="SEK", adder_max_micro_per_kwh=2000000)

    assert _round_trip(terms).adder_max_micro_per_kwh == 2000000


def test_a_homes_adder_is_read_by_the_home():
    request = management_pb2.ManagementRequest(get_energy_price_adder=management_pb2.GetEnergyPriceAdder(payer=_home()))

    assert _round_trip(request).get_energy_price_adder.payer.WhichOneof("payer") == "home_id"


def test_a_building_plants_adder_is_set_by_the_plant():
    request = management_pb2.ManagementRequest(
        set_energy_price_adder=management_pb2.SetEnergyPriceAdder(
            payer=heating_pb2.EnergyPricePayer(plant_id="plant-1"), currency="SEK", micro_per_kwh=300000
        )
    )

    decoded = _round_trip(request).set_energy_price_adder
    assert (decoded.payer.WhichOneof("payer"), decoded.micro_per_kwh) == ("plant_id", 300000)


def test_an_adder_of_zero_is_a_value_not_a_reset():
    decoded = _round_trip(management_pb2.SetEnergyPriceAdder(payer=_home(), currency="SEK", micro_per_kwh=0))

    assert decoded.HasField("micro_per_kwh")


def test_a_set_without_a_value_resets_to_the_default():
    decoded = _round_trip(management_pb2.SetEnergyPriceAdder(payer=_home()))

    assert not decoded.HasField("micro_per_kwh")


def test_a_read_or_set_is_answered_with_the_adder_as_it_stands():
    result = envelope_pb2.ManagementResult(
        in_reply_to="m-1",
        energy_price_adder=heating_pb2.EnergyPriceAdder(payer=_home(), source=heating_pb2.ENERGY_PRICE_ADDER_SOURCE_DEFAULT),
    )

    assert _round_trip(result).WhichOneof("result") == "energy_price_adder"


def test_a_households_export_carries_its_adder():
    part = household_pb2.HouseholdExport(
        home_id=identity_pb2.SpaceId(value="home-1"),
        energy_price_adder=heating_pb2.EnergyPriceAdder(payer=_home(), source=heating_pb2.ENERGY_PRICE_ADDER_SOURCE_STATED),
    )

    assert _round_trip(part).WhichOneof("part") == "energy_price_adder"
