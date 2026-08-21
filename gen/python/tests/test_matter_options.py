"""Contract tests for the Matter annotations on device.v1 properties messages.

These assert the machine-readable mapping a consumer relies on:
  - (matter_cluster_id, matter_attribute) on every properties field, so a
    PropertyUpdate resolves to a field without any name normalisation;
  - matter_device_type on every non-vendor properties message, so an
    Endpoint.matter_device_type_id resolves to an Endpoint.properties case.
"""

from kusinta.iot.device.v1 import device_pb2, matter_options_pb2, properties_pb2

# Derived from the Endpoint.properties oneof rather than hand-listed: a properties
# message added to the schema and forgotten here would silently drop out of every sweep
# below without a single test failing.
PROPERTIES_MESSAGES = [
    field.message_type._concrete_class
    for field in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name["matter_properties"].fields
]


def resolve_field(message_class, cluster_id, attribute_name):
    """Resolve a PropertyUpdate to a field the way a consumer must: exact match
    on the annotated (cluster, attribute) pair. Returns None when nothing matches."""
    matches = [
        field.name
        for field in message_class.DESCRIPTOR.fields
        if field.GetOptions().Extensions[matter_options_pb2.matter_cluster_id] == cluster_id
        and field.GetOptions().Extensions[matter_options_pb2.matter_attribute] == attribute_name
    ]
    return matches[0] if len(matches) == 1 else None


def properties_case_for_device_type(device_type_id):
    """Resolve an Endpoint.properties oneof case from a Matter device type ID.
    Returns None for a device type the schema does not model."""
    matches = [
        field.name
        for field in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name["matter_properties"].fields
        if device_type_id
        in field.message_type.GetOptions().Extensions[matter_options_pb2.matter_device_type]
    ]
    return matches[0] if len(matches) == 1 else None


# --- unresolvable attributes reported in issue #9 -----------------------------


def test_unknown_attribute_resolves_to_nothing():
    resolved = resolve_field(properties_pb2.ThermostatProperties, 0x0201, "NoSuchAttribute")
    assert resolved is None


def test_attribute_from_a_foreign_cluster_resolves_to_nothing():
    resolved = resolve_field(properties_pb2.ThermostatProperties, 0x0406, "LocalTemperature")
    assert resolved is None


def test_pir_occupied_to_unoccupied_delay_resolves_despite_abbreviated_field_name():
    resolved = resolve_field(
        properties_pb2.OccupancySensorProperties, 0x0406, "PIROccupiedToUnoccupiedDelay"
    )
    assert resolved == "pir_occupied_to_unoccupied_delay"


def test_pir_unoccupied_to_occupied_delay_resolves_despite_abbreviated_field_name():
    resolved = resolve_field(
        properties_pb2.OccupancySensorProperties, 0x0406, "PIRUnoccupiedToOccupiedDelay"
    )
    assert resolved == "pir_unoccupied_to_occupied_delay"


def test_bare_type_attribute_resolves_to_covering_type():
    resolved = resolve_field(properties_pb2.WindowCoveringProperties, 0x0102, "Type")
    assert resolved == "covering_type"


def test_acronym_attribute_resolves_without_case_normalisation():
    resolved = resolve_field(properties_pb2.EnergySensorProperties, 0x0090, "ActiveCurrent")
    assert resolved == "active_current"


def test_start_up_attribute_resolves_despite_inconsistent_field_spelling():
    resolved = resolve_field(
        properties_pb2.ColorTemperatureLightProperties, 0x0300, "StartUpColorTemperatureMireds"
    )
    assert resolved == "startup_color_temperature_mireds"


# --- annotation completeness --------------------------------------------------


def test_every_properties_field_declares_a_matter_attribute():
    unannotated = [
        f"{message.DESCRIPTOR.name}.{field.name}"
        for message in PROPERTIES_MESSAGES
        for field in message.DESCRIPTOR.fields
        if not field.GetOptions().HasExtension(matter_options_pb2.matter_attribute)
    ]
    assert unannotated == []


def test_every_properties_field_declares_a_matter_cluster_id():
    unannotated = [
        f"{message.DESCRIPTOR.name}.{field.name}"
        for message in PROPERTIES_MESSAGES
        for field in message.DESCRIPTOR.fields
        if not field.GetOptions().HasExtension(matter_options_pb2.matter_cluster_id)
    ]
    assert unannotated == []


def test_no_properties_message_annotates_two_fields_with_the_same_attribute():
    keys = [
        (
            message.DESCRIPTOR.name,
            field.GetOptions().Extensions[matter_options_pb2.matter_cluster_id],
            field.GetOptions().Extensions[matter_options_pb2.matter_attribute],
        )
        for message in PROPERTIES_MESSAGES
        for field in message.DESCRIPTOR.fields
    ]
    assert len(keys) == len(set(keys))


# --- multi-cluster properties messages ---------------------------------------


def test_dimmable_light_on_off_is_annotated_with_the_on_off_cluster():
    resolved = resolve_field(properties_pb2.DimmableLightProperties, 0x0006, "OnOff")
    assert resolved == "on_off"


def test_dimmable_light_current_level_is_annotated_with_the_level_control_cluster():
    resolved = resolve_field(properties_pb2.DimmableLightProperties, 0x0008, "CurrentLevel")
    assert resolved == "current_level"


def test_energy_sensor_uses_the_matter_electrical_power_measurement_cluster():
    clusters = {
        field.GetOptions().Extensions[matter_options_pb2.matter_cluster_id]
        for field in properties_pb2.EnergySensorProperties.DESCRIPTOR.fields
    }
    assert clusters == {0x0090}


# --- device type resolution, issue #10 ---------------------------------------


def test_unmodelled_device_type_resolves_to_no_properties_case():
    assert properties_case_for_device_type(0x0106) is None


def test_zero_device_type_resolves_to_no_properties_case():
    assert properties_case_for_device_type(0) is None


def test_thermostat_device_type_resolves_to_the_thermostat_case():
    assert properties_case_for_device_type(0x0301) == "thermostat"


def test_dimmable_light_device_type_is_dimmable_light_not_dimmable_plug_in_unit():
    assert properties_case_for_device_type(0x0101) == "dimmable_light"


def test_dimmable_plug_in_unit_device_type_is_not_modelled():
    assert properties_case_for_device_type(0x010B) is None


def test_contact_sensor_device_type_resolves_to_the_contact_sensor_case():
    assert properties_case_for_device_type(0x0015) == "contact_sensor"


def test_every_non_vendor_properties_case_declares_a_device_type():
    unannotated = [
        field.name
        for field in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name["matter_properties"].fields
        if field.message_type.file.package.startswith("kusinta.iot.device.")
        and not field.message_type.GetOptions().Extensions[matter_options_pb2.matter_device_type]
    ]
    assert unannotated == []


def test_vendor_extension_declares_no_device_type():
    device_types = device_pb2.Endpoint.DESCRIPTOR.fields_by_name[
        "hm_thermostat"
    ].message_type.GetOptions().Extensions[matter_options_pb2.matter_device_type]
    assert list(device_types) == []



def test_no_device_type_maps_to_more_than_one_properties_case():
    device_types = [
        device_type
        for field in device_pb2.Endpoint.DESCRIPTOR.oneofs_by_name["matter_properties"].fields
        for device_type in field.message_type.GetOptions().Extensions[
            matter_options_pb2.matter_device_type
        ]
    ]
    assert len(device_types) == len(set(device_types))


def test_every_properties_field_declares_a_matter_attribute_id():
    """Resolution matches on (cluster_id, attribute_id), so an unannotated field is
    unreachable from any PropertyUpdate."""
    unannotated = [
        f"{m.DESCRIPTOR.name}.{field.name}"
        for m in PROPERTIES_MESSAGES
        for field in m.DESCRIPTOR.fields
        if not field.GetOptions().HasExtension(matter_options_pb2.matter_attribute_id)
    ]
    assert unannotated == []


def test_no_properties_message_annotates_two_fields_with_the_same_cluster_and_id():
    """A repeat would make step 3 ambiguous."""
    for m in PROPERTIES_MESSAGES:
        pairs = [
            (
                field.GetOptions().Extensions[matter_options_pb2.matter_cluster_id],
                field.GetOptions().Extensions[matter_options_pb2.matter_attribute_id],
            )
            for field in m.DESCRIPTOR.fields
        ]
        assert len(pairs) == len(set(pairs)), m.DESCRIPTOR.name


def test_attribute_id_and_attribute_name_agree_across_messages():
    """The same Matter attribute appears in several properties messages — OnOff is in three.
    Every occurrence must give the same (cluster, id) for the same name, or one of them is
    a transcription error."""
    seen = {}
    for m in PROPERTIES_MESSAGES:
        for field in m.DESCRIPTOR.fields:
            o = field.GetOptions().Extensions
            key = (
                o[matter_options_pb2.matter_cluster_id],
                o[matter_options_pb2.matter_attribute],
            )
            attr_id = o[matter_options_pb2.matter_attribute_id]
            if key in seen:
                assert seen[key] == attr_id, f"{key} annotated as {seen[key]} and {attr_id}"
            seen[key] = attr_id


def test_known_matter_attribute_ids_are_correct():
    """Spot-check against the Matter cluster definitions. A wrong ID resolves silently to
    the wrong field, and no structural test can catch it — only comparing with the spec can."""
    expected = {
        (0x0201, "LocalTemperature"): 0x0000,
        (0x0201, "OccupiedHeatingSetpoint"): 0x0012,
        (0x0201, "SystemMode"): 0x001C,
        (0x0006, "OnOff"): 0x0000,
        (0x0006, "StartUpOnOff"): 0x4003,
        (0x0008, "CurrentLevel"): 0x0000,
        (0x002F, "BatPercentRemaining"): 0x000C,
        (0x002F, "BatChargeLevel"): 0x000E,
        (0x0045, "StateValue"): 0x0000,
        (0x0101, "OperatingMode"): 0x0025,
        (0x0102, "CurrentPositionLiftPercent100ths"): 0x000E,
        (0x0300, "ColorTempPhysicalMinMireds"): 0x400B,
        (0x0406, "PIROccupiedToUnoccupiedDelay"): 0x0010,
        (0x0090, "ActivePower"): 0x0008,
    }
    actual = {}
    for m in PROPERTIES_MESSAGES:
        for field in m.DESCRIPTOR.fields:
            o = field.GetOptions().Extensions
            actual[
                (o[matter_options_pb2.matter_cluster_id], o[matter_options_pb2.matter_attribute])
            ] = o[matter_options_pb2.matter_attribute_id]
    for key, want in expected.items():
        assert actual[key] == want, f"{key}: got 0x{actual[key]:04X}, spec says 0x{want:04X}"
