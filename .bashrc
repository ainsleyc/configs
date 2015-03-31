
# iterm colors
export CLICOLOR=1

# Paths
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/home/ainsley/Projects/factual-api-tester:/home/ainsley/.meteor

# NVM
export NVM_DIR="/home/ainsley/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/ainsleychong/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# command aliases
alias c='clear'
alias b='byobu'

# work specific aliases
alias vim-e='vim /var/factual/opt/etc/env.yml'

alias cd-f='cd /var/factual/front/apps'
alias cd-w='cd /var/factual/front/apps/www'
alias cd-a='cd /var/factual/front/apps/admin'
alias cd-l='cd /var/factual/opt/logs'

alias dev='ssh ainsley@10.20.10.119'
alias devc='ssh root@10.199.6.130'
alias builder='ssh root@10.20.10.98'
alias monitor='ssh root@10.20.10.160'
