# Measurement and interpretation limitations

## Sensor limitations

- The DHT11 has limited resolution and accuracy compared with higher-grade environmental instruments. Consult the datasheet for the exact sensor or module.
- Sensor placement matters. Sunlight, vents, windows, nearby electronics, and airflow can affect readings.
- The current sketch records temperature only. It does not read relative humidity, although the DHT11 supports it.
- Invalid readings are silently skipped, so gaps can occur in the log.

## Time and sampling

- The Arduino waits five seconds per loop; the real interval can be slightly longer due to sensor reads and program execution.
- PowerShell timestamps each line when it receives it. These are computer-side receipt times, not exact sensor-acquisition timestamps.
- Timestamps have one-second precision. The computer clock and local time settings affect them.

## Interpretation

The log can describe room-temperature conditions during the recorded period. It cannot identify the cause of a person's symptoms or establish causation. Any relationship between environmental readings and subjective observations should be treated as exploratory, not proof of cause.

## Suggested validation

1. Run a short test and confirm readings arrive at approximately the expected interval.
2. Compare readings with a trusted thermometer under stable conditions and record any differences.
3. Keep sensor placement consistent.
4. Check for missing intervals, repeated values, and logger start/stop times.
5. Analyze actual log files only; never present illustrative values as real measurements.
