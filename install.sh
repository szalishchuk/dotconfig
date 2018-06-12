#/bin/bash

# This executable contains system agnostic configuration settings
# and is meant to be run after the system specific one (mac or linux)
# have already installed all system dependencies that this one may rely on
# (e.g. availability of a package manager, dotfiles of a specific app to symlink, etc..)


# Symlinks
## bash session
ln -sf ~/.config/bashrc ~/.bashrc
## vim editor
ln -sf ~/.config/vim/.vimrc ~/.vimrc

## TODO: declare all packages inside the array and then install them with a platform specific package manager (e.g. brew, aur)


