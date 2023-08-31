#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
#polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

# Launch
sleep 1
polybar datetime 2>&1 | tee -a /tmp/polybar1.log & disown
polybar networks 2>&1 | tee -a /tmp/polybar1.log & disown
polybar power 2>&1 | tee -a /tmp/polybar1.log & disown
polybar workspaces 2>&1 | tee -a /tmp/polybar1.log & disown
polybar cava 2>&1 | tee -a /tmp/polybar1.log & disown
polybar sound 2>&1 | tee -a /tmp/polybar1.log & disown
polybar music 2>&1 | tee -a /tmp/polybar1.log & disown