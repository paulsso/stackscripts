#!/bin/sh
# Compositor
picom -f &

#Add Wallpaper
nitrogen --restore &

#Start blocks
exec /usr/local/bin/dwmblocks &

#Execute DWM
exec /usr/local/bin/dwm
