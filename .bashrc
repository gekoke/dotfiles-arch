#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Enable vi-like input editing.
set -o vi

# Disable history expansion.
set +H

# Git branch in prompt.
# parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/➥ \1 /'
# }

# Term colors.
export TERM=xterm-256color
alias ls='exa --color=auto'
YELLOW="\[$(tput setaf 14)\]"
CYAN="\[$(tput setaf 15)\]"
GREEN="\[$(tput setaf 10)\]"
RESET="\[$(tput sgr0)\]"
# PS1="${YELLOW}🦎@${CYAN}\h${RESET} ${YELLOW}\w${RESET} ${GREEN}\$(parse_git_branch)${RESET}➔ "
alias la="exa -a"

# Personal aliases.
alias sxiv="sxiv -a"
alias v="nvim"
alias ra="ranger"
alias wea="curl wttr.in/tallinn?M"
# alias date="date +'%d %b %Y %T'"

alias qwerty="setxkbmap ee -variant us"
alias colemak="setxkbmap us -variant colemak"

alias bc="bc -q"
alias suspend="systemctl suspend"

alias spaceavail="sh ~/Scripts/diskspace.sh"
alias gs="git status"

alias open="xdg-open"

vo(){
    cd "/home/geko/voshooter"
    tmux new-session -d
    tmux new-window 'gradle core:run'
    tmux new-window 'gradle desktop:run'
    tmux new-window 'gradle desktop:run'
    tmux -2 attach-session -d
}


pt(){
    pytest --cov-config=.coveragerc --cov=. --cov-report=xml
}

rep(){
    pytest --cov-config=.coveragerc --cov=.
}

# Make Android Studio not break
wmname LG3D &
export _JAVA_AWT_WM_NONREPARENTING=1

export JAVA_HOME="/usr/lib/jvm/java-16-amazon-corretto"
export PATH="$PATH:$HOME/Builds/flutter/bin/:$HOME/.emacs.d/bin"
export ANDROID_HOME="/home/geko/Android/Sdk"
export ANDROID_SDK_ROOT=$ANDROID_HOME
export FLUTTER_ROOT=$ANDROID_HOME
export GIT_TERMINAL_PROMPT=1
export VOSHOOTER_GITLAB="gK6hhBMNzVTYLtFqdLsH"


