# Path to your oh-my-zsh installation.
export ZSH=/home/jonatas/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# System
alias sync_time="sudo ntpd -qg"
alias vim="nvim"
alias synctime="sudo ntpd -qg"
alias zshedit="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias vimedit="vim ~/.config/nvim/init.vim"
alias gvimedit="vim ~/.config/nvim/ginit.vim"
alias gitlog="git log --pretty=format:'%h %s' --graph"

# DOCKER alias
alias docker_postgres="docker run -d -p 5432:5432 postgres"
alias start_docker="sudo systemctl start docker"
alias stop_docker='docker stop $(docker ps -a -q)'
alias remove_docker='docker rm $(docker ps -a -q)'

# Paths
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/Workspace/go

# db
function mysql_repair {
  sudo mysql.server stop
  sudo chown -R _mysql:mysql /usr/local/var/mysql
  sudo mysql.server start 
}

# docker mailcatcher
function mailc(){
  docker run -d -p 1025:1025 -p 1080:1080 aegypius/mailcatcher
}

# docker mongodb
function mongodb_docker() {
  docker run -d -p 27017:27017 -p 28017:28017 -e AUTH=no tutum/mongodb
}

# user and group permission
function set_permissions(){
  sudo chown jonatas -R *;
  sudo chown jonatas -R .*;
  sudo chgrp -R jonatas *;
  sudo chgrp -R jonatas .*;
}

function local_yo() {
  node_modules/yo/lib/cli.js $1 $2
}

# rbenv settings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
