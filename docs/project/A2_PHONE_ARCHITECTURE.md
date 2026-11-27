# A-2 phone interface and system architecture

Status: proposed architecture; user has approved using a phone as the display. Updated 27 November 2026.

## User decision

Use a phone for the display and operator interface. Bluetooth or Wi-Fi are acceptable. A dedicated instrument screen is not required.

## Proposed first implementation

- An ESP32-family controller operates a local Wi-Fi access point and serves a mobile-friendly web interface; the phone connects directly without farm internet. BLE remains an option, not a committed simultaneous feature.
- The web interface guides the operator through reference, sample identification, scan and save. Test on the actual farm phones; switching Wi-Fi networks and loss of cellular access on some phones are usability risks.
- Controller communicates with the HYD1 over the supplier-confirmed interface. The quoted kit includes a development board and TTL-to-RS485 module; the sensor pinout, voltage, protocol and whether that adapter is required remain unconfirmed. Do not connect an ESP32 UART directly to RS485.
- Store readings locally on the instrument, with confirmed capacity and reliable download or later sync; the phone may also save a copy. Include sample, section, time, mode, raw spectrum, dark/reference, integration time and instrument configuration. Confirm timestamps if no real-time clock or network.
- Integrate controlled light, transmission and reflectance optics, safe lamp power and thermal protection. Details and optical configuration remain to be designed and validated.
- Rechargeable portable power is the target; battery chemistry, capacity, protection, charging, runtime and source power are not yet selected.
- Separate access point credentials and an authenticated control interface are required; test reconnection and recovery after interruption.

## Data and reference considerations

Transmission and reflectance have different measurement geometry and reference requirements. Store each measurement with its mode, dark and appropriate reference, lamp state and acquisition settings. A reflectance standard and its usable spectral range must be selected. Do not claim absolute reflectance or nutrient results until validated.

## Next steps

1. Confirm HYD1 module dimensions, communication protocol, supply voltage, current and kit/fibre details with supplier.
2. Choose actual controller module after checking memory, storage, serial and power requirements; assess the existing Heltec board if its exact model is suitable.
3. Prototype phone connection and file export on farm phones without internet, including offline recovery.
4. Measure lamp and sensor power, warm-up, heat, signal stability and battery runtime.
5. Design the optical heads and measure repeatability, ambient light leakage and reference stability before finalising enclosure and PCB.
6. Pair leaf spectra with laboratory results and independently validate models before making nutrient predictions.
