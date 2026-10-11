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

## Sourcing review follow-up — 11 October 2026

UK sources, variants, prices and dimensions are recorded in [UK_PROCUREMENT.md](UK_PROCUREMENT.md). This completes the supplier search pass, not T02 component approval. Proposed choices remain subject to the following work:

| ID | Priority | Action | Completion evidence |
|---|---|---|---|
| T10 | First | Resolve Anglia UV cable range conflict and HYD1 coupling | Written full-range cable specification, VAT/delivery and core/NA confirmation |
| T11 | First | Obtain collimator body, holder, board and connector drawings | Dimensions sufficient for R2; lens diameter not substituted for body OD |
| T12 | Next | Revise source, diffuser seat and case layout for sourced parts | R2 drawings with thermal assembly, 12.5 mm diffuser, real mounts and bend clearance |
| T13 | First | Complete sensor power and branch protection omitted from initial BOM | Reviewed schematic and priced A1-021 items; HYD1 input confirmed |
| T14 | Cost control | Request silicone offcut and confirm included fibre/interface | Reduced order quantities and delivered prices, without duplicate purchases |

## China sourcing follow-up — 11 October 2026

All BOM IDs reviewed in [CHINA_PROCUREMENT.md](CHINA_PROCUREMENT.md). Several marketplace prices/dimensions remain unverified; the search does not release those parts for order.

| ID | Priority | Action | Completion evidence |
|---|---|---|---|
| T15 | First | Confirm CivilLaser collimator and Goptica/Torchbearer fibre package | Exact variant, drawings, full spectral range, one-unit delivered prices |
| T16 | Next | Compare regulator and interface alternatives | DFR0946 startup/ripple test, independent switch design and revised enclosure layout; Waveshare kit-inclusion check |
| T17 | Cost control | Obtain low-quantity lamp/holder/enclosure quotes where useful | Actual sample prices with shipping; no bulk MOQ treated as per-prototype cost |
| T18 | Next | Validate received China mechanical parts against dimensions | Insert OD coupon, hinge rod diameter/straightness, magnet grade and axial polarity |

## Release gates

R2 CAD requires selected supplier dimensions and a thermal/mechanical review. Powered testing requires a reviewed electrical and heat-management arrangement. Nutrient estimates require crop-specific calibration and independent validation; neither laboratory replacement nor return on investment is established by purchasing a spectrometer.

## Later backlog

- A-2: reflectance head, cuvette workflow, battery/controller/display, QC monitoring and field enclosure.
- B-1: grating and CMOS linear-array feasibility, resolution/sensitivity, calibration and interface reuse.
- Soil workflows: choose extraction methods and reference laboratory validation before designing chemistry automation.
