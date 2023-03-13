#!/bin/sh

if [ -z "$1" ]; then
  echo "Please supply expected KiCad version"
  exit 1
fi

kicad_version="$(kicad-cli --version)"
echo "Found KiCad version '$kicad_version'"

if [[ $kicad_version =~ $1.* ]]; then
  echo "Expected version found"
else
  echo "Unexpected version"
  exit 1
fi