export ZSH=${HOME}/.oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git osx )

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Python & Virtualenv
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# Go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

export ANDROID_HOME=/opt/Android/Sdk
if [[ -d $ANDROID_HOME/lib ]]; then
  export ANDROID_SDK=$ANDROID_HOME/lib
fi
export PATH=${PATH}:${ANDROID_HOME}/emulator
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export TERM=xterm-256color
if (which nvim > /dev/null); then
  alias v='nvim'
  alias vim='nvim'
  export EDITOR=$(which nvim)
fi
alias rm="rm -rf"
alias df='cd ~/.dotfiles'
alias tmux="tmux attach || tmux new"

HISTFILE=~/.zsh-history
SAVEHIST=1000

# get current ip
function getip() {
  config=(ip address)
  if (which ifconfig > /dev/null); then
    config=ifconfig
  fi

  $config | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'
}

# Start an HTTP server from a directory, optionally specifying the port
function server() {
  local port="${1:-8000}";
  sleep 1 && open "http://localhost:${port}/" &
  # Set the default Content-Type to `text/plain` instead of `application/octet-stream`
  # And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
  python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port";
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
