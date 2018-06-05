#/bin/bash

# This executable contains system agnostic configuration settings
# and is meant to be run after the system specific one (mac or linux)
# have already installed all system dependencies that this one may rely on
# (e.g. availability of a package manager, dotfiles of a specific app to symlink, etc..)


# Symlinks
## vim editor
ln -sf ~/.config/vim/.vimrc ~/.vimrc



