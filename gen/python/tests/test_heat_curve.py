"""Contract tests for the heat curve view: a heat source's curve against what its zones draw.

These assert the decisions the shape encodes:

  * per outdoor band: its range and how many quarter hours fell in it, the typical (median)
    calculated and measured supply, and the add-on heat's energy and share where known; an
    unknown figure is absent, never 0
  * the most demanding zone's opening limits the curve, with the kind of reason (hydraulic
    balance, demand, or not known) and whether it leaves headroom under the gateway's
    threshold
  * a limit in a home the recipient is not given says so, naming no room, zone or opening;
    on a plant fewer than three homes share, the owner organisation is given no such limit at
    all, and the band reads as one whose limit is not known
  * a resident who is not given the figures is told so, so absent figures are not read as
    not known
  * the curve settings are the heat source's own, as its readings carry them, with which
    curve is in force
  * the view is read for one plant, or for a home: one answer carries the views
"""

from google.protobuf import timestamp_pb2

from kusinta.iot.device.v1 import device_pb2
from kusinta.iot.heating.v1 import heating_pb2
from kusinta.iot.identity.v1 import identity_pb2
from kusinta.iot.webrtc.v1 import envelope_pb2, management_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_an_unknown_limit_reason_is_unspecified():
    decoded = _round_trip(heating_pb2.HeatCurveLimit())

    assert decoded.reason == heating_pb2.HEAT_CURVE_LIMIT_REASON_UNSPECIFIED


def test_the_limit_reasons_keep_their_numbers():
    assert (heating_pb2.HEAT_CURVE_LIMIT_REASON_HYDRAULIC_BALANCE, heating_pb2.HEAT_CURVE_LIMIT_REASON_DEMAND) == (1, 2)


def test_a_band_without_a_supply_reading_has_no_median():
    decoded = _round_trip(heating_pb2.HeatCurveBand(outdoor_from_centidegrees=-400, outdoor_to_centidegrees=-200))

    assert not decoded.HasField("supply_centidegrees")


def test_a_median_supply_of_zero_is_a_value():
    decoded = _round_trip(heating_pb2.HeatCurveBand(calculated_supply_centidegrees=0))

    assert decoded.HasField("calculated_supply_centidegrees")


def test_a_band_carries_its_range_its_quarters_and_its_supplies():
    band = heating_pb2.HeatCurveBand(
        outdoor_from_centidegrees=-200,
        outdoor_to_centidegrees=0,
        quarters=412,
        calculated_supply_centidegrees=3450,
        supply_centidegrees=3380,
    )

    decoded = _round_trip(band)
    assert (
        decoded.outdoor_from_centidegrees,
        decoded.outdoor_to_centidegrees,
        decoded.quarters,
        decoded.calculated_supply_centidegrees,
        decoded.supply_centidegrees,
    ) == (-200, 0, 412, 3450, 3380)


def test_a_band_without_add_on_readings_has_no_add_on_figures():
    decoded = _round_trip(heating_pb2.HeatCurveBand(quarters=96))

    assert (decoded.HasField("add_on_heat_wh"), decoded.HasField("add_on_running_permille")) == (False, False)


def test_an_add_on_that_never_ran_is_told_apart_from_unknown():
    decoded = _round_trip(heating_pb2.HeatCurveBand(add_on_heat_wh=0, add_on_running_permille=0))

    assert (decoded.HasField("add_on_heat_wh"), decoded.HasField("add_on_running_permille")) == (True, True)


def test_a_limit_names_its_room_its_zone_its_opening_and_its_reason():
    limit = heating_pb2.HeatCurveLimit(
        reason=heating_pb2.HEAT_CURVE_LIMIT_REASON_HYDRAULIC_BALANCE,
        opening_permille=310,
        has_headroom=True,
        room_id=identity_pb2.SpaceId(value="room-1"),
        floor_zone_id="zone-1",
    )

    decoded = _round_trip(limit)
    assert (
        decoded.reason,
        decoded.opening_permille,
        decoded.has_headroom,
        decoded.room_id.value,
        decoded.floor_zone_id,
    ) == (heating_pb2.HEAT_CURVE_LIMIT_REASON_HYDRAULIC_BALANCE, 310, True, "room-1", "zone-1")


def test_a_limit_in_a_withheld_home_names_no_room_and_no_opening():
    limit = heating_pb2.HeatCurveLimit(
        reason=heating_pb2.HEAT_CURVE_LIMIT_REASON_DEMAND, has_headroom=False, home_withheld=True
    )

    decoded = _round_trip(limit)
    assert (decoded.home_withheld, decoded.HasField("room_id"), decoded.HasField("opening_permille")) == (
        True,
        False,
        False,
    )


def test_a_limit_withheld_below_three_homes_is_sent_as_none_known():
    withheld = heating_pb2.HeatCurveBand(outdoor_from_centidegrees=-400, outdoor_to_centidegrees=-200, quarters=40)

    assert not _round_trip(withheld).HasField("limit")


def test_a_limit_with_no_reason_known_is_still_a_limit():
    decoded = _round_trip(heating_pb2.HeatCurveBand(quarters=40, limit=heating_pb2.HeatCurveLimit()))

    assert decoded.HasField("limit")


def test_a_band_carries_its_limit():
    band = heating_pb2.HeatCurveBand(
        quarters=40, limit=heating_pb2.HeatCurveLimit(reason=heating_pb2.HEAT_CURVE_LIMIT_REASON_DEMAND)
    )

    assert _round_trip(band).limit.reason == heating_pb2.HEAT_CURVE_LIMIT_REASON_DEMAND


def test_a_view_states_the_threshold_and_percentile_it_judges_by():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1", threshold_permille=850, opening_percentile=90))

    assert (decoded.threshold_permille, decoded.opening_percentile) == (850, 90)


def test_a_view_orders_its_bands_as_given():
    view = heating_pb2.HeatCurveView(
        bands=[
            heating_pb2.HeatCurveBand(outdoor_from_centidegrees=-400),
            heating_pb2.HeatCurveBand(outdoor_from_centidegrees=-200),
        ]
    )

    assert [band.outdoor_from_centidegrees for band in _round_trip(view).bands] == [-400, -200]


def test_a_view_states_its_window():
    view = heating_pb2.HeatCurveView(
        window_from=timestamp_pb2.Timestamp(seconds=1_760_000_000),
        window_to=timestamp_pb2.Timestamp(seconds=1_762_419_200),
    )

    decoded = _round_trip(view)
    assert (decoded.window_from.seconds, decoded.window_to.seconds) == (1_760_000_000, 1_762_419_200)


def test_a_view_carries_the_curve_settings_as_the_heat_source_states_them():
    view = heating_pb2.HeatCurveView(
        curve_settings=device_pb2.HeatSourceReadings(heating_curve=9, heating_curve_offset=-1, min_supply_centidegrees=2000)
    )

    settings = _round_trip(view).curve_settings
    assert (settings.heating_curve, settings.heating_curve_offset, settings.min_supply_centidegrees) == (9, -1, 2000)


def test_a_views_curve_settings_say_which_curve_is_in_force():
    view = heating_pb2.HeatCurveView(
        curve_settings=device_pb2.HeatSourceReadings(own_curve_in_force=False, heating_curve=9)
    )

    assert _round_trip(view).curve_settings.HasField("own_curve_in_force")


def test_a_view_without_read_settings_has_none():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1"))

    assert not decoded.HasField("curve_settings")


def test_a_view_says_when_its_curve_settings_last_changed():
    view = heating_pb2.HeatCurveView(curve_settings_changed_at=timestamp_pb2.Timestamp(seconds=1_761_000_000))

    assert _round_trip(view).curve_settings_changed_at.seconds == 1_761_000_000


def test_a_view_without_figures_says_they_are_withheld():
    view = heating_pb2.HeatCurveView(
        plant_id="plant-1",
        figures_withheld=True,
        bands=[heating_pb2.HeatCurveBand(limit=heating_pb2.HeatCurveLimit(room_id=identity_pb2.SpaceId(value="room-1")))],
    )

    decoded = _round_trip(view)
    assert (decoded.figures_withheld, decoded.bands[0].HasField("supply_centidegrees")) == (True, False)


def test_a_view_names_its_plant_for_one_not_given_the_plant():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1", plant_name="Undercentral"))

    assert decoded.plant_name == "Undercentral"


def test_a_plants_view_is_read_by_the_plant():
    request = management_pb2.ManagementRequest(get_heat_curve_view=management_pb2.GetHeatCurveView(plant_id="plant-1"))

    assert _round_trip(request).get_heat_curve_view.WhichOneof("subject") == "plant_id"


def test_a_homes_views_are_read_by_the_home():
    request = management_pb2.ManagementRequest(
        get_heat_curve_view=management_pb2.GetHeatCurveView(home_id=identity_pb2.SpaceId(value="home-1"))
    )

    assert _round_trip(request).get_heat_curve_view.WhichOneof("subject") == "home_id"


def test_a_read_is_answered_with_the_views():
    result = envelope_pb2.ManagementResult(
        in_reply_to="m-1",
        heat_curve_views=heating_pb2.HeatCurveViews(views=[heating_pb2.HeatCurveView(plant_id="plant-1")]),
    )

    decoded = _round_trip(result)
    assert (decoded.WhichOneof("result"), decoded.heat_curve_views.views[0].plant_id) == ("heat_curve_views", "plant-1")
