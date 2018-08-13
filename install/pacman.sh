# Install system dependencies
#---------------------------#
# compton - standalone compositor to provide transitions when navigating between windows
# ranger - file manager
# rofi - a window switcher, application launcher and dmenu replacement
# git - git client
# gvim - On native vim in Arch there is no support for X so the +clipboard feature is missing, replace it with gvim.
# nodejs - NodeJS runtime
# python - Python runtime
# python-dbus - Python binding for dbus
# pulseaudio - General-purpose sound server
# pulseaudio-alsa - ALSA Configuration for PulseAudio
# pulseaudio-bluetooth - Bluetooth support for PulseAudio
# mpd - music player daemon
# mpc - headless music player controlling playback with mpd
# ncmpcpp - terminal GUI music player with playlist support, tag editor and other features, connecting to mpd for music playback
# feh - image viewer
# ttf-dejavu - fullfills some of the missing unicode symbols
# chromium - web browser, open source version that Google Chrome derives from
# libgnome-keyring - keychain service to store entered passwords
# lastpass-cli - lastpass terminal client
# cifs-utils - helps with mounting smb shares
# vlc - primary GUI-based media player
# highlight - syntax highlighting engine used in ranger's preview
# mutt - terminal email client
# htop - interactive process viewer
# unzip - extract contents of zip archives
# libbluray - ...
# libaacs - ...
# poppler - PDF rendering library
# okular - PDF document viewer
# imagemagick - create, edit, compose, or convert bitmap images
# perl-image-exiftool - Reader and rewriter of EXIF informations that supports raw files
# w3m - terminal web browser
# ffmpegthumbnailer - convert first frame of the video into an image to diplay as thumbnail
# xclip - interface on top of X11 clipboard
# openssl - full-featured toolkit for the Transport Layer Security (TLS) and Secure Sockets Layer (SSL) protocols
# emacs - primary text editor
# firefox - primary web browser
# zip - utilitiy to compress to and extract from zip archives
# dhclient - alternative to dhcpcd allowing system to request the ip address after connecting to the network
# xorg-xinput - Small commandline tool to configure devices
# gdb - ancient and well-tested debugger
# strace - debugs application dependencies
# intel-ucode - Microcode update files for Intel CPUs
# patchelf - modify properties of ELF executables

pacman -S compton ranger rofi git gvim nodejs python python-dbus pulseaudio pulseaudio-alsa pulseaudio-bluetooth mpd mpc ncmpcpp feh ttf-dejavu chromium libgnome-keyring lastpass-cli cifs-utils vlc highlight mutt htop unzip libbluray libaacs poppler okular imagemagick perl-image-exiftool w3m ffmpegthumbnailer xclip openssl emacs firefox zip dhclient xorg-xinput gdb strace intel-ucode patchelf
