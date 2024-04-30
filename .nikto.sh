#!/bin/bash

# Define variables
SHAREPOINT_URL="https://liuonline-my.sharepoint.com"
LOG_FILE="/var/log/nikto/sharepoint_scan.log"
ALERT_FILE="/var/log/nikto/alerts.log"

# Ensure the log directory exists
mkdir -p /var/log/nikto

# Run Nikto scan
nikto -h $SHAREPOINT_URL -output $LOG_FILE

# Check the log for specific vulnerabilities or errors
# This is a very basic example of checking for a common vulnerability signature
# TODO: put other known stuff in there explicitly.
if grep -q "MS09-001" $LOG_FILE; then
    echo "Vulnerability MS09-001 detected on $SHAREPOINT_URL" >> $ALERT_FILE
    # Trigger an alert or modify an ACL here
    # For example, you might send an email, log an alert, or call another script
    echo "Alert triggered for MS09-001, see $ALERT_FILE for details."
fi

echo "Nikto scan completed and logged to $LOG_FILE"
