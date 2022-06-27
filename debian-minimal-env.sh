sudo apt -y install firmware-linux firmware-linux-nonfree

sudo apt -y install sddm
sudo apt -y install make python python3 python3-pip

git clone https://gitlab.com/dwt1/multicolor-sddm-theme.git ../dt-multicolor-sddm-theme
git clone git clone https://git.suckless.org/dwm ../dwm
git clone git clone https://git.suckless.org/st ../st

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
    
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
    
sudo apt update && sudo apt -y install codium
