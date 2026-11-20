"""Contract tests for a heat source's outdoor reading set against the weather.

These assert the decisions the shape encodes:

  * a view may carry no judgement of the outdoor reading, as where it is not judged or figures
    are withheld
  * the judgement says whether the reading is lifted, on which local dates, by how much at
    most, and how many of the window's quarter hours were left out of the bands for it
  * a judgement with no lifted date has no largest lift
"""

from kusinta.iot.heating.v1 import heating_pb2


def _round_trip(message):
    decoded = type(message)()
    decoded.ParseFromString(message.SerializeToString())
    return decoded


def test_a_view_without_an_outdoor_reading_has_none():
    decoded = _round_trip(heating_pb2.HeatCurveView(plant_id="plant-1"))

    assert not decoded.HasField("outdoor_reading")


def test_a_lifted_reading_says_so():
    view = heating_pb2.HeatCurveView(
        outdoor_reading=heating_pb2.HeatCurveOutdoorReading(lifted=True),
    )

    assert _round_trip(view).outdoor_reading.lifted


def test_a_lifted_reading_names_its_dates_newest_first():
    reading = heating_pb2.HeatCurveOutdoorReading(
        lifted_dates=["2026-11-14", "2026-11-09"],
    )

    assert list(_round_trip(reading).lifted_dates) == ["2026-11-14", "2026-11-09"]


def test_a_lifted_reading_gives_its_largest_lift():
    reading = heating_pb2.HeatCurveOutdoorReading(largest_lift_centidegrees=850)

    assert _round_trip(reading).largest_lift_centidegrees == 850


def test_a_reading_with_no_lifted_date_has_no_largest_lift():
    decoded = _round_trip(heating_pb2.HeatCurveOutdoorReading(quarters_left_out=0))

    assert not decoded.HasField("largest_lift_centidegrees")


def test_a_reading_counts_the_quarter_hours_left_out():
    reading = heating_pb2.HeatCurveOutdoorReading(quarters_left_out=17)

    assert _round_trip(reading).quarters_left_out == 17
