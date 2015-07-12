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
source $ZSH/oh-my-zsh.sh

# System
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Alias
alias zshconfig="vim ~/.zshrc"
alias vimconfig="vim ~/.vimrc"
alias zshreload="source ~/.zshrc"
alias psqlservice="launchctl load /usr/local/opt/postgresql/*plist"
alias mongodbservice="launchctl load /usr/local/opt/mongodb/*plist"

# DOCKER alias
alias docker_postgres="docker run -d -p 5432:5432 postgres"
alias start_docker="sudo systemctl start docker"
alias stop_docker='docker stop $(docker ps -a -q)'
alias remove_docker='docker rm $(docker ps -a -q)'

# Rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Handle en0
function reset_en0() {
  sudo ifconfig en0 down
  sudo ifconfig en0 up
}

# docker mailcatcher
function mailc(){
  docker run -d -p 1025:1025 -p 1080:1080 aegypius/mailcatcher
}

# docker mongodb
function mongodb_docker() {
  docker run -d -p 27017:27017 -p 28017:28017 -e AUTH=no tutum/mongodb
}
