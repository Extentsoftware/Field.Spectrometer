# Field Spectrometer

Low-cost agricultural leaf spectrometer development. Project owner: Marcus. Initial project register: 11 October 2026.

## Current prototype: A-1

HYD1 fibre-coupled spectrometer with a controlled light source and transmission-only leaf clamp. Start with a laptop and external DC power. This is an experimental instrument: nutrient predictions and savings from replacing laboratory tests have not been validated.

- [Bill of materials](docs/project/BOM.md) — quantities, price basis and purchasing status.
- [UK purchasing shortlist](docs/project/UK_PROCUREMENT.md) — product links, prices, dimensions, stock observations and order holds.
- [China purchasing shortlist](docs/project/CHINA_PROCUREMENT.md) — manufacturer, Alibaba and AliExpress candidates, MOQ costs and UK comparison.
- [Potential suppliers](docs/project/SUPPLIERS.md) — source links and outstanding checks.
- [File register](docs/project/FILES.md) — design files, revisions and missing documents.
- [Decisions and tasks](docs/project/PLAN.md) — scope, next steps and release gates.
- [A-1 CAD R1](hardware/a1/cad/r1/README.md) — editable OpenSCAD, review views and exported geometry.
- [CAD review PDF](hardware/a1/cad/r1/A1_CAD_Review_R1.pdf).

**CAD R1 is a review concept, not a manufacturing release.** Optical component sizes are provisional. The main electronics casing still needs CAD. Resolve thermal protection, supplier dimensions and mechanical clearances before printing functional parts.

## Roadmap

| Prototype | Scope | Status |
|---|---|---|
| A-1 | HYD1; leaf transmission; bench power and laptop | Active development |
| A-2 | Evaluate reflectance, cuvette head and field electronics after A-1 validation | Planned; requirements open |
| B-1 | Grating/CMOS linear-array approach, reusable optical heads where practical | Research backlog |

## Keeping this project current

Update the BOM when a quote, order or part choice changes; retain the source, currency, tax basis and date. Use stable part and supplier IDs. Unknown costs remain unknown, not zero. Archive each CAD revision with its editable source and review notes. Record measurements and validation evidence before calling a revision ready to build. Use branches and pull requests for subsequent changes.

This repository is public. Keep personal contact details, invoices, credentials and supplier documents without redistribution permission outside the repository; reference them in the file register. No licence is granted to third-party materials by their mention here.
