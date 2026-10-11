# Prototype A-1 HYD1 leaf-transmission clamp - CAD R1

This is a review-stage, parametric CAD concept for the A-1 transmission-only prototype. It is not yet a release-to-print design because the lamp, diffuser, SMA905 fibre and collimator dimensions remain provisional.

## Proposed architecture

The leaf is placed between two soft black gasket rings surrounding a 10 mm aperture. A removable MR8 lamp cartridge sits above the upper jaw. A removable collimator cartridge sits below the lower jaw and connects the optical path to the HYD1 through an SMA905 fibre.

Magnet pairs close the jaw. Four printed hard stops establish the 0.8 mm nominal closed gap, so magnet strength does not determine leaf pressure.

## Primary dimensions

| Parameter | R1 value |
|---|---:|
| Jaw body | 70 x 72 mm |
| Overall assembly envelope | approximately 70 x 83 x 99 mm |
| Jaw thickness | 10 mm each |
| Nominal closed leaf gap | 0.8 mm |
| Optical aperture | 10 mm |
| Gasket | 22 mm OD, 12 mm ID, 0.8 mm thick |
| Source cartridge OD | 36 mm |
| Assumed MR8 lamp diameter | 25.4 mm |
| Collector cartridge OD | 20 mm |
| Assumed collimator diameter | 12.7 mm |
| Hinge pin | 3 mm metal pin |
| Magnets | four 6 x 3 mm discs |

## Files

- `A1_leaf_clamp.scad`: editable parametric source.
- `A1_lower.stl`: lower jaw.
- `A1_upper.stl`: upper jaw.
- `A1_source.stl`: removable source cartridge.
- `A1_collector.stl`: removable collection cartridge.
- `A1_pin.stl`: printable reference pin; use a 3 mm metal pin for the prototype.
- `A1_assembly.3mf`: closed reference assembly, not intended to print as one part.
- `A1_assembly.png`, `A1_exploded.png`, `A1_section.png`: review views.
- `A1_CAD_Review_R1.pdf`: dimensioned review pack in the adjacent PDF deliverable.

## OpenSCAD export

Set `part` to one of `assembly`, `exploded`, `section`, `lower`, `upper`, `source`, `collector`, `pin`, or `gasket`.

Example:

```bash
openscad -D 'part="lower"' -o A1_lower.stl A1_leaf_clamp.scad
```

## Proposed printing

- Black PETG or ASA.
- 0.20 mm layer height.
- Four perimeters.
- 35% gyroid infill.
- Print jaws with their leaf-contact surfaces upward.
- Print optical cartridges vertically.
- Use M3 heat-set inserts where parts will be removed repeatedly.
- Apply matte-black coating or flocking to internal optical cavities.

## Required before R2

1. Exact HYD1 SMA905 connector arrangement.
2. Fibre connector body length and minimum bend radius.
3. Collimator outside diameter, overall length and focus adjustment.
4. Lamp and ceramic-holder dimensions.
5. Diffuser material and dimensions.
6. Preferred fibre exit direction.
7. Decision on magnetic closure versus mechanical latch.

