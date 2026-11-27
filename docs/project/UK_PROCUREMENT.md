# A-1 UK purchasing shortlist

Research snapshot: 11 October 2026. GBP unless stated. No purchases made. This is a sourcing review, not a manufacturing release. Prices and stock are public listing observations, not reserved inventory; delivery is additional. “Calculated inc VAT” uses 20% for comparison, not a supplier quotation. Unstated VAT stays unstated. UK purchase/delivery is assumed; onward shipment to Zimbabwe is not costed.

## Purchasing sequence

1. Confirm HYD1 kit contents before duplicating the fibre or computer interface. The kit remains a direct overseas purchase; no UK stockist was verified.
2. Bench parts with useful published dimensions are identified below. Buy optical components for fit testing only where noted; do not print R1 seats expecting them to fit.
3. Obtain the fibre compatibility confirmation, collimator body drawing and sensor/board drawings. Finish thermal and electrical design, then release R2 and order custom parts.

There is no defensible complete-build total yet. Alternatives are mutually exclusive, pack costs differ from quantities consumed, and several bespoke items and VAT bases remain unresolved. Keep the USD 359 sensor quote separate from GBP purchases.

## Sensor and optical head

| BOM ID / quantity to buy | UK source and exact selection | Observed price / availability | Dimensions and performance evidence | Purchasing status |
|---|---|---|---|---|
| A1-001 / 1 kit | S01 Torchbearer HYD1 fibre kit, development board and TTL–RS485 module | USD 359, user-supplied September quote; freight/tax unknown | Exact order code, sensor/board envelopes, mounting holes and power input not confirmed | HOLD: confirm package, drawings, protocol and fibre inclusion; not a verified UK supply |
| A1-002 / 1 cable | S07 [Anglia UV/VIS cable](https://www.spectroscopyshop.com/products/uv-vis-fibre-optic-cable?variant=5591639940): 600 µm / PVC / SMA905 | £157; VAT unstated; selectable online, physical stock/lead time unconfirmed | 2 m, NA 0.22. Shop says 200–1100 nm, but [corporate specification](https://www.angliainst.co.uk/fibre-optic-cables) recommends UV cable for 200–800 nm and lists separate IR/UVIR types | HOLD: conflicting wavelength coverage. Ask for confirmed 340–1050 nm throughput or a UVIR quote; confirm both connectors, HYD1 core/NA, jacket OD and bend radius |
| A1-002 alternative / 1 | S04 [Edmund 23-700](https://www.edmundoptics.co.uk/p/022-na-visnir-patchcord-600-micron-fiber-w-sma-connector/49903/) | £333.60 ex VAT; £400.32 calculated inc VAT; 4 listed | 1.5 m, 600 µm core, NA 0.22, SMA, 300–2400 nm; jacket 0.190 in ≈ 4.83 mm OD | Clearer spectral specification; still confirm HYD1 coupling and bend radius. Do not buy if suitable cable included in kit |
| A1-003 / 1 | S07 [Anglia 6 mm UV/VIS/NIR collimator](https://www.spectroscopyshop.com/products/uv-vis-nir-collimating-lens?variant=5628370948), AICOL-UV/VIS | £91; VAT unstated; lead time unconfirmed | [Technical page](https://www.angliainst.co.uk/collimating-lens): 200–2500 nm, 6 mm lens, 8.7 mm focal length, focus adjustable; shop specifies SMA905 | HOLD final mount: obtain external body OD, length, thread and focus travel. The 6 mm lens is NOT the housing diameter |
| A1-003 alternative / 1 | S04 [Edmund 90-535 / Ocean Optics 74-UV](https://www.edmundoptics.co.uk/p/uv-nir-collimator-lens/57006/) | £230.40 ex VAT; £276.48 calculated inc VAT; contact supplier | 200–2000 nm, 5 mm lens, 10 mm focal length, SMA905, 3/8-24 external thread | More expensive alternative; full body drawing still needed. Not additional to Anglia |
| A1-004B / 1, optional spare 1 | S03 [BLT M42 G4 6 V 10 W clear capsule](https://www.bltdirect.com/products/leading-brand-10w-6v-halogen-g4-clear-capsule-lamp), quick-find 276 | £6.31 ex / £7.57 inc VAT; in stock | 9 mm diameter × 33 mm length; G4, nominal 3000 K | Proposed bench lamp. Confirm delivered brand and filament position for repeatability. Requires revised source optics and thermal mount |
| A1-004A alternative / 1 | S02 [MR8 6 V 10 W](https://energylightbulbs.co.uk/products/mr8-halogen-bulb-10w-6v) | Historical £5.29 inc VAT; not freshly verified | Reflector/coating, useful NIR output and matching holder unresolved | Retain as alternative only; do not add to capsule cost |
| A1-005 / 1 | S13 [Sinolec K507K ceramic G4 holder](https://sinolec.co.uk/gb/low-voltage-g4-gx53-gy635-gu4-and-gu53-lamp-holders/1211347-g4-ceramic-ceramic-lamp-holder.html) | £1.05 labelled ex VAT; page also repeats this as inc VAT: confirm. £1.26 calculated inc VAT; stock listed | Snap-in metal-panel hole 7.9–8.0 mm; 150 mm, 0.75 mm² leads; ceramic T250, leads T180; 5 A | Candidate matching G4. Obtain full body drawing and acceptable panel thickness before machining; ratings do not establish safe enclosure temperature |
| A1-006 / 1 | S04 [Edmund 63-224 fused-silica diffuser](https://www.edmundoptics.co.uk/p/125mm-diameter-uv-fused-silica-ground-glass-optical-diffuser/17838/) | £46.40 ex VAT; £55.68 calculated inc VAT; 20+ listed | 12.50 ±0.25 mm diameter × 1.60 mm thick; 220 grit; 200–2200 nm | Suitable bench candidate. R1 assumes 18 × 1.5 mm: redesign retaining seat and check illuminated aperture |

The less expensive Anglia cable and collimator total £248 at displayed prices, **before resolving VAT and cable spectral suitability**. This is not an approved optical package or a delivered quotation.

## Power and computer interface

| BOM ID / quantity to buy | UK source and selection | Observed price / availability | Dimensions / connection | Purchasing status |
|---|---|---|---|---|
| A1-009 / 1 | S08 [Pololu D30V30F6, POL-4893](https://thepihut.com/products/pololu-6v-3-3a-step-down-voltage-regulator-d30v30f6) | £29.80 inc VAT; stock listed | 17.8 × 20.3 × 9 mm; two M2 mounting holes; 6 V output, typical 3.3 A. [Manufacturer](https://www.pololu.com/product/4893) | Bench candidate for 1.67 A nominal lamp load. Verify cold-start demand, ripple and thermal performance; not a precision spectrometer supply by itself |
| A1-010 / no separate driver initially | Use regulator EN input for bench enable, with documented low-current contact/jumper arrangement | No additional driver selected; eventual switch/wiring still to cost | EN is a control connection, not the lamp-current path | Proposed simplification. Automatic lamp control deferred; do not assume a MOSFET board is required |
| A1-011 / 1 | S08 [Mean Well GST60A12-P1J, SKU 104747](https://thepihut.com/products/meanwell-12v-5a-60w-power-supply-gst60a12-p1j) | £23 inc VAT; stock listed | 12 V / 5 A; 5.5/2.1 mm centre-positive. [Manufacturer drawing](https://www.meanwell.com/Upload/PDF/GST60A/GST60A-SPEC.PDF): 125 × 50 × 31.5 mm | External lamp-branch supply via regulator. Do NOT apply 12 V to HYD1 without its board specification |
| A1-011 accessory / 1 | S08 UK IEC C13 2 m mains lead, linked accessory on PSU page | £3 inc VAT displayed | C13 inlet connection; UK plug | Required for UK bench use; not included with PSU. Reconfirm accessory at checkout |
| A1-012 / 0–1 | S09 [FTDI USB-RS485-WE-1800-BT, RS 687-7834](https://uk.rs-online.com/web/p/interface-adapters-converters/6877834) | £28.86 ex / £34.63 inc VAT; in stock | 1.8 m cable, 5 mm cable OD, USB-A to six bare wires; up to 3 Mbaud | Confirm HYD1 RS485 module pinout/protocol and whether interface included. Not galvanically isolated; insulate unused supply wire. Never connect RS485 directly to TTL |
| A1-012 alternative / 0–1 | S08 [Waveshare WAV23949 isolated USB–RS485/422](https://thepihut.com/products/usb-to-rs485-422-industrial-grade-isolated-converter) | £17.30 inc VAT; sold out | 81.9 × 54 × 32 mm; USB cable included | Stock hold. Lower advertised price does not make this immediately orderable |
| A1-021 / 1 set | Sensor power rail, branch fuse/protection and thermal cutoff | Not yet quoted | Depends on HYD1 input, lamp inrush and measured temperatures | NEW omission identified: complete power schematic and select ratings before powered assembly |

A separate Pololu pushbutton switch was considered but stock snapshots conflicted. A cheap inline barrel switch was not selected because an adequate DC rating was not established. Neither is required for the proposed initial EN-controlled bench arrangement.

## Clamp, casing and consumables

| BOM ID / quantity to buy | UK source and selection | Observed price / availability | Dimensions / quantity consumed | Purchasing status |
|---|---|---|---|---|
| A1-007 / 1 sheet or request offcut | S12 [TYM black silicone 60 Shore A](https://tym.co.uk/products/silicone-rubber-sheet-60-shore?variant=41777314857023), 0.8 mm / 1 m × 1.2 m / BLACK | £40.45 displayed; VAT unstated; selectable | Sheet 1000 × 1200 × 0.8 mm. Cut two provisional 22 mm OD / 12 mm ID rings | Full sheet is excessive for one clamp: request two rings or small offcut first. Cutting cost excluded; validate compression/leaf pressure |
| A1-008 / 1 sheet plus custom support | S14 [Aluminium Online 1 mm sheet](https://www.aluminium-online.co.uk/product/aluminium-sheet-1mm-length-100mm-width-600mm/) | £3.70 ex / £4.44 inc VAT; in stock | 100 × 600 × 1 mm | Raw bracket/heat-shield material only. Ceramic supports, thermal isolation and fabrication remain unquoted; metal conducts heat and does not alone solve isolation |
| A1-013 / 1 rod | S11 [Technobots 4426-003 silver steel](https://www.technobotsonline.com/silver-steel-3mm-x-333mm.html) | £1.38 ex / £1.66 inc VAT; in stock | 3 mm diameter × 333 mm | Cut/deburr; R1 pin body is about 61 mm, final retention and length need R2 detail |
| A1-014 / 1 pack of 20 | S10 [First4Magnets F643, N42](https://www.first4magnets.com/product/6mm-dia-x-3mm-thick-n42-neodymium-magnet-09kg-pull-19218) — explicitly select 20 pack | £6.76 ex / £8.11 inc VAT per 20 pack | 6 × 3 mm, ±0.1 mm; four used, sixteen spare; 80°C maximum stated | Bench mechanical candidate. Validate closure force, polarity and captive retention. Advertised pull on steel is not leaf contact force |
| A1-015 / 1 pack of 50 | S08 [M3 × 4 mm inserts, SKU 105623](https://thepihut.com/products/brass-heat-set-inserts-for-plastic-m3-x-4mm-50-pack) | £5.90 inc VAT; stock listed | M3 internal thread, 4 mm length; OD and recommended pilot hole not established | Buy for fit coupon if useful; measure or obtain drawing before freezing printed bosses |
| A1-015 / 1 assortment | S08 [DFRobot FIT0224 mounting kit](https://thepihut.com/products/mounting-kit-screws-and-nuts) | £11.50 inc VAT; stock listed | M3 screws 6/8/10/12 mm, 20 each; nuts and washers also supplied | Convenient prototype stock; final lengths/counts after R2. Does not cover regulator M2 hardware |
| A1-016 / 1 wire set | S15 [HobbyRC 18 AWG silicone wire](https://www.hobbyrc.co.uk/18-awg-flexible-silicone-wire-black-red-1m-2) | £1.95 inc VAT; in stock | 1 m red + 1 m black; 18 AWG | Lamp wiring stock; individual wires need protected routing and strain relief |
| A1-016 / 1 connector pair | S11 [Technobots GX12-3, 5002-003](https://www.technobotsonline.com/makertronics-gx12-3-pin-male-female-aviation-connector.html) | £1 ex / £1.20 inc VAT; stock listed | Male chassis + female plug; 12 mm mounting hole; stated 5 A | Candidate locking lamp connection, use two pins with third unused. Freeze polarity, insulation and full connector envelope; fuse branch and connect with power off |
| A1-016 / 1 DC jack | S08 [Panel 2.1 mm barrel jack, SKU 104349](https://thepihut.com/products/panel-mount-2-1mm-dc-barrel-jack) | £2.60 inc VAT; stock listed | 5.5/2.1 mm mating, panel up to 8 mm | HOLD final selection: verify current rating, cutout and body dimensions. PSU plug fit alone is insufficient |
| A1-016 / remaining accessories | Cable restraint/glands, heat shrink, terminals, M2 fixings and mounting spacers | Not yet quoted | Select from actual cable diameters and board drawings | Do not assume a small gland passes an SMA connector; enclosure holes and harness remain to detail |
| A1-017 / 1 sheet if needed | S16 [Milly's Cameras C-FL-BK flock](https://cameramill.co.uk/product/light-absorbing-flock-sheet/) | £7.99–£12.99 range; VAT and chosen variant price unconfirmed | Large option 210 × 293 mm; smaller-option dimensions conflict on page | Cool collector-side candidate only. Confirm thickness, adhesive, temperature limit and NIR light suppression; not released for lamp chamber |
| A1-018 / use existing stock or 1 spool | S17 [3DQF Shadow Black PETG, PETG-009](https://www.3dqf.co.uk/product-page/shadow-black-petg-1-75mm-uk-made-3d-printer-filament), 1 kg option | £17.99 sale price displayed; confirm option, VAT and stock | Filament 1.75 ±0.03 mm | Cool mechanical fit prototypes only; print mass/time uncosted. Not a lamp holder or assured NIR light barrier |
| A1-019 / 1 enclosure | S09 [Hammond 1591ESBK, RS 415-2846](https://uk.rs-online.com/web/p/general-purpose-enclosures/4152846) | £8.88 ex / £10.66 inc VAT; in stock | [Hammond drawing](https://www.hammfg.com/part/1591esbk): overall 191 × 110 × 61 mm. RS lists 57 mm height; use manufacturer overall envelope | Candidate alternative to printed 160 × 100 × 55 mm case. Check internal space, mounting plates, cable bend radius and machining first; modified case has no assumed IP rating |
| A1-020 / custom fixtures | Printed/metal opaque shutter and repeatable open-path reference arrangement | Fabrication unquoted | Retain the same optical geometry between reference and sample readings | No white reflectance tile is specified for transmission-only A-1. Develop and validate dark/reference protocol; fixtures not yet drawn |

## Information to obtain before ordering the held items

- **Torchbearer:** precise HYD1 model and range; fibre included? Confirm connector, core and NA; sensor/board dimensions and mounting holes; board supply voltage/current; RS485 pinout and HYD1-specific commands; delivered UK price and lead time.
- **Anglia:** resolve shop versus technical-page cable range; identify suitable full-range cable and both end connectors; quote VAT/delivery; supply collimator external drawing, focus travel, cable jacket OD and minimum bend radius. Do not order the £157 UV cable on price alone.
- **Sinolec:** confirm K507K VAT, body envelope and panel-thickness limits. **Pi Hut:** obtain insert OD/pilot recommendations and jack current/cutout drawing.
- **TYM:** quote a small 0.8 mm black silicone offcut or two cut rings. **Milly's:** confirm selected sheet price, thickness and temperature suitability.

## R2 design changes triggered by sourcing

| Area | Required change / evidence |
|---|---|
| Source cartridge | Design around G4 9 × 33 mm capsule and actual filament position; metal/ceramic holder support, thermal isolation, heat rejection and protection. Do not energise a capsule in the unmodified printed R1 cartridge |
| Diffuser seat | Replace provisional 18 × 1.5 mm seat with selected 12.5 × 1.6 mm component and suitable retaining clearance; verify aperture and illumination |
| Collector | Replace assumed 12.7 mm body with supplier collimator drawing; allocate focus travel and fibre bend radius |
| Jaw assembly | Confirm insert OD, pin retention, magnet retention, gasket compression and leaf force using fit coupons |
| Electronics case | Evaluate Hammond STEP/drawing against actual HYD1 boards, regulator, connector depth and service access; keep hot lamp source separate |
| Electrical assembly | Document lamp and sensor rails separately, grounding, RS485 pinout, fuse, thermal cutoff and strain relief; verify startup and stable reference spectra |

## Cost-control decisions

Use existing filament and generic hardware where verified; request a silicone offcut instead of the large sheet; avoid buying a fibre already included in HYD1; defer battery, display, embedded controller, reflectance optics and cuvette hardware. Do not trade away the unresolved optical range or thermal design to meet an arbitrary prototype price.
