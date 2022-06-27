#!/bin/bash
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
sudo cp $HOME/git/stackscripts/debian-sources.list /etc/apt/sources.list

sudo apt update && sudo apt upgrade -y

sudo apt -y install xorg xserver-xorg nvidia-detect xutils mesa-utils xinit 

sudo apt -y install nvidia-driver
