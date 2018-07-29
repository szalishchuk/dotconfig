# Added bashrc file for interactive shell scripting
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# Modify default status bar of tty session
## if [[ "$OSTYPE" == "linux-gnu" ]]; then
if [[ "$OSTYPE" == "darwin"* ]]; then
  # Replace username with the dot
  PS1='${debian_chroot:+($debian_chroot)}\[\033[00;36m\]⚈ \[\033[01;33m\]\W\[\033[00m\] '
fi

# Necessary for HUD-menu to work
if [ -n "$GTK_MODULES" ]
then
  GTK_MODULES="$GTK_MODULES:unity-gtk-module"
else
  GTK_MODULES="unity-gtk-module"
fi

if [ -z "$UBUNTU_MENUPROXY" ]
then
  UBUNTU_MENUPROXY=1
fi

# Show the menubar in apps that may otherwise hide it when the hud-menu-service is running
export APPMENU_DISPLAY_BOTH=1

# After installing the appmenu-qt5 platform theme (to the qt5/plugins/platformthemes/ plugin directory) for the appmenu support to work you need to force Qt5 to use this platform theme plugin. This can be done by:
QT_QPA_PLATFORMTHEME=appmenu-qt5
