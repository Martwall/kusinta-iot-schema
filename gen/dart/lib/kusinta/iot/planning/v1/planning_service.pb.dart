// This is a generated file - do not edit.
//
// Generated from kusinta/iot/planning/v1/planning_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $1;
import 'planning.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetPlanningInputsRequest extends $pb.GeneratedMessage {
  factory GetPlanningInputsRequest({
    $core.String? biddingZone,
    $0.ForecastCell? forecastCell,
    $1.Timestamp? pricesFrom,
    $1.Timestamp? forecastIssuedAfter,
  }) {
    final result = create();
    if (biddingZone != null) result.biddingZone = biddingZone;
    if (forecastCell != null) result.forecastCell = forecastCell;
    if (pricesFrom != null) result.pricesFrom = pricesFrom;
    if (forecastIssuedAfter != null)
      result.forecastIssuedAfter = forecastIssuedAfter;
    return result;
  }

  GetPlanningInputsRequest._();

  factory GetPlanningInputsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetPlanningInputsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPlanningInputsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.planning.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'biddingZone')
    ..aOM<$0.ForecastCell>(2, _omitFieldNames ? '' : 'forecastCell',
        subBuilder: $0.ForecastCell.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'pricesFrom',
        subBuilder: $1.Timestamp.create)
    ..aOM<$1.Timestamp>(4, _omitFieldNames ? '' : 'forecastIssuedAfter',
        subBuilder: $1.Timestamp.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPlanningInputsRequest clone() =>
      GetPlanningInputsRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPlanningInputsRequest copyWith(
          void Function(GetPlanningInputsRequest) updates) =>
      super.copyWith((message) => updates(message as GetPlanningInputsRequest))
          as GetPlanningInputsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPlanningInputsRequest create() => GetPlanningInputsRequest._();
  @$core.override
  GetPlanningInputsRequest createEmptyInstance() => create();
  static $pb.PbList<GetPlanningInputsRequest> createRepeated() =>
      $pb.PbList<GetPlanningInputsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPlanningInputsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPlanningInputsRequest>(create);
  static GetPlanningInputsRequest? _defaultInstance;

  /// The bidding zone's short code, as the day-ahead market names it: "SE1" to "SE4" in
  /// Sweden. Unknown to the api-server: answered with no prices, never refused.
  @$pb.TagNumber(1)
  $core.String get biddingZone => $_getSZ(0);
  @$pb.TagNumber(1)
  set biddingZone($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBiddingZone() => $_has(0);
  @$pb.TagNumber(1)
  void clearBiddingZone() => $_clearField(1);

  /// Where to forecast for. Unset: no forecast is asked for.
  @$pb.TagNumber(2)
  $0.ForecastCell get forecastCell => $_getN(1);
  @$pb.TagNumber(2)
  set forecastCell($0.ForecastCell value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasForecastCell() => $_has(1);
  @$pb.TagNumber(2)
  void clearForecastCell() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ForecastCell ensureForecastCell() => $_ensure(1);

  /// The earliest price interval wanted. Every interval known from it on is answered, up to
  /// the last the market has published (the next day's, once its auction has cleared).
  /// Unset: from the start of the current day in the zone's own time.
  @$pb.TagNumber(3)
  $1.Timestamp get pricesFrom => $_getN(2);
  @$pb.TagNumber(3)
  set pricesFrom($1.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPricesFrom() => $_has(2);
  @$pb.TagNumber(3)
  void clearPricesFrom() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensurePricesFrom() => $_ensure(2);

  /// The issue the gateway already holds. Set: a forecast is answered only where a later issue
  /// is known. Unset: the latest issue.
  @$pb.TagNumber(4)
  $1.Timestamp get forecastIssuedAfter => $_getN(3);
  @$pb.TagNumber(4)
  set forecastIssuedAfter($1.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasForecastIssuedAfter() => $_has(3);
  @$pb.TagNumber(4)
  void clearForecastIssuedAfter() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Timestamp ensureForecastIssuedAfter() => $_ensure(3);
}

class GetPlanningInputsResponse extends $pb.GeneratedMessage {
  factory GetPlanningInputsResponse({
    $core.Iterable<$0.PriceInterval>? prices,
    $0.ForecastIssue? forecast,
    $1.Timestamp? latestForecastIssuedAt,
    $core.Iterable<$0.ExchangeRate>? exchangeRates,
  }) {
    final result = create();
    if (prices != null) result.prices.addAll(prices);
    if (forecast != null) result.forecast = forecast;
    if (latestForecastIssuedAt != null)
      result.latestForecastIssuedAt = latestForecastIssuedAt;
    if (exchangeRates != null) result.exchangeRates.addAll(exchangeRates);
    return result;
  }

  GetPlanningInputsResponse._();

  factory GetPlanningInputsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GetPlanningInputsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPlanningInputsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.planning.v1'),
      createEmptyInstance: create)
    ..pc<$0.PriceInterval>(
        1, _omitFieldNames ? '' : 'prices', $pb.PbFieldType.PM,
        subBuilder: $0.PriceInterval.create)
    ..aOM<$0.ForecastIssue>(2, _omitFieldNames ? '' : 'forecast',
        subBuilder: $0.ForecastIssue.create)
    ..aOM<$1.Timestamp>(3, _omitFieldNames ? '' : 'latestForecastIssuedAt',
        subBuilder: $1.Timestamp.create)
    ..pc<$0.ExchangeRate>(
        4, _omitFieldNames ? '' : 'exchangeRates', $pb.PbFieldType.PM,
        subBuilder: $0.ExchangeRate.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPlanningInputsResponse clone() =>
      GetPlanningInputsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPlanningInputsResponse copyWith(
          void Function(GetPlanningInputsResponse) updates) =>
      super.copyWith((message) => updates(message as GetPlanningInputsResponse))
          as GetPlanningInputsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPlanningInputsResponse create() => GetPlanningInputsResponse._();
  @$core.override
  GetPlanningInputsResponse createEmptyInstance() => create();
  static $pb.PbList<GetPlanningInputsResponse> createRepeated() =>
      $pb.PbList<GetPlanningInputsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPlanningInputsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPlanningInputsResponse>(create);
  static GetPlanningInputsResponse? _defaultInstance;

  /// Oldest first, without gaps or overlaps. Empty where none is known for the zone yet.
  @$pb.TagNumber(1)
  $pb.PbList<$0.PriceInterval> get prices => $_getList(0);

  /// The latest issue for the cell, where one later than forecast_issued_after is known.
  @$pb.TagNumber(2)
  $0.ForecastIssue get forecast => $_getN(1);
  @$pb.TagNumber(2)
  set forecast($0.ForecastIssue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasForecast() => $_has(1);
  @$pb.TagNumber(2)
  void clearForecast() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.ForecastIssue ensureForecast() => $_ensure(1);

  /// When the latest issue known for the cell was issued, whether or not it is answered in
  /// forecast: unset where none is known for the cell at all, so that "nothing newer" and
  /// "nothing" are told apart.
  @$pb.TagNumber(3)
  $1.Timestamp get latestForecastIssuedAt => $_getN(2);
  @$pb.TagNumber(3)
  set latestForecastIssuedAt($1.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLatestForecastIssuedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearLatestForecastIssuedAt() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Timestamp ensureLatestForecastIssuedAt() => $_ensure(2);

  /// The reference rates to the currency households in the zone pay in (SEK for SE1–SE4):
  /// every rate published from the day of prices_from on (its default where unset, in the
  /// zone's own time), and the last one published before that day, oldest first — whether or
  /// not any price is answered. A gateway that asks from the prices it already holds so learns
  /// each new rate as it is published, after the prices it converts have arrived. Empty where
  /// no rate is known for the zone's currency.
  @$pb.TagNumber(4)
  $pb.PbList<$0.ExchangeRate> get exchangeRates => $_getList(3);
}

/// The api-server's planning inputs for a gateway, over the gateway's client certificate. The
/// gateway asks; the api-server answers from what it has fetched for the fleet, and keeps no
/// record of which gateway asked for which cell.
class PlanningInputsServiceApi {
  final $pb.RpcClient _client;

  PlanningInputsServiceApi(this._client);

  $async.Future<GetPlanningInputsResponse> getPlanningInputs(
          $pb.ClientContext? ctx, GetPlanningInputsRequest request) =>
      _client.invoke<GetPlanningInputsResponse>(ctx, 'PlanningInputsService',
          'GetPlanningInputs', request, GetPlanningInputsResponse());
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
