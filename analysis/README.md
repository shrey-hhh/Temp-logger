# Data analysis plan

No measured dataset is included here yet, so this document does not claim that a temperature pattern has been found.

## Workflow

1. Keep a copy of the raw log locally; do not publish personal logs by default.
2. Parse each timestamp and Fahrenheit reading from the text format documented in the root README.
3. Check parse failures, duplicate timestamps, missing intervals, and logging-session boundaries.
4. Plot temperature against time, marking gaps clearly.
5. After validating the parsed data, calculate descriptive statistics such as valid reading count, observation duration, minimum, maximum, and median.
6. For comparisons between nights, define consistent time windows and report missing data.
7. Describe findings as observations from this sensor and placement, not proof of a medical cause.

## Reproducibility

Record the analyzed date range, sensor placement, software version, parsing assumptions, and excluded intervals. Keep personal raw logs and charts that reveal sensitive routines out of the public repository.
