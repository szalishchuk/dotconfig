# Added bashrc file for interactive shell scripting
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# Replace username with the dot
PS1='${debian_chroot:+($debian_chroot)}\[\033[00;36m\]⚈ \[\033[01;33m\]\W\[\033[00m\] '

