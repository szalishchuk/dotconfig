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




