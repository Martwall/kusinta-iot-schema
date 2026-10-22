// This is a generated file - do not edit.
//
// Generated from kusinta/iot/accountlink/v1/account_link.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// The services a home's account can be linked at. Each value names the fixed string that
/// stands for it in a nonce's "svc" claim, which never changes with the value's name.
class LinkedService extends $pb.ProtobufEnum {
  static const LinkedService LINKED_SERVICE_UNSPECIFIED =
      LinkedService._(0, _omitEnumNames ? '' : 'LINKED_SERVICE_UNSPECIFIED');

  /// NIBE's myUplink. Claim value "myuplink".
  static const LinkedService LINKED_SERVICE_MYUPLINK =
      LinkedService._(1, _omitEnumNames ? '' : 'LINKED_SERVICE_MYUPLINK');

  static const $core.List<LinkedService> values = <LinkedService>[
    LINKED_SERVICE_UNSPECIFIED,
    LINKED_SERVICE_MYUPLINK,
  ];

  static final $core.List<LinkedService?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static LinkedService? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LinkedService._(super.value, super.name);
}

class AccountLinkOutcome extends $pb.ProtobufEnum {
  /// Sender did not set an outcome, or sent one this schema does not know: read as REJECTED.
  static const AccountLinkOutcome ACCOUNT_LINK_OUTCOME_UNSPECIFIED =
      AccountLinkOutcome._(
          0, _omitEnumNames ? '' : 'ACCOUNT_LINK_OUTCOME_UNSPECIFIED');

  /// Stored. A link the home already had at the same service is replaced. The gateway revokes
  /// the replaced grant (RevokeToken) only once 30 seconds have passed with no
  /// AccountLinkCancelled for this request_id; on a cancel within them, it restores the
  /// replaced link.
  static const AccountLinkOutcome ACCOUNT_LINK_OUTCOME_LINKED =
      AccountLinkOutcome._(
          1, _omitEnumNames ? '' : 'ACCOUNT_LINK_OUTCOME_LINKED');

  /// The nonce failed the gateway's checks (AccountLinkNonceClaims). Nothing is stored, and
  /// the api-server revokes the grant.
  static const AccountLinkOutcome ACCOUNT_LINK_OUTCOME_REJECTED =
      AccountLinkOutcome._(
          2, _omitEnumNames ? '' : 'ACCOUNT_LINK_OUTCOME_REJECTED');

  static const $core.List<AccountLinkOutcome> values = <AccountLinkOutcome>[
    ACCOUNT_LINK_OUTCOME_UNSPECIFIED,
    ACCOUNT_LINK_OUTCOME_LINKED,
    ACCOUNT_LINK_OUTCOME_REJECTED,
  ];

  static final $core.List<AccountLinkOutcome?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static AccountLinkOutcome? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const AccountLinkOutcome._(super.value, super.name);
}

/// On UNAVAILABLE the api-server sets retry_after: the service's own wait where it gave one,
/// spread across the gateways asking. A gateway waits at least retry_after and at least 30
/// seconds, unset reading as 30, and doubles its wait on each further UNAVAILABLE for the
/// same token, up to an hour, with a random margin.
class TokenOutcome extends $pb.ProtobufEnum {
  /// Sender did not set an outcome, or sent one this schema does not know: read as
  /// UNAVAILABLE.
  static const TokenOutcome TOKEN_OUTCOME_UNSPECIFIED =
      TokenOutcome._(0, _omitEnumNames ? '' : 'TOKEN_OUTCOME_UNSPECIFIED');
  static const TokenOutcome TOKEN_OUTCOME_OK =
      TokenOutcome._(1, _omitEnumNames ? '' : 'TOKEN_OUTCOME_OK');
  static const TokenOutcome TOKEN_OUTCOME_REJECTED =
      TokenOutcome._(2, _omitEnumNames ? '' : 'TOKEN_OUTCOME_REJECTED');
  static const TokenOutcome TOKEN_OUTCOME_UNAVAILABLE =
      TokenOutcome._(3, _omitEnumNames ? '' : 'TOKEN_OUTCOME_UNAVAILABLE');

  static const $core.List<TokenOutcome> values = <TokenOutcome>[
    TOKEN_OUTCOME_UNSPECIFIED,
    TOKEN_OUTCOME_OK,
    TOKEN_OUTCOME_REJECTED,
    TOKEN_OUTCOME_UNAVAILABLE,
  ];

  static final $core.List<TokenOutcome?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static TokenOutcome? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TokenOutcome._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
