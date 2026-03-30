#!/bin/bash
# Script 4: Log Analyzer Script
# Reads a log file and counts error/warning messages

LOG_FILE="logs/sample.log"

echo "========================================"
echo "          LOG ANALYSIS REPORT           "
echo "========================================"
echo "Analyzing: $LOG_FILE"
echo ""

if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file not found at $LOG_FILE"
    exit 1
fi

TOTAL=$(wc -l < "$LOG_FILE")
ERRORS=$(grep -ic "error" "$LOG_FILE")
WARNINGS=$(grep -ic "warning" "$LOG_FILE")
FAILURES=$(grep -ic "failed" "$LOG_FILE")

echo "Total log entries   : $TOTAL"
echo "Error messages      : $ERRORS"
echo "Warning messages    : $WARNINGS"
echo "Failed events       : $FAILURES"

echo ""
echo "--- Error Lines Found ---"
grep -i "error" "$LOG_FILE"

echo ""
echo "Analysis complete."
