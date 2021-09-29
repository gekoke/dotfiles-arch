#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Plugins
source /usr/share/zsh/share/antigen.zsh
antigen use oh-my-zsh

antigen bundle fzf
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

# Load fzf config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable vi-like input editing.
set -o vi

# Disable history expansion.
set +H

# Term colors.
export TERM=xterm-256color
alias ls='exa --color=auto --icons'
alias la="exa -a --icons"

# Personal aliases.
alias v="nvim"
alias ra="ranger"
alias cl="clear"
alias spaceavail="sh ~/Scripts/diskspace.sh"
alias gs="git status"
alias open="xdg-open"
alias zc="nvim ~/.zshrc"
alias zs="source ~/.zshrc"

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Fuzzy find
export FZF_CTRL_T_COMMAND="find . 2> /dev/null"

# Make Intellij not break
export _JAVA_AWT_WM_NONREPARENTING=1

export PATH="$PATH:$HOME/Builds/flutter/bin/:$HOME/.emacs.d/bin"
export ANDROID_HOME="/home/geko/Android/Sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export FLUTTER_ROOT=$ANDROID_HOME
export GIT_TERMINAL_PROMPT=1
export GCM_CREDENTIAL_STORE=gpg

eval "$(starship init zsh)"
neofetch --ascii="$(fortune -s | cowsay)"

