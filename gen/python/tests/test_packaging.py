"""Packaging tests: what a consumer's type checker sees when it imports the package.

  * the package declares itself typed (PEP 561), so the shipped .pyi stubs are used
    without a per-consumer mypy override
"""

from importlib.resources import files


def test_package_ships_a_py_typed_marker_so_type_checkers_use_the_stubs():
    marker = files("kusinta").joinpath("py.typed")

    assert marker.is_file()
