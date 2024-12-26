# setup-kicad

This action installs KiCad in a linux workflow.

> **_NOTE:_** Minimal KiCad version is 7.0.

# Usage

See [action.yml](action.yml)

```yaml
steps:
  - uses: actions/checkout@v3
  - uses: actions-for-kicad/setup-kicad@v1
    with:
      version: "8.0"
  - uses: actions-for-kicad/generate-kicad-files@v1
    with:
      file: "./file.kicad_sch"
      type: "schematic_pdf"
  - name: Upload
    uses: actions/upload-artifact@v4
    with:
      name: "file.pdf"
      path: "./file.pdf"
```

## Inputs

### `version`

Required: `False`

Default: `8.0`

Description: The version of KiCad that needs to be installed in an 'x.y' format.

# License

The scripts and documentation in this project are released under the [GNU license](LICENSE).

# Contributions

Contributions are welcome! Please help me expand and maintain this repository.
