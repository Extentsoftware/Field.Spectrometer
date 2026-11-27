# A-2 field spectrometer — requirements

Status: draft for review, 27 November 2026. This is an engineering proposal, not a verified design or manufacture release.

## Goal and decisions

Build a portable prototype to acquire repeatable macadamia leaf spectra and record field metadata without farm internet. HYD1 fibre module is the selected spectrometer platform; the user accepts a phone as display using Bluetooth or Wi-Fi. Transmission and reflectance are intended A-2 capabilities. The initial Wi-Fi web interface and rechargeable power are proposals. A cuvette head is a future option and is not a release requirement.

## Requirements and evidence

| ID | Requirement | Proposed verification |
|---|---|---|
| R01 | Capture and retain unmodified sensor spectra, wavelength calibration and measurement settings | Compare exported raw data with manufacturer output |
| R02 | Support transmission and reflectance with distinct measurement geometries and references | Measure reference and sample for each mode; review optical paths |
| R03 | Record a dark measurement and flag saturation, weak signal and invalid reference | Inject or acquire boundary cases; confirm flags |
| R04 | Provide offline phone-based user interface for section, sample ID, mode, scan and results | Complete a field workflow with internet disabled on target phones |
| R05 | Retain scans across disconnects and power cycling, export with metadata | Test interrupted scans, restart and export; verify files |
| R06 | Operate from portable rechargeable power; display battery status | Measure run time and accuracy after battery architecture chosen |
| R07 | Prevent accidental lamp overheating and protect wiring, battery and user-accessible surfaces | Review circuit and perform worst-case sustained thermal tests |
| R08 | Provide repeatable leaf positioning and reduce ambient light interference | Reposition leaf and change external illumination; quantify error |
| R09 | Support field service, cleaning, protected fibre routing and labelled connectors | Inspect assembled prototype and perform field handling trial |
| R10 | No direct nutrient claims before independent validation against suitable lab measurements | Document calibration, held-out validation and uncertainty |
| R11 | Prevent unauthorised access to control and saved data | Test unique credentials, access control and recovery |
| R12 | Preserve original measurements and referenced dark and reference records for recalculation | Inspect exported dataset and reconstruct derived values |

Numeric acceptance thresholds for spectral repeatability, wavelength range, runtime, enclosure protection and total cost are **to be agreed after supplier confirmation and baseline testing**. Do not confuse P42 specifications with HYD1 specifications.

## Operating workflow

1. Power instrument; join its local network; open its interface.
2. Select operator, farm section, tree/sample ID and transmission or reflectance.
3. Take dark and mode-specific reference when prompted; check measurement quality.
4. Position leaf in defined location, acquire spectrum and display quality status.
5. Save spectrum and metadata locally; export to phone or computer and back up.

Reflectance reference geometry and target, and transmission reference fixture, must be designed and validated. Keep acquisition times, source state and mode traceable.

## Scope and constraints

The head must accommodate macadamia leaf geometry without damaging it. Avoid unnecessary sample preparation. Phone and instrument must work without internet. Existing A-1 CAD is review-only and is not an A-2 assembly. Neither nutrient accuracy nor commercial readiness is assumed.
