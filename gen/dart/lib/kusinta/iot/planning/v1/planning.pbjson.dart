// This is a generated file - do not edit.
//
// Generated from kusinta/iot/planning/v1/planning.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use forecastCellDescriptor instead')
const ForecastCell$json = {
  '1': 'ForecastCell',
  '2': [
    {
      '1': 'latitude_centidegrees',
      '3': 1,
      '4': 1,
      '5': 17,
      '10': 'latitudeCentidegrees'
    },
    {
      '1': 'longitude_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'longitudeCentidegrees'
    },
  ],
};

/// Descriptor for `ForecastCell`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forecastCellDescriptor = $convert.base64Decode(
    'CgxGb3JlY2FzdENlbGwSMwoVbGF0aXR1ZGVfY2VudGlkZWdyZWVzGAEgASgRUhRsYXRpdHVkZU'
    'NlbnRpZGVncmVlcxI1ChZsb25naXR1ZGVfY2VudGlkZWdyZWVzGAIgASgRUhVsb25naXR1ZGVD'
    'ZW50aWRlZ3JlZXM=');

@$core.Deprecated('Use priceIntervalDescriptor instead')
const PriceInterval$json = {
  '1': 'PriceInterval',
  '2': [
    {
      '1': 'start',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'start'
    },
    {
      '1': 'end',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'end'
    },
    {'1': 'eur_cents_per_mwh', '3': 3, '4': 1, '5': 17, '10': 'eurCentsPerMwh'},
  ],
};

/// Descriptor for `PriceInterval`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priceIntervalDescriptor = $convert.base64Decode(
    'Cg1QcmljZUludGVydmFsEjAKBXN0YXJ0GAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdG'
    'FtcFIFc3RhcnQSLAoDZW5kGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIDZW5k'
    'EikKEWV1cl9jZW50c19wZXJfbXdoGAMgASgRUg5ldXJDZW50c1Blck13aA==');

@$core.Deprecated('Use forecastPointDescriptor instead')
const ForecastPoint$json = {
  '1': 'ForecastPoint',
  '2': [
    {
      '1': 'valid_at',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'validAt'
    },
    {
      '1': 'temperature_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'temperatureCentidegrees',
      '17': true
    },
    {
      '1': 'wind_speed_cm_per_s',
      '3': 3,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'windSpeedCmPerS',
      '17': true
    },
    {
      '1': 'wind_from_degrees',
      '3': 4,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'windFromDegrees',
      '17': true
    },
    {
      '1': 'global_radiation_w_per_m2',
      '3': 5,
      '4': 1,
      '5': 13,
      '9': 3,
      '10': 'globalRadiationWPerM2',
      '17': true
    },
  ],
  '8': [
    {'1': '_temperature_centidegrees'},
    {'1': '_wind_speed_cm_per_s'},
    {'1': '_wind_from_degrees'},
    {'1': '_global_radiation_w_per_m2'},
  ],
};

/// Descriptor for `ForecastPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forecastPointDescriptor = $convert.base64Decode(
    'Cg1Gb3JlY2FzdFBvaW50EjUKCHZhbGlkX2F0GAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbW'
    'VzdGFtcFIHdmFsaWRBdBI+Chh0ZW1wZXJhdHVyZV9jZW50aWRlZ3JlZXMYAiABKBFIAFIXdGVt'
    'cGVyYXR1cmVDZW50aWRlZ3JlZXOIAQESMQoTd2luZF9zcGVlZF9jbV9wZXJfcxgDIAEoDUgBUg'
    '93aW5kU3BlZWRDbVBlclOIAQESLwoRd2luZF9mcm9tX2RlZ3JlZXMYBCABKA1IAlIPd2luZEZy'
    'b21EZWdyZWVziAEBEj0KGWdsb2JhbF9yYWRpYXRpb25fd19wZXJfbTIYBSABKA1IA1IVZ2xvYm'
    'FsUmFkaWF0aW9uV1Blck0yiAEBQhsKGV90ZW1wZXJhdHVyZV9jZW50aWRlZ3JlZXNCFgoUX3dp'
    'bmRfc3BlZWRfY21fcGVyX3NCFAoSX3dpbmRfZnJvbV9kZWdyZWVzQhwKGl9nbG9iYWxfcmFkaW'
    'F0aW9uX3dfcGVyX20y');

@$core.Deprecated('Use forecastIssueDescriptor instead')
const ForecastIssue$json = {
  '1': 'ForecastIssue',
  '2': [
    {
      '1': 'issued_at',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'issuedAt'
    },
    {'1': 'attribution', '3': 2, '4': 1, '5': 9, '10': 'attribution'},
    {
      '1': 'points',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.planning.v1.ForecastPoint',
      '10': 'points'
    },
  ],
};

/// Descriptor for `ForecastIssue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forecastIssueDescriptor = $convert.base64Decode(
    'Cg1Gb3JlY2FzdElzc3VlEjcKCWlzc3VlZF9hdBgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW'
    '1lc3RhbXBSCGlzc3VlZEF0EiAKC2F0dHJpYnV0aW9uGAIgASgJUgthdHRyaWJ1dGlvbhI+CgZw'
    'b2ludHMYAyADKAsyJi5rdXNpbnRhLmlvdC5wbGFubmluZy52MS5Gb3JlY2FzdFBvaW50UgZwb2'
    'ludHM=');

@$core.Deprecated('Use exchangeRateDescriptor instead')
const ExchangeRate$json = {
  '1': 'ExchangeRate',
  '2': [
    {'1': 'currency', '3': 1, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'published_on', '3': 2, '4': 1, '5': 9, '10': 'publishedOn'},
    {'1': 'per_eur_e4', '3': 3, '4': 1, '5': 13, '10': 'perEurE4'},
    {'1': 'source', '3': 4, '4': 1, '5': 9, '10': 'source'},
  ],
};

/// Descriptor for `ExchangeRate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exchangeRateDescriptor = $convert.base64Decode(
    'CgxFeGNoYW5nZVJhdGUSGgoIY3VycmVuY3kYASABKAlSCGN1cnJlbmN5EiEKDHB1Ymxpc2hlZF'
    '9vbhgCIAEoCVILcHVibGlzaGVkT24SHAoKcGVyX2V1cl9lNBgDIAEoDVIIcGVyRXVyRTQSFgoG'
    'c291cmNlGAQgASgJUgZzb3VyY2U=');
