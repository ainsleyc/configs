
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
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# command aliases
alias c='clear'
alias b='byobu'

# command aliases
alias dev='ssh 172.17.221.97'

