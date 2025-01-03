#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

(sleep 2; polybar --config=$HOME/.config/polybar/config.ini mybar) &
#(sleep 2; polybar tray) &
