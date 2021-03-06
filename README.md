## configs

### Desktop
* Set desktop wallpaper
* Display --> Set up dual displays
* System Preferences --> Mission Control --> Displays have separate Spaces 
* Mission control --> Add additional desktop spaces
* Mission control --> Disable Automatically Arrange Spaces
* Keyboard --> Keyboard --> Modifier Keys --> Change Capslock to Ctrl
* Install brew
* Install phantomjs
* Install byobu
* Install Hammerspoon
* Install Powerline fonts in FontBook
  * https://coderwall.com/p/yiot4q
  * https://github.com/Lokaltog/powerline-fonts
  * Set iTerm fonts to "12 pt Droid Sans Mono for Powerline" 
* Install nvm and node
  * Install jshint
  * Install coffeelint
  * Install jsonlint
  * Install phantomjs
  * Install mocha-phantomjs
  * Install grunt-cli
  * Install gulp
* Install rvm and ruby
  * Install sass

* Clone configs from github

### Iterm
* Download solarized
* Cmd + i
  * Load Presets --> Import --> Solarized Dark
  * Window --> Transparency --> ~10%
  * General --> Copy Preferences to Profile
  * Minimum Contrast --> ~30%
* Bash word movement shortcuts
  * Preferences --> Global Shortcut Keys
    * Map (Ctrl + Command + h) to (Esc + b)
    * Map (Ctrl + Command + l) to (Esc + f)

### Bash
* Install silversearcher-ag
* Redirect .bash_profile to .bashrc
  * http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
* source .bashrc from github
* Symlink to .agignore from github
* Symlink to .gitconfig from github
* Symlink to .tmux.conf from github

### Vim
* Install pathogen
  * vim-coffee-script
  * vim-colors-solarized (fork)
    * https://github.com/ainsleyc/vim-colors-solarized
  * vim-commentary
  * vim-airline
  * vim-gitgutter
  * vim-json
  * vim-fugitive
  * vim markdown
  * syntastic
  * ctrl-p
  * MatchTagAlways
  * snipmate
    * symlink coffeescript snippets
  * vim-go
  * NERDTree
  * YouCompleteMe
  * typescript-vim
  * UltiSnips
* source .vimrc from github
* ln -s ./UltiSnips ./vim/UltiSnips 
* Eclim
  * See troubleshooting tips

### Git
* git config --global user.name "Ainsley Chong"
* git config --global user.email "ainsley.chong@gmail.com"
* git config --global core.editor vim

### Tmux
* tmux source ~/.tmux.conf

### Hammerspoon
* Symlink to .hammerspoon from Github
