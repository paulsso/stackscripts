#!/bin/sh
picom -f &
nitrogen --restore &
exec /usr/local/bin/dwmblocks &
exec /usr/local/bin/dwm 

#Start blocks
exec /usr/local/bin/dwmblocks &

#Execute DWM
exec /usr/local/bin/dwm
