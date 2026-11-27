# A-2 phone interface and system architecture

Status: proposed architecture; user has approved using a phone as the display. Updated 27 November 2026.

## User decision

Use a phone for the display and operator interface. Bluetooth is the selected connection. A dedicated instrument screen is not required.

## Proposed first implementation

- An ESP32-family controller with Bluetooth Low Energy (BLE) is the proposed first implementation. A compatible phone app connects directly without farm internet. Confirm the specific controller supports BLE and the target phones support the app.
- The phone app guides the operator through reference, sample identification, scan and save. Test discovery, pairing, reconnection and transfer on actual farm phones. An app is proposed because browser BLE support varies; the app technology and target Android/iOS versions remain to be chosen.
- Controller communicates with the HYD1 over the supplier-confirmed interface. The quoted kit includes a development board and TTL-to-RS485 module; the sensor pinout, voltage, protocol and whether that adapter is required remain unconfirmed. Do not connect an ESP32 UART directly to RS485.
- Store readings locally on the instrument, with confirmed capacity and reliable download or later sync; the phone may also save a copy. Include sample, section, time, mode, raw spectrum, dark/reference, integration time and instrument configuration. Confirm timestamps if no real-time clock or network.
- Integrate controlled light, transmission and reflectance optics, safe lamp power and thermal protection. Details and optical configuration remain to be designed and validated.
- Rechargeable portable power is the target; battery chemistry, capacity, protection, charging, runtime and source power are not yet selected.
- Design authenticated pairing and bonding, a device-ownership policy and recovery/re-pair procedure, suited to a device without a screen or keyboard. Define chunked transfer with ordering, integrity checks and resume or restart handling; test disconnect and recovery.

## Data and reference considerations

Transmission and reflectance have different measurement geometry and reference requirements. Store each measurement with its mode, dark and appropriate reference, lamp state and acquisition settings. A reflectance standard and its usable spectral range must be selected. Do not claim absolute reflectance or nutrient results until validated.

## Next steps

1. Confirm HYD1 module dimensions, communication protocol, supply voltage, current and kit/fibre details with supplier.
2. Choose actual controller module after checking memory, storage, serial and power requirements; assess the existing Heltec board if its exact model is suitable.
3. Prototype BLE pairing, transfer and file export on farm phones without internet, including offline recovery and reconnect.
4. Measure lamp and sensor power, warm-up, heat, signal stability and battery runtime.
5. Design the optical heads and measure repeatability, ambient light leakage and reference stability before finalising enclosure and PCB.
6. Pair leaf spectra with laboratory results and independently validate models before making nutrient predictions.
