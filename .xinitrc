# DWM Status
dwmstatus 2>&1 >/dev/null &

# Keyboard Layout
# setxkbmap -layout us,se -option grp:alt_caps_toggle &

# Compositor
picom -f &

#Add Wallpaper
nitrogen --restore &

#Execute DWM
exec dwm
