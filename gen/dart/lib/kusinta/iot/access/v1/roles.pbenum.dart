// This is a generated file - do not edit.
//
// Generated from kusinta/iot/access/v1/roles.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// What kind of party a user is, gateway-wide.
///
/// A role is a CEILING on the kinds of action a user may perform anywhere on this gateway.
/// It is not reach: it says nothing about WHICH devices the user may act on. Reach is
/// decided by filing — which spaces the user holds, and which devices are in them — and
/// the two are independent. A role must never be read as reach, and reach must never be
/// read as permission to act.
///
/// The gateway resolves the two together into DeviceAcl.allowed_actions, per device. A
/// role narrows what may appear there; it does not put anything there on its own.
///
/// The building-server gateway holds each user's roles itself and authorises from what it
/// holds. The one role it cannot know is the administration of the organisation that owns it,
/// which the api-server keeps: that one it takes from the app's token
/// (webrtc.v1.AppTokenClaims.roles), and the api-server tells it who those administrators are
/// (signaling.v1.VouchedAdministrators), which can end that administration but never grant it. The api-server learns the rest from the gateway
/// (reporting.v1.GatewayMember). A user may hold several at once and the effective ceiling is
/// their union.
///
/// UNORDERED. These are categories, not levels: a technician is not "more than" a
/// resident, and there is no >= comparison to make between them. Anything needing a graded
/// comparison — Matter's View/Operate/Manage/Administer, say — would be a separate concept
/// and is deliberately not modelled here.
///
/// A role is a ceiling rather than a floor, so it may be WIDENED per device by facts the
/// role does not know: a user who owns a device may hold actions on it that their
/// gateway-wide role alone would not grant. That widening is the gateway's to apply and is
/// visible to the app only in the resolved DeviceAcl.
///
/// STAFF. A user who holds ROLE_TECHNICIAN, ROLE_PROPERTY_OWNER or ROLE_GATEWAY_ADMIN on a
/// gateway is staff there: they serve the building rather than live in it. Wherever this
/// schema says "staff" or "a staff member" it means exactly that, as the gateway holds roles,
/// every vouched administrator included; holding ROLE_RESIDENT besides changes nothing. The
/// term carries one rule about people: staff are named to whoever may list every member; a
/// resident is named only to the people they live with; and where anyone lives is told by
/// user id only to their own household, and to anyone else only under a residency id
/// (MembershipRelation, RESIDENCY IDS).
class Role extends $pb.ProtobufEnum {
  static const Role ROLE_UNSPECIFIED =
      Role._(0, _omitEnumNames ? '' : 'ROLE_UNSPECIFIED');

  /// Lives with the devices. Operates what is in the spaces they hold.
  static const Role ROLE_RESIDENT =
      Role._(1, _omitEnumNames ? '' : 'ROLE_RESIDENT');

  /// Owns the property the devices are installed in. Sets the bounds residents operate
  /// within — see PropertyConstraint in acl.proto.
  static const Role ROLE_PROPERTY_OWNER =
      Role._(2, _omitEnumNames ? '' : 'ROLE_PROPERTY_OWNER');

  /// Installs and services devices. Present for the work, not for the tenancy.
  static const Role ROLE_TECHNICIAN =
      Role._(3, _omitEnumNames ? '' : 'ROLE_TECHNICIAN');

  /// Administers this gateway itself. The one role that also affects reach: some devices
  /// are visible only to a session holding it.
  static const Role ROLE_GATEWAY_ADMIN =
      Role._(4, _omitEnumNames ? '' : 'ROLE_GATEWAY_ADMIN');

  static const $core.List<Role> values = <Role>[
    ROLE_UNSPECIFIED,
    ROLE_RESIDENT,
    ROLE_PROPERTY_OWNER,
    ROLE_TECHNICIAN,
    ROLE_GATEWAY_ADMIN,
  ];

  static final $core.List<Role?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static Role? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Role._(super.value, super.name);
}

/// What a user may do to a device, as listed in DeviceAcl.allowed_actions. Each value
/// names an operation that exists on the app leg, so a grant can be checked against the
/// message that arrived.
///
/// The action says HOW data is reached. WHICH elements it reaches is a separate question,
/// answered by the ref lists on DeviceAcl — allowed_attribute_refs, allowed_command_refs
/// and allowed_event_refs. Keeping the two apart is deliberate: attributes, commands and
/// events are addressed by three different ID spaces, and folding "which kind of element"
/// into the action verb would make the action mean two things at once.
class PermissionAction extends $pb.ProtobufEnum {
  /// Names no action. Present only because buf's ENUM_ZERO_VALUE_SUFFIX requires a zero
  /// value; it is not a wildcard and carries no permission.
  ///
  /// In allowed_actions it is INVALID and MUST be rejected — never read as "any action".
  /// Omission must never be what widens access.
  static const PermissionAction PERMISSION_ACTION_UNSPECIFIED =
      PermissionAction._(
          0, _omitEnumNames ? '' : 'PERMISSION_ACTION_UNSPECIFIED');

  /// Read an element once, on demand: webrtc.v1.PropertyReadRequest.
  static const PermissionAction PERMISSION_ACTION_READ =
      PermissionAction._(1, _omitEnumNames ? '' : 'PERMISSION_ACTION_READ');

  /// Write an attribute to a value: webrtc.v1.AttributeWriteRequest, carried on
  /// AppMessage.attribute_write and forwarded to a connector as
  /// SessionResponse.execute_attribute_write.
  ///
  /// MUST be enforced separately from INVOKE. Writing an attribute and invoking a command
  /// are different operations in Matter carrying different authority: a user who may
  /// toggle a light is not thereby a user who may rewrite its attributes. An earlier form
  /// of this schema routed an absolute setpoint through DeviceCommand, which made INVOKE
  /// imply WRITE and left the distinction unenforceable — that is the mistake
  /// AttributeWriteRequest exists to undo, and checking INVOKE for a write would reinstate
  /// it.
  ///
  /// A relative adjust is NOT a write. Thermostat SetpointRaiseLower is a genuine Matter
  /// command and needs INVOKE; setting an absolute value needs WRITE.
  static const PermissionAction PERMISSION_ACTION_WRITE =
      PermissionAction._(2, _omitEnumNames ? '' : 'PERMISSION_ACTION_WRITE');

  /// Hold a standing stream of a device's reports: webrtc.v1.AppMessage.subscribe, and the
  /// PropertyReport and DeviceEventBatch that follow.
  ///
  /// Covers BOTH attribute reports and events, as a Matter subscription does — one
  /// subscription carries attribute paths and event paths together. Which of them actually
  /// arrives is decided by allowed_attribute_refs and allowed_event_refs, not by this
  /// action. Note their emptiness rules differ: attributes default to all, events to none.
  ///
  /// NOT a privacy boundary. Anyone who may READ an element can poll it, so withholding
  /// SUBSCRIBE while granting READ hides nothing — it only costs the app round trips. Treat
  /// it as a RESOURCE control: bandwidth, battery, and how many standing streams a gateway
  /// will carry. Do not use it to protect data; use the ref lists for that.
  ///
  /// Was PERMISSION_ACTION_OBSERVE. Renamed because "observe" reads as a kind of access
  /// distinct from reading, which it is not — it is the same access held open.
  static const PermissionAction PERMISSION_ACTION_SUBSCRIBE =
      PermissionAction._(
          3, _omitEnumNames ? '' : 'PERMISSION_ACTION_SUBSCRIBE');

  /// Invoke a command on a cluster: webrtc.v1.DeviceCommand. This is the action that moves
  /// hardware.
  ///
  /// Commands are named by (cluster_id, matter_command_id), a different ID space from
  /// attributes — On/Off cluster 0x0006 has an attribute 0x0000 and a command 0x0000 that
  /// are unrelated. So allowed_attribute_refs cannot narrow this; allowed_command_refs is
  /// what does.
  static const PermissionAction PERMISSION_ACTION_INVOKE =
      PermissionAction._(4, _omitEnumNames ? '' : 'PERMISSION_ACTION_INVOKE');

  static const $core.List<PermissionAction> values = <PermissionAction>[
    PERMISSION_ACTION_UNSPECIFIED,
    PERMISSION_ACTION_READ,
    PERMISSION_ACTION_WRITE,
    PERMISSION_ACTION_SUBSCRIBE,
    PERMISSION_ACTION_INVOKE,
  ];

  static final $core.List<PermissionAction?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static PermissionAction? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PermissionAction._(super.value, super.name);
}

/// How a member stands to a space they are filed in. Held per membership — set by
/// webrtc.v1.AssignUserToSpace — unlike Role, which is gateway-wide. The two are independent:
/// a technician who lives in an apartment is filed on it as RESIDENT, and a resident who
/// looks after a building's plant room is filed there as SERVICE. RESIDENT is refused on a
/// room: a home's residents live in all of it.
///
/// HOUSEHOLD ADMIN. HOUSEHOLD_ADMIN is RESIDENT and more: a resident who also governs the
/// home (webrtc.v1 household.proto). It is held on an apartment and nowhere else, and is never
/// a role: the app's token, and every role the gateway holds, are the same with it as without
/// it. Wherever this schema says RESIDENT, a resident or a home's residents, it means
/// HOUSEHOLD_ADMIN too, unless it names HOUSEHOLD_ADMIN apart: what a household admin sees of
/// the home, and when from, is exactly what a resident sees. A change between RESIDENT and
/// HOUSEHOLD_ADMIN on the same apartment continues the residency below, with its id and its
/// since; it is no relation change in the sense the residency rules use.
///
/// A HOME is an apartment and the rooms in it. What a user learns of a home depends on how
/// they reach it; where several apply, the first wins:
///
///   * As its resident — RESIDENT on the apartment. They see and operate everything filed
///     in it, and its history from the start of their current residency, never before: a new
///     tenant does not read the previous one's, nor learn when or by whom anything was
///     changed before they moved in: every time from before that a home's rooms and devices
///     carry — a reading's timestamp included — is unset for them, save a
///     webrtc.v1.ServiceStatus, which always carries its times and so gives none before the first
///     quarter hour of their residency, from that quarter hour on.
///   * As an installer under a commissioning grant on the home, while it is active — the
///     service view below, and on top of it what commissioning.v1 (GRANTS) lists: the home's
///     commissioning and heating records, its devices' write behaviours to bind outputs by
///     (device.v1.AttributeBehaviour), and the readings a test they run is judged by while it
///     runs. Never its history, savings, comfort settings or device events, nor who lives
///     there.
///   * As service — SERVICE on the apartment, a room in it, or a building or floor above it,
///     or as the gateway's administrator. Of the building's own devices in what they reach of
///     the home — any
///     device no person owns — they see what each is and a webrtc.v1.ServiceStatus,
///     evaluated each quarter hour, and no reading, event or time of the device itself; they
///     operate none of them. Of what they reach of the home — from the room they are filed
///     on, or all of it — they see how its rooms are set up, with
///     RoomClimate.state_withheld marking what is not shown, and its links with
///     DeviceLink.details_withheld; modes on a home are not sent to them at all — save that the
///     property owner and the gateway administrators are sent an empty home's rooms and modes
///     in full, and its floor zones (webrtc.v1 household.proto, EMPTY HOME). Service
///     that reaches the apartment itself also gets its climate summary over the disclosed
///     period. What they newly see of the home reaches them as it happens; what they lose,
///     at once.
///   * Not at all — RESIDENT on a building or floor above it. Living in a building is not
///     living in every apartment in it.
///
/// What was recorded while a room or device was in a home stays with the home after it
/// leaves: its history, and the times and people it carries from then, are never given to
/// whoever reaches it later.
///
/// A residency starts when a user is assigned RESIDENT on an apartment while not already its
/// resident — a membership recorded with no relation included, so its holder starts afresh —
/// and ends with any other change to that membership. Assigning RESIDENT to a resident
/// changes nothing. A space becoming an apartment starts the residency of each RESIDENT
/// member on it, and ceasing to be one ends it — though it releases no device: what is no
/// longer a home holds nobody's devices for a next tenant. A device in a space becoming an
/// apartment, owned by someone who is not to be its resident, is taken out of that space.
///
/// A device filed in a home counts as in the home wherever else it is also filed, a device a
/// resident owns included: reaching it through another space shows it to nobody. A link
/// never joins a device in a home to one outside it. Outside homes the relation changes
/// nothing: what is filed there is visible to whoever reaches it. A device owned as RESIDENT
/// is the exception everywhere, whoever owns it: it is visible to its owner and the RESIDENT
/// members filed on the space it is filed in — for a device in a home, the home's residents
/// alone, wherever else it is filed; never those who merely reach a space from above — and
/// to nobody else. An owner who stops living in the home it is filed in gives it up: it is
/// released, with no owner, and stays filed in the home alone, as one of the building's own
/// devices there. A device given up so, or released, then appears to service as any device
/// newly in the home does, as it happens; that much a release shows.
///
/// Who may change a home's members, move its spaces or file devices into and out of it is
/// restricted by the gateway, and a refused caller gets NOT_ENTITLED; within the household it
/// is its household admins' (webrtc.v1 household.proto). This keeps a home's
/// life — its readings, history and modes — from anyone but its residents by default; those
/// who service the building get the service view above and no more. It does not keep the
/// property owner or the administrator out by force — they hold the building's filing
/// authority and the gateway itself — but it makes their seeing in a deliberate act on the
/// home, such as filing themselves on it, rather than something handed out by default. They
/// remove a resident who moves out, so they are shown every residency, and since when
/// (webrtc.v1.ListGatewayMembers), but never who holds it (see RESIDENCY IDS).
///
/// RESIDENCY IDS. To a caller who does not live in the home, a RESIDENT membership is told
/// only under its residency id: an id the gateway mints for that residency alone, when it
/// begins, holds for as long as it lasts unbroken, and never reuses. It is opaque, begins
/// with "residency:", and is never a user's id or derived from one, so nothing told under it
/// ties the residency to a name, a role or another membership — and nothing changes it when
/// the person who holds it becomes staff or stops being staff (Role, STAFF). A relation
/// change, or the residency ending, ends its id. The people of the home see one another
/// under their user ids. Where a request below names a member, it says whether a residency
/// id may stand for one; a request that does not say so refuses one as INVALID_REQUEST, so
/// that no user is ever made under one.
///
/// A membership recorded with no relation, made before relations existed, sees no more than
/// either relation would where it is held: on an apartment or a room, a home as service; on a
/// building or floor, no home at all. It is listed with UNSPECIFIED so that it can be found
/// and assigned again.
class MembershipRelation extends $pb.ProtobufEnum {
  /// Names no relation. Invalid on a request, and refused rather than defaulted: which of
  /// the two a member is decides what they see of someone's home, and that must never be
  /// decided by an omission.
  static const MembershipRelation MEMBERSHIP_RELATION_UNSPECIFIED =
      MembershipRelation._(
          0, _omitEnumNames ? '' : 'MEMBERSHIP_RELATION_UNSPECIFIED');

  /// Lives there.
  static const MembershipRelation MEMBERSHIP_RELATION_RESIDENT =
      MembershipRelation._(
          1, _omitEnumNames ? '' : 'MEMBERSHIP_RELATION_RESIDENT');

  /// Is there for the building rather than to live in it: its owner's people, a technician,
  /// the gateway's administrator.
  static const MembershipRelation MEMBERSHIP_RELATION_SERVICE =
      MembershipRelation._(
          2, _omitEnumNames ? '' : 'MEMBERSHIP_RELATION_SERVICE');

  /// Lives there and governs the home: a resident who may also manage it (webrtc.v1
  /// household.proto). On an apartment only; refused anywhere else.
  ///
  /// Rollout order: an app whose schema predates this value cannot tell it from an unknown
  /// relation, so app handling ships before or with the gateway that records it.
  static const MembershipRelation MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN =
      MembershipRelation._(
          3, _omitEnumNames ? '' : 'MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN');

  static const $core.List<MembershipRelation> values = <MembershipRelation>[
    MEMBERSHIP_RELATION_UNSPECIFIED,
    MEMBERSHIP_RELATION_RESIDENT,
    MEMBERSHIP_RELATION_SERVICE,
    MEMBERSHIP_RELATION_HOUSEHOLD_ADMIN,
  ];

  static final $core.List<MembershipRelation?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static MembershipRelation? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MembershipRelation._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
