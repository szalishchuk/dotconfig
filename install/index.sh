#/bin/bash

# Install AUR helper
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Create .config folder in $HOME directory and populate it with sviatco/dotconfig settings
cd $HOME;
mkdir .config && $1;
git clone https://github.com/sviatco/dotconfig

# Create a public rsa key
ssh-keygen

# Configure the sound
exec $HOME/.config/install/sound.sh

# Configure emacs
exec $HOME/.config/install/emacs.sh
