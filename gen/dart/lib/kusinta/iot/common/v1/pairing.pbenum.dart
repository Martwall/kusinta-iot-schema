// This is a generated file - do not edit.
//
// Generated from kusinta/iot/common/v1/pairing.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Why a pairing attempt did not produce a device, in one vocabulary both the app and a
/// connector speak.
///
/// Shared rather than mirrored, for the reason CommandError's comment gives: mirrored enums
/// leave every connector inventing its own spellings and something in the middle keeping a
/// translation table that silently falls behind. A connector produces the subset it can
/// observe; the gateway produces the rest and passes a connector's value through unchanged.
///
/// Every value answers one question: *what should the client do now?* A code that does not
/// change the answer does not need to exist, which is why "the device is on the hub and
/// unusable" is one value and not two.
class PairingError extends $pb.ProtobufEnum {
  /// Sender set no code, or sent one this client's schema does not know.
  ///
  /// This must stay the safe reading. A client decodes every value added after its build as
  /// UNSPECIFIED, so the sensible handling is "it did not work, offering a retry is
  /// reasonable" — and no value below is so dangerous that reading it this way misleads.
  static const PairingError PAIRING_ERROR_UNSPECIFIED =
      PairingError._(0, _omitEnumNames ? '' : 'PAIRING_ERROR_UNSPECIFIED');

  /// The caller may not pair here. Permanent for this caller: stop, and say so.
  static const PairingError PAIRING_ERROR_NOT_ENTITLED =
      PairingError._(1, _omitEnumNames ? '' : 'PAIRING_ERROR_NOT_ENTITLED');

  /// A pairing window is already open, and only one may be. Retrying after it closes is the
  /// right response; retrying at once is not.
  ///
  /// The exclusivity is not incidental. Where a request names no device, the only thing
  /// attributing an arrival to a requester is that theirs was the one window open.
  static const PairingError PAIRING_ERROR_ALREADY_IN_PROGRESS = PairingError._(
      2, _omitEnumNames ? '' : 'PAIRING_ERROR_ALREADY_IN_PROGRESS');

  /// The connector could not be reached, or refused to open its window. Transient.
  static const PairingError PAIRING_ERROR_CONNECTOR_UNAVAILABLE =
      PairingError._(
          3, _omitEnumNames ? '' : 'PAIRING_ERROR_CONNECTOR_UNAVAILABLE');

  /// The window closed with nothing paired: no device was put into pairing mode, or it was
  /// out of range, or its batteries are flat. The ordinary outcome of a user who walked away,
  /// so the useful response is to say what to do and offer another go, not to report a fault.
  static const PairingError PAIRING_ERROR_NO_DEVICE_APPEARED = PairingError._(
      4, _omitEnumNames ? '' : 'PAIRING_ERROR_NO_DEVICE_APPEARED');

  /// A device joined the hub and cannot be presented — the connector has no model for it, or
  /// could not assemble a complete description of it.
  ///
  /// One value rather than two, because the client does the same thing either way: stop, do
  /// not retry, and tell the user there is now an unusable device on their hub. Which of the
  /// two it was belongs in PairingErrorDetail.message, where it can name the device.
  ///
  /// It stays joined deliberately. A later connector release that models it adopts it with
  /// nobody returning to the hardware, where removing it would need someone standing there.
  static const PairingError PAIRING_ERROR_DEVICE_UNUSABLE =
      PairingError._(5, _omitEnumNames ? '' : 'PAIRING_ERROR_DEVICE_UNUSABLE');

  /// A device joined that is not the one the request named. The connector checked the arrival
  /// against the identifier it was given and they did not match, so it was not attributed.
  static const PairingError PAIRING_ERROR_WRONG_DEVICE =
      PairingError._(6, _omitEnumNames ? '' : 'PAIRING_ERROR_WRONG_DEVICE');

  /// A fault on the gateway's or the connector's own side. Not the caller's doing.
  static const PairingError PAIRING_ERROR_INTERNAL =
      PairingError._(7, _omitEnumNames ? '' : 'PAIRING_ERROR_INTERNAL');

  static const $core.List<PairingError> values = <PairingError>[
    PAIRING_ERROR_UNSPECIFIED,
    PAIRING_ERROR_NOT_ENTITLED,
    PAIRING_ERROR_ALREADY_IN_PROGRESS,
    PAIRING_ERROR_CONNECTOR_UNAVAILABLE,
    PAIRING_ERROR_NO_DEVICE_APPEARED,
    PAIRING_ERROR_DEVICE_UNUSABLE,
    PAIRING_ERROR_WRONG_DEVICE,
    PAIRING_ERROR_INTERNAL,
  ];

  static final $core.List<PairingError?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static PairingError? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PairingError._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
