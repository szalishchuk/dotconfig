# Ask for password upfront
sudo -v

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

# Install default software package
## Airmail 3 - email client
## Alfred - task manager
## Audiobook converter - Decodes DRM-protected audiobooks from Audible and other providers into mp3
## Evernote - productivity tool
## Fantastical 2 - calendar app
## Google Chrome - primary web browser
## Google Chrome Canary - primary web development browser
## iStat Mini - Notification panel widget that shows CPU/Memory/Disk load, bandwidth usage, etc..
## iTerm2 - terminal client
iTermVersion = "iTerm2-3_1_6"
curl -O https://iterm2.com/downloads/stable/$(iTermVersion).zip; unzip ./$(iTermVersion).zip; rm ./$(iTermVersion).zip; mv ./iTerm.app /Applications/iTerm.app

## Microsoft Outlook - corporate email client
## Moom - windows manager
## VLC - video player
## ResqueTime - time reporting tool
## Skype - primary instant messanger
## Skype for business - corporate instant messanger
## Slack-term - slack terminal client
curl -O https://github.com/erroneousboat/slack-term/releases/download/v0.4.0/slack-term-darwin-amd64 /usr/local/bin/slack-term; # To be tested
## Tower - GUI git client
## Xcode - Macos development environment required for access to some of the system features




# Install dependencies
brew install ranger # Ranger, the file manager
	# Plugins
	yarn global add ansimd # ansimd, enables preview of markdown files

brew install mpd # mpd, Music Player Daemon
brew install ncmpcpp # ncmpcpp, full fledged terminal music player client app connecting to mpd
brew install mpc # mpc, simple CLI client for controlling music playback with mpd
brew install tmux # tmux, terminal multiplexer
brew install pandoc # pandoc, document converter
brew install lynx # lynx, text-based web browser




# git vcs

# yarn javascript package manager

# 


# System settings
defaults write com.apple.screencapture location ~/ownCloud/Screenshots/ # Set destination for screenshot capture
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES; killall Finder # Show Full File Path in Finder
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}' # Add Spacers into the Dock, then do killall Dock to see them
defaults write com.apple.Dock showhidden -bool TRUE; killall Dock # Make Hidden Apps “Hidden” in Dock
# Dock reveal animation settings
defaults write com.apple.dock autohide-time-modifier -float 0.12;killall Dock # Super-fast animation
# defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock # No animation
# defaults delete com.apple.dock autohide-time-modifier;killall Dock # Revert to default
