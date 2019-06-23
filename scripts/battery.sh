#!/bin/bash

stat=$( acpi | awk '{print $3}' | cut -c -8 )
batt=$( acpi | awk '{print $4}' | cut -c -3 )

if [ $stat == "Charging" ]; then
        echo "⌁ $batt"

elif [ $stat == "Full," ]; then
        echo "✔ $batt"

else
        echo "♥ $batt"
fi
