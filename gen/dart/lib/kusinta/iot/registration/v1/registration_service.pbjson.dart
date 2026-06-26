// This is a generated file - do not edit.
//
// Generated from kusinta/iot/registration/v1/registration_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import 'registration.pbjson.dart' as $0;

const $core.Map<$core.String, $core.dynamic>
    GatewayRegistrationServiceBase$json = {
  '1': 'GatewayRegistrationService',
  '2': [
    {
      '1': 'Registration',
      '2': '.kusinta.iot.registration.v1.RegistrationRequest',
      '3': '.kusinta.iot.registration.v1.RegistrationResponse',
      '6': true
    },
    {
      '1': 'CertRenewal',
      '2': '.kusinta.iot.registration.v1.CertRenewalRequest',
      '3': '.kusinta.iot.registration.v1.CertRenewalResponse'
    },
  ],
};

@$core.Deprecated('Use gatewayRegistrationServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>>
    GatewayRegistrationServiceBase$messageJson = {
  '.kusinta.iot.registration.v1.RegistrationRequest':
      $0.RegistrationRequest$json,
  '.kusinta.iot.registration.v1.RegistrationResponse':
      $0.RegistrationResponse$json,
  '.kusinta.iot.registration.v1.RegistrationProgress':
      $0.RegistrationProgress$json,
  '.kusinta.iot.registration.v1.RegistrationComplete':
      $0.RegistrationComplete$json,
  '.kusinta.iot.registration.v1.RegistrationError': $0.RegistrationError$json,
  '.kusinta.iot.registration.v1.CertRenewalRequest': $0.CertRenewalRequest$json,
  '.kusinta.iot.registration.v1.CertRenewalResponse':
      $0.CertRenewalResponse$json,
};

/// Descriptor for `GatewayRegistrationService`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List gatewayRegistrationServiceDescriptor = $convert.base64Decode(
    'ChpHYXRld2F5UmVnaXN0cmF0aW9uU2VydmljZRJ1CgxSZWdpc3RyYXRpb24SMC5rdXNpbnRhLm'
    'lvdC5yZWdpc3RyYXRpb24udjEuUmVnaXN0cmF0aW9uUmVxdWVzdBoxLmt1c2ludGEuaW90LnJl'
    'Z2lzdHJhdGlvbi52MS5SZWdpc3RyYXRpb25SZXNwb25zZTABEnAKC0NlcnRSZW5ld2FsEi8ua3'
    'VzaW50YS5pb3QucmVnaXN0cmF0aW9uLnYxLkNlcnRSZW5ld2FsUmVxdWVzdBowLmt1c2ludGEu'
    'aW90LnJlZ2lzdHJhdGlvbi52MS5DZXJ0UmVuZXdhbFJlc3BvbnNl');
