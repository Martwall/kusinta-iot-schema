"""SOFTWARE: the software a gateway runs, reported to the api-server."""

from google.protobuf.timestamp_pb2 import Timestamp

from kusinta.iot.reporting.v1 import reporting_pb2


def _round_trip(message):
    return type(message).FromString(message.SerializeToString())


def test_a_gateway_reports_its_release_build_and_schema_version():
    report = reporting_pb2.ReportSoftwareRequest(
        release="0.1 x96",
        build="647f9a67",
        schema_version="0.2.0-beta.106",
        reported_at=Timestamp(seconds=1_795_600_000),
    )

    sent = _round_trip(report)
    assert (sent.release, sent.build, sent.schema_version, sent.reported_at.seconds) == (
        "0.1 x96",
        "647f9a67",
        "0.2.0-beta.106",
        1_795_600_000,
    )


def test_a_report_with_nothing_known_reads_empty_rather_than_failing():
    sent = _round_trip(reporting_pb2.ReportSoftwareRequest())

    assert (sent.release, sent.build, sent.schema_version) == ("", "", "")
