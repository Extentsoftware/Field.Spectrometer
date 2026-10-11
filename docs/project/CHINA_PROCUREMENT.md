# A-1 China supplier review

Revision 1 — 11 October 2026. Companion to the [UK shortlist](UK_PROCUREMENT.md) and [BOM](BOM.md). Prices below are USD unless explicitly stated. No orders, supplier messages or quotation requests have been sent. Public listings and indexed supplier pages were reviewed; some Alibaba/AliExpress pages did not expose selected variants or checkout prices. Those are leads, not verified purchase options. Shipping, UK VAT/import charges and onward delivery to Zimbabwe are unquoted. Country of supplier is not proof of dispatch warehouse.

## Recommended sourcing approach

For one A-1, the most useful China candidates are CivilLaser's documented collimator, Waveshare's own USB interface, and DFRobot's regulator and fasteners. Goptica is a technically relevant fibre quotation lead. Ask Torchbearer whether it can supply the compatible fibre and collimator with the existing HYD1 order before paying separate freight.

Keep the UK lamp, ceramic holder, diffuser and mains adapter as fallbacks. Several low Alibaba prices carry quantities of 100–200 units, or lack the dimensions needed for the clamp. China is not automatically cheaper for one delivered prototype. No total-build saving can yet be substantiated.

Status meanings: **Candidate** = useful supplier specification and public price, subject to compatibility/checkout; **RFQ** = written price, selected variant or drawing required; **Hold** = unresolved mismatch or unsuitable order quantity; **Custom** = completed design needed before pricing. None means the whole instrument is released for construction.

## Optical components and lamp

| BOM / build quantity | Supplier and exact link | Public price / minimum purchase | Published dimensions or specification | Decision and missing evidence |
|---|---|---|---|---|
| A1-001 / 1 kit | S01 [Torchbearer](https://torchbearer.tech), HYD1 fibre kit | $359 from user's September correspondence, not a fresh web quotation | Development board + TTL–RS485 quoted; model, power and drawings pending | RFQ: reconfirm kit, cable inclusion, connector/core/NA, board drawings and UK delivered quote |
| A1-002 / 1 | C01 [Shanghai Goptica V600-S/S-L2](https://www.goptica.com/WebShop_en/ProductList.aspx?pid=8), accessories table | RFQ; no public price or MOQ verified | Single fibre, 600 µm core, 2 m, SMA905–SMA905, 200–1100 nm | Preferred China technical lead. Ask NA, jacket OD, minimum bend radius and HYD1 acceptance. Do not select I600: its stated lower limit is 360 nm |
| A1-002 alternative | C02 [Wirenet Alibaba patchcord](https://www.alibaba.com/product-detail/High-Power-200-300-400-600_1601159509463.html), ID 1601159509463 | $110–580 range; page says MOQ 1,000 metres despite single-item/shorter lead-time fields | Offers 600 µm and SMA905; generic fibre table does not establish exact ordered assembly | HOLD: contradictory order units; not a price for one 1–2 m cable. Request sample assembly quote, full-range transmission and NA |
| A1-003 / 1 | C03 [CivilLaser / NaKu, product 1012, supplier model 74-UV](https://www.civillaser.com/index.php?main_page=product_info&products_id=1012) | $84, single-unit cart listing; freight/tax/stock date unconfirmed | SMA905; quartz lens 5 mm diameter, 10 mm focal length; 200–2500 nm. Body and drawing details below | CANDIDATE: strongest collimator evidence found. Supplier's use of 74-UV is not proof of Ocean Optics manufacture. Confirm drawing revision and focus travel before mount release |
| A1-003 alternative | C04 [Guangzhou Jingyi Alibaba collimator](https://www.alibaba.com/product-detail/SMA905-Fiber-Interface-Collimator-Collimator-Lens_1601392156371.html), ID 1601392156371 | Price/MOQ not verified | Indexed SMA905 focusing/collimating product; complete dimensional data not retrieved | RFQ backup only; less complete evidence than CivilLaser |
| A1-004B / 1 + optional spare | C05 [Shenzhen Pute 6 V 10 W G4](https://www.alibaba.com/product-detail/Flashlight-Lamp-Bead-6V-10W-Microscope_1600335063446.html), ID 1600335063446 | $0.39 each, MOQ 200: **$78 goods minimum**, not $0.39 for a prototype | Supplier describes 6 V, 10 W, G4, horizontal filament; actual bulb dimensions missing. Package size is not bulb size | HOLD bulk order; ask for two samples, envelope and filament location. UK £7.57 single lamp remains simpler absent sample quote |
| A1-004A / alternative only | MR8 6 V 10 W reflector version | No sufficiently documented China purchase selected | Exact voltage/power, reflector spectral response and holder geometry needed | Not an additional lamp to buy. Continue with capsule candidate rather than substitute a 12 V MR8 or LED |
| A1-005 / 1 | C06 [Yueqing Lapu G4-50CM ceramic holder](https://lapulighting.en.made-in-china.com/product/cJrpnlxYxgUE/China-Ceramic-G4-Socket-Base-50cm-Cable-Wire-G4-Lamp-Holder.html) | $0.286 each, MOQ 100: **$28.60 goods minimum** | Lists 18 × 24 mm, but fields mix G4/G9 and 20/50 cm leads | HOLD: obtain G4 drawing, current/temperature ratings, hole centres and sample price. Do not transfer Sinolec's ratings to this holder |
| A1-006 / 1 | C07 [Nanjing Co-Energy fused-silica diffuser](https://jerryychan.en.made-in-china.com/product/cvPmFZguZphL/China-UV-Fused-Silica-Ground-Glass-Diffusers.html) | RFQ; listing explicitly says no longer promoted | Custom UV fused-silica, 220-grit diffusion; no fixed stocked part | Dormant quotation lead only. Request 12.5 mm diameter × 1.6 mm, full 340–1050 nm suitability, tolerances and MOQ 1/5/10. UK Edmund 63-224 remains the documented stocked fallback |

### CivilLaser drawing and CAD implications

The [supplier dimensional drawing](https://www.civillaser.com/images/wenyi%2074-uv%20fiber%20collimator%20%283%29.jpg) was visually inspected. It labels a 12.00 mm hex across flats, a 9.5 mm diameter section, M3 locking screw, 1/4-36-2A SMA905 thread and 3/8-24 UNF external thread. It also provides 19.00, 7.80, 6.90 and 17.10 mm axial dimensions between particular features; **19 mm is not the overall assembly length**. Retain adjustment/access clearance and request minimum/maximum overall length at focus limits. The product page's “±5 mm” adjustment wording is ambiguous; the listed lens focal length is 10 mm.

R1's assumed 12.7 mm circular collimator seat is not a demonstrated fit for this hex body. A new retaining insert or threaded mount is needed. Supplier drawing is linked, not redistributed as project-owned CAD.

## Electronics and wiring

| BOM / quantity | Supplier / selection | Public price and quantity | Dimensions/specification | Decision |
|---|---|---|---|---|
| A1-009 / 1 | C08 [DFRobot DFR0946 buck–boost module](https://www.dfrobot.com/product-2539.html) | $8.90 each; single-unit listing | 70 × 39 × 32 mm; 6–35 V input, adjustable 1–33 V output; 5 A maximum, with derating advised | CANDIDATE for bench comparison, set and verify 6.00 V before lamp connection. Much larger than Pololu. Test startup, ripple, drift and temperature; not a drop-in replacement |
| A1-010 / 1 control arrangement | Regulator-dependent lamp switching | Not yet priced for China regulator option | DFR0946 listing does not document the Pololu EN interface | HOLD control design: the UK plan's EN wiring cannot be assumed to work here. Use a correctly rated supply disconnect for bench tests; select permanent switching after load testing |
| A1-011 / 1 + UK mains lead | [Alibaba Mean Well GST60A12-P1J listing](https://www.alibaba.com/product-detail/Meanwell-Gst60a12-P1j-60w-Ac-Dc_1601853464246.html), ID 1601853464246 | Price, MOQ and seller authorisation not verified | Named model matches UK shortlist. [Manufacturer specification](https://www.meanwell.com/Upload/PDF/GST60A/GST60A-SPEC.PDF): 12 V/5 A, 125 × 50 × 31.5 mm | RFQ only. Prefer known UK £23 source for A-1 unless genuine exact-model delivered quote improves it. C13 UK lead separate; no generic open-frame mains substitution |
| A1-012 / 0–1 | C09 [Waveshare USB TO RS485/422, SKU 23949](https://www.waveshare.com/usb-to-rs485-422.htm) | $17.99 single; $17.39 at 2, $17.09 at 3, $16.97 at 4+ in manufacturer's indexed listing | Isolated USB–RS485/422; same SKU as UK shortlist's 81.9 × 54 × 32 mm unit | CANDIDATE: manufacturer-direct lead. Live page returned 403, so recheck stock, price and shipping; confirm kit does not already include computer interface and check HYD1 pinout/protocol |
| A1-016 / wire, 1 m red + 1 m black | [Alibaba silicone wire](https://www.alibaba.com/product-detail/1-meter-Red-Black-Silicone-Wire_62230270309.html), ID 62230270309 | Price/MOQ not verified | Indexed listing covers 6–18 AWG, 1 m lengths; select **18 AWG**, both colours | RFQ: selected variant price, conductor, insulation OD and temperature rating needed. Not all gauges have the same price |
| A1-016 / 1 connector pair | [Alibaba Aodetong GX12-3](https://www.alibaba.com/product-detail/GX12-3-aviation-plug-socket-12mm_62582803639.html), ID 62582803639 | Price/MOQ not verified | Indexed 3-pin, 12 mm type, threaded coupling | RFQ: male chassis plus mating female plug, actual cutout, body envelope and DC current rating. Do not import the UK connector's rating |
| A1-016 / other accessories | DC jack, heat shrink, terminals and strain relief | No verified China basket yet | Jack mates with 5.5/2.1 mm PSU plug; cable restraint depends on actual jacket and connectors | Retain UK leads until exact current ratings and cutout drawings available. Do not size a gland only to fibre core diameter |
| A1-021 / 1 set | HYD1 power rail, branch protection and thermal cutoff | Design-dependent, unquoted | Sensor supply, lamp inrush and temperatures not yet established | No ratings or parts selected by guesswork. This remains necessary with either sourcing route |

DFRobot's 5 A rating is a maximum, not evidence of stable 5 A continuous performance in our enclosure. Its input/output ranges include 12 V to 6 V operation, but spectroscopy performance still requires measurement. Do not reuse the small Pololu mount or its enable wiring unchanged.

## Mechanics, fabrication and consumables

| BOM / build quantity | Source / selection | Price / buy quantity | Dimensions and order checks | Decision |
|---|---|---|---|---|
| A1-007 / two rings | [Alibaba 0.1–0.8 mm silicone sheet](https://www.alibaba.com/product-detail/0-1mm-0-2mm-0-3mm_1601597084541.html), ID 1601597084541 | RFQ; no selected price/MOQ retrieved | Listing includes 0.8 mm, 65 Shore A and black option; exact combination must be confirmed | Ask for black 0.8 mm offcut or cut 22 OD / 12 ID rings. 65 Shore differs from UK 60 Shore: compression/leaf-force test required |
| A1-008 / 1 assembly | C10 [JLCCNC sheet metal / machining](https://jlccnc.com), linked from JLC's official manufacturing site | Custom quote after R2 drawing; no quote submitted | Metal bracket/heat shield can be fabricated to drawing | CUSTOM: complete holder support, ceramic isolation and thermal design first. Raw metal alone is not an engineered heat barrier |
| A1-013 / 1 cut pin | C11 [Harfington a24112000ux1575, p-1592289](https://www.harfington.com/products/p-1592289) | $8.07 per **pack of four**; page says in stock | 304 stainless rods, 3 mm diameter × 420 mm; cut to reviewed length (R1 body about 61 mm) | CANDIDATE but UK £1.66 single rod likely simpler. Supplier's broad 1–5 mm measurement caveat is not a usable diameter tolerance: confirm diameter/straightness, then measure fit |
| A1-014 / 4 magnets | [Alibaba 6 × 3 mm disc magnet](https://www.alibaba.com/product-detail/6-X-3-mm-N52-Strong_1601030584081.html), ID 1601030584081 | RFQ; no exact selected N42 price | N52 title; supplier permits customised magnetisation including axial | HOLD: request **N42, axial, 6 × 3 mm**, Ni-Cu-Ni coating, dimensional tolerance and temperature rating. N52 is not automatically equivalent in clamp force |
| A1-015 / M3 inserts | C11 [Harfington a19030600ux0341, p-1169378](https://www.harfington.com/products/p-1169378) | $5.45 / **30-piece pack** in older cached supplier page; reconfirm current price | M3 × 0.5 thread, 4 mm long, nominal OD 4 mm; stated OD tolerance +0.5/−0 mm | CANDIDATE fit-test stock. OD can reach 4.5 mm, so do not design a 4 mm final pocket from title alone. Installation coupon required |
| A1-015 / screw assortment | C08 [DFRobot FIT0224](https://www.dfrobot.com/product-699.html) | $11.95 / kit; page says 15 left | M3 × 6/8/10/12 mm, 20 each; nuts/washers included | Same named kit as UK £11.50 option. Compare delivered basket, not currency figures alone; still determine final counts and screw lengths |
| A1-017 / small lining allowance | No China optical flock selected | Unquoted | Searches found general packaging flock without demonstrated optical or thermal suitability | Unresolved. Keep UK cool-side optical-lining candidate; decorative velvet is not verified NIR suppression. Do not line hot lamp chamber with unqualified adhesive flock |
| A1-018 / jaws and cartridges | C10 [JLC3DP](https://jlc3dp.com/help/article/threaded-insert-service); alternatively existing printer and [eSUN PETG](https://www.esun3d.com/petg-product?language_url_market=en_US&language_url_store_code=en_US) | Custom print quote; eSUN direct-China selected spool price not verified | JLC offers printed parts and insert service with published hole rules; eSUN lists black 1.75 mm PETG | CUSTOM: R2 first. A printing-material substitution requires clearance/thermal review; no generic advertised print “from” price used for this assembly |
| A1-019 / 1 enclosure | C12 [Zhejiang Mingguan PB-NG-122007 grey ABS box](https://shpinji.en.made-in-china.com/product/OEPUdghAnvWq/China-200-120-75-mm-Outdoor-IP67-Metal-Screw-ABS-Small-Waterproof-Electric-Junction-Box.html) | **$4 sample price** displayed; confirm this exact model and single-piece acceptance; courier extra | Product table: 120 × 200 × 75 mm overall option | RFQ candidate: internal usable dimensions, mounting bosses, wall thickness and lid seal drawing needed. Larger than Hammond; cutouts require new layout. No inherited IP rating after machining |
| A1-020 / dark/reference fixtures | C10 JLC3DP/JLCCNC after design, or local fabrication | Custom quote | Opaque shutter and fixed open-path reference arrangement | No transmission reference tile purchase required. Include custom fixtures in fabrication drawings; optical repeatability remains to validate |

Harfington identifies a Guangzhou company and Hong Kong contact address on its [contact page](https://www.harfington.com/pages/contact-us). Dispatch origin for each SKU was not confirmed. Its [shipping page](https://www.harfington.com/pages/shipping-delivery) lists UK standard delivery of 6–14 days plus processing, with £3.99 below a £15 basket; checkout and tax treatment still control the actual landed cost.

JLC's insert service is an optional fabrication route, not the same as purchasing the Harfington inserts. Its [official rules](https://jlc3dp.com/help/article/threaded-insert-service) offer an M3 insert with 4 mm OD and 5 mm length, requiring a 3.6 mm hole, 7 mm depth, minimum 3 mm wall and 14 × 14 mm flat mounting area. That geometry is not automatically compatible with R1. Price requires the completed part and location drawing; files have not been uploaded for quotation.

## AliExpress leads retained for manual variant checks

These links were found, but the public retrieval did not establish a reliable selected price, seller identity, delivery to the UK and complete dimensional specification. They are **not approved alternatives** and no archive/comparison-site price has been used as a current quotation.

| Item | Exact listing | Required selection and checks |
|---|---|---|
| Fibre | [1005004854905754](https://www.aliexpress.com/item/1005004854905754.html) | Lead advertised as 600 µm / 0.22 NA / UV–VIS. Confirm two SMA905 connectors: “round-SMA” may be a different termination; confirm spectrum, length, jacket and bend radius. Primary page could not be opened |
| G4 lamp | [3256803808162935](https://www.aliexpress.us/item/3256803808162935.html) | Indexed five-bulb listing includes multiple powers. Choose 6 V **10 W**, halogen, not 20/35 W or LED. Obtain dimensions and filament position |
| M3 inserts | [3256808711257006](https://www.aliexpress.us/item/3256808711257006.html) | Multiple thread/length options. Confirm M3, 4 mm length, actual OD and pack quantity; Harfington offers clearer dimensional evidence |
| Silicone wire | [3256804130139309](https://www.aliexpress.us/item/3256804130139309.html) | Indexed range includes 18 AWG and 1 m; confirm copper conductor, red/black lengths, finished OD and selected price |

The `.us` URLs are discovered listing links, not evidence of a US warehouse or UK availability. Select the delivery country before treating any price or shipping promise as applicable.

## Comparison with the UK shortlist

| Item | UK evidence | China evidence | Assessment |
|---|---|---|---|
| Collimator | Anglia £91, VAT unclear, body drawing outstanding; Edmund £230.40 ex VAT | CivilLaser $84, body drawing available, delivered cost unknown | China candidate worth prioritising for supplier confirmation |
| Lamp regulator | Pololu £29.80 inc VAT; 17.8 × 20.3 × 9 mm | DFR0946 $8.90; 70 × 39 × 32 mm | Potential goods-price saving, with a larger housing and different control design |
| USB interface | Same Waveshare SKU £17.30 inc VAT but sold out; FTDI £34.63 inc VAT non-isolated alternative | Waveshare $17.99 before landed-cost confirmation | Manufacturer-direct candidate; not an established saving |
| Screw assortment | FIT0224 £11.50 inc VAT | FIT0224 $11.95 | Compare combined shipping; same kit |
| Lamp | £7.57 inc VAT for one | $0.39 × 200 = $78 minimum | Bulk price unsuitable unless two-sample quote obtained |
| Holder | £1.05 labelled ex VAT, VAT display inconsistent | $0.286 × 100 = $28.60 minimum, specification conflicts | Retain UK choice for one prototype unless sample and drawing improve offer |
| Enclosure | Hammond £10.66 inc VAT, 191 × 110 × 61 mm | Mingguan $4 sample, 200 × 120 × 75 mm | Different geometry and unknown freight; not a confirmed like-for-like saving |

The three priced bench candidates (CivilLaser collimator $84 + DFR0946 $8.90 + Waveshare $17.99) total **$110.89 in displayed goods prices only**. This excludes HYD1, fibre, all other BOM items, taxes, shipping and validation; it is not a prototype budget or a purchase-ready basket.

## Supplier follow-up checklist

1. Torchbearer: quote a complete compatible sensor + fibre package, and optional collimator, with dimensional drawings and exact spectral range.
2. CivilLaser: confirm product 1012 drawing revision, full adjusted envelope, focus travel, coating/transmission through our range, one-unit availability and delivered UK cost.
3. Goptica: quote one V600-S/S-L2 cable with NA, both connector drawings, bend radius, jacket OD and UK freight.
4. For Alibaba samples: specify **quantity 1 or 2**, exact variant, price per complete assembly, taxes/delivery basis, dispatch lead time and drawing. Reject a quotation whose minimum quantity changes the cost case.
5. Before accepting China substitutions: revise CAD for actual geometry, document switch/regulator differences, and check received parts against specifications. Supplier catalogue claims are not measurements of our assembled instrument.


## Small mechanical parts follow-up — 11 October 2026

R1 OpenSCAD was checked: it uses a pin hinge and four magnet pockets, **no spring or spring seat**. Its pockets are nominally 6.2 mm diameter × 3.2 mm deep for 6 × 3 mm magnets, with 3.2 mm hinge bores for the proposed 3 mm metal pin. These are CAD dimensions, not tested fits. Screw/insert counts and retention details are not a released assembly schedule.

| Part | Prototype purchase option | Price basis / action |
|---|---|---|
| M3 screws/nuts | [DFRobot FIT0294, M3 × 6 mm, 10 sets](https://www.dfrobot.com/product-839.html) | $0.80 per pack displayed. Useful small pack instead of full $11.95 FIT0224 assortment; final screw length depends on mount thickness and insert engagement |
| M3 inserts | Harfington p-1169378 above, M3 × 4 mm long, nominal 4 mm OD | 30-pack cached $5.45; OD tolerance reaches 4.5 mm. Measure and print a fit coupon |
| Magnets | [AliExpress 1005010437849856, indexed 40-piece N42 6 × 3 mm listing](https://aliexpress.ru/item/1005010437849856.html) | Price and UK availability not verified. Require axial magnetisation, coating, tolerance and grade confirmation. Regional page is a lead, not a UK checkout offer; need four, not forty |
| Hinge pin | Harfington 3 mm rod above | Cut to reviewed length and add defined retention. Generic rod's broad tolerance needs confirmation |
| Optional spring experiment | [Harfington p-1120338 compression springs](https://www.harfington.com/products/p-1120338) | $7.38 / 10 pack; OD 5 mm, wire 0.5 mm, free length 15 mm, rated 0.98 N/mm, listed 5.9 N at 9 mm compressed length. Published parameters make it a useful test lead, **not a selected clamp spring** |
| Washers / nuts / standoffs / pin retention | FIT0224 includes M3 nuts and washers; enclosure spacers and hinge retention remain to detail | Avoid buying spacers or circlips until board positions and pin-groove/retention design are fixed; a plain rod has no circlip groove |

A spring would require a design decision: opening assistance, closing force, or a compliant optical head. These are different functions and may need a torsion spring rather than the example compression spring. Select installed length/angle, travel, preload and force/torque before ordering. Do not add springs to the mandatory A-1 basket just because they are common in commercial leaf clips. Current preferred first mechanical trial remains the magnet-and-gasket R1 concept, with force and leaf-marking checks before adoption.
