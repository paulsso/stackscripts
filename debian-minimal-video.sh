sudo apt update && sudo apt upgrade -y

sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
sudo cp $HOME/git/stackscripts/debian-source.list /etc/apt/sources.list

sudo apt update && sudo apt upgrade -y

sudo apt install xorg xserver-xorg nvidia-detect xutils mesa-utils xinit 

sudo apt install nvidia-driver
