// This is a generated file - do not edit.
//
// Generated from kusinta/iot/registration/v1/registration.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use registrationRequestDescriptor instead')
const RegistrationRequest$json = {
  '1': 'RegistrationRequest',
  '2': [
    {
      '1': 'registration_token',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'registrationToken'
    },
    {'1': 'external_ip', '3': 2, '4': 1, '5': 9, '10': 'externalIp'},
    {'1': 'csr_pem', '3': 3, '4': 1, '5': 9, '10': 'csrPem'},
  ],
};

/// Descriptor for `RegistrationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationRequestDescriptor = $convert.base64Decode(
    'ChNSZWdpc3RyYXRpb25SZXF1ZXN0Ei0KEnJlZ2lzdHJhdGlvbl90b2tlbhgBIAEoCVIRcmVnaX'
    'N0cmF0aW9uVG9rZW4SHwoLZXh0ZXJuYWxfaXAYAiABKAlSCmV4dGVybmFsSXASFwoHY3NyX3Bl'
    'bRgDIAEoCVIGY3NyUGVt');

@$core.Deprecated('Use registrationProgressDescriptor instead')
const RegistrationProgress$json = {
  '1': 'RegistrationProgress',
  '2': [
    {'1': 'step', '3': 1, '4': 1, '5': 9, '10': 'step'},
  ],
};

/// Descriptor for `RegistrationProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationProgressDescriptor = $convert
    .base64Decode('ChRSZWdpc3RyYXRpb25Qcm9ncmVzcxISCgRzdGVwGAEgASgJUgRzdGVw');

@$core.Deprecated('Use registrationCompleteDescriptor instead')
const RegistrationComplete$json = {
  '1': 'RegistrationComplete',
  '2': [
    {'1': 'certificate_pem', '3': 1, '4': 1, '5': 9, '10': 'certificatePem'},
    {'1': 'ca_bundle_pem', '3': 2, '4': 1, '5': 9, '10': 'caBundlePem'},
  ],
};

/// Descriptor for `RegistrationComplete`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationCompleteDescriptor = $convert.base64Decode(
    'ChRSZWdpc3RyYXRpb25Db21wbGV0ZRInCg9jZXJ0aWZpY2F0ZV9wZW0YASABKAlSDmNlcnRpZm'
    'ljYXRlUGVtEiIKDWNhX2J1bmRsZV9wZW0YAiABKAlSC2NhQnVuZGxlUGVt');

@$core.Deprecated('Use registrationErrorDescriptor instead')
const RegistrationError$json = {
  '1': 'RegistrationError',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `RegistrationError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationErrorDescriptor = $convert.base64Decode(
    'ChFSZWdpc3RyYXRpb25FcnJvchISCgRjb2RlGAEgASgJUgRjb2RlEhgKB21lc3NhZ2UYAiABKA'
    'lSB21lc3NhZ2U=');

@$core.Deprecated('Use registrationResponseDescriptor instead')
const RegistrationResponse$json = {
  '1': 'RegistrationResponse',
  '2': [
    {
      '1': 'progress',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.registration.v1.RegistrationProgress',
      '9': 0,
      '10': 'progress'
    },
    {
      '1': 'complete',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.registration.v1.RegistrationComplete',
      '9': 0,
      '10': 'complete'
    },
    {
      '1': 'error',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.kusinta.iot.registration.v1.RegistrationError',
      '9': 0,
      '10': 'error'
    },
  ],
  '8': [
    {'1': 'event'},
  ],
};

/// Descriptor for `RegistrationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationResponseDescriptor = $convert.base64Decode(
    'ChRSZWdpc3RyYXRpb25SZXNwb25zZRJPCghwcm9ncmVzcxgBIAEoCzIxLmt1c2ludGEuaW90Ln'
    'JlZ2lzdHJhdGlvbi52MS5SZWdpc3RyYXRpb25Qcm9ncmVzc0gAUghwcm9ncmVzcxJPCghjb21w'
    'bGV0ZRgCIAEoCzIxLmt1c2ludGEuaW90LnJlZ2lzdHJhdGlvbi52MS5SZWdpc3RyYXRpb25Db2'
    '1wbGV0ZUgAUghjb21wbGV0ZRJGCgVlcnJvchgDIAEoCzIuLmt1c2ludGEuaW90LnJlZ2lzdHJh'
    'dGlvbi52MS5SZWdpc3RyYXRpb25FcnJvckgAUgVlcnJvckIHCgVldmVudA==');

@$core.Deprecated('Use certRenewalRequestDescriptor instead')
const CertRenewalRequest$json = {
  '1': 'CertRenewalRequest',
  '2': [
    {'1': 'csr_pem', '3': 1, '4': 1, '5': 9, '10': 'csrPem'},
  ],
};

/// Descriptor for `CertRenewalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List certRenewalRequestDescriptor =
    $convert.base64Decode(
        'ChJDZXJ0UmVuZXdhbFJlcXVlc3QSFwoHY3NyX3BlbRgBIAEoCVIGY3NyUGVt');

@$core.Deprecated('Use certRenewalResponseDescriptor instead')
const CertRenewalResponse$json = {
  '1': 'CertRenewalResponse',
  '2': [
    {'1': 'certificate_pem', '3': 1, '4': 1, '5': 9, '10': 'certificatePem'},
    {'1': 'ca_bundle_pem', '3': 2, '4': 1, '5': 9, '10': 'caBundlePem'},
  ],
};

/// Descriptor for `CertRenewalResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List certRenewalResponseDescriptor = $convert.base64Decode(
    'ChNDZXJ0UmVuZXdhbFJlc3BvbnNlEicKD2NlcnRpZmljYXRlX3BlbRgBIAEoCVIOY2VydGlmaW'
    'NhdGVQZW0SIgoNY2FfYnVuZGxlX3BlbRgCIAEoCVILY2FCdW5kbGVQZW0=');
