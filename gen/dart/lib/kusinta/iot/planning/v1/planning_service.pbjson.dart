// This is a generated file - do not edit.
//
// Generated from kusinta/iot/planning/v1/planning_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import '../../../../google/protobuf/timestamp.pbjson.dart' as $1;
import 'planning.pbjson.dart' as $0;

@$core.Deprecated('Use getPlanningInputsRequestDescriptor instead')
const GetPlanningInputsRequest$json = {
  '1': 'GetPlanningInputsRequest',
  '2': [
    {'1': 'bidding_zone', '3': 1, '4': 1, '5': 9, '10': 'biddingZone'},
    {
      '1': 'forecast_cell',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.planning.v1.ForecastCell',
      '10': 'forecastCell'
    },
    {
      '1': 'prices_from',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'pricesFrom'
    },
    {
      '1': 'forecast_issued_after',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'forecastIssuedAfter'
    },
  ],
};

/// Descriptor for `GetPlanningInputsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPlanningInputsRequestDescriptor = $convert.base64Decode(
    'ChhHZXRQbGFubmluZ0lucHV0c1JlcXVlc3QSIQoMYmlkZGluZ196b25lGAEgASgJUgtiaWRkaW'
    '5nWm9uZRJKCg1mb3JlY2FzdF9jZWxsGAIgASgLMiUua3VzaW50YS5pb3QucGxhbm5pbmcudjEu'
    'Rm9yZWNhc3RDZWxsUgxmb3JlY2FzdENlbGwSOwoLcHJpY2VzX2Zyb20YAyABKAsyGi5nb29nbG'
    'UucHJvdG9idWYuVGltZXN0YW1wUgpwcmljZXNGcm9tEk4KFWZvcmVjYXN0X2lzc3VlZF9hZnRl'
    'chgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSE2ZvcmVjYXN0SXNzdWVkQWZ0ZX'
    'I=');

@$core.Deprecated('Use getPlanningInputsResponseDescriptor instead')
const GetPlanningInputsResponse$json = {
  '1': 'GetPlanningInputsResponse',
  '2': [
    {
      '1': 'prices',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.planning.v1.PriceInterval',
      '10': 'prices'
    },
    {
      '1': 'forecast',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.planning.v1.ForecastIssue',
      '10': 'forecast'
    },
    {
      '1': 'latest_forecast_issued_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'latestForecastIssuedAt'
    },
    {
      '1': 'exchange_rates',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.planning.v1.ExchangeRate',
      '10': 'exchangeRates'
    },
  ],
};

/// Descriptor for `GetPlanningInputsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPlanningInputsResponseDescriptor = $convert.base64Decode(
    'ChlHZXRQbGFubmluZ0lucHV0c1Jlc3BvbnNlEj4KBnByaWNlcxgBIAMoCzImLmt1c2ludGEuaW'
    '90LnBsYW5uaW5nLnYxLlByaWNlSW50ZXJ2YWxSBnByaWNlcxJCCghmb3JlY2FzdBgCIAEoCzIm'
    'Lmt1c2ludGEuaW90LnBsYW5uaW5nLnYxLkZvcmVjYXN0SXNzdWVSCGZvcmVjYXN0ElUKGWxhdG'
    'VzdF9mb3JlY2FzdF9pc3N1ZWRfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1w'
    'UhZsYXRlc3RGb3JlY2FzdElzc3VlZEF0EkwKDmV4Y2hhbmdlX3JhdGVzGAQgAygLMiUua3VzaW'
    '50YS5pb3QucGxhbm5pbmcudjEuRXhjaGFuZ2VSYXRlUg1leGNoYW5nZVJhdGVz');

const $core.Map<$core.String, $core.dynamic> PlanningInputsServiceBase$json = {
  '1': 'PlanningInputsService',
  '2': [
    {
      '1': 'GetPlanningInputs',
      '2': '.kusinta.iot.planning.v1.GetPlanningInputsRequest',
      '3': '.kusinta.iot.planning.v1.GetPlanningInputsResponse'
    },
  ],
};

@$core.Deprecated('Use planningInputsServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    PlanningInputsServiceBase$messageJson = {
  '.kusinta.iot.planning.v1.GetPlanningInputsRequest':
      GetPlanningInputsRequest$json,
  '.kusinta.iot.planning.v1.ForecastCell': $0.ForecastCell$json,
  '.google.protobuf.Timestamp': $1.Timestamp$json,
  '.kusinta.iot.planning.v1.GetPlanningInputsResponse':
      GetPlanningInputsResponse$json,
  '.kusinta.iot.planning.v1.PriceInterval': $0.PriceInterval$json,
  '.kusinta.iot.planning.v1.ForecastIssue': $0.ForecastIssue$json,
  '.kusinta.iot.planning.v1.ForecastPoint': $0.ForecastPoint$json,
  '.kusinta.iot.planning.v1.ExchangeRate': $0.ExchangeRate$json,
};

/// Descriptor for `PlanningInputsService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List planningInputsServiceDescriptor = $convert.base64Decode(
    'ChVQbGFubmluZ0lucHV0c1NlcnZpY2USegoRR2V0UGxhbm5pbmdJbnB1dHMSMS5rdXNpbnRhLm'
    'lvdC5wbGFubmluZy52MS5HZXRQbGFubmluZ0lucHV0c1JlcXVlc3QaMi5rdXNpbnRhLmlvdC5w'
    'bGFubmluZy52MS5HZXRQbGFubmluZ0lucHV0c1Jlc3BvbnNl');
