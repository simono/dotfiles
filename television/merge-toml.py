#!/usr/bin/env -S uv run
# /// script
# dependencies = ["tomli-w"]
# ///
# Merges override into base TOML file in-place.
#
# Usage: merge-toml.py base.toml override.toml

import sys
import tomllib
import tomli_w
from pathlib import Path


def merge(base, override):
    for k, v in override.items():
        if v == "__DELETE__":
            base.pop(k, None)
        elif k in base and isinstance(base[k], dict) and isinstance(v, dict) and v:
            merge(base[k], v)
        else:
            base[k] = v
    return base


if __name__ == "__main__":
    base_path = Path(sys.argv[1])
    override_path = Path(sys.argv[2])

    base = tomllib.loads(base_path.read_text())
    override = tomllib.loads(override_path.read_text())

    base_path.write_text(tomli_w.dumps(merge(base, override)))
