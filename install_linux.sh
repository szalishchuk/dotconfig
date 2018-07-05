

# Move into the home directory first
cd ~/

# Install system dependencies
pacman -S \
  compton # standalone compositor to provide transitions when navigating between windows
  ranger # file manager
  rofi # a window switcher, application launcher and dmenu replacement
  git # git client
  gvim # On native vim in Arch there is no support for X so the +clipboard feature is missing, replace it with gvim.
  nodejs # NodeJS runtime
  pulseaudio # General-purpose sound server
  pulseaudio-alsa # ALSA Configuration for PulseAudio
  pulseaudio-bluetooth # Bluetooth support for PulseAudio
  mpd # music player daemon
  mpc # headless music player controlling playback with mpd
  ncmpcpp # terminal GUI music player with playlist support, tag editor and other features, connecting to mpd for music playback
  feh # image viewer
  noto-fonts # collection of fonts that covers all the scripts encoded into Unicode
  ttf-dejavu # fullfills some of the missing unicode symbols
  chromium # web browser, open source version that Google Chrome derives from
  libgnome-keyring # keychain service to store entered passwords
  lastpass-cli # lastpass terminal client
  cifs-utils # helps with mounting smb shares
  vlc # primary GUI-based media player
  highlight # syntax highlighting engine used in ranger's preview
  mutt # terminal email client


###---Install yaourt, AUR client---###
# Make sure the standard repositories are up-to-date for anything that package-query or yaourt might need
pacman -Sy
# Pull the package-query package, a frontend to pacman's database and adds suport for AUR
git clone https://aur.archlinux.org/package-query.git && cd package-query
# Make the package. The -s flag syncs the plackage's standard repository dependencies (if it has any) with pacman before trying to build the package
makepkg -si && cd ..
# Pull the yaourt package
git clone https://aur.archlinux.org/yaourt.git && cd yaourt
# Make the package
makepkg -si && cd ..

###---Install necessary packages from AUR with yaourt ---###


yaourt \
  polybar-git # Status bar for the desktop environment
  owncloud-client-git # ownCloud client application to sync all my working directory files
  ttf-monaco # Preferrable font for the terminal
  archey3 # Output Arch Linux logo with various system information
  rofi-greenclip # Clipboard manager
  buku # bookmarks manager
  buku_run #rofi frontend for buku
  ttf-ms-fonts # freely available MS fonts, including Times New Roman, Trebuchet MS, Webdings, Verdana, Andale Mono, Arial, Arial Black, Impact, Comic Sans MS, Courier New and Georgia
  ephifonts 20180416-2 # A collection of free fonts including Helvetica, Futura and Gotham (ephifonts.com)


###---Edits to fstab---###

# TODO: Append this to /etc/fstab
  ## Mounting SERVER as shared drive through smb
  //192.168.1.137/Home /home/sviat/SERVER/Home cifs credentials=/home/sviat/.config/credentials/SERVER.smb,uid=sviat,x-systemd.automount 0 0
  //192.168.1.137/Audiobooks /home/sviat/SERVER/Audiobooks cifs credentials=/home/sviat/.config/credentials/SERVER.smb,uid=sviat,x-systemd.automount 0 0
  //192.168.1.137/Backups /home/sviat/SERVER/Backups cifs credentials=/home/sviat/.config/credentials/SERVER.smb,uid=sviat,x-systemd.automount 0 0
  //192.168.1.137/Music /home/sviat/SERVER/Music cifs credentials=/home/sviat/.config/credentials/SERVER.smb,uid=sviat,x-systemd.automount 0 0
  //192.168.1.137/Photos /home/sviat/SERVER/Photos cifs credentials=/home/sviat/.config/credentials/SERVER.smb,uid=sviat,x-systemd.automount 0 0
  //192.168.1.137/Tools /home/sviat/SERVER/Tools cifs credentials=/home/sviat/.config/credentials/SERVER.smb,uid=sviat,x-systemd.automount 0 0
  //192.168.1.137/Videos /home/sviat/SERVER/Videos cifs credentials=/home/sviat/.config/credentials/SERVER.smb,uid=sviat,x-systemd.automount 0 0
  //192.168.1.137/Web /home/sviat/SERVER/Web cifs credentials=/home/sviat/.config/credentials/SERVER.smb,uid=sviat,x-systemd.automount 0 0
# END OF TODO

###---Symbolic links----###

ln -sf $HOME/.config/fonts/fonts.conf /etc/fonts/local.conf # Attach overrides for system-wide fonts configuration

# Enable font presets 
sudo ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d


###---Enable startup items with systemd---###

systemctl --user enable mpd.service # Start Music Player Daemon
