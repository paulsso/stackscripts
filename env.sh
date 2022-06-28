#!/bin/bash
sudo apt -y install firmware-linux firmware-linux-nonfree

sudo apt -y install sddm picom nitrogen vifm firefox-esr
sudo apt -y install python python3 python3-pip
sudo apt -y install build-essential libx11-dev libxft-dev libxinerama-dev libfreetype6-dev libfontconfig1-dev

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
    
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
    
sudo apt update && sudo apt -y install codium
sudo apt -y install vim 

mkdir $HOME/.suckless
cd $HOME/.suckless

git clone https://github.com/paulsso/fractal-dwm
git clone https://github.com/paulsso/fractal-st
git clone https://github.com/paulsso/fractal-dmenu

cd $HOME/.suckless/dwm
make
sudo make clean install

cd $HOME/.suckless/st
make
sudo make clean install

cd $HOME/.suckless/dmenu
make
sudo make clean install
cd 

sudo mkdir /usr/share/xsessions
sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop

sudo mkdir /usr/local/scripts
sudo cp startup.sh /usr/local/scripts
