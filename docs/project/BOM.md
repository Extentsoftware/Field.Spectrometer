# A-1 bill of materials

Revision 0 — 11 October 2026. Planning quantities for one prototype, not a purchasing release. No orders confirmed. Supplier IDs link to [SUPPLIERS.md](SUPPLIERS.md). Blank/unquoted costs must be obtained before a total build budget is issued.

## Quoted and candidate parts

| Part ID | Item | Qty | Supplier | Unit price | Price basis / source | Status / checks |
|---|---|---:|---|---|---|---|
| A1-001 | HYD1 fibre model, development board and TTL–RS485 module | 1 kit | S01 | USD 359 | Supplier reply supplied by Marcus, September 2026; tax/shipping unspecified | Quoted; confirm exact model, connector, fibre inclusion, board drawings and protocol |
| A1-002 | Optical fibre patch cable | 1 | S01 / S04 | Unquoted | Ask whether included in A1-001 before purchasing | SMA905 candidate; confirm both ends, core, NA, spectral range and bend radius |
| A1-003 | Adjustable fibre collimator | 1 | S04 / S05 | Unquoted | Supplier selection pending | Confirm spectral throughput, focus, NA and physical dimensions |
| A1-004A | MR8 6 V 10 W halogen lamp, GZ4 | 1 | S02 | GBP 5.29 | Previously recorded listing, VAT included; reconfirm before order | Preferred geometry candidate only; coating and NIR throughput unresolved |
| A1-004B | G4 6 V 10 W M42 clear capsule | 1 alternative | S03 | GBP 7.57 | Previously recorded listing, VAT included; reconfirm before order | Alternative to 004A, not additional; requires different holder and optics |

The USD 359 kit quote is not the total prototype cost. Lamp alternatives must not be added together. GBP and USD are kept separate; shipping, import charges, unquoted hardware, labour and validation are excluded. Prior web prices are leads, not current quotations.

## Unpriced supporting parts

| Part ID | Item | Qty | Specification / next action | Status |
|---|---|---:|---|---|
| A1-005 | Ceramic lamp holder | 1 | Match selected GZ4/G4 lamp and measured dimensions | Unquoted |
| A1-006 | Diffuser | 1 | Material, spectral transmission and heat tolerance to select; R1 size provisional | Unquoted |
| A1-007 | Black leaf-contact gaskets | 2 | R1: 22 mm OD, 12 mm ID, 0.8 mm thick; validate pressure and sealing | Unquoted |
| A1-008 | Metal/ceramic lamp mount and thermal barrier | 1 set | Design before powered operation; printed cartridge alone is insufficient | Design pending |
| A1-009 | Regulated lamp supply | 1 | Match lamp voltage; 6 V/10 W implies 1.67 A running current; allow measured startup demand | Unquoted |
| A1-010 | Lamp switching/driver circuit | 1 | Select after supply, startup and stability requirements | Unquoted |
| A1-011 | External DC supply | 1 | Voltage/current/connectors depend on complete power design | Unquoted |
| A1-012 | USB–RS485 interface | 0–1 | Confirm kit interface and laptop compatibility first | Inclusion unknown |
| A1-013 | Metal hinge pin | 1 | R1 diameter 3 mm; length/retention to confirm | Unquoted |
| A1-014 | Closure magnets | 4 | R1 6 × 3 mm; force, retention and leaf pressure untested | Unquoted |
| A1-015 | M3 screws and heat-set inserts | 1 set | Determine quantities after mechanical review | Unquoted |
| A1-016 | Wiring, locking connectors and strain relief | 1 set | Select after power/interface design | Unquoted |
| A1-017 | Internal matte-black finish | 1 allowance | Check optical performance, adhesion and heat compatibility | Unquoted |
| A1-018 | Printed lower/upper jaws and optical cartridges | 1 set | R1 concept files available; material and tolerances to validate | CAD review |
| A1-019 | Electronics enclosure, lid and board mounts | 1 set | Proposed 160 × 100 × 55 mm envelope; not yet drawn | CAD pending |
| A1-020 | Dark/reference fixtures | 1 set | Develop repeatable reference geometry and light exclusion | Design pending |

## Existing equipment and later options

3D printer, 18650 cells/holders and TTGO/Heltec hardware were mentioned in project discussions; availability and exact models need inventory confirmation. Batteries and embedded display/controller are not required for the initial externally powered A-1 bench prototype. Spare lamps, lenses, reflection optics and cuvettes are optional/later-stage items, not included above.
