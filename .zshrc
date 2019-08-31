export ZSH="/home/jonatas/.oh-my-zsh"

ZSH_THEME="robbyrussell"


plugins=(
  git
  dotenv
  osx
  )

source $ZSH/oh-my-zsh.sh

# System
alias sync_time="sudo ntpd -qg"
alias synctime="sudo ntpd -qg"
alias zshedit="vim ~/.zshrc"
alias zshreload="source ~/.zshrc"
alias vimedit="vim ~/.vimrc"

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
alias start_docker="sudo systemctl start docker"
alias stop_docker='docker stop $(docker ps -a -q)'
alias remove_docker='docker rm $(docker ps -a -q)'

# Paths
export GOROOT=/usr/local/go
export GOPATH=$HOME/Workspace/go
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$GOROOT/bin:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:/opt/local/bin

# db
function mysql_repair {
  sudo mysql.server stop
  sudo chown -R _mysql:mysql /usr/local/var/mysql
  sudo mysql.server start 
}

# user and group permission
function set_permissions(){
  sudo chown jonatas -R *;
  sudo chown jonatas -R .*;
  sudo chgrp -R jonatas *;
  sudo chgrp -R jonatas .*;
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# for ubuntu
export SHELL=`which zsh`
[ -z "$ZSH_VERSION" ] && exec "$SHELL" -l
