# Added bashrc file for interactive shell scripting
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# Modify default status bar of tty session
if [[ "$OSTYPE" == "linux-gnu" ]]; then
  # TODO
elif [[ "$OSTYPE" == "darwin"* ]]; then
  # Replace username with the dot
  PS1='${debian_chroot:+($debian_chroot)}\[\033[00;36m\]⚈ \[\033[01;33m\]\W\[\033[00m\] '
fi

