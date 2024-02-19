#!/usr/bin/env zsh

# Navigation
setopt AUTO_CD
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

setopt CORRECT
setopt CDABLE_VARS
setopt EXTENDED_GLOB

# History
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_VERIFY 

# Load my configs
source "$ZDOTDIR/completion.zsh"
source "$ZDOTDIR/alias.zsh"
source "$ZDOTDIR/vim.zsh"

# Setup Prompt
eval "$(oh-my-posh init zsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/amro.omp.json)"

# Syntax highlighting
source $ZPLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init zsh --cmd cd)"


if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
    source $ZDOTDIR/emacs.zsh
fi







