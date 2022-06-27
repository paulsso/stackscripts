#!/bin/sh
# Compositor
picom -f &

#Add Wallpaper
nitrogen --restore &

#Execute DWM
exec dwm
