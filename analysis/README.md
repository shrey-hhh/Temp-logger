# Data analysis

The repository includes a standard-library Python script that parses the text log into a CSV and produces a descriptive summary. No real measurement dataset is committed.

## Run the analysis

Install Python 3.10 or newer, then run from the repository root:

```powershell
python analysis/analyze_log.py "$HOME\Desktop\room_temp_log.txt"
```

By default, the script creates `temperature_readings.csv` and `temperature_summary.txt` in the current directory. Both are excluded from version control by `.gitignore`. You can choose different output paths:

```powershell
python analysis/analyze_log.py "$HOME\Desktop\room_temp_log.txt" --csv "analysis/output/readings.csv" --report "analysis/output/summary.txt"
```

The parser skips session-start marker lines, reads timestamped Fahrenheit values, reports unparsed non-header lines, and calculates descriptive statistics and intervals between consecutive readings. It sorts parsed readings by timestamp before analysis.

## Workflow and interpretation

1. Keep raw logs local; they may reveal personal routines.
2. Check unparsed lines and interval gaps before interpreting summary statistics.
3. Plot the generated CSV separately if a visual trend is useful.
4. For comparisons between nights, define consistent time windows and report missing data.
5. Describe findings as observations from this sensor and placement. The data cannot establish the cause of a person's symptoms.

The script has not been run against the user's actual log because no log file has been provided. Do not treat example values as experimental results.
