#! /bin/bash

##################################################################
# Merges versioned configs with local, machine specific configs
# and copies them to the ${HOME} directory. 
#
# The following files are merged:
#   ./.bashrc + ~/.bashrc_local 
#   ./.vimrc + ~/.vimrc_local 
##################################################################

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

BASHRC_PATH="${HOME}/.bashrc_test"
BASHRC_LOCAL_PATH="${HOME}/.bashrc_local"

VIMRC_PATH="${HOME}/.vimrc_test"
VIMRC_LOCAL_PATH="${HOME}/.vimrc_local"

# .bashrc
printf "\n### Github ###\n" > ${BASHRC_PATH}
cat ${DIR}/.bashrc >> ${BASHRC_PATH}
printf "\n### Local ###\n" >> ${BASHRC_PATH}
if [ -e ${BASHRC_LOCAL_PATH} ] 
then
  cat ${BASHRC_LOCAL_PATH} >> ${BASHRC_PATH}
fi

# .vimrc
printf "\n### Github ###\n" > ${VIMRC_PATH}
cat ${DIR}/.vimrc >> ${VIMRC_PATH}
printf "\n### Local ###\n" >> ${VIMRC_PATH}
if [ -e ${VIMRC_LOCAL_PATH} ] 
then
  cat ${VIMRC_LOCAL_PATH} >> ${VIMRC_PATH}
fi
