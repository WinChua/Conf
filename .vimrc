syntax on
set expandtab
set tabstop=4
set sts=4
set autoindent
set shiftwidth=4
set number
set hlsearch
set number

" let $VIMRUNTIME="/usr/local/share/vim/vim81"
" set rtp+="/usr/local/share/vim/vim81"

set nocompatible
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 't9md/vim-choosewin'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'itchyny/lightline.vim'
Plugin 'edkolev/tmuxline.vim'
call vundle#end()
filetype plugin indent on

set background=dark
colorscheme gruvbox

set hidden 

map <leader>' <Esc>:NERDTreeToggle<CR>
map <leader>s <Esc>:ChooseWin<CR>
map <leader>; <Esc>:TagbarToggle<CR>
map <C-H> <Esc>:tabp<CR>
map <C-L> <Esc>:tabn<CR>

if !exists('g:airline_symbols')
    let g:airline_symbols={}
endif
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_symbols.crypt = '<d83d><dd12>'
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.maxlinenr = '㏑'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = 'Ɇ'
" let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#switch_buffers_and_tabs = 0

let g:airline_theme='base16'

let g:tmuxline_separators = {
    \ 'left': '',
    \ 'left_alt': '',
    \ 'right': '',
    \ 'right_alt': '' }

let g:tmuxline_preset = {
      \'a'    : '#S',
      \'c'    : ['#(whoami)', '#(echo $HOSTNAME)'],
      \'win'  : ['#I', '#W'],
      \'cwin' : ['#I', '#W', '#F'],
      \'y'    : ['%R', '%a', '%Y'],
      \'z'    : '#H'}
