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