#!/usr/bin/env bash
maim ~/Pictures/Screenshots/Captures/scrnshot_$(date +%m)_$(date +%d)_$(date +%y)_$(date +%s).png
sleep 0.5
notify-send 'Screenshot Taken!' "Screenshot successfully saved as: scrnshot_$(date +%m)_$(date +%d)_$(date +%y)_$(date +%s).png" -u normal -a maim
