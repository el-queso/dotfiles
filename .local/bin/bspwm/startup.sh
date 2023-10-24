#!/usr/bin/env sh

# main applications
# pgerp -x easyeffects   2> /dev/null || easyeffects  --gapplication-service &
# pgerp -x redshift      2> /dev/null || redshift     -P -O 4500 & 
pgerp -x polybar       2> /dev/null || for m in $(polybar --list-monitors | cut -d":" -f1); do MONITOR=$m polybar -q -r -c "$HOME/.config/polybar/main.ini" main & done
pgerp -x dunst         2> /dev/null || dunst        &
pgerp -x sxhkd         2> /dev/null || sxhkd        &
pgrep -x greenclip     2> /dev/null || greenclip daemon &
pgrep -x picom         2> /dev/null || picom --experimental-backends &
pgrep bspswallow                    || bspswallow &

xrandr                --output DP-2 --primary --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-4 --mode 1920x1080 --pos 0x0 --rotate normal
feh                   --bg-fill ~/pictures/wallpapers/wallhaven-rrpp6m.png
# brightnessctl         -q s 4
# redshift              -P -O 4500 &
betterlockscreen      -q -u  ~/pictures/wallpapers/pixeart_castle.jpg
# xsetroot              -cursor_name left_ptr &

# start autolock session script
# $HOME/.local/bin/scripts/autolock &

# start battery notification scripts
# $HOME/.local/bin/notifications/battery_status &
# $HOME/.local/bin/notifications/charging_notify &
