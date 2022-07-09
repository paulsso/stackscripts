#!/bin/sh
picom -f &
nitrogen --restore &
exec /usr/local/bin/dwmblocks &
exec /usr/local/bin/dwm 

