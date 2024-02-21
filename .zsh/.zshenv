#!/usr/bin/env zsh

export DOTFILES="$HOME/dotfiles"
export ZDOTDIR="$DOTFILES/.zsh"
export ZPLUGINS="$ZDOTDIR/plugins"

# Use emacs to edit and view files
export EDITOR="emacs"
export VISUAL="emacs"

# Tell doomemacs where my config lives
export DOOMDIR="$DOTFILES/.doom.d"

export HISTFILE="$ZDOTDIR/.history"
export HISTSIZE=10000                   # Maximum events for internal history
export SAVEHIST=10000                   # Maximum events in history file

# Path variables
export PATH=/opt/gcc-arm-none-eabi-10-2020-q4-major/bin:$PATH
export PATH=/home/davis/Developer/Work/ardupilot/Tools/autotest:$PATH
export PATH=/usr/lib/ccache:$PATH
export PATH=~/.cargo/bin:$PATH
export PATH=~//Developer/Tools/jdtls/bin:$PATH

if [ -e /home/davis/.nix-profile/etc/profile.d/nix.sh ]; then . /home/davis/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
