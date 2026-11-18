// This is a generated file - do not edit.
//
// Generated from kusinta/iot/heating/v1/heating.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use heatSourceKindDescriptor instead')
const HeatSourceKind$json = {
  '1': 'HeatSourceKind',
  '2': [
    {'1': 'HEAT_SOURCE_KIND_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_SOURCE_KIND_EXHAUST_AIR_HEAT_PUMP', '2': 1},
    {'1': 'HEAT_SOURCE_KIND_GROUND_SOURCE_HEAT_PUMP', '2': 2},
    {'1': 'HEAT_SOURCE_KIND_AIR_WATER_HEAT_PUMP', '2': 3},
    {'1': 'HEAT_SOURCE_KIND_DISTRICT_HEATING', '2': 4},
    {'1': 'HEAT_SOURCE_KIND_ELECTRIC_BOILER', '2': 5},
    {'1': 'HEAT_SOURCE_KIND_FUEL_BOILER', '2': 6},
  ],
};

/// Descriptor for `HeatSourceKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatSourceKindDescriptor = $convert.base64Decode(
    'Cg5IZWF0U291cmNlS2luZBIgChxIRUFUX1NPVVJDRV9LSU5EX1VOU1BFQ0lGSUVEEAASKgomSE'
    'VBVF9TT1VSQ0VfS0lORF9FWEhBVVNUX0FJUl9IRUFUX1BVTVAQARIsCihIRUFUX1NPVVJDRV9L'
    'SU5EX0dST1VORF9TT1VSQ0VfSEVBVF9QVU1QEAISKAokSEVBVF9TT1VSQ0VfS0lORF9BSVJfV0'
    'FURVJfSEVBVF9QVU1QEAMSJQohSEVBVF9TT1VSQ0VfS0lORF9ESVNUUklDVF9IRUFUSU5HEAQS'
    'JAogSEVBVF9TT1VSQ0VfS0lORF9FTEVDVFJJQ19CT0lMRVIQBRIgChxIRUFUX1NPVVJDRV9LSU'
    '5EX0ZVRUxfQk9JTEVSEAY=');

@$core.Deprecated('Use circuitMixingDescriptor instead')
const CircuitMixing$json = {
  '1': 'CircuitMixing',
  '2': [
    {'1': 'CIRCUIT_MIXING_UNSPECIFIED', '2': 0},
    {'1': 'CIRCUIT_MIXING_MIXED', '2': 1},
    {'1': 'CIRCUIT_MIXING_UNMIXED', '2': 2},
  ],
};

/// Descriptor for `CircuitMixing`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List circuitMixingDescriptor = $convert.base64Decode(
    'Cg1DaXJjdWl0TWl4aW5nEh4KGkNJUkNVSVRfTUlYSU5HX1VOU1BFQ0lGSUVEEAASGAoUQ0lSQ1'
    'VJVF9NSVhJTkdfTUlYRUQQARIaChZDSVJDVUlUX01JWElOR19VTk1JWEVEEAI=');

@$core.Deprecated('Use priceRuleDescriptor instead')
const PriceRule$json = {
  '1': 'PriceRule',
  '2': [
    {'1': 'PRICE_RULE_UNSPECIFIED', '2': 0},
    {'1': 'PRICE_RULE_ADD_ON_HEATER_BLOCK', '2': 1},
    {'1': 'PRICE_RULE_FLOOR_PRE_HEAT', '2': 2},
    {'1': 'PRICE_RULE_HOT_WATER', '2': 3},
  ],
};

/// Descriptor for `PriceRule`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List priceRuleDescriptor = $convert.base64Decode(
    'CglQcmljZVJ1bGUSGgoWUFJJQ0VfUlVMRV9VTlNQRUNJRklFRBAAEiIKHlBSSUNFX1JVTEVfQU'
    'REX09OX0hFQVRFUl9CTE9DSxABEh0KGVBSSUNFX1JVTEVfRkxPT1JfUFJFX0hFQVQQAhIYChRQ'
    'UklDRV9SVUxFX0hPVF9XQVRFUhAD');

@$core.Deprecated('Use priceRuleModeDescriptor instead')
const PriceRuleMode$json = {
  '1': 'PriceRuleMode',
  '2': [
    {'1': 'PRICE_RULE_MODE_UNSPECIFIED', '2': 0},
    {'1': 'PRICE_RULE_MODE_OFF', '2': 1},
    {'1': 'PRICE_RULE_MODE_SHADOW', '2': 2},
    {'1': 'PRICE_RULE_MODE_LIVE', '2': 3},
  ],
};

/// Descriptor for `PriceRuleMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List priceRuleModeDescriptor = $convert.base64Decode(
    'Cg1QcmljZVJ1bGVNb2RlEh8KG1BSSUNFX1JVTEVfTU9ERV9VTlNQRUNJRklFRBAAEhcKE1BSSU'
    'NFX1JVTEVfTU9ERV9PRkYQARIaChZQUklDRV9SVUxFX01PREVfU0hBRE9XEAISGAoUUFJJQ0Vf'
    'UlVMRV9NT0RFX0xJVkUQAw==');

@$core.Deprecated('Use heatBlockEndDescriptor instead')
const HeatBlockEnd$json = {
  '1': 'HeatBlockEnd',
  '2': [
    {'1': 'HEAT_BLOCK_END_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_BLOCK_END_PLANNED', '2': 1},
    {'1': 'HEAT_BLOCK_END_ROOM_BELOW_BAND', '2': 2},
    {'1': 'HEAT_BLOCK_END_HOT_WATER_LOW', '2': 3},
    {'1': 'HEAT_BLOCK_END_RELEASED', '2': 4},
    {'1': 'HEAT_BLOCK_END_RULE_SWITCHED', '2': 5},
    {'1': 'HEAT_BLOCK_END_INTERRUPTED', '2': 6},
    {'1': 'HEAT_BLOCK_END_UNSTATED', '2': 7},
  ],
};

/// Descriptor for `HeatBlockEnd`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatBlockEndDescriptor = $convert.base64Decode(
    'CgxIZWF0QmxvY2tFbmQSHgoaSEVBVF9CTE9DS19FTkRfVU5TUEVDSUZJRUQQABIaChZIRUFUX0'
    'JMT0NLX0VORF9QTEFOTkVEEAESIgoeSEVBVF9CTE9DS19FTkRfUk9PTV9CRUxPV19CQU5EEAIS'
    'IAocSEVBVF9CTE9DS19FTkRfSE9UX1dBVEVSX0xPVxADEhsKF0hFQVRfQkxPQ0tfRU5EX1JFTE'
    'VBU0VEEAQSIAocSEVBVF9CTE9DS19FTkRfUlVMRV9TV0lUQ0hFRBAFEh4KGkhFQVRfQkxPQ0tf'
    'RU5EX0lOVEVSUlVQVEVEEAYSGwoXSEVBVF9CTE9DS19FTkRfVU5TVEFURUQQBw==');

@$core.Deprecated('Use shadowPriceBasisDescriptor instead')
const ShadowPriceBasis$json = {
  '1': 'ShadowPriceBasis',
  '2': [
    {'1': 'SHADOW_PRICE_BASIS_UNSPECIFIED', '2': 0},
    {'1': 'SHADOW_PRICE_BASIS_SPOT', '2': 1},
    {'1': 'SHADOW_PRICE_BASIS_PAYER', '2': 2},
  ],
};

/// Descriptor for `ShadowPriceBasis`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List shadowPriceBasisDescriptor = $convert.base64Decode(
    'ChBTaGFkb3dQcmljZUJhc2lzEiIKHlNIQURPV19QUklDRV9CQVNJU19VTlNQRUNJRklFRBAAEh'
    'sKF1NIQURPV19QUklDRV9CQVNJU19TUE9UEAESHAoYU0hBRE9XX1BSSUNFX0JBU0lTX1BBWUVS'
    'EAI=');

@$core.Deprecated('Use energyPriceAdderSourceDescriptor instead')
const EnergyPriceAdderSource$json = {
  '1': 'EnergyPriceAdderSource',
  '2': [
    {'1': 'ENERGY_PRICE_ADDER_SOURCE_UNSPECIFIED', '2': 0},
    {'1': 'ENERGY_PRICE_ADDER_SOURCE_DEFAULT', '2': 1},
    {'1': 'ENERGY_PRICE_ADDER_SOURCE_STATED', '2': 2},
  ],
};

/// Descriptor for `EnergyPriceAdderSource`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List energyPriceAdderSourceDescriptor = $convert.base64Decode(
    'ChZFbmVyZ3lQcmljZUFkZGVyU291cmNlEikKJUVORVJHWV9QUklDRV9BRERFUl9TT1VSQ0VfVU'
    '5TUEVDSUZJRUQQABIlCiFFTkVSR1lfUFJJQ0VfQURERVJfU09VUkNFX0RFRkFVTFQQARIkCiBF'
    'TkVSR1lfUFJJQ0VfQURERVJfU09VUkNFX1NUQVRFRBAC');

@$core.Deprecated('Use heatCurveLimitReasonDescriptor instead')
const HeatCurveLimitReason$json = {
  '1': 'HeatCurveLimitReason',
  '2': [
    {'1': 'HEAT_CURVE_LIMIT_REASON_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_LIMIT_REASON_HYDRAULIC_BALANCE', '2': 1},
    {'1': 'HEAT_CURVE_LIMIT_REASON_DEMAND', '2': 2},
  ],
};

/// Descriptor for `HeatCurveLimitReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurveLimitReasonDescriptor = $convert.base64Decode(
    'ChRIZWF0Q3VydmVMaW1pdFJlYXNvbhInCiNIRUFUX0NVUlZFX0xJTUlUX1JFQVNPTl9VTlNQRU'
    'NJRklFRBAAEi0KKUhFQVRfQ1VSVkVfTElNSVRfUkVBU09OX0hZRFJBVUxJQ19CQUxBTkNFEAES'
    'IgoeSEVBVF9DVVJWRV9MSU1JVF9SRUFTT05fREVNQU5EEAI=');

@$core.Deprecated('Use heatCurveZoneKindDescriptor instead')
const HeatCurveZoneKind$json = {
  '1': 'HeatCurveZoneKind',
  '2': [
    {'1': 'HEAT_CURVE_ZONE_KIND_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_ZONE_KIND_RADIATOR', '2': 1},
    {'1': 'HEAT_CURVE_ZONE_KIND_FLOOR_ZONE', '2': 2},
    {'1': 'HEAT_CURVE_ZONE_KIND_FLOOR_ZONES_TOGETHER', '2': 3},
  ],
};

/// Descriptor for `HeatCurveZoneKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurveZoneKindDescriptor = $convert.base64Decode(
    'ChFIZWF0Q3VydmVab25lS2luZBIkCiBIRUFUX0NVUlZFX1pPTkVfS0lORF9VTlNQRUNJRklFRB'
    'AAEiEKHUhFQVRfQ1VSVkVfWk9ORV9LSU5EX1JBRElBVE9SEAESIwofSEVBVF9DVVJWRV9aT05F'
    'X0tJTkRfRkxPT1JfWk9ORRACEi0KKUhFQVRfQ1VSVkVfWk9ORV9LSU5EX0ZMT09SX1pPTkVTX1'
    'RPR0VUSEVSEAM=');

@$core.Deprecated('Use heatCurveAutomaticSavingsDescriptor instead')
const HeatCurveAutomaticSavings$json = {
  '1': 'HeatCurveAutomaticSavings',
  '2': [
    {'1': 'HEAT_CURVE_AUTOMATIC_SAVINGS_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_AUTOMATIC_SAVINGS_ON', '2': 1},
    {'1': 'HEAT_CURVE_AUTOMATIC_SAVINGS_OFF', '2': 2},
  ],
};

/// Descriptor for `HeatCurveAutomaticSavings`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurveAutomaticSavingsDescriptor = $convert.base64Decode(
    'ChlIZWF0Q3VydmVBdXRvbWF0aWNTYXZpbmdzEiwKKEhFQVRfQ1VSVkVfQVVUT01BVElDX1NBVk'
    'lOR1NfVU5TUEVDSUZJRUQQABIjCh9IRUFUX0NVUlZFX0FVVE9NQVRJQ19TQVZJTkdTX09OEAES'
    'JAogSEVBVF9DVVJWRV9BVVRPTUFUSUNfU0FWSU5HU19PRkYQAg==');

@$core.Deprecated('Use heatCurvePointConfidenceDescriptor instead')
const HeatCurvePointConfidence$json = {
  '1': 'HeatCurvePointConfidence',
  '2': [
    {'1': 'HEAT_CURVE_POINT_CONFIDENCE_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_POINT_CONFIDENCE_SEEN', '2': 1},
    {'1': 'HEAT_CURVE_POINT_CONFIDENCE_ESTIMATED', '2': 2},
  ],
};

/// Descriptor for `HeatCurvePointConfidence`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurvePointConfidenceDescriptor = $convert.base64Decode(
    'ChhIZWF0Q3VydmVQb2ludENvbmZpZGVuY2USKwonSEVBVF9DVVJWRV9QT0lOVF9DT05GSURFTk'
    'NFX1VOU1BFQ0lGSUVEEAASJAogSEVBVF9DVVJWRV9QT0lOVF9DT05GSURFTkNFX1NFRU4QARIp'
    'CiVIRUFUX0NVUlZFX1BPSU5UX0NPTkZJREVOQ0VfRVNUSU1BVEVEEAI=');

@$core.Deprecated('Use heatCurveNoSuggestionReasonDescriptor instead')
const HeatCurveNoSuggestionReason$json = {
  '1': 'HeatCurveNoSuggestionReason',
  '2': [
    {'1': 'HEAT_CURVE_NO_SUGGESTION_REASON_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_NO_SUGGESTION_REASON_TOO_LITTLE_SEEN', '2': 1},
    {'1': 'HEAT_CURVE_NO_SUGGESTION_REASON_COLD_END_UNKNOWN', '2': 2},
    {'1': 'HEAT_CURVE_NO_SUGGESTION_REASON_ROOMS_SHORT', '2': 3},
    {'1': 'HEAT_CURVE_NO_SUGGESTION_REASON_OWN_CURVE_CLOSE', '2': 4},
    {'1': 'HEAT_CURVE_NO_SUGGESTION_REASON_SHIFT_UNKNOWN', '2': 5},
    {'1': 'HEAT_CURVE_NO_SUGGESTION_REASON_CURVE_UNKNOWN', '2': 6},
    {'1': 'HEAT_CURVE_NO_SUGGESTION_REASON_CURVE_CLOSE', '2': 7},
    {'1': 'HEAT_CURVE_NO_SUGGESTION_REASON_OFFSET_AT_LIMIT', '2': 8},
  ],
};

/// Descriptor for `HeatCurveNoSuggestionReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurveNoSuggestionReasonDescriptor = $convert.base64Decode(
    'ChtIZWF0Q3VydmVOb1N1Z2dlc3Rpb25SZWFzb24SLworSEVBVF9DVVJWRV9OT19TVUdHRVNUSU'
    '9OX1JFQVNPTl9VTlNQRUNJRklFRBAAEjMKL0hFQVRfQ1VSVkVfTk9fU1VHR0VTVElPTl9SRUFT'
    'T05fVE9PX0xJVFRMRV9TRUVOEAESNAowSEVBVF9DVVJWRV9OT19TVUdHRVNUSU9OX1JFQVNPTl'
    '9DT0xEX0VORF9VTktOT1dOEAISLworSEVBVF9DVVJWRV9OT19TVUdHRVNUSU9OX1JFQVNPTl9S'
    'T09NU19TSE9SVBADEjMKL0hFQVRfQ1VSVkVfTk9fU1VHR0VTVElPTl9SRUFTT05fT1dOX0NVUl'
    'ZFX0NMT1NFEAQSMQotSEVBVF9DVVJWRV9OT19TVUdHRVNUSU9OX1JFQVNPTl9TSElGVF9VTktO'
    'T1dOEAUSMQotSEVBVF9DVVJWRV9OT19TVUdHRVNUSU9OX1JFQVNPTl9DVVJWRV9VTktOT1dOEA'
    'YSLworSEVBVF9DVVJWRV9OT19TVUdHRVNUSU9OX1JFQVNPTl9DVVJWRV9DTE9TRRAHEjMKL0hF'
    'QVRfQ1VSVkVfTk9fU1VHR0VTVElPTl9SRUFTT05fT0ZGU0VUX0FUX0xJTUlUEAg=');

@$core.Deprecated('Use heatCurveSuggestionKindDescriptor instead')
const HeatCurveSuggestionKind$json = {
  '1': 'HeatCurveSuggestionKind',
  '2': [
    {'1': 'HEAT_CURVE_SUGGESTION_KIND_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_SUGGESTION_KIND_CURVE', '2': 1},
    {'1': 'HEAT_CURVE_SUGGESTION_KIND_SHIFT', '2': 2},
  ],
};

/// Descriptor for `HeatCurveSuggestionKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurveSuggestionKindDescriptor = $convert.base64Decode(
    'ChdIZWF0Q3VydmVTdWdnZXN0aW9uS2luZBIqCiZIRUFUX0NVUlZFX1NVR0dFU1RJT05fS0lORF'
    '9VTlNQRUNJRklFRBAAEiQKIEhFQVRfQ1VSVkVfU1VHR0VTVElPTl9LSU5EX0NVUlZFEAESJAog'
    'SEVBVF9DVVJWRV9TVUdHRVNUSU9OX0tJTkRfU0hJRlQQAg==');

@$core.Deprecated('Use heatCurveHistoryOutcomeDescriptor instead')
const HeatCurveHistoryOutcome$json = {
  '1': 'HeatCurveHistoryOutcome',
  '2': [
    {'1': 'HEAT_CURVE_HISTORY_OUTCOME_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_HISTORY_OUTCOME_APPLIED', '2': 1},
    {'1': 'HEAT_CURVE_HISTORY_OUTCOME_REVERTED', '2': 2},
    {'1': 'HEAT_CURVE_HISTORY_OUTCOME_DECLINED', '2': 3},
    {'1': 'HEAT_CURVE_HISTORY_OUTCOME_SUPERSEDED', '2': 4},
  ],
};

/// Descriptor for `HeatCurveHistoryOutcome`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurveHistoryOutcomeDescriptor = $convert.base64Decode(
    'ChdIZWF0Q3VydmVIaXN0b3J5T3V0Y29tZRIqCiZIRUFUX0NVUlZFX0hJU1RPUllfT1VUQ09NRV'
    '9VTlNQRUNJRklFRBAAEiYKIkhFQVRfQ1VSVkVfSElTVE9SWV9PVVRDT01FX0FQUExJRUQQARIn'
    'CiNIRUFUX0NVUlZFX0hJU1RPUllfT1VUQ09NRV9SRVZFUlRFRBACEicKI0hFQVRfQ1VSVkVfSE'
    'lTVE9SWV9PVVRDT01FX0RFQ0xJTkVEEAMSKQolSEVBVF9DVVJWRV9ISVNUT1JZX09VVENPTUVf'
    'U1VQRVJTRURFRBAE');

@$core.Deprecated('Use heatCurveApplyModeDescriptor instead')
const HeatCurveApplyMode$json = {
  '1': 'HeatCurveApplyMode',
  '2': [
    {'1': 'HEAT_CURVE_APPLY_MODE_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_APPLY_MODE_WRITTEN', '2': 1},
    {'1': 'HEAT_CURVE_APPLY_MODE_BY_HAND', '2': 2},
    {'1': 'HEAT_CURVE_APPLY_MODE_GATEWAY', '2': 3},
  ],
};

/// Descriptor for `HeatCurveApplyMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurveApplyModeDescriptor = $convert.base64Decode(
    'ChJIZWF0Q3VydmVBcHBseU1vZGUSJQohSEVBVF9DVVJWRV9BUFBMWV9NT0RFX1VOU1BFQ0lGSU'
    'VEEAASIQodSEVBVF9DVVJWRV9BUFBMWV9NT0RFX1dSSVRURU4QARIhCh1IRUFUX0NVUlZFX0FQ'
    'UExZX01PREVfQllfSEFORBACEiEKHUhFQVRfQ1VSVkVfQVBQTFlfTU9ERV9HQVRFV0FZEAM=');

@$core.Deprecated('Use heatCurveVerificationDescriptor instead')
const HeatCurveVerification$json = {
  '1': 'HeatCurveVerification',
  '2': [
    {'1': 'HEAT_CURVE_VERIFICATION_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_VERIFICATION_PENDING', '2': 1},
    {'1': 'HEAT_CURVE_VERIFICATION_VERIFIED', '2': 2},
    {'1': 'HEAT_CURVE_VERIFICATION_MISMATCH', '2': 3},
    {'1': 'HEAT_CURVE_VERIFICATION_UNVERIFIABLE', '2': 4},
  ],
};

/// Descriptor for `HeatCurveVerification`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurveVerificationDescriptor = $convert.base64Decode(
    'ChVIZWF0Q3VydmVWZXJpZmljYXRpb24SJwojSEVBVF9DVVJWRV9WRVJJRklDQVRJT05fVU5TUE'
    'VDSUZJRUQQABIjCh9IRUFUX0NVUlZFX1ZFUklGSUNBVElPTl9QRU5ESU5HEAESJAogSEVBVF9D'
    'VVJWRV9WRVJJRklDQVRJT05fVkVSSUZJRUQQAhIkCiBIRUFUX0NVUlZFX1ZFUklGSUNBVElPTl'
    '9NSVNNQVRDSBADEigKJEhFQVRfQ1VSVkVfVkVSSUZJQ0FUSU9OX1VOVkVSSUZJQUJMRRAE');

@$core.Deprecated('Use heatCurveVerifiedByDescriptor instead')
const HeatCurveVerifiedBy$json = {
  '1': 'HeatCurveVerifiedBy',
  '2': [
    {'1': 'HEAT_CURVE_VERIFIED_BY_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_VERIFIED_BY_READ_BACK', '2': 1},
    {'1': 'HEAT_CURVE_VERIFIED_BY_MEASURED_SUPPLY', '2': 2},
    {'1': 'HEAT_CURVE_VERIFIED_BY_CALCULATED_SUPPLY', '2': 3},
  ],
};

/// Descriptor for `HeatCurveVerifiedBy`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurveVerifiedByDescriptor = $convert.base64Decode(
    'ChNIZWF0Q3VydmVWZXJpZmllZEJ5EiYKIkhFQVRfQ1VSVkVfVkVSSUZJRURfQllfVU5TUEVDSU'
    'ZJRUQQABIkCiBIRUFUX0NVUlZFX1ZFUklGSUVEX0JZX1JFQURfQkFDSxABEioKJkhFQVRfQ1VS'
    'VkVfVkVSSUZJRURfQllfTUVBU1VSRURfU1VQUExZEAISLAooSEVBVF9DVVJWRV9WRVJJRklFRF'
    '9CWV9DQUxDVUxBVEVEX1NVUFBMWRAD');

@$core.Deprecated('Use heatCurveMismatchKindDescriptor instead')
const HeatCurveMismatchKind$json = {
  '1': 'HeatCurveMismatchKind',
  '2': [
    {'1': 'HEAT_CURVE_MISMATCH_KIND_UNSPECIFIED', '2': 0},
    {'1': 'HEAT_CURVE_MISMATCH_KIND_SHIFT_NOT_ZERO', '2': 1},
    {'1': 'HEAT_CURVE_MISMATCH_KIND_OWN_CURVE_NOT_IN_FORCE', '2': 2},
    {'1': 'HEAT_CURVE_MISMATCH_KIND_POINT', '2': 3},
    {'1': 'HEAT_CURVE_MISMATCH_KIND_SHIFT', '2': 4},
    {'1': 'HEAT_CURVE_MISMATCH_KIND_SUPPLY', '2': 5},
    {'1': 'HEAT_CURVE_MISMATCH_KIND_BEND_NOT_NEUTRAL', '2': 6},
    {'1': 'HEAT_CURVE_MISMATCH_KIND_NUMBERED_CURVE', '2': 7},
  ],
};

/// Descriptor for `HeatCurveMismatchKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List heatCurveMismatchKindDescriptor = $convert.base64Decode(
    'ChVIZWF0Q3VydmVNaXNtYXRjaEtpbmQSKAokSEVBVF9DVVJWRV9NSVNNQVRDSF9LSU5EX1VOU1'
    'BFQ0lGSUVEEAASKwonSEVBVF9DVVJWRV9NSVNNQVRDSF9LSU5EX1NISUZUX05PVF9aRVJPEAES'
    'MwovSEVBVF9DVVJWRV9NSVNNQVRDSF9LSU5EX09XTl9DVVJWRV9OT1RfSU5fRk9SQ0UQAhIiCh'
    '5IRUFUX0NVUlZFX01JU01BVENIX0tJTkRfUE9JTlQQAxIiCh5IRUFUX0NVUlZFX01JU01BVENI'
    'X0tJTkRfU0hJRlQQBBIjCh9IRUFUX0NVUlZFX01JU01BVENIX0tJTkRfU1VQUExZEAUSLQopSE'
    'VBVF9DVVJWRV9NSVNNQVRDSF9LSU5EX0JFTkRfTk9UX05FVVRSQUwQBhIrCidIRUFUX0NVUlZF'
    'X01JU01BVENIX0tJTkRfTlVNQkVSRURfQ1VSVkUQBw==');

@$core.Deprecated('Use deviceAttributeDescriptor instead')
const DeviceAttribute$json = {
  '1': 'DeviceAttribute',
  '2': [
    {
      '1': 'device_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {
      '1': 'attribute',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.access.v1.AttributeRef',
      '10': 'attribute'
    },
  ],
};

/// Descriptor for `DeviceAttribute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceAttributeDescriptor = $convert.base64Decode(
    'Cg9EZXZpY2VBdHRyaWJ1dGUSPgoJZGV2aWNlX2lkGAEgASgLMiEua3VzaW50YS5pb3QuaWRlbn'
    'RpdHkudjEuRGV2aWNlSWRSCGRldmljZUlkEkEKCWF0dHJpYnV0ZRgCIAEoCzIjLmt1c2ludGEu'
    'aW90LmFjY2Vzcy52MS5BdHRyaWJ1dGVSZWZSCWF0dHJpYnV0ZQ==');

@$core.Deprecated('Use contactBindingDescriptor instead')
const ContactBinding$json = {
  '1': 'ContactBinding',
  '2': [
    {
      '1': 'output',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.DeviceAttribute',
      '10': 'output'
    },
    {
      '1': 'closed_value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '10': 'closedValue'
    },
  ],
};

/// Descriptor for `ContactBinding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactBindingDescriptor = $convert.base64Decode(
    'Cg5Db250YWN0QmluZGluZxI/CgZvdXRwdXQYASABKAsyJy5rdXNpbnRhLmlvdC5oZWF0aW5nLn'
    'YxLkRldmljZUF0dHJpYnV0ZVIGb3V0cHV0EkgKDGNsb3NlZF92YWx1ZRgCIAEoCzIlLmt1c2lu'
    'dGEuaW90LmRldmljZS52MS5BdHRyaWJ1dGVWYWx1ZVILY2xvc2VkVmFsdWU=');

@$core.Deprecated('Use heatingPlantDescriptor instead')
const HeatingPlant$json = {
  '1': 'HeatingPlant',
  '2': [
    {'1': 'plant_id', '3': 1, '4': 1, '5': 9, '10': 'plantId'},
    {
      '1': 'space_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'source',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatSourceKind',
      '10': 'source'
    },
    {
      '1': 'readings_device_id',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'readingsDeviceId'
    },
    {
      '1': 'heat_pump',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatPumpControl',
      '9': 0,
      '10': 'heatPump'
    },
    {
      '1': 'meter',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.DeviceAttribute',
      '10': 'meter'
    },
    {'1': 'revision', '3': 8, '4': 1, '5': 4, '10': 'revision'},
    {
      '1': 'price_rules',
      '3': 9,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.PriceRuleChange',
      '10': 'priceRules'
    },
    {
      '1': 'price_rules_revision',
      '3': 10,
      '4': 1,
      '5': 4,
      '10': 'priceRulesRevision'
    },
  ],
  '8': [
    {'1': 'control'},
  ],
};

/// Descriptor for `HeatingPlant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatingPlantDescriptor = $convert.base64Decode(
    'CgxIZWF0aW5nUGxhbnQSGQoIcGxhbnRfaWQYASABKAlSB3BsYW50SWQSOwoIc3BhY2VfaWQYAi'
    'ABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgdzcGFjZUlkEhIKBG5hbWUY'
    'AyABKAlSBG5hbWUSPgoGc291cmNlGAQgASgOMiYua3VzaW50YS5pb3QuaGVhdGluZy52MS5IZW'
    'F0U291cmNlS2luZFIGc291cmNlEk8KEnJlYWRpbmdzX2RldmljZV9pZBgFIAEoCzIhLmt1c2lu'
    'dGEuaW90LmlkZW50aXR5LnYxLkRldmljZUlkUhByZWFkaW5nc0RldmljZUlkEkYKCWhlYXRfcH'
    'VtcBgGIAEoCzInLmt1c2ludGEuaW90LmhlYXRpbmcudjEuSGVhdFB1bXBDb250cm9sSABSCGhl'
    'YXRQdW1wEj0KBW1ldGVyGAcgASgLMicua3VzaW50YS5pb3QuaGVhdGluZy52MS5EZXZpY2VBdH'
    'RyaWJ1dGVSBW1ldGVyEhoKCHJldmlzaW9uGAggASgEUghyZXZpc2lvbhJICgtwcmljZV9ydWxl'
    'cxgJIAMoCzInLmt1c2ludGEuaW90LmhlYXRpbmcudjEuUHJpY2VSdWxlQ2hhbmdlUgpwcmljZV'
    'J1bGVzEjAKFHByaWNlX3J1bGVzX3JldmlzaW9uGAogASgEUhJwcmljZVJ1bGVzUmV2aXNpb25C'
    'CQoHY29udHJvbA==');

@$core.Deprecated('Use heatPumpControlDescriptor instead')
const HeatPumpControl$json = {
  '1': 'HeatPumpControl',
  '2': [
    {
      '1': 'sg_ready_block',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'sgReadyBlock'
    },
    {
      '1': 'sg_ready_boost',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'sgReadyBoost'
    },
    {
      '1': 'add_on_heater_block',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'addOnHeaterBlock'
    },
    {
      '1': 'hot_water_block',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'hotWaterBlock'
    },
    {
      '1': 'curve_adjustment',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'curveAdjustment'
    },
  ],
};

/// Descriptor for `HeatPumpControl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatPumpControlDescriptor = $convert.base64Decode(
    'Cg9IZWF0UHVtcENvbnRyb2wSTAoOc2dfcmVhZHlfYmxvY2sYASABKAsyJi5rdXNpbnRhLmlvdC'
    '5oZWF0aW5nLnYxLkNvbnRhY3RCaW5kaW5nUgxzZ1JlYWR5QmxvY2sSTAoOc2dfcmVhZHlfYm9v'
    'c3QYAiABKAsyJi5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkNvbnRhY3RCaW5kaW5nUgxzZ1JlYW'
    'R5Qm9vc3QSVQoTYWRkX29uX2hlYXRlcl9ibG9jaxgDIAEoCzImLmt1c2ludGEuaW90LmhlYXRp'
    'bmcudjEuQ29udGFjdEJpbmRpbmdSEGFkZE9uSGVhdGVyQmxvY2sSTgoPaG90X3dhdGVyX2Jsb2'
    'NrGAQgASgLMiYua3VzaW50YS5pb3QuaGVhdGluZy52MS5Db250YWN0QmluZGluZ1INaG90V2F0'
    'ZXJCbG9jaxJRChBjdXJ2ZV9hZGp1c3RtZW50GAUgASgLMiYua3VzaW50YS5pb3QuaGVhdGluZy'
    '52MS5Db250YWN0QmluZGluZ1IPY3VydmVBZGp1c3RtZW50');

@$core.Deprecated('Use heatingCircuitDescriptor instead')
const HeatingCircuit$json = {
  '1': 'HeatingCircuit',
  '2': [
    {'1': 'circuit_id', '3': 1, '4': 1, '5': 9, '10': 'circuitId'},
    {'1': 'plant_id', '3': 2, '4': 1, '5': 9, '10': 'plantId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'radiator',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.RadiatorCircuit',
      '9': 0,
      '10': 'radiator'
    },
    {
      '1': 'floor',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.FloorCircuit',
      '9': 0,
      '10': 'floor'
    },
    {'1': 'revision', '3': 6, '4': 1, '5': 4, '10': 'revision'},
  ],
  '8': [
    {'1': 'distribution'},
  ],
};

/// Descriptor for `HeatingCircuit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatingCircuitDescriptor = $convert.base64Decode(
    'Cg5IZWF0aW5nQ2lyY3VpdBIdCgpjaXJjdWl0X2lkGAEgASgJUgljaXJjdWl0SWQSGQoIcGxhbn'
    'RfaWQYAiABKAlSB3BsYW50SWQSEgoEbmFtZRgDIAEoCVIEbmFtZRJFCghyYWRpYXRvchgEIAEo'
    'CzInLmt1c2ludGEuaW90LmhlYXRpbmcudjEuUmFkaWF0b3JDaXJjdWl0SABSCHJhZGlhdG9yEj'
    'wKBWZsb29yGAUgASgLMiQua3VzaW50YS5pb3QuaGVhdGluZy52MS5GbG9vckNpcmN1aXRIAFIF'
    'Zmxvb3ISGgoIcmV2aXNpb24YBiABKARSCHJldmlzaW9uQg4KDGRpc3RyaWJ1dGlvbg==');

@$core.Deprecated('Use radiatorCircuitDescriptor instead')
const RadiatorCircuit$json = {
  '1': 'RadiatorCircuit',
  '2': [
    {
      '1': 'mixing',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.CircuitMixing',
      '10': 'mixing'
    },
    {
      '1': 'supply_probe',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.DeviceAttribute',
      '10': 'supplyProbe'
    },
  ],
};

/// Descriptor for `RadiatorCircuit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radiatorCircuitDescriptor = $convert.base64Decode(
    'Cg9SYWRpYXRvckNpcmN1aXQSPQoGbWl4aW5nGAEgASgOMiUua3VzaW50YS5pb3QuaGVhdGluZy'
    '52MS5DaXJjdWl0TWl4aW5nUgZtaXhpbmcSSgoMc3VwcGx5X3Byb2JlGAIgASgLMicua3VzaW50'
    'YS5pb3QuaGVhdGluZy52MS5EZXZpY2VBdHRyaWJ1dGVSC3N1cHBseVByb2Jl');

@$core.Deprecated('Use floorCircuitDescriptor instead')
const FloorCircuit$json = {
  '1': 'FloorCircuit',
  '2': [
    {'1': 'mixing_valve', '3': 1, '4': 1, '5': 8, '10': 'mixingValve'},
    {
      '1': 'mixing',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.CircuitMixing',
      '10': 'mixing'
    },
    {
      '1': 'supply_cap_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'supplyCapCentidegrees',
      '17': true
    },
    {
      '1': 'supply_probe',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.DeviceAttribute',
      '10': 'supplyProbe'
    },
    {
      '1': 'return_probe',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.DeviceAttribute',
      '10': 'returnProbe'
    },
  ],
  '8': [
    {'1': '_supply_cap_centidegrees'},
  ],
};

/// Descriptor for `FloorCircuit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floorCircuitDescriptor = $convert.base64Decode(
    'CgxGbG9vckNpcmN1aXQSIQoMbWl4aW5nX3ZhbHZlGAEgASgIUgttaXhpbmdWYWx2ZRI9CgZtaX'
    'hpbmcYBSABKA4yJS5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkNpcmN1aXRNaXhpbmdSBm1peGlu'
    'ZxI7ChdzdXBwbHlfY2FwX2NlbnRpZGVncmVlcxgCIAEoEUgAUhVzdXBwbHlDYXBDZW50aWRlZ3'
    'JlZXOIAQESSgoMc3VwcGx5X3Byb2JlGAMgASgLMicua3VzaW50YS5pb3QuaGVhdGluZy52MS5E'
    'ZXZpY2VBdHRyaWJ1dGVSC3N1cHBseVByb2JlEkoKDHJldHVybl9wcm9iZRgEIAEoCzInLmt1c2'
    'ludGEuaW90LmhlYXRpbmcudjEuRGV2aWNlQXR0cmlidXRlUgtyZXR1cm5Qcm9iZUIaChhfc3Vw'
    'cGx5X2NhcF9jZW50aWRlZ3JlZXM=');

@$core.Deprecated('Use floorZoneDescriptor instead')
const FloorZone$json = {
  '1': 'FloorZone',
  '2': [
    {'1': 'zone_id', '3': 1, '4': 1, '5': 9, '10': 'zoneId'},
    {'1': 'circuit_id', '3': 2, '4': 1, '5': 9, '10': 'circuitId'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'output',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'output'
    },
    {
      '1': 'rooms',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.FloorZoneRoom',
      '10': 'rooms'
    },
    {
      '1': 'control_room_id',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'controlRoomId'
    },
    {'1': 'revision', '3': 7, '4': 1, '5': 4, '10': 'revision'},
    {
      '1': 'uncontrolled_since',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'uncontrolledSince'
    },
    {
      '1': 'uncontrolled_by',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'uncontrolledBy'
    },
  ],
};

/// Descriptor for `FloorZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floorZoneDescriptor = $convert.base64Decode(
    'CglGbG9vclpvbmUSFwoHem9uZV9pZBgBIAEoCVIGem9uZUlkEh0KCmNpcmN1aXRfaWQYAiABKA'
    'lSCWNpcmN1aXRJZBISCgRuYW1lGAMgASgJUgRuYW1lEj4KBm91dHB1dBgEIAEoCzImLmt1c2lu'
    'dGEuaW90LmhlYXRpbmcudjEuQ29udGFjdEJpbmRpbmdSBm91dHB1dBI7CgVyb29tcxgFIAMoCz'
    'IlLmt1c2ludGEuaW90LmhlYXRpbmcudjEuRmxvb3Jab25lUm9vbVIFcm9vbXMSSAoPY29udHJv'
    'bF9yb29tX2lkGAYgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZFINY29udH'
    'JvbFJvb21JZBIaCghyZXZpc2lvbhgHIAEoBFIIcmV2aXNpb24SSQoSdW5jb250cm9sbGVkX3Np'
    'bmNlGAggASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIRdW5jb250cm9sbGVkU2luY2'
    'USSAoPdW5jb250cm9sbGVkX2J5GAkgASgLMh8ua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuVXNl'
    'cklkUg51bmNvbnRyb2xsZWRCeQ==');

@$core.Deprecated('Use floorZoneRoomDescriptor instead')
const FloorZoneRoom$json = {
  '1': 'FloorZoneRoom',
  '2': [
    {
      '1': 'room_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'roomId'
    },
    {
      '1': 'area_share_permille',
      '3': 2,
      '4': 1,
      '5': 13,
      '10': 'areaSharePermille'
    },
  ],
};

/// Descriptor for `FloorZoneRoom`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floorZoneRoomDescriptor = $convert.base64Decode(
    'Cg1GbG9vclpvbmVSb29tEjkKB3Jvb21faWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5TcGFjZUlkUgZyb29tSWQSLgoTYXJlYV9zaGFyZV9wZXJtaWxsZRgCIAEoDVIRYXJlYVNo'
    'YXJlUGVybWlsbGU=');

@$core.Deprecated('Use comfortLoadDescriptor instead')
const ComfortLoad$json = {
  '1': 'ComfortLoad',
  '2': [
    {'1': 'comfort_load_id', '3': 1, '4': 1, '5': 9, '10': 'comfortLoadId'},
    {
      '1': 'room_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'roomId'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'output',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ContactBinding',
      '10': 'output'
    },
    {
      '1': 'windows',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ComfortWindow',
      '10': 'windows'
    },
    {'1': 'revision', '3': 6, '4': 1, '5': 4, '10': 'revision'},
    {'1': 'windows_revision', '3': 7, '4': 1, '5': 4, '10': 'windowsRevision'},
    {'1': 'windows_withheld', '3': 8, '4': 1, '5': 8, '10': 'windowsWithheld'},
  ],
};

/// Descriptor for `ComfortLoad`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comfortLoadDescriptor = $convert.base64Decode(
    'CgtDb21mb3J0TG9hZBImCg9jb21mb3J0X2xvYWRfaWQYASABKAlSDWNvbWZvcnRMb2FkSWQSOQ'
    'oHcm9vbV9pZBgCIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlNwYWNlSWRSBnJvb21J'
    'ZBISCgRuYW1lGAMgASgJUgRuYW1lEj4KBm91dHB1dBgEIAEoCzImLmt1c2ludGEuaW90LmhlYX'
    'RpbmcudjEuQ29udGFjdEJpbmRpbmdSBm91dHB1dBI/Cgd3aW5kb3dzGAUgAygLMiUua3VzaW50'
    'YS5pb3QuaGVhdGluZy52MS5Db21mb3J0V2luZG93Ugd3aW5kb3dzEhoKCHJldmlzaW9uGAYgAS'
    'gEUghyZXZpc2lvbhIpChB3aW5kb3dzX3JldmlzaW9uGAcgASgEUg93aW5kb3dzUmV2aXNpb24S'
    'KQoQd2luZG93c193aXRoaGVsZBgIIAEoCFIPd2luZG93c1dpdGhoZWxk');

@$core.Deprecated('Use comfortWindowDescriptor instead')
const ComfortWindow$json = {
  '1': 'ComfortWindow',
  '2': [
    {'1': 'weekdays', '3': 1, '4': 1, '5': 13, '10': 'weekdays'},
    {'1': 'start_minute', '3': 2, '4': 1, '5': 13, '10': 'startMinute'},
    {'1': 'end_minute', '3': 3, '4': 1, '5': 13, '10': 'endMinute'},
  ],
};

/// Descriptor for `ComfortWindow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List comfortWindowDescriptor = $convert.base64Decode(
    'Cg1Db21mb3J0V2luZG93EhoKCHdlZWtkYXlzGAEgASgNUgh3ZWVrZGF5cxIhCgxzdGFydF9taW'
    '51dGUYAiABKA1SC3N0YXJ0TWludXRlEh0KCmVuZF9taW51dGUYAyABKA1SCWVuZE1pbnV0ZQ==');

@$core.Deprecated('Use heatingLayoutDescriptor instead')
const HeatingLayout$json = {
  '1': 'HeatingLayout',
  '2': [
    {
      '1': 'plants',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingPlant',
      '10': 'plants'
    },
    {
      '1': 'circuits',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingCircuit',
      '10': 'circuits'
    },
    {
      '1': 'floor_zones',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.FloorZone',
      '10': 'floorZones'
    },
    {
      '1': 'comfort_loads',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ComfortLoad',
      '10': 'comfortLoads'
    },
  ],
};

/// Descriptor for `HeatingLayout`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatingLayoutDescriptor = $convert.base64Decode(
    'Cg1IZWF0aW5nTGF5b3V0EjwKBnBsYW50cxgBIAMoCzIkLmt1c2ludGEuaW90LmhlYXRpbmcudj'
    'EuSGVhdGluZ1BsYW50UgZwbGFudHMSQgoIY2lyY3VpdHMYAiADKAsyJi5rdXNpbnRhLmlvdC5o'
    'ZWF0aW5nLnYxLkhlYXRpbmdDaXJjdWl0UghjaXJjdWl0cxJCCgtmbG9vcl96b25lcxgDIAMoCz'
    'IhLmt1c2ludGEuaW90LmhlYXRpbmcudjEuRmxvb3Jab25lUgpmbG9vclpvbmVzEkgKDWNvbWZv'
    'cnRfbG9hZHMYBCADKAsyIy5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkNvbWZvcnRMb2FkUgxjb2'
    '1mb3J0TG9hZHM=');

@$core.Deprecated('Use heatingRecordDescriptor instead')
const HeatingRecord$json = {
  '1': 'HeatingRecord',
  '2': [
    {
      '1': 'plant',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingPlant',
      '9': 0,
      '10': 'plant'
    },
    {
      '1': 'circuit',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatingCircuit',
      '9': 0,
      '10': 'circuit'
    },
    {
      '1': 'floor_zone',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.FloorZone',
      '9': 0,
      '10': 'floorZone'
    },
    {
      '1': 'comfort_load',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ComfortLoad',
      '9': 0,
      '10': 'comfortLoad'
    },
  ],
  '8': [
    {'1': 'record'},
  ],
};

/// Descriptor for `HeatingRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatingRecordDescriptor = $convert.base64Decode(
    'Cg1IZWF0aW5nUmVjb3JkEjwKBXBsYW50GAEgASgLMiQua3VzaW50YS5pb3QuaGVhdGluZy52MS'
    '5IZWF0aW5nUGxhbnRIAFIFcGxhbnQSQgoHY2lyY3VpdBgCIAEoCzImLmt1c2ludGEuaW90Lmhl'
    'YXRpbmcudjEuSGVhdGluZ0NpcmN1aXRIAFIHY2lyY3VpdBJCCgpmbG9vcl96b25lGAMgASgLMi'
    'Eua3VzaW50YS5pb3QuaGVhdGluZy52MS5GbG9vclpvbmVIAFIJZmxvb3Jab25lEkgKDGNvbWZv'
    'cnRfbG9hZBgEIAEoCzIjLmt1c2ludGEuaW90LmhlYXRpbmcudjEuQ29tZm9ydExvYWRIAFILY2'
    '9tZm9ydExvYWRCCAoGcmVjb3Jk');

@$core.Deprecated('Use priceRuleChangeDescriptor instead')
const PriceRuleChange$json = {
  '1': 'PriceRuleChange',
  '2': [
    {
      '1': 'rule',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRule',
      '10': 'rule'
    },
    {
      '1': 'mode',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRuleMode',
      '10': 'mode'
    },
    {
      '1': 'previous_mode',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRuleMode',
      '10': 'previousMode'
    },
    {
      '1': 'at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'at'
    },
    {
      '1': 'set_by_role',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'setByRole'
    },
    {
      '1': 'set_by',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'setBy'
    },
  ],
};

/// Descriptor for `PriceRuleChange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priceRuleChangeDescriptor = $convert.base64Decode(
    'Cg9QcmljZVJ1bGVDaGFuZ2USNQoEcnVsZRgBIAEoDjIhLmt1c2ludGEuaW90LmhlYXRpbmcudj'
    'EuUHJpY2VSdWxlUgRydWxlEjkKBG1vZGUYAiABKA4yJS5rdXNpbnRhLmlvdC5oZWF0aW5nLnYx'
    'LlByaWNlUnVsZU1vZGVSBG1vZGUSSgoNcHJldmlvdXNfbW9kZRgDIAEoDjIlLmt1c2ludGEuaW'
    '90LmhlYXRpbmcudjEuUHJpY2VSdWxlTW9kZVIMcHJldmlvdXNNb2RlEioKAmF0GAQgASgLMhou'
    'Z29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFICYXQSOwoLc2V0X2J5X3JvbGUYBSABKA4yGy5rdX'
    'NpbnRhLmlvdC5hY2Nlc3MudjEuUm9sZVIJc2V0QnlSb2xlEjYKBnNldF9ieRgGIAEoCzIfLmt1'
    'c2ludGEuaW90LmlkZW50aXR5LnYxLlVzZXJJZFIFc2V0Qnk=');

@$core.Deprecated('Use heatBlockDescriptor instead')
const HeatBlock$json = {
  '1': 'HeatBlock',
  '2': [
    {'1': 'block_id', '3': 1, '4': 1, '5': 9, '10': 'blockId'},
    {
      '1': 'rule',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRule',
      '10': 'rule'
    },
    {
      '1': 'mode',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRuleMode',
      '10': 'mode'
    },
    {
      '1': 'reason',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.climate.v1.ClimateExplanationKind',
      '10': 'reason'
    },
    {
      '1': 'started_at',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startedAt'
    },
    {
      '1': 'planned_end_at',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'plannedEndAt'
    },
    {
      '1': 'ended_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'endedAt'
    },
    {
      '1': 'end',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatBlockEnd',
      '10': 'end'
    },
  ],
};

/// Descriptor for `HeatBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatBlockDescriptor = $convert.base64Decode(
    'CglIZWF0QmxvY2sSGQoIYmxvY2tfaWQYASABKAlSB2Jsb2NrSWQSNQoEcnVsZRgCIAEoDjIhLm'
    't1c2ludGEuaW90LmhlYXRpbmcudjEuUHJpY2VSdWxlUgRydWxlEjkKBG1vZGUYAyABKA4yJS5r'
    'dXNpbnRhLmlvdC5oZWF0aW5nLnYxLlByaWNlUnVsZU1vZGVSBG1vZGUSRgoGcmVhc29uGAQgAS'
    'gOMi4ua3VzaW50YS5pb3QuY2xpbWF0ZS52MS5DbGltYXRlRXhwbGFuYXRpb25LaW5kUgZyZWFz'
    'b24SOQoKc3RhcnRlZF9hdBgFIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXN0YX'
    'J0ZWRBdBJACg5wbGFubmVkX2VuZF9hdBgGIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBSDHBsYW5uZWRFbmRBdBI1CghlbmRlZF9hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW'
    '1lc3RhbXBSB2VuZGVkQXQSNgoDZW5kGAggASgOMiQua3VzaW50YS5pb3QuaGVhdGluZy52MS5I'
    'ZWF0QmxvY2tFbmRSA2VuZA==');

@$core.Deprecated('Use heatBlockReleaseDescriptor instead')
const HeatBlockRelease$json = {
  '1': 'HeatBlockRelease',
  '2': [
    {
      '1': 'at',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'at'
    },
    {
      '1': 'hold_until',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'holdUntil'
    },
    {'1': 'ended_block_ids', '3': 3, '4': 3, '5': 9, '10': 'endedBlockIds'},
    {
      '1': 'set_by_role',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.access.v1.Role',
      '10': 'setByRole'
    },
    {
      '1': 'set_by',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'setBy'
    },
  ],
};

/// Descriptor for `HeatBlockRelease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatBlockReleaseDescriptor = $convert.base64Decode(
    'ChBIZWF0QmxvY2tSZWxlYXNlEioKAmF0GAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdG'
    'FtcFICYXQSOQoKaG9sZF91bnRpbBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBS'
    'CWhvbGRVbnRpbBImCg9lbmRlZF9ibG9ja19pZHMYAyADKAlSDWVuZGVkQmxvY2tJZHMSOwoLc2'
    'V0X2J5X3JvbGUYBCABKA4yGy5rdXNpbnRhLmlvdC5hY2Nlc3MudjEuUm9sZVIJc2V0QnlSb2xl'
    'EjYKBnNldF9ieRgFIAEoCzIfLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlVzZXJJZFIFc2V0Qn'
    'k=');

@$core.Deprecated('Use heatBlockStatusDescriptor instead')
const HeatBlockStatus$json = {
  '1': 'HeatBlockStatus',
  '2': [
    {'1': 'plant_id', '3': 1, '4': 1, '5': 9, '10': 'plantId'},
    {
      '1': 'space_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {'1': 'plant_name', '3': 3, '4': 1, '5': 9, '10': 'plantName'},
    {
      '1': 'current',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatBlock',
      '10': 'current'
    },
    {
      '1': 'hold',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatBlockRelease',
      '10': 'hold'
    },
    {
      '1': 'price_rules',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.PriceRuleChange',
      '10': 'priceRules'
    },
  ],
};

/// Descriptor for `HeatBlockStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatBlockStatusDescriptor = $convert.base64Decode(
    'Cg9IZWF0QmxvY2tTdGF0dXMSGQoIcGxhbnRfaWQYASABKAlSB3BsYW50SWQSOwoIc3BhY2VfaW'
    'QYAiABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgdzcGFjZUlkEh0KCnBs'
    'YW50X25hbWUYAyABKAlSCXBsYW50TmFtZRI7CgdjdXJyZW50GAQgAygLMiEua3VzaW50YS5pb3'
    'QuaGVhdGluZy52MS5IZWF0QmxvY2tSB2N1cnJlbnQSPAoEaG9sZBgFIAEoCzIoLmt1c2ludGEu'
    'aW90LmhlYXRpbmcudjEuSGVhdEJsb2NrUmVsZWFzZVIEaG9sZBJICgtwcmljZV9ydWxlcxgGIA'
    'MoCzInLmt1c2ludGEuaW90LmhlYXRpbmcudjEuUHJpY2VSdWxlQ2hhbmdlUgpwcmljZVJ1bGVz');

@$core.Deprecated('Use heatBlockStatusesDescriptor instead')
const HeatBlockStatuses$json = {
  '1': 'HeatBlockStatuses',
  '2': [
    {
      '1': 'statuses',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatBlockStatus',
      '10': 'statuses'
    },
  ],
};

/// Descriptor for `HeatBlockStatuses`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatBlockStatusesDescriptor = $convert.base64Decode(
    'ChFIZWF0QmxvY2tTdGF0dXNlcxJDCghzdGF0dXNlcxgBIAMoCzInLmt1c2ludGEuaW90LmhlYX'
    'RpbmcudjEuSGVhdEJsb2NrU3RhdHVzUghzdGF0dXNlcw==');

@$core.Deprecated('Use heatBlockHistoryDescriptor instead')
const HeatBlockHistory$json = {
  '1': 'HeatBlockHistory',
  '2': [
    {'1': 'plant_id', '3': 1, '4': 1, '5': 9, '10': 'plantId'},
    {
      '1': 'kept_from',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'keptFrom'
    },
    {
      '1': 'blocks',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatBlock',
      '10': 'blocks'
    },
    {
      '1': 'releases',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatBlockRelease',
      '10': 'releases'
    },
    {
      '1': 'rule_changes',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.PriceRuleChange',
      '10': 'ruleChanges'
    },
  ],
};

/// Descriptor for `HeatBlockHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatBlockHistoryDescriptor = $convert.base64Decode(
    'ChBIZWF0QmxvY2tIaXN0b3J5EhkKCHBsYW50X2lkGAEgASgJUgdwbGFudElkEjcKCWtlcHRfZn'
    'JvbRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGtlcHRGcm9tEjkKBmJsb2Nr'
    'cxgDIAMoCzIhLmt1c2ludGEuaW90LmhlYXRpbmcudjEuSGVhdEJsb2NrUgZibG9ja3MSRAoIcm'
    'VsZWFzZXMYBCADKAsyKC5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkhlYXRCbG9ja1JlbGVhc2VS'
    'CHJlbGVhc2VzEkoKDHJ1bGVfY2hhbmdlcxgFIAMoCzInLmt1c2ludGEuaW90LmhlYXRpbmcudj'
    'EuUHJpY2VSdWxlQ2hhbmdlUgtydWxlQ2hhbmdlcw==');

@$core.Deprecated('Use shadowDayDescriptor instead')
const ShadowDay$json = {
  '1': 'ShadowDay',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
    {
      '1': 'net_saving_micro_eur',
      '3': 2,
      '4': 1,
      '5': 18,
      '10': 'netSavingMicroEur'
    },
    {
      '1': 'recovery_cost_micro_eur',
      '3': 3,
      '4': 1,
      '5': 18,
      '10': 'recoveryCostMicroEur'
    },
    {'1': 'blocked_quarters', '3': 4, '4': 1, '5': 13, '10': 'blockedQuarters'},
    {'1': 'breach_quarters', '3': 5, '4': 1, '5': 13, '10': 'breachQuarters'},
    {
      '1': 'overheat_quarters',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'overheatQuarters'
    },
    {
      '1': 'no_price_quarters',
      '3': 7,
      '4': 1,
      '5': 13,
      '10': 'noPriceQuarters'
    },
    {
      '1': 'cautious_net_saving_micro_eur',
      '3': 8,
      '4': 1,
      '5': 18,
      '9': 0,
      '10': 'cautiousNetSavingMicroEur',
      '17': true
    },
    {
      '1': 'saving_share_permille',
      '3': 9,
      '4': 1,
      '5': 17,
      '9': 1,
      '10': 'savingSharePermille',
      '17': true
    },
    {
      '1': 'cautious_saving_share_permille',
      '3': 10,
      '4': 1,
      '5': 17,
      '9': 2,
      '10': 'cautiousSavingSharePermille',
      '17': true
    },
    {'1': 'counts_only', '3': 11, '4': 1, '5': 8, '10': 'countsOnly'},
    {
      '1': 'share_weight',
      '3': 12,
      '4': 1,
      '5': 4,
      '9': 3,
      '10': 'shareWeight',
      '17': true
    },
    {
      '1': 'price_basis',
      '3': 13,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.ShadowPriceBasis',
      '10': 'priceBasis'
    },
    {
      '1': 'adder_source',
      '3': 14,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.EnergyPriceAdderSource',
      '10': 'adderSource'
    },
    {
      '1': 'rate_published_on',
      '3': 15,
      '4': 1,
      '5': 9,
      '10': 'ratePublishedOn'
    },
  ],
  '8': [
    {'1': '_cautious_net_saving_micro_eur'},
    {'1': '_saving_share_permille'},
    {'1': '_cautious_saving_share_permille'},
    {'1': '_share_weight'},
  ],
};

/// Descriptor for `ShadowDay`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shadowDayDescriptor = $convert.base64Decode(
    'CglTaGFkb3dEYXkSEgoEZGF0ZRgBIAEoCVIEZGF0ZRIvChRuZXRfc2F2aW5nX21pY3JvX2V1ch'
    'gCIAEoElIRbmV0U2F2aW5nTWljcm9FdXISNQoXcmVjb3ZlcnlfY29zdF9taWNyb19ldXIYAyAB'
    'KBJSFHJlY292ZXJ5Q29zdE1pY3JvRXVyEikKEGJsb2NrZWRfcXVhcnRlcnMYBCABKA1SD2Jsb2'
    'NrZWRRdWFydGVycxInCg9icmVhY2hfcXVhcnRlcnMYBSABKA1SDmJyZWFjaFF1YXJ0ZXJzEisK'
    'EW92ZXJoZWF0X3F1YXJ0ZXJzGAYgASgNUhBvdmVyaGVhdFF1YXJ0ZXJzEioKEW5vX3ByaWNlX3'
    'F1YXJ0ZXJzGAcgASgNUg9ub1ByaWNlUXVhcnRlcnMSRQodY2F1dGlvdXNfbmV0X3NhdmluZ19t'
    'aWNyb19ldXIYCCABKBJIAFIZY2F1dGlvdXNOZXRTYXZpbmdNaWNyb0V1cogBARI3ChVzYXZpbm'
    'dfc2hhcmVfcGVybWlsbGUYCSABKBFIAVITc2F2aW5nU2hhcmVQZXJtaWxsZYgBARJICh5jYXV0'
    'aW91c19zYXZpbmdfc2hhcmVfcGVybWlsbGUYCiABKBFIAlIbY2F1dGlvdXNTYXZpbmdTaGFyZV'
    'Blcm1pbGxliAEBEh8KC2NvdW50c19vbmx5GAsgASgIUgpjb3VudHNPbmx5EiYKDHNoYXJlX3dl'
    'aWdodBgMIAEoBEgDUgtzaGFyZVdlaWdodIgBARJJCgtwcmljZV9iYXNpcxgNIAEoDjIoLmt1c2'
    'ludGEuaW90LmhlYXRpbmcudjEuU2hhZG93UHJpY2VCYXNpc1IKcHJpY2VCYXNpcxJRCgxhZGRl'
    'cl9zb3VyY2UYDiABKA4yLi5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkVuZXJneVByaWNlQWRkZX'
    'JTb3VyY2VSC2FkZGVyU291cmNlEioKEXJhdGVfcHVibGlzaGVkX29uGA8gASgJUg9yYXRlUHVi'
    'bGlzaGVkT25CIAoeX2NhdXRpb3VzX25ldF9zYXZpbmdfbWljcm9fZXVyQhgKFl9zYXZpbmdfc2'
    'hhcmVfcGVybWlsbGVCIQofX2NhdXRpb3VzX3NhdmluZ19zaGFyZV9wZXJtaWxsZUIPCg1fc2hh'
    'cmVfd2VpZ2h0');

@$core.Deprecated('Use shadowBandSeriesDescriptor instead')
const ShadowBandSeries$json = {
  '1': 'ShadowBandSeries',
  '2': [
    {'1': 'plant_id', '3': 1, '4': 1, '5': 9, '10': 'plantId'},
    {
      '1': 'rule',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.PriceRule',
      '10': 'rule'
    },
    {
      '1': 'below_target_centidegrees',
      '3': 3,
      '4': 1,
      '5': 13,
      '10': 'belowTargetCentidegrees'
    },
    {
      '1': 'above_target_centidegrees',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'aboveTargetCentidegrees'
    },
    {
      '1': 'days',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ShadowDay',
      '10': 'days'
    },
  ],
};

/// Descriptor for `ShadowBandSeries`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shadowBandSeriesDescriptor = $convert.base64Decode(
    'ChBTaGFkb3dCYW5kU2VyaWVzEhkKCHBsYW50X2lkGAEgASgJUgdwbGFudElkEjUKBHJ1bGUYAi'
    'ABKA4yIS5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLlByaWNlUnVsZVIEcnVsZRI6ChliZWxvd190'
    'YXJnZXRfY2VudGlkZWdyZWVzGAMgASgNUhdiZWxvd1RhcmdldENlbnRpZGVncmVlcxI6ChlhYm'
    '92ZV90YXJnZXRfY2VudGlkZWdyZWVzGAQgASgNUhdhYm92ZVRhcmdldENlbnRpZGVncmVlcxI1'
    'CgRkYXlzGAUgAygLMiEua3VzaW50YS5pb3QuaGVhdGluZy52MS5TaGFkb3dEYXlSBGRheXM=');

@$core.Deprecated('Use shadowSummaryDescriptor instead')
const ShadowSummary$json = {
  '1': 'ShadowSummary',
  '2': [
    {
      '1': 'home_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'homeId'
    },
    {'1': 'kept_from', '3': 2, '4': 1, '5': 9, '10': 'keptFrom'},
    {
      '1': 'series',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.ShadowBandSeries',
      '10': 'series'
    },
    {
      '1': 'exchange_rates',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.planning.v1.ExchangeRate',
      '10': 'exchangeRates'
    },
    {
      '1': 'price_terms',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.EnergyPriceTerms',
      '10': 'priceTerms'
    },
  ],
};

/// Descriptor for `ShadowSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shadowSummaryDescriptor = $convert.base64Decode(
    'Cg1TaGFkb3dTdW1tYXJ5EjkKB2hvbWVfaWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS'
    '52MS5TcGFjZUlkUgZob21lSWQSGwoJa2VwdF9mcm9tGAIgASgJUghrZXB0RnJvbRJACgZzZXJp'
    'ZXMYAyADKAsyKC5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLlNoYWRvd0JhbmRTZXJpZXNSBnNlcm'
    'llcxJMCg5leGNoYW5nZV9yYXRlcxgEIAMoCzIlLmt1c2ludGEuaW90LnBsYW5uaW5nLnYxLkV4'
    'Y2hhbmdlUmF0ZVINZXhjaGFuZ2VSYXRlcxJJCgtwcmljZV90ZXJtcxgFIAMoCzIoLmt1c2ludG'
    'EuaW90LmhlYXRpbmcudjEuRW5lcmd5UHJpY2VUZXJtc1IKcHJpY2VUZXJtcw==');

@$core.Deprecated('Use energyPriceTermsDescriptor instead')
const EnergyPriceTerms$json = {
  '1': 'EnergyPriceTerms',
  '2': [
    {'1': 'valid_from', '3': 1, '4': 1, '5': 9, '10': 'validFrom'},
    {'1': 'vat_permille', '3': 2, '4': 1, '5': 13, '10': 'vatPermille'},
    {'1': 'currency', '3': 3, '4': 1, '5': 9, '10': 'currency'},
    {
      '1': 'energy_tax_micro_per_kwh',
      '3': 4,
      '4': 1,
      '5': 13,
      '10': 'energyTaxMicroPerKwh'
    },
    {
      '1': 'adder_max_micro_per_kwh',
      '3': 5,
      '4': 1,
      '5': 13,
      '10': 'adderMaxMicroPerKwh'
    },
  ],
};

/// Descriptor for `EnergyPriceTerms`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List energyPriceTermsDescriptor = $convert.base64Decode(
    'ChBFbmVyZ3lQcmljZVRlcm1zEh0KCnZhbGlkX2Zyb20YASABKAlSCXZhbGlkRnJvbRIhCgx2YX'
    'RfcGVybWlsbGUYAiABKA1SC3ZhdFBlcm1pbGxlEhoKCGN1cnJlbmN5GAMgASgJUghjdXJyZW5j'
    'eRI2ChhlbmVyZ3lfdGF4X21pY3JvX3Blcl9rd2gYBCABKA1SFGVuZXJneVRheE1pY3JvUGVyS3'
    'doEjQKF2FkZGVyX21heF9taWNyb19wZXJfa3doGAUgASgNUhNhZGRlck1heE1pY3JvUGVyS3do');

@$core.Deprecated('Use energyPricePayerDescriptor instead')
const EnergyPricePayer$json = {
  '1': 'EnergyPricePayer',
  '2': [
    {
      '1': 'home_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '9': 0,
      '10': 'homeId'
    },
    {'1': 'plant_id', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'plantId'},
  ],
  '8': [
    {'1': 'payer'},
  ],
};

/// Descriptor for `EnergyPricePayer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List energyPricePayerDescriptor = $convert.base64Decode(
    'ChBFbmVyZ3lQcmljZVBheWVyEjsKB2hvbWVfaWQYASABKAsyIC5rdXNpbnRhLmlvdC5pZGVudG'
    'l0eS52MS5TcGFjZUlkSABSBmhvbWVJZBIbCghwbGFudF9pZBgCIAEoCUgAUgdwbGFudElkQgcK'
    'BXBheWVy');

@$core.Deprecated('Use energyPriceAdderDescriptor instead')
const EnergyPriceAdder$json = {
  '1': 'EnergyPriceAdder',
  '2': [
    {
      '1': 'payer',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.EnergyPricePayer',
      '10': 'payer'
    },
    {
      '1': 'terms',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.EnergyPriceTerms',
      '10': 'terms'
    },
    {'1': 'micro_per_kwh', '3': 3, '4': 1, '5': 13, '10': 'microPerKwh'},
    {
      '1': 'source',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.EnergyPriceAdderSource',
      '10': 'source'
    },
    {
      '1': 'default_micro_per_kwh',
      '3': 5,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'defaultMicroPerKwh',
      '17': true
    },
  ],
  '8': [
    {'1': '_default_micro_per_kwh'},
  ],
};

/// Descriptor for `EnergyPriceAdder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List energyPriceAdderDescriptor = $convert.base64Decode(
    'ChBFbmVyZ3lQcmljZUFkZGVyEj4KBXBheWVyGAEgASgLMigua3VzaW50YS5pb3QuaGVhdGluZy'
    '52MS5FbmVyZ3lQcmljZVBheWVyUgVwYXllchI+CgV0ZXJtcxgCIAEoCzIoLmt1c2ludGEuaW90'
    'LmhlYXRpbmcudjEuRW5lcmd5UHJpY2VUZXJtc1IFdGVybXMSIgoNbWljcm9fcGVyX2t3aBgDIA'
    'EoDVILbWljcm9QZXJLd2gSRgoGc291cmNlGAQgASgOMi4ua3VzaW50YS5pb3QuaGVhdGluZy52'
    'MS5FbmVyZ3lQcmljZUFkZGVyU291cmNlUgZzb3VyY2USNgoVZGVmYXVsdF9taWNyb19wZXJfa3'
    'doGAUgASgNSABSEmRlZmF1bHRNaWNyb1Blckt3aIgBAUIYChZfZGVmYXVsdF9taWNyb19wZXJf'
    'a3do');

@$core.Deprecated('Use heatCurveLimitDescriptor instead')
const HeatCurveLimit$json = {
  '1': 'HeatCurveLimit',
  '2': [
    {
      '1': 'reason',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveLimitReason',
      '10': 'reason'
    },
    {
      '1': 'opening_permille',
      '3': 2,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'openingPermille',
      '17': true
    },
    {'1': 'has_headroom', '3': 3, '4': 1, '5': 8, '10': 'hasHeadroom'},
    {
      '1': 'room_id',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'roomId'
    },
    {'1': 'floor_zone_id', '3': 5, '4': 1, '5': 9, '10': 'floorZoneId'},
    {'1': 'home_withheld', '3': 6, '4': 1, '5': 8, '10': 'homeWithheld'},
    {
      '1': 'zone_kind',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveZoneKind',
      '10': 'zoneKind'
    },
    {
      '1': 'floor_zone_ids_together',
      '3': 8,
      '4': 3,
      '5': 9,
      '10': 'floorZoneIdsTogether'
    },
  ],
  '8': [
    {'1': '_opening_permille'},
  ],
};

/// Descriptor for `HeatCurveLimit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveLimitDescriptor = $convert.base64Decode(
    'Cg5IZWF0Q3VydmVMaW1pdBJECgZyZWFzb24YASABKA4yLC5rdXNpbnRhLmlvdC5oZWF0aW5nLn'
    'YxLkhlYXRDdXJ2ZUxpbWl0UmVhc29uUgZyZWFzb24SLgoQb3BlbmluZ19wZXJtaWxsZRgCIAEo'
    'DUgAUg9vcGVuaW5nUGVybWlsbGWIAQESIQoMaGFzX2hlYWRyb29tGAMgASgIUgtoYXNIZWFkcm'
    '9vbRI5Cgdyb29tX2lkGAQgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZFIG'
    'cm9vbUlkEiIKDWZsb29yX3pvbmVfaWQYBSABKAlSC2Zsb29yWm9uZUlkEiMKDWhvbWVfd2l0aG'
    'hlbGQYBiABKAhSDGhvbWVXaXRoaGVsZBJGCgl6b25lX2tpbmQYByABKA4yKS5rdXNpbnRhLmlv'
    'dC5oZWF0aW5nLnYxLkhlYXRDdXJ2ZVpvbmVLaW5kUgh6b25lS2luZBI1ChdmbG9vcl96b25lX2'
    'lkc190b2dldGhlchgIIAMoCVIUZmxvb3Jab25lSWRzVG9nZXRoZXJCEwoRX29wZW5pbmdfcGVy'
    'bWlsbGU=');

@$core.Deprecated('Use heatCurveBandDescriptor instead')
const HeatCurveBand$json = {
  '1': 'HeatCurveBand',
  '2': [
    {
      '1': 'outdoor_from_centidegrees',
      '3': 1,
      '4': 1,
      '5': 17,
      '10': 'outdoorFromCentidegrees'
    },
    {
      '1': 'outdoor_to_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'outdoorToCentidegrees'
    },
    {'1': 'quarters', '3': 3, '4': 1, '5': 13, '10': 'quarters'},
    {
      '1': 'calculated_supply_centidegrees',
      '3': 4,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'calculatedSupplyCentidegrees',
      '17': true
    },
    {
      '1': 'supply_centidegrees',
      '3': 5,
      '4': 1,
      '5': 17,
      '9': 1,
      '10': 'supplyCentidegrees',
      '17': true
    },
    {
      '1': 'add_on_heat_wh',
      '3': 6,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'addOnHeatWh',
      '17': true
    },
    {
      '1': 'add_on_running_permille',
      '3': 7,
      '4': 1,
      '5': 13,
      '9': 3,
      '10': 'addOnRunningPermille',
      '17': true
    },
    {
      '1': 'limit',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveLimit',
      '10': 'limit'
    },
  ],
  '8': [
    {'1': '_calculated_supply_centidegrees'},
    {'1': '_supply_centidegrees'},
    {'1': '_add_on_heat_wh'},
    {'1': '_add_on_running_permille'},
  ],
};

/// Descriptor for `HeatCurveBand`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveBandDescriptor = $convert.base64Decode(
    'Cg1IZWF0Q3VydmVCYW5kEjoKGW91dGRvb3JfZnJvbV9jZW50aWRlZ3JlZXMYASABKBFSF291dG'
    'Rvb3JGcm9tQ2VudGlkZWdyZWVzEjYKF291dGRvb3JfdG9fY2VudGlkZWdyZWVzGAIgASgRUhVv'
    'dXRkb29yVG9DZW50aWRlZ3JlZXMSGgoIcXVhcnRlcnMYAyABKA1SCHF1YXJ0ZXJzEkkKHmNhbG'
    'N1bGF0ZWRfc3VwcGx5X2NlbnRpZGVncmVlcxgEIAEoEUgAUhxjYWxjdWxhdGVkU3VwcGx5Q2Vu'
    'dGlkZWdyZWVziAEBEjQKE3N1cHBseV9jZW50aWRlZ3JlZXMYBSABKBFIAVISc3VwcGx5Q2VudG'
    'lkZWdyZWVziAEBEigKDmFkZF9vbl9oZWF0X3doGAYgASgNSAJSC2FkZE9uSGVhdFdoiAEBEjoK'
    'F2FkZF9vbl9ydW5uaW5nX3Blcm1pbGxlGAcgASgNSANSFGFkZE9uUnVubmluZ1Blcm1pbGxliA'
    'EBEjwKBWxpbWl0GAggASgLMiYua3VzaW50YS5pb3QuaGVhdGluZy52MS5IZWF0Q3VydmVMaW1p'
    'dFIFbGltaXRCIQofX2NhbGN1bGF0ZWRfc3VwcGx5X2NlbnRpZGVncmVlc0IWChRfc3VwcGx5X2'
    'NlbnRpZGVncmVlc0IRCg9fYWRkX29uX2hlYXRfd2hCGgoYX2FkZF9vbl9ydW5uaW5nX3Blcm1p'
    'bGxl');

@$core.Deprecated('Use heatCurveViewDescriptor instead')
const HeatCurveView$json = {
  '1': 'HeatCurveView',
  '2': [
    {'1': 'plant_id', '3': 1, '4': 1, '5': 9, '10': 'plantId'},
    {'1': 'plant_name', '3': 2, '4': 1, '5': 9, '10': 'plantName'},
    {
      '1': 'window_from',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'windowFrom'
    },
    {
      '1': 'window_to',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'windowTo'
    },
    {
      '1': 'bands',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveBand',
      '10': 'bands'
    },
    {
      '1': 'threshold_permille',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'thresholdPermille'
    },
    {
      '1': 'opening_percentile',
      '3': 7,
      '4': 1,
      '5': 13,
      '10': 'openingPercentile'
    },
    {
      '1': 'curve_settings',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.HeatSourceReadings',
      '10': 'curveSettings'
    },
    {
      '1': 'curve_settings_changed_at',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'curveSettingsChangedAt'
    },
    {'1': 'figures_withheld', '3': 10, '4': 1, '5': 8, '10': 'figuresWithheld'},
    {
      '1': 'optimised',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveOptimised',
      '10': 'optimised'
    },
    {
      '1': 'suggestion',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveSuggestion',
      '10': 'suggestion'
    },
    {
      '1': 'last_applied',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveApplied',
      '10': 'lastApplied'
    },
    {
      '1': 'automatic_savings',
      '3': 14,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveAutomaticSavings',
      '10': 'automaticSavings'
    },
    {
      '1': 'room_target_suggestions',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveRoomTargetSuggestion',
      '10': 'roomTargetSuggestions'
    },
    {
      '1': 'history',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveHistoryEntry',
      '10': 'history'
    },
    {
      '1': 'no_suggestion_reason',
      '3': 17,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveNoSuggestionReason',
      '10': 'noSuggestionReason'
    },
    {
      '1': 'compressor_wear',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.CompressorWear',
      '10': 'compressorWear'
    },
  ],
};

/// Descriptor for `HeatCurveView`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveViewDescriptor = $convert.base64Decode(
    'Cg1IZWF0Q3VydmVWaWV3EhkKCHBsYW50X2lkGAEgASgJUgdwbGFudElkEh0KCnBsYW50X25hbW'
    'UYAiABKAlSCXBsYW50TmFtZRI7Cgt3aW5kb3dfZnJvbRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1'
    'Zi5UaW1lc3RhbXBSCndpbmRvd0Zyb20SNwoJd2luZG93X3RvGAQgASgLMhouZ29vZ2xlLnByb3'
    'RvYnVmLlRpbWVzdGFtcFIId2luZG93VG8SOwoFYmFuZHMYBSADKAsyJS5rdXNpbnRhLmlvdC5o'
    'ZWF0aW5nLnYxLkhlYXRDdXJ2ZUJhbmRSBWJhbmRzEi0KEnRocmVzaG9sZF9wZXJtaWxsZRgGIA'
    'EoDVIRdGhyZXNob2xkUGVybWlsbGUSLQoSb3BlbmluZ19wZXJjZW50aWxlGAcgASgNUhFvcGVu'
    'aW5nUGVyY2VudGlsZRJQCg5jdXJ2ZV9zZXR0aW5ncxgIIAEoCzIpLmt1c2ludGEuaW90LmRldm'
    'ljZS52MS5IZWF0U291cmNlUmVhZGluZ3NSDWN1cnZlU2V0dGluZ3MSVQoZY3VydmVfc2V0dGlu'
    'Z3NfY2hhbmdlZF9hdBgJIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSFmN1cnZlU2'
    'V0dGluZ3NDaGFuZ2VkQXQSKQoQZmlndXJlc193aXRoaGVsZBgKIAEoCFIPZmlndXJlc1dpdGho'
    'ZWxkEkgKCW9wdGltaXNlZBgLIAEoCzIqLmt1c2ludGEuaW90LmhlYXRpbmcudjEuSGVhdEN1cn'
    'ZlT3B0aW1pc2VkUglvcHRpbWlzZWQSSwoKc3VnZ2VzdGlvbhgMIAEoCzIrLmt1c2ludGEuaW90'
    'LmhlYXRpbmcudjEuSGVhdEN1cnZlU3VnZ2VzdGlvblIKc3VnZ2VzdGlvbhJLCgxsYXN0X2FwcG'
    'xpZWQYDSABKAsyKC5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkhlYXRDdXJ2ZUFwcGxpZWRSC2xh'
    'c3RBcHBsaWVkEl4KEWF1dG9tYXRpY19zYXZpbmdzGA4gASgOMjEua3VzaW50YS5pb3QuaGVhdG'
    'luZy52MS5IZWF0Q3VydmVBdXRvbWF0aWNTYXZpbmdzUhBhdXRvbWF0aWNTYXZpbmdzEm0KF3Jv'
    'b21fdGFyZ2V0X3N1Z2dlc3Rpb25zGA8gAygLMjUua3VzaW50YS5pb3QuaGVhdGluZy52MS5IZW'
    'F0Q3VydmVSb29tVGFyZ2V0U3VnZ2VzdGlvblIVcm9vbVRhcmdldFN1Z2dlc3Rpb25zEkcKB2hp'
    'c3RvcnkYECADKAsyLS5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkhlYXRDdXJ2ZUhpc3RvcnlFbn'
    'RyeVIHaGlzdG9yeRJlChRub19zdWdnZXN0aW9uX3JlYXNvbhgRIAEoDjIzLmt1c2ludGEuaW90'
    'LmhlYXRpbmcudjEuSGVhdEN1cnZlTm9TdWdnZXN0aW9uUmVhc29uUhJub1N1Z2dlc3Rpb25SZW'
    'Fzb24STwoPY29tcHJlc3Nvcl93ZWFyGBIgASgLMiYua3VzaW50YS5pb3QuaGVhdGluZy52MS5D'
    'b21wcmVzc29yV2VhclIOY29tcHJlc3NvcldlYXI=');

@$core.Deprecated('Use compressorWearDescriptor instead')
const CompressorWear$json = {
  '1': 'CompressorWear',
  '2': [
    {
      '1': 'days',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.CompressorWearDay',
      '10': 'days'
    },
    {
      '1': 'lifetime_run_length_minutes',
      '3': 2,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'lifetimeRunLengthMinutes',
      '17': true
    },
    {'1': 'short_cycling', '3': 3, '4': 1, '5': 8, '10': 'shortCycling'},
  ],
  '8': [
    {'1': '_lifetime_run_length_minutes'},
  ],
};

/// Descriptor for `CompressorWear`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compressorWearDescriptor = $convert.base64Decode(
    'Cg5Db21wcmVzc29yV2VhchI9CgRkYXlzGAEgAygLMikua3VzaW50YS5pb3QuaGVhdGluZy52MS'
    '5Db21wcmVzc29yV2VhckRheVIEZGF5cxJCChtsaWZldGltZV9ydW5fbGVuZ3RoX21pbnV0ZXMY'
    'AiABKA1IAFIYbGlmZXRpbWVSdW5MZW5ndGhNaW51dGVziAEBEiMKDXNob3J0X2N5Y2xpbmcYAy'
    'ABKAhSDHNob3J0Q3ljbGluZ0IeChxfbGlmZXRpbWVfcnVuX2xlbmd0aF9taW51dGVz');

@$core.Deprecated('Use compressorWearDayDescriptor instead')
const CompressorWearDay$json = {
  '1': 'CompressorWearDay',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
    {
      '1': 'starts',
      '3': 2,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'starts',
      '17': true
    },
    {'1': 'hours', '3': 3, '4': 1, '5': 13, '9': 1, '10': 'hours', '17': true},
    {
      '1': 'hot_water_hours',
      '3': 4,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'hotWaterHours',
      '17': true
    },
    {
      '1': 'space_heating_hours',
      '3': 5,
      '4': 1,
      '5': 13,
      '9': 3,
      '10': 'spaceHeatingHours',
      '17': true
    },
    {'1': 'partial', '3': 6, '4': 1, '5': 8, '10': 'partial'},
    {
      '1': 'run_length_minutes',
      '3': 7,
      '4': 1,
      '5': 13,
      '9': 4,
      '10': 'runLengthMinutes',
      '17': true
    },
  ],
  '8': [
    {'1': '_starts'},
    {'1': '_hours'},
    {'1': '_hot_water_hours'},
    {'1': '_space_heating_hours'},
    {'1': '_run_length_minutes'},
  ],
};

/// Descriptor for `CompressorWearDay`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compressorWearDayDescriptor = $convert.base64Decode(
    'ChFDb21wcmVzc29yV2VhckRheRISCgRkYXRlGAEgASgJUgRkYXRlEhsKBnN0YXJ0cxgCIAEoDU'
    'gAUgZzdGFydHOIAQESGQoFaG91cnMYAyABKA1IAVIFaG91cnOIAQESKwoPaG90X3dhdGVyX2hv'
    'dXJzGAQgASgNSAJSDWhvdFdhdGVySG91cnOIAQESMwoTc3BhY2VfaGVhdGluZ19ob3VycxgFIA'
    'EoDUgDUhFzcGFjZUhlYXRpbmdIb3Vyc4gBARIYCgdwYXJ0aWFsGAYgASgIUgdwYXJ0aWFsEjEK'
    'EnJ1bl9sZW5ndGhfbWludXRlcxgHIAEoDUgEUhBydW5MZW5ndGhNaW51dGVziAEBQgkKB19zdG'
    'FydHNCCAoGX2hvdXJzQhIKEF9ob3Rfd2F0ZXJfaG91cnNCFgoUX3NwYWNlX2hlYXRpbmdfaG91'
    'cnNCFQoTX3J1bl9sZW5ndGhfbWludXRlcw==');

@$core.Deprecated('Use heatCurveCompressorEffectDescriptor instead')
const HeatCurveCompressorEffect$json = {
  '1': 'HeatCurveCompressorEffect',
  '2': [
    {
      '1': 'starts_per_day_tenths_before',
      '3': 1,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'startsPerDayTenthsBefore',
      '17': true
    },
    {
      '1': 'starts_per_day_tenths_after',
      '3': 2,
      '4': 1,
      '5': 13,
      '9': 1,
      '10': 'startsPerDayTenthsAfter',
      '17': true
    },
    {
      '1': 'space_heating_run_length_minutes_before',
      '3': 3,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'spaceHeatingRunLengthMinutesBefore',
      '17': true
    },
    {
      '1': 'space_heating_run_length_minutes_after',
      '3': 4,
      '4': 1,
      '5': 13,
      '9': 3,
      '10': 'spaceHeatingRunLengthMinutesAfter',
      '17': true
    },
    {'1': 'days_compared', '3': 5, '4': 1, '5': 13, '10': 'daysCompared'},
    {
      '1': 'matched_on_heat_source_outdoor',
      '3': 6,
      '4': 1,
      '5': 8,
      '10': 'matchedOnHeatSourceOutdoor'
    },
  ],
  '8': [
    {'1': '_starts_per_day_tenths_before'},
    {'1': '_starts_per_day_tenths_after'},
    {'1': '_space_heating_run_length_minutes_before'},
    {'1': '_space_heating_run_length_minutes_after'},
  ],
};

/// Descriptor for `HeatCurveCompressorEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveCompressorEffectDescriptor = $convert.base64Decode(
    'ChlIZWF0Q3VydmVDb21wcmVzc29yRWZmZWN0EkMKHHN0YXJ0c19wZXJfZGF5X3RlbnRoc19iZW'
    'ZvcmUYASABKA1IAFIYc3RhcnRzUGVyRGF5VGVudGhzQmVmb3JliAEBEkEKG3N0YXJ0c19wZXJf'
    'ZGF5X3RlbnRoc19hZnRlchgCIAEoDUgBUhdzdGFydHNQZXJEYXlUZW50aHNBZnRlcogBARJYCi'
    'dzcGFjZV9oZWF0aW5nX3J1bl9sZW5ndGhfbWludXRlc19iZWZvcmUYAyABKA1IAlIic3BhY2VI'
    'ZWF0aW5nUnVuTGVuZ3RoTWludXRlc0JlZm9yZYgBARJWCiZzcGFjZV9oZWF0aW5nX3J1bl9sZW'
    '5ndGhfbWludXRlc19hZnRlchgEIAEoDUgDUiFzcGFjZUhlYXRpbmdSdW5MZW5ndGhNaW51dGVz'
    'QWZ0ZXKIAQESIwoNZGF5c19jb21wYXJlZBgFIAEoDVIMZGF5c0NvbXBhcmVkEkIKHm1hdGNoZW'
    'Rfb25faGVhdF9zb3VyY2Vfb3V0ZG9vchgGIAEoCFIabWF0Y2hlZE9uSGVhdFNvdXJjZU91dGRv'
    'b3JCHwodX3N0YXJ0c19wZXJfZGF5X3RlbnRoc19iZWZvcmVCHgocX3N0YXJ0c19wZXJfZGF5X3'
    'RlbnRoc19hZnRlckIqCihfc3BhY2VfaGVhdGluZ19ydW5fbGVuZ3RoX21pbnV0ZXNfYmVmb3Jl'
    'QikKJ19zcGFjZV9oZWF0aW5nX3J1bl9sZW5ndGhfbWludXRlc19hZnRlcg==');

@$core.Deprecated('Use heatCurveViewsDescriptor instead')
const HeatCurveViews$json = {
  '1': 'HeatCurveViews',
  '2': [
    {
      '1': 'views',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveView',
      '10': 'views'
    },
  ],
};

/// Descriptor for `HeatCurveViews`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveViewsDescriptor = $convert.base64Decode(
    'Cg5IZWF0Q3VydmVWaWV3cxI7CgV2aWV3cxgBIAMoCzIlLmt1c2ludGEuaW90LmhlYXRpbmcudj'
    'EuSGVhdEN1cnZlVmlld1IFdmlld3M=');

@$core.Deprecated('Use heatCurvePointDescriptor instead')
const HeatCurvePoint$json = {
  '1': 'HeatCurvePoint',
  '2': [
    {
      '1': 'outdoor_centidegrees',
      '3': 1,
      '4': 1,
      '5': 17,
      '10': 'outdoorCentidegrees'
    },
    {
      '1': 'supply_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '10': 'supplyCentidegrees'
    },
    {
      '1': 'current_supply_centidegrees',
      '3': 3,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'currentSupplyCentidegrees',
      '17': true
    },
    {
      '1': 'confidence',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurvePointConfidence',
      '10': 'confidence'
    },
  ],
  '8': [
    {'1': '_current_supply_centidegrees'},
  ],
};

/// Descriptor for `HeatCurvePoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurvePointDescriptor = $convert.base64Decode(
    'Cg5IZWF0Q3VydmVQb2ludBIxChRvdXRkb29yX2NlbnRpZGVncmVlcxgBIAEoEVITb3V0ZG9vck'
    'NlbnRpZGVncmVlcxIvChNzdXBwbHlfY2VudGlkZWdyZWVzGAIgASgRUhJzdXBwbHlDZW50aWRl'
    'Z3JlZXMSQwobY3VycmVudF9zdXBwbHlfY2VudGlkZWdyZWVzGAMgASgRSABSGWN1cnJlbnRTdX'
    'BwbHlDZW50aWRlZ3JlZXOIAQESUAoKY29uZmlkZW5jZRgEIAEoDjIwLmt1c2ludGEuaW90Lmhl'
    'YXRpbmcudjEuSGVhdEN1cnZlUG9pbnRDb25maWRlbmNlUgpjb25maWRlbmNlQh4KHF9jdXJyZW'
    '50X3N1cHBseV9jZW50aWRlZ3JlZXM=');

@$core.Deprecated('Use heatCurveOptimisedDescriptor instead')
const HeatCurveOptimised$json = {
  '1': 'HeatCurveOptimised',
  '2': [
    {
      '1': 'points',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurvePoint',
      '10': 'points'
    },
    {
      '1': 'min_supply_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'minSupplyCentidegrees',
      '17': true
    },
    {
      '1': 'max_supply_centidegrees',
      '3': 3,
      '4': 1,
      '5': 17,
      '9': 1,
      '10': 'maxSupplyCentidegrees',
      '17': true
    },
  ],
  '8': [
    {'1': '_min_supply_centidegrees'},
    {'1': '_max_supply_centidegrees'},
  ],
};

/// Descriptor for `HeatCurveOptimised`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveOptimisedDescriptor = $convert.base64Decode(
    'ChJIZWF0Q3VydmVPcHRpbWlzZWQSPgoGcG9pbnRzGAEgAygLMiYua3VzaW50YS5pb3QuaGVhdG'
    'luZy52MS5IZWF0Q3VydmVQb2ludFIGcG9pbnRzEjsKF21pbl9zdXBwbHlfY2VudGlkZWdyZWVz'
    'GAIgASgRSABSFW1pblN1cHBseUNlbnRpZGVncmVlc4gBARI7ChdtYXhfc3VwcGx5X2NlbnRpZG'
    'VncmVlcxgDIAEoEUgBUhVtYXhTdXBwbHlDZW50aWRlZ3JlZXOIAQFCGgoYX21pbl9zdXBwbHlf'
    'Y2VudGlkZWdyZWVzQhoKGF9tYXhfc3VwcGx5X2NlbnRpZGVncmVlcw==');

@$core.Deprecated('Use heatCurveSuggestionDescriptor instead')
const HeatCurveSuggestion$json = {
  '1': 'HeatCurveSuggestion',
  '2': [
    {'1': 'suggestion_id', '3': 1, '4': 1, '5': 9, '10': 'suggestionId'},
    {
      '1': 'kind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveSuggestionKind',
      '10': 'kind'
    },
    {
      '1': 'settings',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.HeatSourceReadings',
      '10': 'settings'
    },
    {'1': 'writable', '3': 4, '4': 1, '5': 8, '10': 'writable'},
    {
      '1': 'newly_confirmed_outdoor_centidegrees',
      '3': 5,
      '4': 3,
      '5': 17,
      '10': 'newlyConfirmedOutdoorCentidegrees'
    },
    {
      '1': 'saving_kwh_per_year',
      '3': 6,
      '4': 1,
      '5': 13,
      '9': 0,
      '10': 'savingKwhPerYear',
      '17': true
    },
    {
      '1': 'saving_micro_eur_per_year',
      '3': 7,
      '4': 1,
      '5': 18,
      '9': 1,
      '10': 'savingMicroEurPerYear',
      '17': true
    },
    {
      '1': 'saving_permille',
      '3': 8,
      '4': 1,
      '5': 13,
      '9': 2,
      '10': 'savingPermille',
      '17': true
    },
    {
      '1': 'suggested_at',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'suggestedAt'
    },
    {'1': 'declined', '3': 10, '4': 1, '5': 8, '10': 'declined'},
    {
      '1': 'hand_over',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveHandOver',
      '10': 'handOver'
    },
  ],
  '8': [
    {'1': '_saving_kwh_per_year'},
    {'1': '_saving_micro_eur_per_year'},
    {'1': '_saving_permille'},
  ],
};

/// Descriptor for `HeatCurveSuggestion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveSuggestionDescriptor = $convert.base64Decode(
    'ChNIZWF0Q3VydmVTdWdnZXN0aW9uEiMKDXN1Z2dlc3Rpb25faWQYASABKAlSDHN1Z2dlc3Rpb2'
    '5JZBJDCgRraW5kGAIgASgOMi8ua3VzaW50YS5pb3QuaGVhdGluZy52MS5IZWF0Q3VydmVTdWdn'
    'ZXN0aW9uS2luZFIEa2luZBJFCghzZXR0aW5ncxgDIAEoCzIpLmt1c2ludGEuaW90LmRldmljZS'
    '52MS5IZWF0U291cmNlUmVhZGluZ3NSCHNldHRpbmdzEhoKCHdyaXRhYmxlGAQgASgIUgh3cml0'
    'YWJsZRJPCiRuZXdseV9jb25maXJtZWRfb3V0ZG9vcl9jZW50aWRlZ3JlZXMYBSADKBFSIW5ld2'
    'x5Q29uZmlybWVkT3V0ZG9vckNlbnRpZGVncmVlcxIyChNzYXZpbmdfa3doX3Blcl95ZWFyGAYg'
    'ASgNSABSEHNhdmluZ0t3aFBlclllYXKIAQESPQoZc2F2aW5nX21pY3JvX2V1cl9wZXJfeWVhch'
    'gHIAEoEkgBUhVzYXZpbmdNaWNyb0V1clBlclllYXKIAQESLAoPc2F2aW5nX3Blcm1pbGxlGAgg'
    'ASgNSAJSDnNhdmluZ1Blcm1pbGxliAEBEj0KDHN1Z2dlc3RlZF9hdBgJIAEoCzIaLmdvb2dsZS'
    '5wcm90b2J1Zi5UaW1lc3RhbXBSC3N1Z2dlc3RlZEF0EhoKCGRlY2xpbmVkGAogASgIUghkZWNs'
    'aW5lZBJGCgloYW5kX292ZXIYCyABKAsyKS5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkhlYXRDdX'
    'J2ZUhhbmRPdmVyUghoYW5kT3ZlckIWChRfc2F2aW5nX2t3aF9wZXJfeWVhckIcChpfc2F2aW5n'
    'X21pY3JvX2V1cl9wZXJfeWVhckISChBfc2F2aW5nX3Blcm1pbGxl');

@$core.Deprecated('Use heatCurveHandOverDescriptor instead')
const HeatCurveHandOver$json = {
  '1': 'HeatCurveHandOver',
  '2': [
    {
      '1': 'technician',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'technician'
    },
    {
      '1': 'since',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'since'
    },
    {
      '1': 'done_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'doneAt'
    },
  ],
};

/// Descriptor for `HeatCurveHandOver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveHandOverDescriptor = $convert.base64Decode(
    'ChFIZWF0Q3VydmVIYW5kT3ZlchI/Cgp0ZWNobmljaWFuGAEgASgLMh8ua3VzaW50YS5pb3QuaW'
    'RlbnRpdHkudjEuVXNlcklkUgp0ZWNobmljaWFuEjAKBXNpbmNlGAIgASgLMhouZ29vZ2xlLnBy'
    'b3RvYnVmLlRpbWVzdGFtcFIFc2luY2USMwoHZG9uZV9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2'
    'J1Zi5UaW1lc3RhbXBSBmRvbmVBdA==');

@$core.Deprecated('Use heatCurveHistoryEntryDescriptor instead')
const HeatCurveHistoryEntry$json = {
  '1': 'HeatCurveHistoryEntry',
  '2': [
    {'1': 'suggestion_id', '3': 1, '4': 1, '5': 9, '10': 'suggestionId'},
    {
      '1': 'kind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveSuggestionKind',
      '10': 'kind'
    },
    {
      '1': 'outcome',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveHistoryOutcome',
      '10': 'outcome'
    },
    {
      '1': 'at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'at'
    },
    {
      '1': 'settings',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.HeatSourceReadings',
      '10': 'settings'
    },
    {
      '1': 'hand_over',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveHandOver',
      '10': 'handOver'
    },
    {'1': 'still_current', '3': 7, '4': 1, '5': 8, '10': 'stillCurrent'},
    {
      '1': 'compressor_effect',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveCompressorEffect',
      '10': 'compressorEffect'
    },
  ],
};

/// Descriptor for `HeatCurveHistoryEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveHistoryEntryDescriptor = $convert.base64Decode(
    'ChVIZWF0Q3VydmVIaXN0b3J5RW50cnkSIwoNc3VnZ2VzdGlvbl9pZBgBIAEoCVIMc3VnZ2VzdG'
    'lvbklkEkMKBGtpbmQYAiABKA4yLy5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkhlYXRDdXJ2ZVN1'
    'Z2dlc3Rpb25LaW5kUgRraW5kEkkKB291dGNvbWUYAyABKA4yLy5rdXNpbnRhLmlvdC5oZWF0aW'
    '5nLnYxLkhlYXRDdXJ2ZUhpc3RvcnlPdXRjb21lUgdvdXRjb21lEioKAmF0GAQgASgLMhouZ29v'
    'Z2xlLnByb3RvYnVmLlRpbWVzdGFtcFICYXQSRQoIc2V0dGluZ3MYBSABKAsyKS5rdXNpbnRhLm'
    'lvdC5kZXZpY2UudjEuSGVhdFNvdXJjZVJlYWRpbmdzUghzZXR0aW5ncxJGCgloYW5kX292ZXIY'
    'BiABKAsyKS5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkhlYXRDdXJ2ZUhhbmRPdmVyUghoYW5kT3'
    'ZlchIjCg1zdGlsbF9jdXJyZW50GAcgASgIUgxzdGlsbEN1cnJlbnQSXgoRY29tcHJlc3Nvcl9l'
    'ZmZlY3QYCCABKAsyMS5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkhlYXRDdXJ2ZUNvbXByZXNzb3'
    'JFZmZlY3RSEGNvbXByZXNzb3JFZmZlY3Q=');

@$core.Deprecated('Use heatCurveMismatchDescriptor instead')
const HeatCurveMismatch$json = {
  '1': 'HeatCurveMismatch',
  '2': [
    {
      '1': 'kind',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveMismatchKind',
      '10': 'kind'
    },
    {
      '1': 'outdoor_centidegrees',
      '3': 2,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'outdoorCentidegrees',
      '17': true
    },
    {
      '1': 'expected_supply_centidegrees',
      '3': 3,
      '4': 1,
      '5': 17,
      '9': 1,
      '10': 'expectedSupplyCentidegrees',
      '17': true
    },
    {
      '1': 'found_supply_centidegrees',
      '3': 4,
      '4': 1,
      '5': 17,
      '9': 2,
      '10': 'foundSupplyCentidegrees',
      '17': true
    },
    {
      '1': 'found_offset',
      '3': 5,
      '4': 1,
      '5': 17,
      '9': 3,
      '10': 'foundOffset',
      '17': true
    },
    {
      '1': 'found_bend_offset_centidegrees',
      '3': 6,
      '4': 1,
      '5': 17,
      '9': 4,
      '10': 'foundBendOffsetCentidegrees',
      '17': true
    },
    {
      '1': 'found_curve',
      '3': 7,
      '4': 1,
      '5': 13,
      '9': 5,
      '10': 'foundCurve',
      '17': true
    },
  ],
  '8': [
    {'1': '_outdoor_centidegrees'},
    {'1': '_expected_supply_centidegrees'},
    {'1': '_found_supply_centidegrees'},
    {'1': '_found_offset'},
    {'1': '_found_bend_offset_centidegrees'},
    {'1': '_found_curve'},
  ],
};

/// Descriptor for `HeatCurveMismatch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveMismatchDescriptor = $convert.base64Decode(
    'ChFIZWF0Q3VydmVNaXNtYXRjaBJBCgRraW5kGAEgASgOMi0ua3VzaW50YS5pb3QuaGVhdGluZy'
    '52MS5IZWF0Q3VydmVNaXNtYXRjaEtpbmRSBGtpbmQSNgoUb3V0ZG9vcl9jZW50aWRlZ3JlZXMY'
    'AiABKBFIAFITb3V0ZG9vckNlbnRpZGVncmVlc4gBARJFChxleHBlY3RlZF9zdXBwbHlfY2VudG'
    'lkZWdyZWVzGAMgASgRSAFSGmV4cGVjdGVkU3VwcGx5Q2VudGlkZWdyZWVziAEBEj8KGWZvdW5k'
    'X3N1cHBseV9jZW50aWRlZ3JlZXMYBCABKBFIAlIXZm91bmRTdXBwbHlDZW50aWRlZ3JlZXOIAQ'
    'ESJgoMZm91bmRfb2Zmc2V0GAUgASgRSANSC2ZvdW5kT2Zmc2V0iAEBEkgKHmZvdW5kX2JlbmRf'
    'b2Zmc2V0X2NlbnRpZGVncmVlcxgGIAEoEUgEUhtmb3VuZEJlbmRPZmZzZXRDZW50aWRlZ3JlZX'
    'OIAQESJAoLZm91bmRfY3VydmUYByABKA1IBVIKZm91bmRDdXJ2ZYgBAUIXChVfb3V0ZG9vcl9j'
    'ZW50aWRlZ3JlZXNCHwodX2V4cGVjdGVkX3N1cHBseV9jZW50aWRlZ3JlZXNCHAoaX2ZvdW5kX3'
    'N1cHBseV9jZW50aWRlZ3JlZXNCDwoNX2ZvdW5kX29mZnNldEIhCh9fZm91bmRfYmVuZF9vZmZz'
    'ZXRfY2VudGlkZWdyZWVzQg4KDF9mb3VuZF9jdXJ2ZQ==');

@$core.Deprecated('Use heatCurveAppliedDescriptor instead')
const HeatCurveApplied$json = {
  '1': 'HeatCurveApplied',
  '2': [
    {'1': 'suggestion_id', '3': 1, '4': 1, '5': 9, '10': 'suggestionId'},
    {
      '1': 'mode',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveApplyMode',
      '10': 'mode'
    },
    {
      '1': 'applied_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'appliedAt'
    },
    {
      '1': 'settings',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.HeatSourceReadings',
      '10': 'settings'
    },
    {
      '1': 'settings_before',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.HeatSourceReadings',
      '10': 'settingsBefore'
    },
    {'1': 'revert', '3': 6, '4': 1, '5': 8, '10': 'revert'},
    {
      '1': 'verification',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveVerification',
      '10': 'verification'
    },
    {
      '1': 'verified_by',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.heating.v1.HeatCurveVerifiedBy',
      '10': 'verifiedBy'
    },
    {
      '1': 'verified_at',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'verifiedAt'
    },
    {
      '1': 'mismatches',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.heating.v1.HeatCurveMismatch',
      '10': 'mismatches'
    },
  ],
};

/// Descriptor for `HeatCurveApplied`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveAppliedDescriptor = $convert.base64Decode(
    'ChBIZWF0Q3VydmVBcHBsaWVkEiMKDXN1Z2dlc3Rpb25faWQYASABKAlSDHN1Z2dlc3Rpb25JZB'
    'I+CgRtb2RlGAIgASgOMioua3VzaW50YS5pb3QuaGVhdGluZy52MS5IZWF0Q3VydmVBcHBseU1v'
    'ZGVSBG1vZGUSOQoKYXBwbGllZF9hdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbX'
    'BSCWFwcGxpZWRBdBJFCghzZXR0aW5ncxgEIAEoCzIpLmt1c2ludGEuaW90LmRldmljZS52MS5I'
    'ZWF0U291cmNlUmVhZGluZ3NSCHNldHRpbmdzElIKD3NldHRpbmdzX2JlZm9yZRgFIAEoCzIpLm'
    't1c2ludGEuaW90LmRldmljZS52MS5IZWF0U291cmNlUmVhZGluZ3NSDnNldHRpbmdzQmVmb3Jl'
    'EhYKBnJldmVydBgGIAEoCFIGcmV2ZXJ0ElEKDHZlcmlmaWNhdGlvbhgHIAEoDjItLmt1c2ludG'
    'EuaW90LmhlYXRpbmcudjEuSGVhdEN1cnZlVmVyaWZpY2F0aW9uUgx2ZXJpZmljYXRpb24STAoL'
    'dmVyaWZpZWRfYnkYCCABKA4yKy5rdXNpbnRhLmlvdC5oZWF0aW5nLnYxLkhlYXRDdXJ2ZVZlcm'
    'lmaWVkQnlSCnZlcmlmaWVkQnkSOwoLdmVyaWZpZWRfYXQYCSABKAsyGi5nb29nbGUucHJvdG9i'
    'dWYuVGltZXN0YW1wUgp2ZXJpZmllZEF0EkkKCm1pc21hdGNoZXMYCiADKAsyKS5rdXNpbnRhLm'
    'lvdC5oZWF0aW5nLnYxLkhlYXRDdXJ2ZU1pc21hdGNoUgptaXNtYXRjaGVz');

@$core.Deprecated('Use heatCurveRoomTargetSuggestionDescriptor instead')
const HeatCurveRoomTargetSuggestion$json = {
  '1': 'HeatCurveRoomTargetSuggestion',
  '2': [
    {'1': 'suggestion_id', '3': 1, '4': 1, '5': 9, '10': 'suggestionId'},
    {
      '1': 'room_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'roomId'
    },
    {
      '1': 'target_centidegrees',
      '3': 3,
      '4': 1,
      '5': 17,
      '10': 'targetCentidegrees'
    },
    {
      '1': 'suggested_target_centidegrees',
      '3': 4,
      '4': 1,
      '5': 17,
      '10': 'suggestedTargetCentidegrees'
    },
    {
      '1': 'curve_lowered_by_centidegrees',
      '3': 5,
      '4': 1,
      '5': 17,
      '9': 0,
      '10': 'curveLoweredByCentidegrees',
      '17': true
    },
    {
      '1': 'band_outdoor_from_centidegrees',
      '3': 6,
      '4': 3,
      '5': 17,
      '10': 'bandOutdoorFromCentidegrees'
    },
    {
      '1': 'suggested_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'suggestedAt'
    },
    {'1': 'declined', '3': 8, '4': 1, '5': 8, '10': 'declined'},
  ],
  '8': [
    {'1': '_curve_lowered_by_centidegrees'},
  ],
};

/// Descriptor for `HeatCurveRoomTargetSuggestion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List heatCurveRoomTargetSuggestionDescriptor = $convert.base64Decode(
    'Ch1IZWF0Q3VydmVSb29tVGFyZ2V0U3VnZ2VzdGlvbhIjCg1zdWdnZXN0aW9uX2lkGAEgASgJUg'
    'xzdWdnZXN0aW9uSWQSOQoHcm9vbV9pZBgCIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5LnYx'
    'LlNwYWNlSWRSBnJvb21JZBIvChN0YXJnZXRfY2VudGlkZWdyZWVzGAMgASgRUhJ0YXJnZXRDZW'
    '50aWRlZ3JlZXMSQgodc3VnZ2VzdGVkX3RhcmdldF9jZW50aWRlZ3JlZXMYBCABKBFSG3N1Z2dl'
    'c3RlZFRhcmdldENlbnRpZGVncmVlcxJGCh1jdXJ2ZV9sb3dlcmVkX2J5X2NlbnRpZGVncmVlcx'
    'gFIAEoEUgAUhpjdXJ2ZUxvd2VyZWRCeUNlbnRpZGVncmVlc4gBARJDCh5iYW5kX291dGRvb3Jf'
    'ZnJvbV9jZW50aWRlZ3JlZXMYBiADKBFSG2JhbmRPdXRkb29yRnJvbUNlbnRpZGVncmVlcxI9Cg'
    'xzdWdnZXN0ZWRfYXQYByABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgtzdWdnZXN0'
    'ZWRBdBIaCghkZWNsaW5lZBgIIAEoCFIIZGVjbGluZWRCIAoeX2N1cnZlX2xvd2VyZWRfYnlfY2'
    'VudGlkZWdyZWVz');
