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
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
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
" Plugin 'edkolev/tmuxline.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
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

function Find(type, word)
  execute "Shell find . -name '*." . a:type . "' | xargs grep -n " . a:word
endfunction

function FindT(word)
  let type = expand('%:e')
  call Find(type, a:word)
endfunction

" map <C-F> <Esc>:call FindT("<C-R><C-W>")<CR>
map <C-F> <Esc>:YcmCompleter GoToReferences<CR>

command! JsonFormat :execute '%!python -m json.tool'
\ | :execute '%!python -c "import re,sys;chr=__builtins__.__dict__.get(\"unichr\", chr);sys.stdout.write(re.sub(\"\\\\\\\\u[0-9a-f]{4}\", lambda x: chr(int(\"0x\" + x.group(0)[2:], 16)), sys.stdin.read()))"'
\ | :set ft=javascript
\ | :1
set encoding=utf8

nn \] <Esc>:NERDTree %:p:h<CR>
nn <F5> <Esc>:!echo 'cd %:p:h;source ~/.bashrc; make' > /tmp/next.dir && bash  --init-file /tmp/next.dir <CR>

nn <C-G>d <Esc>:Gdiffsplit<CR>
nn <C-G>s <Esc>:G<CR>
nn <C-G>p <Esc>:Git push<CR>
let g:go_fmt_command = "goimports"

nn <C-G>g <Esc>:!go get <C-R><C-F><cr>
