# Path to your oh-my-zsh installation.
export ZSH="/home/iw/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

plugins=(
  git
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# User configuration
VI_MODE_SET_CURSOR=true

# export MANPATH="/usr/local/man:$MANPATH"

alias sus="systemctl suspend"
alias python=python3
alias pip=pip3
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

