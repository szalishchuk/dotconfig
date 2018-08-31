###---Enable startup items with systemd---###

# Start Music Player Daemon
systemctl --user enable mpd.service 

# Start the daemon to syncronize system time with remote NTP servers
timedatectl set-ntp true

# Start emacs server to run as a daemon
systemctl enable --user emacs
systemctl start --user emacs
