#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

######
# Plugins
######
source /usr/share/zsh/share/antigen.zsh
antigen use oh-my-zsh

antigen bundle fzf
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply


######
# Exports and environment
######
set -o vi  # Enable vi-like input editing.
set +H  # Disable history expansion.

export EDITOR="nvim"
export _JAVA_AWT_WM_NONREPARENTING=1  # Make Java apps not break
export PATH="$PATH:$HOME/Builds/flutter/bin/:$HOME/.emacs.d/bin:$HOME/.local/bin"
export ANDROID_HOME="/home/geko/Android/Sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export FLUTTER_ROOT=$ANDROID_HOME
export GIT_TERMINAL_PROMPT=1
export GCM_CREDENTIAL_STORE=gpg
export TERM=xterm-256color
export PAGER="most"  # Set default program for man pages and such.


######
# Aliases
######
alias ls='exa --icons'
alias la="exa -a --icons"
alias v="nvim"
alias ra="ranger"
alias cl="clear"
alias spaceavail="sh ~/Scripts/diskspace.sh"
alias gs="git status"
alias open="xdg-open"
alias zc="nvim ~/.zshrc"
alias zs="source ~/.zshrc"
alias myip="curl ifconfig.me"

# Trash
alias rm="echo 'Escape this alias if you are sure...'"
alias dl="trash"

# Clipboard
alias cb="xclip -selection clipboard"
alias cbo="xclip -o -selection clipboard"

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


######
# Fuzzy find
######
export FZF_CTRL_T_COMMAND="find . 2> /dev/null"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


######
# On load / prompt
######
eval "$(starship init zsh)"
neofetch --ascii "$(fortune -s | cowsay)"

