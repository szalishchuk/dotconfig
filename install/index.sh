#/bin/bash

# This executable contains system agnostic configuration settings
# and is meant to be run before the system specific one (mac or linux)
# have already installed all system dependencies that this one may rely on
# (e.g. availability of a package manager, dotfiles of a specific app to symlink, etc..)

# Symlinks
## Xorg
ln -sf ~/.config/xorg/xinitrc ~/.xinitrc
ln -sf ~/.config/xorg/Xresources ~/.Xresources
ln -sf ~/.config/xorg/Xmodmap ~/.Xmodmap


## bash session
ln -sf ~/.config/bash/bash_profile ~/.bash_profile
ln -sf ~/.config/bash/bashrc ~/.bashrc


## vim editor
ln -sf ~/.config/vim/.vimrc ~/.vimrc
# Attach overrides for system-wide fonts configuration
ln -sf $HOME/.config/fonts/fonts.conf /etc/fonts/local.conf 
# Enable font presets 
ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d

