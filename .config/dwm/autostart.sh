#!/bin/sh
sh ~/.config/dwm/sbar &
nitrogen --restore &
picom --config ~/.config/dwm/picom.conf --experimental-backends &
sxhkd -c ~/.config/dwm/sxhkdrc &
lxsession &
mpDris2 &
