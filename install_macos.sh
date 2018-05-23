# Ask for password upfront
sudo -v

# Check homebrew availability and trigger the installation if needed
read -p "
Do you want to install command line and GUI apps with Homebrew?
[y/N]: " -r Install_Apps
Install_Apps=${Install_Apps:-n}
if [[ "$Install_Apps" =~ ^(y|Y)$ ]]; then
  echo -e "\033[1m\033[34m==> Installing brew\033[0m"
  if [[ $(which brew) == "/usr/local/bin/brew" ]]
  then
      echo "Brew installed already, skipping"
  else
      /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi
  echo -e "\033[1m\033[34m==> Installing brew formulas\033[0m"
  brew bundle --file=~/.config/Brewfile
fi

# vim editor
ln -sf ~/.config/vim/.vimrc ~/.vimrc

# git vcs

# ranger file manager
# ...TODO: install ranger
## Configure preview of markdown files
yarn global add ansimd

# ncmpcpp music player

# iterm2 terminal

# tmux terminal multiplexer

# yarn javascript package manager

# 
