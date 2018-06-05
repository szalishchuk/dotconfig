# Ask for password upfront
sudo -v

# Versions and package names
iTermVersion = "iTerm2-3_1_6"

# Install system tools

# TODO # Install XCode
# TODO # Install NodeJS

## Install homebrew package manager
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





# Install dependencies
brew install ranger # Ranger, the file manager
	# Plugins
	yarn global add ansimd # ansimd, enables preview of markdown files

brew install mpd # mpd, Music Player Daemon
brew install ncmpcpp # ncmpcpp, full fledged terminal music player client app connecting to mpd
brew install mpc # mpc, simple CLI client for controlling music playback with mpd
brew install tmux # tmux, terminal multiplexer


## Install GUI apps iTerm
curl -O https://iterm2.com/downloads/stable/$(iTermVersion).zip; unzip ./$(iTermVersion).zip; rm ./$(iTermVersion).zip; mv ./iTerm.app /Applications/iTerm.app


# git vcs

# yarn javascript package manager

# 


# System settings
defaults write com.apple.screencapture location ~/ownCloud/Screenshots/ # Set destination for screenshot capture
