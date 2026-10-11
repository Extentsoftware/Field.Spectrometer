# Decisions and tasks

Updated 11 October 2026. Owners and due dates are unassigned until agreed. Tasks below are open, not completed engineering checks.

## Decisions

| ID | Decision | Basis / limits |
|---|---|---|
| D01 | Proceed with HYD1 fibre-based A-1 | User direction; exact kit contents still need supplier confirmation |
| D02 | Transmission-only A-1; laptop and external power | Initial prototype scope; establish repeatable spectra first |
| D03 | Develop A-2 and CMOS-array B-1 subsequently | User roadmap; detailed requirements not frozen |
| D04 | Keep CAD R1 as a review revision | Supplier dimensions, thermal design and mechanical tolerances unresolved |
| D05 | Use this repository for design and project tracking | User provided project repository; private supplier material stays external |

## Next actions

| ID | Priority | Action | Completion evidence |
|---|---|---|---|
| T01 | First | Confirm HYD1 order code, fibre, board and interface contents | Written supplier reply and dimensional drawings |
| T02 | First | Select lamp, holder, fibre and collimator | Compatible datasheets, dimensions and priced BOM |
| T03 | First | Resolve lamp heating and electrical design | Metal/ceramic support, supply/inrush checks and temperature measurements |
| T04 | Next | Review clamp R1 clearances, hinge, closure and leaf pressure | CAD review and safe mechanical fit test |
| T05 | Next | Draw full electronics casing | Measured board mounts, connectors, cable bend radius, ventilation and service access |
| T06 | Next | Implement acquisition and reference workflow | Raw, dark and reference spectra saved with integration settings, sample ID and timestamps |
| T07 | Validation | Establish lamp warmup and measurement repeatability | Repeated reference/leaf readings, drift and temperature data; do not assume a 1–2 second warmup |
| T08 | Validation | Plan paired leaf spectra and laboratory measurements | Documented sampling protocol and independent validation before nutrient claims |
| T09 | Ongoing | Confirm costs, orders and received parts | Quotes and inventory updates linked to BOM IDs |

## Release gates

R2 CAD requires selected supplier dimensions and a thermal/mechanical review. Powered testing requires a reviewed electrical and heat-management arrangement. Nutrient estimates require crop-specific calibration and independent validation; neither laboratory replacement nor return on investment is established by purchasing a spectrometer.

## Later backlog

- A-2: reflectance head, cuvette workflow, battery/controller/display, QC monitoring and field enclosure.
- B-1: grating and CMOS linear-array feasibility, resolution/sensitivity, calibration and interface reuse.
- Soil workflows: choose extraction methods and reference laboratory validation before designing chemistry automation.
