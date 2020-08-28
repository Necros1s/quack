#!/bin/bash

# Terminate already running bar instances
pkill polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -c $HOME/.config/polybar/brains/config bar1 &
polybar -c $HOME/.config/polybar/brains/config bar2 &
polybar -c $HOME/.config/polybar/brains/config bar3 &

echo "Launching all the polybar modules..."
