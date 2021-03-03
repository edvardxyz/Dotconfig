#!/bin/zsh

# zsh profile file. Runs on login. Environmental variables are set here.

# Adds directories to $PATH
# export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
# export PATH="$PATH:$(du "$HOME/.emacs.d/bin" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export PATH="$PATH:$HOME/.local/bin/:$HOME/.emacs.d/bin/"


# Default programs:
export EDITOR="emacs"
export TERMINAL="urxvtc"
export BROWSER="firefox"

# Start graphical server on tty1 if not already running.
[ "$(tty)" = "/dev/tty1" ] && ! ps -e | grep -qw Xorg && exec startx

