// This is a generated file - do not edit.
//
// Generated from kusinta/iot/commissioning/v1/commissioning.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use partyDescriptor instead')
const Party$json = {
  '1': 'Party',
  '2': [
    {'1': 'PARTY_UNSPECIFIED', '2': 0},
    {'1': 'PARTY_OWNER_ORGANISATION', '2': 1},
    {'1': 'PARTY_HOUSEHOLD', '2': 2},
    {'1': 'PARTY_INSTALLER', '2': 3},
    {'1': 'PARTY_AUTOMATIC', '2': 4},
  ],
};

/// Descriptor for `Party`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List partyDescriptor = $convert.base64Decode(
    'CgVQYXJ0eRIVChFQQVJUWV9VTlNQRUNJRklFRBAAEhwKGFBBUlRZX09XTkVSX09SR0FOSVNBVE'
    'lPThABEhMKD1BBUlRZX0hPVVNFSE9MRBACEhMKD1BBUlRZX0lOU1RBTExFUhADEhMKD1BBUlRZ'
    'X0FVVE9NQVRJQxAE');

@$core.Deprecated('Use necessityDescriptor instead')
const Necessity$json = {
  '1': 'Necessity',
  '2': [
    {'1': 'NECESSITY_UNSPECIFIED', '2': 0},
    {'1': 'NECESSITY_REQUIRED', '2': 1},
    {'1': 'NECESSITY_FOR_FEATURE', '2': 2},
    {'1': 'NECESSITY_OPTIONAL', '2': 3},
  ],
};

/// Descriptor for `Necessity`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List necessityDescriptor = $convert.base64Decode(
    'CglOZWNlc3NpdHkSGQoVTkVDRVNTSVRZX1VOU1BFQ0lGSUVEEAASFgoSTkVDRVNTSVRZX1JFUV'
    'VJUkVEEAESGQoVTkVDRVNTSVRZX0ZPUl9GRUFUVVJFEAISFgoSTkVDRVNTSVRZX09QVElPTkFM'
    'EAM=');

@$core.Deprecated('Use evidenceDescriptor instead')
const Evidence$json = {
  '1': 'Evidence',
  '2': [
    {'1': 'EVIDENCE_UNSPECIFIED', '2': 0},
    {'1': 'EVIDENCE_STATED', '2': 1},
    {'1': 'EVIDENCE_PHOTO', '2': 2},
    {'1': 'EVIDENCE_DRAWING', '2': 3},
    {'1': 'EVIDENCE_INSPECTED', '2': 4},
    {'1': 'EVIDENCE_MEASURED', '2': 5},
    {'1': 'EVIDENCE_DERIVED', '2': 6},
  ],
};

/// Descriptor for `Evidence`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List evidenceDescriptor = $convert.base64Decode(
    'CghFdmlkZW5jZRIYChRFVklERU5DRV9VTlNQRUNJRklFRBAAEhMKD0VWSURFTkNFX1NUQVRFRB'
    'ABEhIKDkVWSURFTkNFX1BIT1RPEAISFAoQRVZJREVOQ0VfRFJBV0lORxADEhYKEkVWSURFTkNF'
    'X0lOU1BFQ1RFRBAEEhUKEUVWSURFTkNFX01FQVNVUkVEEAUSFAoQRVZJREVOQ0VfREVSSVZFRB'
    'AG');

@$core.Deprecated('Use factTopicDescriptor instead')
const FactTopic$json = {
  '1': 'FactTopic',
  '2': [
    {'1': 'FACT_TOPIC_UNSPECIFIED', '2': 0},
    {'1': 'FACT_TOPIC_BUILDING', '2': 1},
    {'1': 'FACT_TOPIC_ROOMS', '2': 2},
    {'1': 'FACT_TOPIC_HEAT_SOURCE', '2': 3},
    {'1': 'FACT_TOPIC_FLOOR_HEATING', '2': 4},
    {'1': 'FACT_TOPIC_COMFORT_LOADS', '2': 5},
    {'1': 'FACT_TOPIC_ELECTRICITY', '2': 6},
    {'1': 'FACT_TOPIC_DISTRICT_HEATING', '2': 7},
    {'1': 'FACT_TOPIC_CONNECTIVITY', '2': 8},
    {'1': 'FACT_TOPIC_COMFORT', '2': 9},
  ],
};

/// Descriptor for `FactTopic`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List factTopicDescriptor = $convert.base64Decode(
    'CglGYWN0VG9waWMSGgoWRkFDVF9UT1BJQ19VTlNQRUNJRklFRBAAEhcKE0ZBQ1RfVE9QSUNfQl'
    'VJTERJTkcQARIUChBGQUNUX1RPUElDX1JPT01TEAISGgoWRkFDVF9UT1BJQ19IRUFUX1NPVVJD'
    'RRADEhwKGEZBQ1RfVE9QSUNfRkxPT1JfSEVBVElORxAEEhwKGEZBQ1RfVE9QSUNfQ09NRk9SVF'
    '9MT0FEUxAFEhoKFkZBQ1RfVE9QSUNfRUxFQ1RSSUNJVFkQBhIfChtGQUNUX1RPUElDX0RJU1RS'
    'SUNUX0hFQVRJTkcQBxIbChdGQUNUX1RPUElDX0NPTk5FQ1RJVklUWRAIEhYKEkZBQ1RfVE9QSU'
    'NfQ09NRk9SVBAJ');

@$core.Deprecated('Use featureDescriptor instead')
const Feature$json = {
  '1': 'Feature',
  '2': [
    {'1': 'FEATURE_UNSPECIFIED', '2': 0},
    {'1': 'FEATURE_FLOOR_ZONES', '2': 1},
    {'1': 'FEATURE_PLANT', '2': 2},
    {'1': 'FEATURE_COMFORT_LOADS', '2': 3},
    {'1': 'FEATURE_COST', '2': 4},
    {'1': 'FEATURE_PEAK_GUARD', '2': 5},
    {'1': 'FEATURE_PLANNING', '2': 6},
  ],
};

/// Descriptor for `Feature`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List featureDescriptor = $convert.base64Decode(
    'CgdGZWF0dXJlEhcKE0ZFQVRVUkVfVU5TUEVDSUZJRUQQABIXChNGRUFUVVJFX0ZMT09SX1pPTk'
    'VTEAESEQoNRkVBVFVSRV9QTEFOVBACEhkKFUZFQVRVUkVfQ09NRk9SVF9MT0FEUxADEhAKDEZF'
    'QVRVUkVfQ09TVBAEEhYKEkZFQVRVUkVfUEVBS19HVUFSRBAFEhQKEEZFQVRVUkVfUExBTk5JTk'
    'cQBg==');

@$core.Deprecated('Use featureStateDescriptor instead')
const FeatureState$json = {
  '1': 'FeatureState',
  '2': [
    {'1': 'FEATURE_STATE_UNSPECIFIED', '2': 0},
    {'1': 'FEATURE_STATE_WORKS', '2': 1},
    {'1': 'FEATURE_STATE_NEEDS', '2': 2},
    {'1': 'FEATURE_STATE_BLOCKED_FOR_SAFETY', '2': 3},
  ],
};

/// Descriptor for `FeatureState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List featureStateDescriptor = $convert.base64Decode(
    'CgxGZWF0dXJlU3RhdGUSHQoZRkVBVFVSRV9TVEFURV9VTlNQRUNJRklFRBAAEhcKE0ZFQVRVUk'
    'VfU1RBVEVfV09SS1MQARIXChNGRUFUVVJFX1NUQVRFX05FRURTEAISJAogRkVBVFVSRV9TVEFU'
    'RV9CTE9DS0VEX0ZPUl9TQUZFVFkQAw==');

@$core.Deprecated('Use blockReasonDescriptor instead')
const BlockReason$json = {
  '1': 'BlockReason',
  '2': [
    {'1': 'BLOCK_REASON_UNSPECIFIED', '2': 0},
    {'1': 'BLOCK_REASON_TEST_FAILED', '2': 1},
    {'1': 'BLOCK_REASON_OUTPUT_NOT_LEASED', '2': 2},
    {'1': 'BLOCK_REASON_POWER_ON_NOT_AT_REST', '2': 3},
    {'1': 'BLOCK_REASON_DEVICE_GONE', '2': 4},
    {'1': 'BLOCK_REASON_CONTROL_ROOM_GONE', '2': 5},
    {'1': 'BLOCK_REASON_LEASE_TOO_LONG', '2': 6},
    {'1': 'BLOCK_REASON_DEVICE_ACROSS_HOME', '2': 7},
  ],
};

/// Descriptor for `BlockReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blockReasonDescriptor = $convert.base64Decode(
    'CgtCbG9ja1JlYXNvbhIcChhCTE9DS19SRUFTT05fVU5TUEVDSUZJRUQQABIcChhCTE9DS19SRU'
    'FTT05fVEVTVF9GQUlMRUQQARIiCh5CTE9DS19SRUFTT05fT1VUUFVUX05PVF9MRUFTRUQQAhIl'
    'CiFCTE9DS19SRUFTT05fUE9XRVJfT05fTk9UX0FUX1JFU1QQAxIcChhCTE9DS19SRUFTT05fRE'
    'VWSUNFX0dPTkUQBBIiCh5CTE9DS19SRUFTT05fQ09OVFJPTF9ST09NX0dPTkUQBRIfChtCTE9D'
    'S19SRUFTT05fTEVBU0VfVE9PX0xPTkcQBhIjCh9CTE9DS19SRUFTT05fREVWSUNFX0FDUk9TU1'
    '9IT01FEAc=');

@$core.Deprecated('Use testKindDescriptor instead')
const TestKind$json = {
  '1': 'TestKind',
  '2': [
    {'1': 'TEST_KIND_UNSPECIFIED', '2': 0},
    {'1': 'TEST_KIND_OUTPUT_LEASE', '2': 1},
    {'1': 'TEST_KIND_ZONE_EFFECT', '2': 2},
    {'1': 'TEST_KIND_PUMP_ALL_ZONES_OFF', '2': 3},
  ],
};

/// Descriptor for `TestKind`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testKindDescriptor = $convert.base64Decode(
    'CghUZXN0S2luZBIZChVURVNUX0tJTkRfVU5TUEVDSUZJRUQQABIaChZURVNUX0tJTkRfT1VUUF'
    'VUX0xFQVNFEAESGQoVVEVTVF9LSU5EX1pPTkVfRUZGRUNUEAISIAocVEVTVF9LSU5EX1BVTVBf'
    'QUxMX1pPTkVTX09GRhAD');

@$core.Deprecated('Use testStateDescriptor instead')
const TestState$json = {
  '1': 'TestState',
  '2': [
    {'1': 'TEST_STATE_UNSPECIFIED', '2': 0},
    {'1': 'TEST_STATE_RUNNING', '2': 1},
    {'1': 'TEST_STATE_PASSED', '2': 2},
    {'1': 'TEST_STATE_FAILED', '2': 3},
    {'1': 'TEST_STATE_ABORTED', '2': 4},
  ],
};

/// Descriptor for `TestState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testStateDescriptor = $convert.base64Decode(
    'CglUZXN0U3RhdGUSGgoWVEVTVF9TVEFURV9VTlNQRUNJRklFRBAAEhYKElRFU1RfU1RBVEVfUl'
    'VOTklORxABEhUKEVRFU1RfU1RBVEVfUEFTU0VEEAISFQoRVEVTVF9TVEFURV9GQUlMRUQQAxIW'
    'ChJURVNUX1NUQVRFX0FCT1JURUQQBA==');

@$core.Deprecated('Use testFailureDescriptor instead')
const TestFailure$json = {
  '1': 'TestFailure',
  '2': [
    {'1': 'TEST_FAILURE_UNSPECIFIED', '2': 0},
    {'1': 'TEST_FAILURE_POWER_ON_NOT_AT_REST', '2': 1},
    {'1': 'TEST_FAILURE_NO_STATE_CHANGE', '2': 2},
    {'1': 'TEST_FAILURE_LEASE_NOT_RENEWED', '2': 3},
    {'1': 'TEST_FAILURE_DID_NOT_RETURN_TO_REST', '2': 4},
    {'1': 'TEST_FAILURE_DEVICE_UNREACHABLE', '2': 5},
    {'1': 'TEST_FAILURE_NO_EFFECT', '2': 6},
    {'1': 'TEST_FAILURE_OBSERVED', '2': 7},
  ],
};

/// Descriptor for `TestFailure`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List testFailureDescriptor = $convert.base64Decode(
    'CgtUZXN0RmFpbHVyZRIcChhURVNUX0ZBSUxVUkVfVU5TUEVDSUZJRUQQABIlCiFURVNUX0ZBSU'
    'xVUkVfUE9XRVJfT05fTk9UX0FUX1JFU1QQARIgChxURVNUX0ZBSUxVUkVfTk9fU1RBVEVfQ0hB'
    'TkdFEAISIgoeVEVTVF9GQUlMVVJFX0xFQVNFX05PVF9SRU5FV0VEEAMSJwojVEVTVF9GQUlMVV'
    'JFX0RJRF9OT1RfUkVUVVJOX1RPX1JFU1QQBBIjCh9URVNUX0ZBSUxVUkVfREVWSUNFX1VOUkVB'
    'Q0hBQkxFEAUSGgoWVEVTVF9GQUlMVVJFX05PX0VGRkVDVBAGEhkKFVRFU1RfRkFJTFVSRV9PQl'
    'NFUlZFRBAH');

@$core.Deprecated('Use commissioningGrantStateDescriptor instead')
const CommissioningGrantState$json = {
  '1': 'CommissioningGrantState',
  '2': [
    {'1': 'COMMISSIONING_GRANT_STATE_UNSPECIFIED', '2': 0},
    {'1': 'COMMISSIONING_GRANT_STATE_REQUESTED', '2': 1},
    {'1': 'COMMISSIONING_GRANT_STATE_GRANTED', '2': 2},
  ],
};

/// Descriptor for `CommissioningGrantState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List commissioningGrantStateDescriptor = $convert.base64Decode(
    'ChdDb21taXNzaW9uaW5nR3JhbnRTdGF0ZRIpCiVDT01NSVNTSU9OSU5HX0dSQU5UX1NUQVRFX1'
    'VOU1BFQ0lGSUVEEAASJwojQ09NTUlTU0lPTklOR19HUkFOVF9TVEFURV9SRVFVRVNURUQQARIl'
    'CiFDT01NSVNTSU9OSU5HX0dSQU5UX1NUQVRFX0dSQU5URUQQAg==');

@$core.Deprecated('Use provenanceDescriptor instead')
const Provenance$json = {
  '1': 'Provenance',
  '2': [
    {
      '1': 'party',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.Party',
      '10': 'party'
    },
    {
      '1': 'evidence',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.Evidence',
      '10': 'evidence'
    },
    {
      '1': 'at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'at'
    },
    {
      '1': 'by',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'by'
    },
  ],
};

/// Descriptor for `Provenance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List provenanceDescriptor = $convert.base64Decode(
    'CgpQcm92ZW5hbmNlEjkKBXBhcnR5GAEgASgOMiMua3VzaW50YS5pb3QuY29tbWlzc2lvbmluZy'
    '52MS5QYXJ0eVIFcGFydHkSQgoIZXZpZGVuY2UYAiABKA4yJi5rdXNpbnRhLmlvdC5jb21taXNz'
    'aW9uaW5nLnYxLkV2aWRlbmNlUghldmlkZW5jZRIqCgJhdBgDIAEoCzIaLmdvb2dsZS5wcm90b2'
    'J1Zi5UaW1lc3RhbXBSAmF0Ei8KAmJ5GAQgASgLMh8ua3VzaW50YS5pb3QuaWRlbnRpdHkudjEu'
    'VXNlcklkUgJieQ==');

@$core.Deprecated('Use bindingRefDescriptor instead')
const BindingRef$json = {
  '1': 'BindingRef',
  '2': [
    {'1': 'record_id', '3': 1, '4': 1, '5': 9, '10': 'recordId'},
    {'1': 'field', '3': 2, '4': 1, '5': 9, '10': 'field'},
  ],
};

/// Descriptor for `BindingRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindingRefDescriptor = $convert.base64Decode(
    'CgpCaW5kaW5nUmVmEhsKCXJlY29yZF9pZBgBIAEoCVIIcmVjb3JkSWQSFAoFZmllbGQYAiABKA'
    'lSBWZpZWxk');

@$core.Deprecated('Use templateRefDescriptor instead')
const TemplateRef$json = {
  '1': 'TemplateRef',
  '2': [
    {'1': 'template_id', '3': 1, '4': 1, '5': 9, '10': 'templateId'},
    {'1': 'version', '3': 2, '4': 1, '5': 13, '10': 'version'},
  ],
};

/// Descriptor for `TemplateRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateRefDescriptor = $convert.base64Decode(
    'CgtUZW1wbGF0ZVJlZhIfCgt0ZW1wbGF0ZV9pZBgBIAEoCVIKdGVtcGxhdGVJZBIYCgd2ZXJzaW'
    '9uGAIgASgNUgd2ZXJzaW9u');

@$core.Deprecated('Use commissioningFactDescriptor instead')
const CommissioningFact$json = {
  '1': 'CommissioningFact',
  '2': [
    {'1': 'fact_id', '3': 1, '4': 1, '5': 9, '10': 'factId'},
    {
      '1': 'space_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {'1': 'record_id', '3': 3, '4': 1, '5': 9, '10': 'recordId'},
    {'1': 'key', '3': 4, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '9': 0,
      '10': 'value'
    },
    {'1': 'unknown', '3': 6, '4': 1, '5': 8, '9': 0, '10': 'unknown'},
    {
      '1': 'answerer',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.Party',
      '10': 'answerer'
    },
    {
      '1': 'necessity',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.Necessity',
      '10': 'necessity'
    },
    {
      '1': 'feature',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.Feature',
      '10': 'feature'
    },
    {
      '1': 'provenance',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.Provenance',
      '10': 'provenance'
    },
    {'1': 'revision', '3': 13, '4': 1, '5': 4, '10': 'revision'},
    {
      '1': 'deviates_from',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.TemplateRef',
      '10': 'deviatesFrom'
    },
    {
      '1': 'topic',
      '3': 16,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.FactTopic',
      '10': 'topic'
    },
  ],
  '8': [
    {'1': 'answer'},
  ],
  '9': [
    {'1': 11, '2': 13},
    {'1': 14, '2': 15},
  ],
  '10': ['scope', 'template_version', 'template_id'],
};

/// Descriptor for `CommissioningFact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commissioningFactDescriptor = $convert.base64Decode(
    'ChFDb21taXNzaW9uaW5nRmFjdBIXCgdmYWN0X2lkGAEgASgJUgZmYWN0SWQSOwoIc3BhY2VfaW'
    'QYAiABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgdzcGFjZUlkEhsKCXJl'
    'Y29yZF9pZBgDIAEoCVIIcmVjb3JkSWQSEAoDa2V5GAQgASgJUgNrZXkSPQoFdmFsdWUYBSABKA'
    'syJS5rdXNpbnRhLmlvdC5kZXZpY2UudjEuQXR0cmlidXRlVmFsdWVIAFIFdmFsdWUSGgoHdW5r'
    'bm93bhgGIAEoCEgAUgd1bmtub3duEj8KCGFuc3dlcmVyGAcgASgOMiMua3VzaW50YS5pb3QuY2'
    '9tbWlzc2lvbmluZy52MS5QYXJ0eVIIYW5zd2VyZXISRQoJbmVjZXNzaXR5GAggASgOMicua3Vz'
    'aW50YS5pb3QuY29tbWlzc2lvbmluZy52MS5OZWNlc3NpdHlSCW5lY2Vzc2l0eRI/CgdmZWF0dX'
    'JlGAkgASgOMiUua3VzaW50YS5pb3QuY29tbWlzc2lvbmluZy52MS5GZWF0dXJlUgdmZWF0dXJl'
    'EkgKCnByb3ZlbmFuY2UYCiABKAsyKC5rdXNpbnRhLmlvdC5jb21taXNzaW9uaW5nLnYxLlByb3'
    'ZlbmFuY2VSCnByb3ZlbmFuY2USGgoIcmV2aXNpb24YDSABKARSCHJldmlzaW9uEk4KDWRldmlh'
    'dGVzX2Zyb20YDyABKAsyKS5rdXNpbnRhLmlvdC5jb21taXNzaW9uaW5nLnYxLlRlbXBsYXRlUm'
    'VmUgxkZXZpYXRlc0Zyb20SPQoFdG9waWMYECABKA4yJy5rdXNpbnRhLmlvdC5jb21taXNzaW9u'
    'aW5nLnYxLkZhY3RUb3BpY1IFdG9waWNCCAoGYW5zd2VySgQICxANSgQIDhAPUgVzY29wZVIQdG'
    'VtcGxhdGVfdmVyc2lvblILdGVtcGxhdGVfaWQ=');

@$core.Deprecated('Use templateFactDescriptor instead')
const TemplateFact$json = {
  '1': 'TemplateFact',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'subject_label', '3': 2, '4': 1, '5': 9, '10': 'subjectLabel'},
    {
      '1': 'value',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.device.v1.AttributeValue',
      '10': 'value'
    },
  ],
  '9': [
    {'1': 4, '2': 5},
  ],
  '10': ['provenance'],
};

/// Descriptor for `TemplateFact`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List templateFactDescriptor = $convert.base64Decode(
    'CgxUZW1wbGF0ZUZhY3QSEAoDa2V5GAEgASgJUgNrZXkSIwoNc3ViamVjdF9sYWJlbBgCIAEoCV'
    'IMc3ViamVjdExhYmVsEjsKBXZhbHVlGAMgASgLMiUua3VzaW50YS5pb3QuZGV2aWNlLnYxLkF0'
    'dHJpYnV0ZVZhbHVlUgV2YWx1ZUoECAQQBVIKcHJvdmVuYW5jZQ==');

@$core.Deprecated('Use houseTemplateDescriptor instead')
const HouseTemplate$json = {
  '1': 'HouseTemplate',
  '2': [
    {'1': 'template_id', '3': 1, '4': 1, '5': 9, '10': 'templateId'},
    {
      '1': 'building_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'buildingId'
    },
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'version', '3': 4, '4': 1, '5': 13, '10': 'version'},
    {
      '1': 'facts',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.TemplateFact',
      '10': 'facts'
    },
    {
      '1': 'provenance',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.Provenance',
      '10': 'provenance'
    },
  ],
};

/// Descriptor for `HouseTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List houseTemplateDescriptor = $convert.base64Decode(
    'Cg1Ib3VzZVRlbXBsYXRlEh8KC3RlbXBsYXRlX2lkGAEgASgJUgp0ZW1wbGF0ZUlkEkEKC2J1aW'
    'xkaW5nX2lkGAIgASgLMiAua3VzaW50YS5pb3QuaWRlbnRpdHkudjEuU3BhY2VJZFIKYnVpbGRp'
    'bmdJZBISCgRuYW1lGAMgASgJUgRuYW1lEhgKB3ZlcnNpb24YBCABKA1SB3ZlcnNpb24SQAoFZm'
    'FjdHMYBSADKAsyKi5rdXNpbnRhLmlvdC5jb21taXNzaW9uaW5nLnYxLlRlbXBsYXRlRmFjdFIF'
    'ZmFjdHMSSAoKcHJvdmVuYW5jZRgGIAEoCzIoLmt1c2ludGEuaW90LmNvbW1pc3Npb25pbmcudj'
    'EuUHJvdmVuYW5jZVIKcHJvdmVuYW5jZQ==');

@$core.Deprecated('Use needDescriptor instead')
const Need$json = {
  '1': 'Need',
  '2': [
    {'1': 'fact_key', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'factKey'},
    {
      '1': 'test',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.TestKind',
      '9': 0,
      '10': 'test'
    },
    {
      '1': 'space_id',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'answerer',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.Party',
      '10': 'answerer'
    },
    {
      '1': 'binding',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.BindingRef',
      '10': 'binding'
    },
    {
      '1': 'fact_topic',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.FactTopic',
      '10': 'factTopic'
    },
  ],
  '8': [
    {'1': 'what'},
  ],
  '9': [
    {'1': 4, '2': 5},
    {'1': 6, '2': 7},
  ],
  '10': ['record_id', 'field'],
};

/// Descriptor for `Need`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List needDescriptor = $convert.base64Decode(
    'CgROZWVkEhsKCGZhY3Rfa2V5GAEgASgJSABSB2ZhY3RLZXkSPAoEdGVzdBgCIAEoDjImLmt1c2'
    'ludGEuaW90LmNvbW1pc3Npb25pbmcudjEuVGVzdEtpbmRIAFIEdGVzdBI7CghzcGFjZV9pZBgD'
    'IAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlNwYWNlSWRSB3NwYWNlSWQSPwoIYW5zd2'
    'VyZXIYBSABKA4yIy5rdXNpbnRhLmlvdC5jb21taXNzaW9uaW5nLnYxLlBhcnR5UghhbnN3ZXJl'
    'chJCCgdiaW5kaW5nGAcgASgLMigua3VzaW50YS5pb3QuY29tbWlzc2lvbmluZy52MS5CaW5kaW'
    '5nUmVmUgdiaW5kaW5nEkYKCmZhY3RfdG9waWMYCCABKA4yJy5rdXNpbnRhLmlvdC5jb21taXNz'
    'aW9uaW5nLnYxLkZhY3RUb3BpY1IJZmFjdFRvcGljQgYKBHdoYXRKBAgEEAVKBAgGEAdSCXJlY2'
    '9yZF9pZFIFZmllbGQ=');

@$core.Deprecated('Use featureBlockDescriptor instead')
const FeatureBlock$json = {
  '1': 'FeatureBlock',
  '2': [
    {
      '1': 'reason',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.BlockReason',
      '10': 'reason'
    },
    {
      '1': 'device_id',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {
      '1': 'binding',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.BindingRef',
      '10': 'binding'
    },
  ],
  '9': [
    {'1': 2, '2': 3},
    {'1': 4, '2': 5},
  ],
  '10': ['record_id', 'field'],
};

/// Descriptor for `FeatureBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureBlockDescriptor = $convert.base64Decode(
    'CgxGZWF0dXJlQmxvY2sSQQoGcmVhc29uGAEgASgOMikua3VzaW50YS5pb3QuY29tbWlzc2lvbm'
    'luZy52MS5CbG9ja1JlYXNvblIGcmVhc29uEj4KCWRldmljZV9pZBgDIAEoCzIhLmt1c2ludGEu'
    'aW90LmlkZW50aXR5LnYxLkRldmljZUlkUghkZXZpY2VJZBJCCgdiaW5kaW5nGAUgASgLMigua3'
    'VzaW50YS5pb3QuY29tbWlzc2lvbmluZy52MS5CaW5kaW5nUmVmUgdiaW5kaW5nSgQIAhADSgQI'
    'BBAFUglyZWNvcmRfaWRSBWZpZWxk');

@$core.Deprecated('Use featureStatusDescriptor instead')
const FeatureStatus$json = {
  '1': 'FeatureStatus',
  '2': [
    {
      '1': 'feature',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.Feature',
      '10': 'feature'
    },
    {
      '1': 'state',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.FeatureState',
      '10': 'state'
    },
    {
      '1': 'needs',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.Need',
      '10': 'needs'
    },
    {
      '1': 'blocks',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.FeatureBlock',
      '10': 'blocks'
    },
  ],
};

/// Descriptor for `FeatureStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureStatusDescriptor = $convert.base64Decode(
    'Cg1GZWF0dXJlU3RhdHVzEj8KB2ZlYXR1cmUYASABKA4yJS5rdXNpbnRhLmlvdC5jb21taXNzaW'
    '9uaW5nLnYxLkZlYXR1cmVSB2ZlYXR1cmUSQAoFc3RhdGUYAiABKA4yKi5rdXNpbnRhLmlvdC5j'
    'b21taXNzaW9uaW5nLnYxLkZlYXR1cmVTdGF0ZVIFc3RhdGUSOAoFbmVlZHMYAyADKAsyIi5rdX'
    'NpbnRhLmlvdC5jb21taXNzaW9uaW5nLnYxLk5lZWRSBW5lZWRzEkIKBmJsb2NrcxgEIAMoCzIq'
    'Lmt1c2ludGEuaW90LmNvbW1pc3Npb25pbmcudjEuRmVhdHVyZUJsb2NrUgZibG9ja3M=');

@$core.Deprecated('Use commissioningTestDescriptor instead')
const CommissioningTest$json = {
  '1': 'CommissioningTest',
  '2': [
    {'1': 'test_id', '3': 1, '4': 1, '5': 9, '10': 'testId'},
    {
      '1': 'kind',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.TestKind',
      '10': 'kind'
    },
    {
      '1': 'binding',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.BindingRef',
      '10': 'binding'
    },
    {
      '1': 'device_id',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.DeviceId',
      '10': 'deviceId'
    },
    {
      '1': 'state',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.TestState',
      '10': 'state'
    },
    {
      '1': 'failure',
      '3': 7,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.TestFailure',
      '10': 'failure'
    },
    {
      '1': 'started_at',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startedAt'
    },
    {
      '1': 'ends_at',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'endsAt'
    },
    {
      '1': 'finished_at',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'finishedAt'
    },
    {
      '1': 'provenance',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.Provenance',
      '10': 'provenance'
    },
    {'1': 'superseded', '3': 12, '4': 1, '5': 8, '10': 'superseded'},
  ],
  '9': [
    {'1': 3, '2': 5},
  ],
  '10': ['record_id', 'field'],
};

/// Descriptor for `CommissioningTest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commissioningTestDescriptor = $convert.base64Decode(
    'ChFDb21taXNzaW9uaW5nVGVzdBIXCgd0ZXN0X2lkGAEgASgJUgZ0ZXN0SWQSOgoEa2luZBgCIA'
    'EoDjImLmt1c2ludGEuaW90LmNvbW1pc3Npb25pbmcudjEuVGVzdEtpbmRSBGtpbmQSQgoHYmlu'
    'ZGluZxgNIAEoCzIoLmt1c2ludGEuaW90LmNvbW1pc3Npb25pbmcudjEuQmluZGluZ1JlZlIHYm'
    'luZGluZxI+CglkZXZpY2VfaWQYBSABKAsyIS5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5EZXZp'
    'Y2VJZFIIZGV2aWNlSWQSPQoFc3RhdGUYBiABKA4yJy5rdXNpbnRhLmlvdC5jb21taXNzaW9uaW'
    '5nLnYxLlRlc3RTdGF0ZVIFc3RhdGUSQwoHZmFpbHVyZRgHIAEoDjIpLmt1c2ludGEuaW90LmNv'
    'bW1pc3Npb25pbmcudjEuVGVzdEZhaWx1cmVSB2ZhaWx1cmUSOQoKc3RhcnRlZF9hdBgIIAEoCz'
    'IaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXN0YXJ0ZWRBdBIzCgdlbmRzX2F0GAkgASgL'
    'MhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIGZW5kc0F0EjsKC2ZpbmlzaGVkX2F0GAogAS'
    'gLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKZmluaXNoZWRBdBJICgpwcm92ZW5hbmNl'
    'GAsgASgLMigua3VzaW50YS5pb3QuY29tbWlzc2lvbmluZy52MS5Qcm92ZW5hbmNlUgpwcm92ZW'
    '5hbmNlEh4KCnN1cGVyc2VkZWQYDCABKAhSCnN1cGVyc2VkZWRKBAgDEAVSCXJlY29yZF9pZFIF'
    'ZmllbGQ=');

@$core.Deprecated('Use commissioningProfileDescriptor instead')
const CommissioningProfile$json = {
  '1': 'CommissioningProfile',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'facts',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.CommissioningFact',
      '10': 'facts'
    },
    {
      '1': 'tests',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.CommissioningTest',
      '10': 'tests'
    },
    {
      '1': 'features',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.FeatureStatus',
      '10': 'features'
    },
    {
      '1': 'template',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.HouseTemplate',
      '10': 'template'
    },
    {'1': 'needs_withheld', '3': 7, '4': 1, '5': 8, '10': 'needsWithheld'},
  ],
  '9': [
    {'1': 5, '2': 6},
  ],
  '10': ['template_id'],
};

/// Descriptor for `CommissioningProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commissioningProfileDescriptor = $convert.base64Decode(
    'ChRDb21taXNzaW9uaW5nUHJvZmlsZRI7CghzcGFjZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90Lm'
    'lkZW50aXR5LnYxLlNwYWNlSWRSB3NwYWNlSWQSRQoFZmFjdHMYAiADKAsyLy5rdXNpbnRhLmlv'
    'dC5jb21taXNzaW9uaW5nLnYxLkNvbW1pc3Npb25pbmdGYWN0UgVmYWN0cxJFCgV0ZXN0cxgDIA'
    'MoCzIvLmt1c2ludGEuaW90LmNvbW1pc3Npb25pbmcudjEuQ29tbWlzc2lvbmluZ1Rlc3RSBXRl'
    'c3RzEkcKCGZlYXR1cmVzGAQgAygLMisua3VzaW50YS5pb3QuY29tbWlzc2lvbmluZy52MS5GZW'
    'F0dXJlU3RhdHVzUghmZWF0dXJlcxJHCgh0ZW1wbGF0ZRgGIAEoCzIrLmt1c2ludGEuaW90LmNv'
    'bW1pc3Npb25pbmcudjEuSG91c2VUZW1wbGF0ZVIIdGVtcGxhdGUSJQoObmVlZHNfd2l0aGhlbG'
    'QYByABKAhSDW5lZWRzV2l0aGhlbGRKBAgFEAZSC3RlbXBsYXRlX2lk');

@$core.Deprecated('Use homeSetupDescriptor instead')
const HomeSetup$json = {
  '1': 'HomeSetup',
  '2': [
    {
      '1': 'home_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'homeId'
    },
    {'1': 'set_up', '3': 2, '4': 1, '5': 8, '10': 'setUp'},
  ],
};

/// Descriptor for `HomeSetup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List homeSetupDescriptor = $convert.base64Decode(
    'CglIb21lU2V0dXASOQoHaG9tZV9pZBgBIAEoCzIgLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLl'
    'NwYWNlSWRSBmhvbWVJZBIVCgZzZXRfdXAYAiABKAhSBXNldFVw');

@$core.Deprecated('Use homeSetupsDescriptor instead')
const HomeSetups$json = {
  '1': 'HomeSetups',
  '2': [
    {
      '1': 'homes',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.HomeSetup',
      '10': 'homes'
    },
  ],
};

/// Descriptor for `HomeSetups`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List homeSetupsDescriptor = $convert.base64Decode(
    'CgpIb21lU2V0dXBzEj0KBWhvbWVzGAEgAygLMicua3VzaW50YS5pb3QuY29tbWlzc2lvbmluZy'
    '52MS5Ib21lU2V0dXBSBWhvbWVz');

@$core.Deprecated('Use commissioningRecordDescriptor instead')
const CommissioningRecord$json = {
  '1': 'CommissioningRecord',
  '2': [
    {
      '1': 'fact',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.CommissioningFact',
      '9': 0,
      '10': 'fact'
    },
    {
      '1': 'test',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.CommissioningTest',
      '9': 0,
      '10': 'test'
    },
    {
      '1': 'template',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.HouseTemplate',
      '9': 0,
      '10': 'template'
    },
  ],
  '8': [
    {'1': 'record'},
  ],
};

/// Descriptor for `CommissioningRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commissioningRecordDescriptor = $convert.base64Decode(
    'ChNDb21taXNzaW9uaW5nUmVjb3JkEkUKBGZhY3QYASABKAsyLy5rdXNpbnRhLmlvdC5jb21taX'
    'NzaW9uaW5nLnYxLkNvbW1pc3Npb25pbmdGYWN0SABSBGZhY3QSRQoEdGVzdBgCIAEoCzIvLmt1'
    'c2ludGEuaW90LmNvbW1pc3Npb25pbmcudjEuQ29tbWlzc2lvbmluZ1Rlc3RIAFIEdGVzdBJJCg'
    'h0ZW1wbGF0ZRgDIAEoCzIrLmt1c2ludGEuaW90LmNvbW1pc3Npb25pbmcudjEuSG91c2VUZW1w'
    'bGF0ZUgAUgh0ZW1wbGF0ZUIICgZyZWNvcmQ=');

@$core.Deprecated('Use commissioningGrantDescriptor instead')
const CommissioningGrant$json = {
  '1': 'CommissioningGrant',
  '2': [
    {'1': 'grant_id', '3': 1, '4': 1, '5': 9, '10': 'grantId'},
    {
      '1': 'space_id',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'installer',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'installer'
    },
    {'1': 'installer_name', '3': 4, '4': 1, '5': 9, '10': 'installerName'},
    {
      '1': 'state',
      '3': 5,
      '4': 1,
      '5': 14,
      '6': '.kusinta.iot.commissioning.v1.CommissioningGrantState',
      '10': 'state'
    },
    {
      '1': 'requested_at',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'requestedAt'
    },
    {
      '1': 'expires_at',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'expiresAt'
    },
    {
      '1': 'starts_at',
      '3': 8,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startsAt'
    },
    {
      '1': 'ends_at',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'endsAt'
    },
    {
      '1': 'granted_by',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.UserId',
      '10': 'grantedBy'
    },
    {
      '1': 'granted_at',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'grantedAt'
    },
  ],
};

/// Descriptor for `CommissioningGrant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commissioningGrantDescriptor = $convert.base64Decode(
    'ChJDb21taXNzaW9uaW5nR3JhbnQSGQoIZ3JhbnRfaWQYASABKAlSB2dyYW50SWQSOwoIc3BhY2'
    'VfaWQYAiABKAsyIC5rdXNpbnRhLmlvdC5pZGVudGl0eS52MS5TcGFjZUlkUgdzcGFjZUlkEj0K'
    'CWluc3RhbGxlchgDIAEoCzIfLmt1c2ludGEuaW90LmlkZW50aXR5LnYxLlVzZXJJZFIJaW5zdG'
    'FsbGVyEiUKDmluc3RhbGxlcl9uYW1lGAQgASgJUg1pbnN0YWxsZXJOYW1lEksKBXN0YXRlGAUg'
    'ASgOMjUua3VzaW50YS5pb3QuY29tbWlzc2lvbmluZy52MS5Db21taXNzaW9uaW5nR3JhbnRTdG'
    'F0ZVIFc3RhdGUSPQoMcmVxdWVzdGVkX2F0GAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVz'
    'dGFtcFILcmVxdWVzdGVkQXQSOQoKZXhwaXJlc19hdBgHIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi'
    '5UaW1lc3RhbXBSCWV4cGlyZXNBdBI3CglzdGFydHNfYXQYCCABKAsyGi5nb29nbGUucHJvdG9i'
    'dWYuVGltZXN0YW1wUghzdGFydHNBdBIzCgdlbmRzX2F0GAkgASgLMhouZ29vZ2xlLnByb3RvYn'
    'VmLlRpbWVzdGFtcFIGZW5kc0F0Ej4KCmdyYW50ZWRfYnkYCiABKAsyHy5rdXNpbnRhLmlvdC5p'
    'ZGVudGl0eS52MS5Vc2VySWRSCWdyYW50ZWRCeRI5CgpncmFudGVkX2F0GAsgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcFIJZ3JhbnRlZEF0');

@$core.Deprecated('Use commissioningGrantsDescriptor instead')
const CommissioningGrants$json = {
  '1': 'CommissioningGrants',
  '2': [
    {
      '1': 'space_id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.identity.v1.SpaceId',
      '10': 'spaceId'
    },
    {
      '1': 'grants',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.kusinta.iot.commissioning.v1.CommissioningGrant',
      '10': 'grants'
    },
  ],
};

/// Descriptor for `CommissioningGrants`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commissioningGrantsDescriptor = $convert.base64Decode(
    'ChNDb21taXNzaW9uaW5nR3JhbnRzEjsKCHNwYWNlX2lkGAEgASgLMiAua3VzaW50YS5pb3QuaW'
    'RlbnRpdHkudjEuU3BhY2VJZFIHc3BhY2VJZBJICgZncmFudHMYAiADKAsyMC5rdXNpbnRhLmlv'
    'dC5jb21taXNzaW9uaW5nLnYxLkNvbW1pc3Npb25pbmdHcmFudFIGZ3JhbnRz');

@$core.Deprecated('Use commissioningGrantRecordDescriptor instead')
const CommissioningGrantRecord$json = {
  '1': 'CommissioningGrantRecord',
  '2': [
    {'1': 'installer_name', '3': 1, '4': 1, '5': 9, '10': 'installerName'},
    {
      '1': 'granted_at',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'grantedAt'
    },
    {
      '1': 'starts_at',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'startsAt'
    },
    {
      '1': 'ended_at',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'endedAt'
    },
  ],
};

/// Descriptor for `CommissioningGrantRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commissioningGrantRecordDescriptor = $convert.base64Decode(
    'ChhDb21taXNzaW9uaW5nR3JhbnRSZWNvcmQSJQoOaW5zdGFsbGVyX25hbWUYASABKAlSDWluc3'
    'RhbGxlck5hbWUSOQoKZ3JhbnRlZF9hdBgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3Rh'
    'bXBSCWdyYW50ZWRBdBI3CglzdGFydHNfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZX'
    'N0YW1wUghzdGFydHNBdBI1CghlbmRlZF9hdBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1l'
    'c3RhbXBSB2VuZGVkQXQ=');
