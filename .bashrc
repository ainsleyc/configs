# Bash history
HISTCONTROL=ignoreboth
HISTSIZE=100000
HISTFILESIZE=100000
shopt -s histappend

# bash built-ins 
shopt -s checkwinsize
shopt -s globstar

# iterm colors
export CLICOLOR=1

# NVM
if [ "$(uname)" == "Darwin" ]; then
  export NVM_DIR="/Users/ainsleyc/.nvm"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  export NVM_DIR="/home/ainsleyc/.nvm"
fi
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Go
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin

# command aliases
alias c='clear'
alias b='byobu'

alias gitl='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

