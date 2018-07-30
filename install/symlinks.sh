
# ${1} - "desktop" | "laptop"

# Xorg
ln -sf ~/.config/xorg/xinitrc ~/.xinitrc
ln -sf ~/.config/xorg/${1}.Xresources ~/.Xresources
ln -sf ~/.config/xorg/Xmodmap ~/.Xmodmap

# i3 config
ln -sf ~/.config/i3/${1}.config ~/.config/i3/config

# polybar
ln -sf ~/.config/polybar/${1}.config ~/.config/polybar/config

# bash session
ln -sf ~/.config/bash/bash_profile ~/.bash_profile
ln -sf ~/.config/bash/bashrc ~/.bashrc

# vim editor
ln -sf ~/.config/vim/vimrc ~/.vimrc

# emacs editor
ln -sf ~/.config/emacs/init.el ~/.emacs

# Attach overrides for system-wide fonts configuration
sudo ln -sf $HOME/.config/fonts/fonts.conf /etc/fonts/local.conf 

# Enable font presets 
sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d



