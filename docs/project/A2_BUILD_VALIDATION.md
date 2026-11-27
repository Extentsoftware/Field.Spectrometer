# A-2 build and validation plan

Draft, 27 November 2026. Gates below are evidence requirements, not claims that the instrument is complete.

## Gate 1 — supplier and interfaces

Obtain the exact HYD1 fibre variant datasheet, calibrated wavelength range, resolution, optical connector, fibre inclusion, power/current, wiring, interface/protocol, dev-board dimensions and mounting drawings. Confirm whether the TTL-to-RS485 module is needed. Compare existing Heltec hardware only when exact model and pinout are known.

## Gate 2 — bench acquisition and phone

Use manufacturer-supported equipment to obtain and export raw spectra. Bring up controller and phone interface using a simulator if sensor is unavailable. Confirm offline connection, storage across resets, download, authentication, correct reconnection and behaviour when storage is full. Test actual target Android/iOS devices if both are required. Check that original data and references are not overwritten.

## Gate 3 — light and optical heads

Test source startup, warm-up drift, signal and temperature. Measure dark, transmission open-path reference, and reflectance standard using a range of integration times. Investigate saturation, weak bands, external light and reference repeatability. Reposition representative leaves and measure within-leaf and between-position variability for both modes. Select reference intervals based on observed drift. Decide quantitative thresholds before declaring a pass.

## Gate 4 — integrated field prototype

Document schematic review, fusing, battery and charging arrangement, wiring ratings and thermal protection before energising. Measure accessible surface temperature, enclosure interior, battery and lamp support under worst credible continuous use and during fault tests appropriate to the selected parts. Test runtime, physical handling, cable strain relief and field cleaning. Verify phone reconnect and data export after interrupted operation.

## Gate 5 — agricultural validation

Define a macadamia sampling protocol covering relevant cultivars, sections, seasons, leaf age and tree conditions. Pair spectra and laboratory measurements from the same representative samples, retain traceability, and reserve independent trees or blocks and preferably later dates for validation. Report error, uncertainty, sample size and failure cases. Nutrient predictions are exploratory until the evidence supports their use; screening is not an automatic substitute for laboratory testing.

## Design outputs still required

Dimensioned CAD based on measured components; optical geometry and references; reviewed schematic and PCB; supplier-verified BOM with prices; power budget; firmware and user interface; measurement files and results. No manufacturing CAD or PCB is implied by these design notes.
