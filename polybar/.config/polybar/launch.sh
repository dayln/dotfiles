#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

polybar --reload main -c ~/.config/polybar/main-config.ini &
polybar --reload side -c ~/.config/polybar/side-config.ini &

# polybar --reload example 2>>/tmp/poly.log &

echo "Bars launched..."
