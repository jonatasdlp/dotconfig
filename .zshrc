export ZSH=/Users/jonatas/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(
  git
  dotenv
  osx
  )

source $ZSH/oh-my-zsh.sh

# System
alias sync_time="sudo ntpd -qg"
alias vim="nvim"
alias synctime="sudo ntpd -qg"
alias zshedit="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias vimedit="vim ~/.config/nvim/init.vim"
alias gvimedit="vim ~/.config/nvim/ginit.vim"

# GIT
alias g!='git init' 
alias g.='git add .'
alias g.-file='git add'
alias gb='git branch'
alias gb-new='git checkout -b'
alias gblame='git blame'
alias gcl='git clone'
alias gc='git commit -m'
alias gcout='git checkout'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias gph='git push'
alias gph-f='git push -f'
alias gpl='git pull'
alias gr='git remote'
alias gr-list='git remote -v'
alias gr-add='git remote add'
alias greset='git reset --hard'
alias grevert-head='git revert HEAD'
alias grevert='git revert'
alias gs='git status'
alias gsh='git stash'
alias gsh-a='git stash apply'
alias gsh-c='git stash clear'
alias gsh-d='git stash drop'
alias gsh-l='git stash list'
alias gsh-p='git stash pop'

# DOCKER alias
alias docker_postgres="docker run -d -p 5432:5432 postgres"
alias start_docker="sudo systemctl start docker"
alias stop_docker='docker stop $(docker ps -a -q)'
alias remove_docker='docker rm $(docker ps -a -q)'

# Paths
export GOROOT=/usr/local/go
export GOPATH=$HOME/Workspace/go
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$GOROOT/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/opt/local/bin

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
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
