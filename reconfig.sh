#!/bin/sh

cd ~/.suckless/dwm
sudo make clean install

cd ~/.suckless/st
sudo make clean install

cd ~/.suckless/dmenu
sudo make clean install

sudo systemctl restart display-manager
