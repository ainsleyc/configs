
" syntax highlights
syntax on
filetype plugin indent on
au BufNewFile,BufRead *.json set filetype=json

" Pathogen
set nocp
execute pathogen#infect()

" Colors
syntax enable
set background=dark
colorscheme solarized

" Tabs
set expandtab
set tabstop=2
set shiftwidth=2

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Line numbers
set number

" vim-airline
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h12
set laststatus=2
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
let g:airline_theme = 'solarized'
let g:airline_powerline_fonts = 1

" column line
set colorcolumn=80

" ctrl-p
let g:ctrlp_map = '<c-p>'
highlight clear SignColumn
let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" quickfix
set switchbuf+=usetab,newtab

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " Ag command
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

  " Ag word under cursor
  nnoremap K :Ag '<cword>' .<CR>
endif
