# Path to your oh-my-zsh installation.
export ZSH=/Users/ubayd/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git osx )

source $ZSH/oh-my-zsh.sh

# User configuration

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Python & Virtualenv
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

export ANDROID_HOME=${HOME}/Library/Android/sdk
export ANDROID_SDK=$ANDROID_HOME/lib
export PATH=${PATH}:${ANDROID_HOME}/emulator
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export TERM=xterm-256color
export EDITOR='/usr/local/bin/nvim'

HISTFILE=~/.zsh-history
SAVEHIST=1000

# use the correct term for ssh
alias rm="rm -rf"
alias tmux="tmux attach || tmux new"
alias v='nvim'
alias vim='nvim'

# get current ip
alias getip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
