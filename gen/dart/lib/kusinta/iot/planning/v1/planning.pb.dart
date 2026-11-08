// This is a generated file - do not edit.
//
// Generated from kusinta/iot/planning/v1/planning.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/timestamp.pb.dart' as $0;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

/// A place to forecast for: the corner of a cell 0.02° of latitude by 0.04° of longitude,
/// about 2.2 by 2.3 kilometres at 59° N, the size of the forecast's own grid. A gateway rounds
/// its position down to the cell's corner. A latitude that is not a multiple of 2 hundredths
/// or outside ±9000, or a longitude that is not a multiple of 4 hundredths or outside ±18000,
/// is refused as INVALID_ARGUMENT.
class ForecastCell extends $pb.GeneratedMessage {
  factory ForecastCell({
    $core.int? latitudeCentidegrees,
    $core.int? longitudeCentidegrees,
  }) {
    final result = create();
    if (latitudeCentidegrees != null)
      result.latitudeCentidegrees = latitudeCentidegrees;
    if (longitudeCentidegrees != null)
      result.longitudeCentidegrees = longitudeCentidegrees;
    return result;
  }

  ForecastCell._();

  factory ForecastCell.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForecastCell.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForecastCell',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.planning.v1'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1, _omitFieldNames ? '' : 'latitudeCentidegrees', $pb.PbFieldType.OS3)
    ..a<$core.int>(
        2, _omitFieldNames ? '' : 'longitudeCentidegrees', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForecastCell clone() => ForecastCell()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForecastCell copyWith(void Function(ForecastCell) updates) =>
      super.copyWith((message) => updates(message as ForecastCell))
          as ForecastCell;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForecastCell create() => ForecastCell._();
  @$core.override
  ForecastCell createEmptyInstance() => create();
  static $pb.PbList<ForecastCell> createRepeated() =>
      $pb.PbList<ForecastCell>();
  @$core.pragma('dart2js:noInline')
  static ForecastCell getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForecastCell>(create);
  static ForecastCell? _defaultInstance;

  /// Degrees north, in hundredths: a multiple of 2 (5930 for 59.30° N).
  @$pb.TagNumber(1)
  $core.int get latitudeCentidegrees => $_getIZ(0);
  @$pb.TagNumber(1)
  set latitudeCentidegrees($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLatitudeCentidegrees() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatitudeCentidegrees() => $_clearField(1);

  /// Degrees east, in hundredths: a multiple of 4 (1804 for 18.04° E).
  @$pb.TagNumber(2)
  $core.int get longitudeCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set longitudeCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLongitudeCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongitudeCentidegrees() => $_clearField(2);
}

/// One market time unit of a day-ahead price: [start, end), in euros per megawatt-hour, in
/// cents (a price may be negative). A day has 96 of 15 minutes where the market clears in
/// quarter hours.
class PriceInterval extends $pb.GeneratedMessage {
  factory PriceInterval({
    $0.Timestamp? start,
    $0.Timestamp? end,
    $core.int? eurCentsPerMwh,
  }) {
    final result = create();
    if (start != null) result.start = start;
    if (end != null) result.end = end;
    if (eurCentsPerMwh != null) result.eurCentsPerMwh = eurCentsPerMwh;
    return result;
  }

  PriceInterval._();

  factory PriceInterval.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PriceInterval.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PriceInterval',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.planning.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'start',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(2, _omitFieldNames ? '' : 'end',
        subBuilder: $0.Timestamp.create)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'eurCentsPerMwh', $pb.PbFieldType.OS3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PriceInterval clone() => PriceInterval()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PriceInterval copyWith(void Function(PriceInterval) updates) =>
      super.copyWith((message) => updates(message as PriceInterval))
          as PriceInterval;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriceInterval create() => PriceInterval._();
  @$core.override
  PriceInterval createEmptyInstance() => create();
  static $pb.PbList<PriceInterval> createRepeated() =>
      $pb.PbList<PriceInterval>();
  @$core.pragma('dart2js:noInline')
  static PriceInterval getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PriceInterval>(create);
  static PriceInterval? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get start => $_getN(0);
  @$pb.TagNumber(1)
  set start($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureStart() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Timestamp get end => $_getN(1);
  @$pb.TagNumber(2)
  set end($0.Timestamp value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnd() => $_clearField(2);
  @$pb.TagNumber(2)
  $0.Timestamp ensureEnd() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get eurCentsPerMwh => $_getIZ(2);
  @$pb.TagNumber(3)
  set eurCentsPerMwh($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEurCentsPerMwh() => $_has(2);
  @$pb.TagNumber(3)
  void clearEurCentsPerMwh() => $_clearField(3);
}

/// One point of a forecast, valid at an instant. Every value is optional: absent means the
/// forecast gave none, never zero. A gateway reads the values it knows and ignores the rest.
class ForecastPoint extends $pb.GeneratedMessage {
  factory ForecastPoint({
    $0.Timestamp? validAt,
    $core.int? temperatureCentidegrees,
    $core.int? windSpeedCmPerS,
    $core.int? windFromDegrees,
    $core.int? globalRadiationWPerM2,
  }) {
    final result = create();
    if (validAt != null) result.validAt = validAt;
    if (temperatureCentidegrees != null)
      result.temperatureCentidegrees = temperatureCentidegrees;
    if (windSpeedCmPerS != null) result.windSpeedCmPerS = windSpeedCmPerS;
    if (windFromDegrees != null) result.windFromDegrees = windFromDegrees;
    if (globalRadiationWPerM2 != null)
      result.globalRadiationWPerM2 = globalRadiationWPerM2;
    return result;
  }

  ForecastPoint._();

  factory ForecastPoint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForecastPoint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForecastPoint',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.planning.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'validAt',
        subBuilder: $0.Timestamp.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'temperatureCentidegrees',
        $pb.PbFieldType.OS3)
    ..a<$core.int>(
        3, _omitFieldNames ? '' : 'windSpeedCmPerS', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        4, _omitFieldNames ? '' : 'windFromDegrees', $pb.PbFieldType.OU3)
    ..a<$core.int>(
        5, _omitFieldNames ? '' : 'globalRadiationWPerM2', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForecastPoint clone() => ForecastPoint()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForecastPoint copyWith(void Function(ForecastPoint) updates) =>
      super.copyWith((message) => updates(message as ForecastPoint))
          as ForecastPoint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForecastPoint create() => ForecastPoint._();
  @$core.override
  ForecastPoint createEmptyInstance() => create();
  static $pb.PbList<ForecastPoint> createRepeated() =>
      $pb.PbList<ForecastPoint>();
  @$core.pragma('dart2js:noInline')
  static ForecastPoint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForecastPoint>(create);
  static ForecastPoint? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get validAt => $_getN(0);
  @$pb.TagNumber(1)
  set validAt($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasValidAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearValidAt() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureValidAt() => $_ensure(0);

  /// Air temperature at two metres, in centidegrees Celsius.
  @$pb.TagNumber(2)
  $core.int get temperatureCentidegrees => $_getIZ(1);
  @$pb.TagNumber(2)
  set temperatureCentidegrees($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTemperatureCentidegrees() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemperatureCentidegrees() => $_clearField(2);

  /// Mean wind speed at ten metres, in centimetres per second.
  @$pb.TagNumber(3)
  $core.int get windSpeedCmPerS => $_getIZ(2);
  @$pb.TagNumber(3)
  set windSpeedCmPerS($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWindSpeedCmPerS() => $_has(2);
  @$pb.TagNumber(3)
  void clearWindSpeedCmPerS() => $_clearField(3);

  /// The direction the wind blows from, in whole degrees from north, 0–359.
  @$pb.TagNumber(4)
  $core.int get windFromDegrees => $_getIZ(3);
  @$pb.TagNumber(4)
  set windFromDegrees($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWindFromDegrees() => $_has(3);
  @$pb.TagNumber(4)
  void clearWindFromDegrees() => $_clearField(4);

  /// Global radiation on a horizontal surface, in watts per square metre.
  @$pb.TagNumber(5)
  $core.int get globalRadiationWPerM2 => $_getIZ(4);
  @$pb.TagNumber(5)
  set globalRadiationWPerM2($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasGlobalRadiationWPerM2() => $_has(4);
  @$pb.TagNumber(5)
  void clearGlobalRadiationWPerM2() => $_clearField(5);
}

/// One issue of a forecast for a cell: when it was issued, by whom, and its points, oldest
/// first, from the issue's first hour onward.
class ForecastIssue extends $pb.GeneratedMessage {
  factory ForecastIssue({
    $0.Timestamp? issuedAt,
    $core.String? attribution,
    $core.Iterable<ForecastPoint>? points,
  }) {
    final result = create();
    if (issuedAt != null) result.issuedAt = issuedAt;
    if (attribution != null) result.attribution = attribution;
    if (points != null) result.points.addAll(points);
    return result;
  }

  ForecastIssue._();

  factory ForecastIssue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ForecastIssue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ForecastIssue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'kusinta.iot.planning.v1'),
      createEmptyInstance: create)
    ..aOM<$0.Timestamp>(1, _omitFieldNames ? '' : 'issuedAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(2, _omitFieldNames ? '' : 'attribution')
    ..pc<ForecastPoint>(3, _omitFieldNames ? '' : 'points', $pb.PbFieldType.PM,
        subBuilder: ForecastPoint.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForecastIssue clone() => ForecastIssue()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForecastIssue copyWith(void Function(ForecastIssue) updates) =>
      super.copyWith((message) => updates(message as ForecastIssue))
          as ForecastIssue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForecastIssue create() => ForecastIssue._();
  @$core.override
  ForecastIssue createEmptyInstance() => create();
  static $pb.PbList<ForecastIssue> createRepeated() =>
      $pb.PbList<ForecastIssue>();
  @$core.pragma('dart2js:noInline')
  static ForecastIssue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ForecastIssue>(create);
  static ForecastIssue? _defaultInstance;

  @$pb.TagNumber(1)
  $0.Timestamp get issuedAt => $_getN(0);
  @$pb.TagNumber(1)
  set issuedAt($0.Timestamp value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasIssuedAt() => $_has(0);
  @$pb.TagNumber(1)
  void clearIssuedAt() => $_clearField(1);
  @$pb.TagNumber(1)
  $0.Timestamp ensureIssuedAt() => $_ensure(0);

  /// Whom to credit wherever the forecast is shown, as its licence asks (for example "SMHI").
  @$pb.TagNumber(2)
  $core.String get attribution => $_getSZ(1);
  @$pb.TagNumber(2)
  set attribution($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAttribution() => $_has(1);
  @$pb.TagNumber(2)
  void clearAttribution() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<ForecastPoint> get points => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
