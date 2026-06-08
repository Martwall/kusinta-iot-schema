// This is a generated file - do not edit.
//
// Generated from kusinta/iot/registration/v1/registration.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class RegistrationRequest extends $pb.GeneratedMessage {
  factory RegistrationRequest({
    $core.String? registrationToken,
    $core.String? externalIp,
    $core.String? csrPem,
  }) {
    final result = create();
    if (registrationToken != null) result.registrationToken = registrationToken;
    if (externalIp != null) result.externalIp = externalIp;
    if (csrPem != null) result.csrPem = csrPem;
    return result;
  }

  RegistrationRequest._();

  factory RegistrationRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegistrationRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.registration.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'registrationToken')
    ..aOS(2, _omitFieldNames ? '' : 'externalIp')
    ..aOS(3, _omitFieldNames ? '' : 'csrPem')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegistrationRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegistrationRequest copyWith(void Function(RegistrationRequest) updates) =>
      super.copyWith((message) => updates(message as RegistrationRequest))
          as RegistrationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationRequest create() => RegistrationRequest._();
  @$core.override
  RegistrationRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegistrationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationRequest>(create);
  static RegistrationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get registrationToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set registrationToken($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRegistrationToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearRegistrationToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get externalIp => $_getSZ(1);
  @$pb.TagNumber(2)
  set externalIp($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExternalIp() => $_has(1);
  @$pb.TagNumber(2)
  void clearExternalIp() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get csrPem => $_getSZ(2);
  @$pb.TagNumber(3)
  set csrPem($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCsrPem() => $_has(2);
  @$pb.TagNumber(3)
  void clearCsrPem() => $_clearField(3);
}

class RegistrationProgress extends $pb.GeneratedMessage {
  factory RegistrationProgress({
    $core.String? step,
  }) {
    final result = create();
    if (step != null) result.step = step;
    return result;
  }

  RegistrationProgress._();

  factory RegistrationProgress.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegistrationProgress.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationProgress',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.registration.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'step')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegistrationProgress clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegistrationProgress copyWith(void Function(RegistrationProgress) updates) =>
      super.copyWith((message) => updates(message as RegistrationProgress))
          as RegistrationProgress;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationProgress create() => RegistrationProgress._();
  @$core.override
  RegistrationProgress createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegistrationProgress getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationProgress>(create);
  static RegistrationProgress? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get step => $_getSZ(0);
  @$pb.TagNumber(1)
  set step($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStep() => $_has(0);
  @$pb.TagNumber(1)
  void clearStep() => $_clearField(1);
}

class RegistrationComplete extends $pb.GeneratedMessage {
  factory RegistrationComplete({
    $core.String? certificatePem,
    $core.String? caBundlePem,
  }) {
    final result = create();
    if (certificatePem != null) result.certificatePem = certificatePem;
    if (caBundlePem != null) result.caBundlePem = caBundlePem;
    return result;
  }

  RegistrationComplete._();

  factory RegistrationComplete.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegistrationComplete.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationComplete',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.registration.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'certificatePem')
    ..aOS(2, _omitFieldNames ? '' : 'caBundlePem')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegistrationComplete clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegistrationComplete copyWith(void Function(RegistrationComplete) updates) =>
      super.copyWith((message) => updates(message as RegistrationComplete))
          as RegistrationComplete;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationComplete create() => RegistrationComplete._();
  @$core.override
  RegistrationComplete createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegistrationComplete getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationComplete>(create);
  static RegistrationComplete? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get certificatePem => $_getSZ(0);
  @$pb.TagNumber(1)
  set certificatePem($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCertificatePem() => $_has(0);
  @$pb.TagNumber(1)
  void clearCertificatePem() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get caBundlePem => $_getSZ(1);
  @$pb.TagNumber(2)
  set caBundlePem($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCaBundlePem() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaBundlePem() => $_clearField(2);
}

class RegistrationError extends $pb.GeneratedMessage {
  factory RegistrationError({
    $core.String? code,
    $core.String? message,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (message != null) result.message = message;
    return result;
  }

  RegistrationError._();

  factory RegistrationError.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegistrationError.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationError',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.registration.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegistrationError clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegistrationError copyWith(void Function(RegistrationError) updates) =>
      super.copyWith((message) => updates(message as RegistrationError))
          as RegistrationError;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationError create() => RegistrationError._();
  @$core.override
  RegistrationError createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegistrationError getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationError>(create);
  static RegistrationError? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

enum RegistrationResponse_Event { progress, complete, error, notSet }

/// Streamed response: server sends zero or more RegistrationProgress messages,
/// then exactly one RegistrationComplete or RegistrationError, then closes.
class RegistrationResponse extends $pb.GeneratedMessage {
  factory RegistrationResponse({
    RegistrationProgress? progress,
    RegistrationComplete? complete,
    RegistrationError? error,
  }) {
    final result = create();
    if (progress != null) result.progress = progress;
    if (complete != null) result.complete = complete;
    if (error != null) result.error = error;
    return result;
  }

  RegistrationResponse._();

  factory RegistrationResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RegistrationResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, RegistrationResponse_Event>
      _RegistrationResponse_EventByTag = {
    1: RegistrationResponse_Event.progress,
    2: RegistrationResponse_Event.complete,
    3: RegistrationResponse_Event.error,
    0: RegistrationResponse_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.registration.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<RegistrationProgress>(1, _omitFieldNames ? '' : 'progress',
        subBuilder: RegistrationProgress.create)
    ..aOM<RegistrationComplete>(2, _omitFieldNames ? '' : 'complete',
        subBuilder: RegistrationComplete.create)
    ..aOM<RegistrationError>(3, _omitFieldNames ? '' : 'error',
        subBuilder: RegistrationError.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegistrationResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RegistrationResponse copyWith(void Function(RegistrationResponse) updates) =>
      super.copyWith((message) => updates(message as RegistrationResponse))
          as RegistrationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationResponse create() => RegistrationResponse._();
  @$core.override
  RegistrationResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RegistrationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationResponse>(create);
  static RegistrationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  RegistrationResponse_Event whichEvent() =>
      _RegistrationResponse_EventByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearEvent() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RegistrationProgress get progress => $_getN(0);
  @$pb.TagNumber(1)
  set progress(RegistrationProgress value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProgress() => $_has(0);
  @$pb.TagNumber(1)
  void clearProgress() => $_clearField(1);
  @$pb.TagNumber(1)
  RegistrationProgress ensureProgress() => $_ensure(0);

  @$pb.TagNumber(2)
  RegistrationComplete get complete => $_getN(1);
  @$pb.TagNumber(2)
  set complete(RegistrationComplete value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasComplete() => $_has(1);
  @$pb.TagNumber(2)
  void clearComplete() => $_clearField(2);
  @$pb.TagNumber(2)
  RegistrationComplete ensureComplete() => $_ensure(1);

  @$pb.TagNumber(3)
  RegistrationError get error => $_getN(2);
  @$pb.TagNumber(3)
  set error(RegistrationError value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => $_clearField(3);
  @$pb.TagNumber(3)
  RegistrationError ensureError() => $_ensure(2);
}

class CertRenewalRequest extends $pb.GeneratedMessage {
  factory CertRenewalRequest({
    $core.String? csrPem,
  }) {
    final result = create();
    if (csrPem != null) result.csrPem = csrPem;
    return result;
  }

  CertRenewalRequest._();

  factory CertRenewalRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CertRenewalRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CertRenewalRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.registration.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'csrPem')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CertRenewalRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CertRenewalRequest copyWith(void Function(CertRenewalRequest) updates) =>
      super.copyWith((message) => updates(message as CertRenewalRequest))
          as CertRenewalRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CertRenewalRequest create() => CertRenewalRequest._();
  @$core.override
  CertRenewalRequest createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CertRenewalRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CertRenewalRequest>(create);
  static CertRenewalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get csrPem => $_getSZ(0);
  @$pb.TagNumber(1)
  set csrPem($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCsrPem() => $_has(0);
  @$pb.TagNumber(1)
  void clearCsrPem() => $_clearField(1);
}

class CertRenewalResponse extends $pb.GeneratedMessage {
  factory CertRenewalResponse({
    $core.String? certificatePem,
    $core.String? caBundlePem,
  }) {
    final result = create();
    if (certificatePem != null) result.certificatePem = certificatePem;
    if (caBundlePem != null) result.caBundlePem = caBundlePem;
    return result;
  }

  CertRenewalResponse._();

  factory CertRenewalResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CertRenewalResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CertRenewalResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.registration.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'certificatePem')
    ..aOS(2, _omitFieldNames ? '' : 'caBundlePem')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CertRenewalResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CertRenewalResponse copyWith(void Function(CertRenewalResponse) updates) =>
      super.copyWith((message) => updates(message as CertRenewalResponse))
          as CertRenewalResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CertRenewalResponse create() => CertRenewalResponse._();
  @$core.override
  CertRenewalResponse createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CertRenewalResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CertRenewalResponse>(create);
  static CertRenewalResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get certificatePem => $_getSZ(0);
  @$pb.TagNumber(1)
  set certificatePem($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCertificatePem() => $_has(0);
  @$pb.TagNumber(1)
  void clearCertificatePem() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get caBundlePem => $_getSZ(1);
  @$pb.TagNumber(2)
  set caBundlePem($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCaBundlePem() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaBundlePem() => $_clearField(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
