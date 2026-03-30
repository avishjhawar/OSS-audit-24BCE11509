echo "===================================="
echo "        System Log Analyzer"
echo "===================================="
LOG_FILE="/var/log/syslog"
#Check if file exists
if [ ! -f "$LOG_FILE" ]; then
        echo "Log file not found!"
        exit 1
fi
echo "Analyzing logs from: $LOG_FILE"
echo "------------------------------"

#Count total lines
TOTAL_LINES=$(wc -l < "$LOG_FILE")
echo "Total log entries : $TOTAL_LINES"

#COUNT ERRORS 
ERROR_COUNT=$(grep -i "error" "$LOG_FILE" | wc -l)
echo "error entries : $ERROR_COUNT"

#count warnings
WARNING_COUNT=$(grep -i "warn" "$LOG_FILE" | wc -l)
echo "Warning entries : $WARNING_COUNT"

echo "----------------------------------"
echo "Recent errors (last 5):"
grep -i "error" "$LOG_FILE" | tail -5
echo "=================================="