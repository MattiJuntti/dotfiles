#!/bin/bash

STAT=$( acpi | sed 's/.*: \(.*\), .*/\1/' )
BATT=$( acpi | sed 's/.*, \(.*\).*/\1/' )

if [ "$STAT" == "Charging" ]; then
    echo "⚡$BATT"
elif [ "$STAT" == "Not charging" ]; then
    echo "✓ $BATT"
else # The system is discharging.
    echo "♥ $BATT"
fi
