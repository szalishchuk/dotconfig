#!/bin/bash

# Aliases
export hosts=/private/etc/hosts
export privalia=/Users/sviat/Projects/privalia/apps/
export PATH=$(brew --prefix openvpn)/sbin:$PATH
# Set default GPG key
export GPGKEY=E14771D03F56AF10
# Set an alias for ncmpcpp, the acronym that I can never remember nor type in properly
alias music=/usr/local/bin/ncmpcpp
alias ranger=/Users/sviat/.config/ranger/ranger
alias vim="mvim -v"
alias preview=/Users/sviat/.config/bin/preview
alias setTerminalTabName=setTerminalTabName

# Functions
## Sublime text
function sub {
  open -a /Applications/Sublime\ Text.app $1
}
## Preview app
function preview {
  open -a /Applications/Preview.app $1
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
