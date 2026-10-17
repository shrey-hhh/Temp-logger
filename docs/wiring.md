# Wiring notes

For a common three-pin DHT11 breakout module:

| DHT11 module pin | Arduino Uno |
| --- | --- |
| VCC / + | 5V |
| GND / - | GND |
| DATA / S | Digital pin 2 |

The sketch uses `#define DHTPIN 2`.

**Important:** DHT11 sensors are also sold as bare four-pin components. Pin order depends on the package and viewing orientation. For a bare sensor, consult its exact datasheet to identify VCC, DATA, NC, and GND, and verify whether a pull-up resistor is needed. Do not assume the breakout-module pinout applies to a bare sensor.

The Arduino connects to the computer by USB. The sketch and PowerShell script both use 9600 baud. Set the script's `$portName` to the port assigned by Windows. Close Arduino Serial Monitor before running PowerShell because only one application can normally use the serial port at a time.
