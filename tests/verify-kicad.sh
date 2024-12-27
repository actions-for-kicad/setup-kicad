#!/bin/bash

# Check if the expected KiCad version is supplied.
if [ -z "$1" ]; then
  echo "::error::Please supply expected KiCad version"
  exit 1
fi

# Get the current installed kicad version.
kicad_version="$(kicad-cli --version)"
echo "Found KiCad version '$kicad_version'"

# Check if the expected KiCad version matches the actual KiCad version.
if [[ "$kicad_version" =~ "$1".* ]]; then
  echo "Expected version found"
else
  echo "::error::Unexpected version"
  exit 1
fi

# Verify that the sym-lib-table is available in the specified folder.
KICAD_CONFIG_DIRECTORY="$HOME/.config/kicad/$1/"
if [ -f "$KICAD_CONFIG_DIRECTORY/sym-lib-table" ]; then
  echo "sym-lib-table found in $KICAD_CONFIG_DIRECTORY"
else
  echo "::error::sym-lib-table not found in $KICAD_CONFIG_DIRECTORY"
  exit 1
fi