#!/usr/bin/env bash

# Terminate Polybar Sessions
killall -q polybar

# Wait until Processes have shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch Polybar
polybar top &

echo "Polybars Launched"
