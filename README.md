# setup-kicad
This action installs KiCad 7.0 in a Linux container.

## Coming features
- [ ] Make the version selectable.
- [X] Add automatic testing.
- [ ] Finish the documentation.
- [ ] Let is also work on Windows and MacOS.

## Usage
```yaml
steps:
- uses: actions/checkout@v3
- uses: actions-for-kicad/setup-kicad@v0.1
- run: kicad-cli sch export pdf ./pcb/*.kicad_sch
- name: Upload 
    uses: actions/upload-artifact@v3
    with:
    name: Schematic.pdf
    path: ./*.pdf
```
