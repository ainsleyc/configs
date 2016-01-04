# Bash history
HISTSIZE=10000
HISTFILESIZE=20000

# iterm colors
export CLICOLOR=1

# Paths
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/home/ainsley/Projects/factual-api-tester:/home/ainsley/.meteor

# IO.js
export NVM_IOJS_ORG_MIRROR=https://iojs.org/dist

# NVM
if [ "$(uname)" == "Darwin" ]; then
  export NVM_DIR="/Users/ainsleyc/.nvm"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  export NVM_DIR="/home/ainsleyc/.nvm"
fi
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/ainsleychong/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# Go
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$GOPATH/bin

# command aliases
alias c='clear'
alias b='byobu'

alias gitl='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

# command aliases
alias dev='gcert; ssh ainsleyc0.mtv.corp.google.com'

