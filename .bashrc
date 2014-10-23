
# iterm colors
export CLICOLOR=1

# Paths
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export PATH=$PATH:/home/ainsley/Projects/factual-api-tester:/home/ainsley/.meteor

# NVM
export NVM_DIR="/Users/ainsleychong/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# command aliases
alias c='clear'

# work specific aliases
alias vim-e='vim /var/factual/opt/etc/env.yml'
alias cd-f='cd /var/factual/front/apps'

alias dev='ssh ainsley@10.20.10.230'
alias devc='ssh root@10.199.6.118'
