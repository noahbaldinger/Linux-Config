#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar top1 -c ~/.config/polybar/config.ini &
polybar top2 -c ~/.config/polybar/config.ini &
polybar top3 -c ~/.config/polybar/config.ini &
