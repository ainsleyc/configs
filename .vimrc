
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
nnoremap <tab> %
vnoremap <tab> %

" Movement restrictions
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Leader
let mapleader=","
  ,
" Save file
nnoremap <Leader>w :w<CR>

" Copy/paste to system clipboard
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Paste Toggle
set pastetoggle=<leader>t

" Visual line mode
nmap <Leader><Leader> V

" Line numbers
set relativenumber
set number 

" Json
au BufNewFile,BufRead *.json set filetype=json

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

" git-gutter
let g:gitgutter_max_signs = 1000

" column line
set colorcolumn=80

" Matchit
:runtime macros/matchit.vim

" ctrl-p
let g:ctrlp_map = '<c-p>'
highlight clear SignColumn
let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" quickfix buffer behavior
" set switchbuf+=usetab,newtab

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  " Ag command
  command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|tab split|tabp|q|tabn

  " Ag word under cursor
  nnoremap K :Ag '<cword>' .<CR>
endif

" Turn of sql autocomplete
let g:omni_sql_no_default_maps = 1

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Vim Markdown
let g:vim_markdown_folding_disabled=1

" Whitespace Trim command
fun! TrimWhitespace()
    let l:save_cursor = getpos('.')
    %s/\s\+$//e
    call setpos('.', l:save_cursor)
endfun
command! TW call TrimWhitespace()

" js-beautify
map <Leader>f :call JsBeautify()<cr>
" map <c-f> :call JsBeautify()<cr>
" autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
" autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
" autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
" autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
" autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
" autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
