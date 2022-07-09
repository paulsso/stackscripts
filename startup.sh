#!/bin/sh
picom -f &
nitrogen --restore &
exec /usr/local/bin/dwmblocks &
exec /usr/local/bin/dwm 

<<<<<<< HEAD
=======
#Start blocks
exec /usr/local/bin/dwmblocks &

#Execute DWM
exec /usr/local/bin/dwm
>>>>>>> 2b5e520b5e276f650549cb2aa0475bd28aaee2d0
