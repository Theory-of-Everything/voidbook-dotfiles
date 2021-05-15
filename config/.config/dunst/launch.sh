#!/usr/bin/env bash

# Terminate Dunst Sessions
killall -q dunst

# Wait until Processes have shut down
while pgrep -u $UID -x dunst >/dev/null; do sleep 1; done
# Launch Dunst
dunst &

echo "Notifications Launched"
