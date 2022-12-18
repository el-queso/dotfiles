#!/bin/bash

# Ensure sub processes exit when we do
#trap 'kill $(jobs -p)' EXIT

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Ensure all hideIt instances stop
#ps -elf | grep "hideIt.sh" | grep -v "grep" | awk '{ print $4 }' | while read pid; do
#	kill $pid
#done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload example 2>~/.config/polybar/polybar.log &
  done
else
  polybar --reload example 2>~/.config/polybar/polybar.log &
fi

# Launch Polybar, using default config location ~/.config/polybar/config
# polybar bottom 2>~/.config/polybar/polybar.log &

# Ensure polybar is hidden after a key-combo
#$HOME/.dotfiles/scripts/i3subscribe binding | while read -r event; do
# 	$HOME/.dotfiles/scripts/hideIt.sh/hideIt.sh -N '^polybar-bottom_.*$' --hide 2>/dev/null >/dev/null
#done &

# Start hideIt.sh to manage polybar visibility
#$HOME/.dotfiles/scripts/hideIt.sh/hideIt.sh -N '^polybar-bottom_.*$' -S -d bottom -w
#!/usr/bin/env sh
