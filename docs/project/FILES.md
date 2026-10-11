# File register

Imported 11 October 2026. R1 files are the existing review snapshot, not newly validated CAD. Editable geometry is the source of truth; exports must be regenerated when source changes. Hashes are recorded in [SHA256SUMS.txt](../../hardware/a1/cad/r1/SHA256SUMS.txt).

| Record | Location | Revision / status |
|---|---|---|
| Project overview | [README](../../README.md) | Active |
| Bill of materials | [BOM](BOM.md) | Revision 0; incomplete costing |
| Supplier shortlist | [Suppliers](SUPPLIERS.md) | Leads and historical quote; recheck before buying |
| Decisions and actions | [Plan](PLAN.md) | Active |
| Editable clamp CAD | [OpenSCAD](../../hardware/a1/cad/r1/A1_leaf_clamp.scad) | R1 review only |
| CAD dimensions | [Dimension schedule](../../hardware/a1/cad/r1/A1_dimensions_R1.csv) | R1 provisional supplier dimensions |
| Review drawing pack | [PDF](../../hardware/a1/cad/r1/A1_CAD_Review_R1.pdf) | R1; five pages |
| Part geometry | [CAD folder](../../hardware/a1/cad/r1/) | Lower/upper jaws, source/collector cartridges, reference pin STL |
| Assembly exports | [CAD folder](../../hardware/a1/cad/r1/) | Assembly, exploded and section STL; assembly 3MF; not print-as-one parts |
| Review images | [CAD folder](../../hardware/a1/cad/r1/) | Assembly, exploded, section, lower-top and upper-bottom PNG |
| Main electronics casing | Not yet available | Proposed envelope only; T05 |
| Acquisition software | Not yet imported | T06 |
| HYD1 manufacturer document | External attachment: HYD1微型光谱传感器_0.2_eng.pdf | Retain privately; redistribution permission not established |
| PJG developer document | External attachment: PJG开发者文档_IR_CIE2015_v1(1).pdf | Retain privately; HYD1 applicability must be confirmed |
| PJG4 meter document | External attachment: PJG4 Miniature Bluetooth Spectral Illuminance Meter_1.0.pdf | Alternative/reference product; not HYD1 specification authority |
| Supplier quote correspondence | External, supplied in conversation | HYD1 fibre kit USD 359; no private email content imported |

## Revision convention

Use `hardware/a1/cad/r2/` for the next reviewed snapshot, retaining editable source, exports, dimensions and review notes together. Record what changed and which supplier dimensions were used. Do not silently label R1 as print-ready. Keep firmware/acquisition code and measurement protocols versioned as they are developed.
