#!/usr/bin/env bash
maim -s ~/Pictures/Screenshots/Clips/scrnclip_$(date +%m)_$(date +%d)_$(date +%y)_$(date +%s).png
sleep 0.5
notify-send 'Screenclip Taken!' "Screenclip successfully saved as: scrnclip_$(date +%m)_$(date +%d)_$(date +%y)_$(date +%s).png" -u normal -a maim
