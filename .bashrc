#!/bin/bash



###---Global variables---###
  export EDITOR=vim


# Aliases
export hosts=/private/etc/hosts
export privalia=/Users/sviat/Projects/privalia/apps/
# export PATH=$(brew --prefix openvpn)/sbin:$PATH
# Export MPD connection details for ncmpcpp and mpc clients to pick up
export MPD_HOST=/Users/sviat/.config/mpd/mpd.socket
export MPD_PORT=6600
# Set default GPG key
export GPGKEY=E14771D03F56AF10
# Set an alias for ncmpcpp, the acronym that I can never remember nor type in properly
alias ncmpcpp=/Users/sviat/.config/ncmpcpp/ncmpcpp
alias ranger=$HOME/.config/ranger/ranger
# alias vim="mvim -v"
alias preview=/Users/sviat/.config/bin/preview
alias setTerminalTabName=setTerminalTabName
alias bfg="java -jar /Users/sviat/.config/utils/bfg.jar" # BFG Repo-Cleaner, removes large or troublesome blobs like git-filter-branch does, but faster.
alias slack-term="node /Users/sviat/.config/slack-term/slack-term"
alias archey3="archey3 --config $HOME/.config/archey3.cfg" # Output Arch Linux logo and system information

# Functions
## Sublime text
function sub {
  open -a /Applications/Sublime\ Text.app $1
}
## Preview app
function preview {
  open -a /Applications/Preview.app $1
}
## Display docs of any format inside the terminal
doc () {
  pandoc $1 | lynx -stdin
}


# Open VPN connection toolkit
function vpn {
  # TODO: build a proper map of profile names to openvpn connection files, when there would be a need for multiple profiles
  case $1 in
	  "US1")
		sudo openvpn --auth-user-pass /usr/local/etc/openvpn/credentials.conf --config /usr/local/etc/openvpn/vpnbook-us1-tcp80.ovpn
	        ;;
	  *)
	  	  echo "$1 profile is not supported"
		  exit 1
  esac
  echo "DONE"
}

export NVM_DIR="/Users/sviat/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
