sudo apt -y install firmware-linux firmware-linux-nonfree

sudo apt -y install sddm
sudo apt -y install python python3 python3-pip
sudo apt -y install build-essential libx11-dev libxft-dev libxinerama-dev libfreetype6-dev libfontconfig1-dev

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
    
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
    
sudo apt update && sudo apt -y install codium

mkdir $HOME/.suckless
cd $HOME/.suckless

git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu

cd $HOME/.suckless/.suckless
cd dwm
make
sudo make clean install

cd $HOME/.suckless/st
make
sudo make clean install

cd $HOME/.suckless/dmenu
make
sudo make clean install
cd 
