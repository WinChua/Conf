filetyp plugin on
autocmd FileType python set omnifunc=pythoncomplete#Complete

set hlsearch
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set autoindent
map ''c <Esc>:w<CR>:!javac %<CR>
map ''r <Esc>:!java %:r<CR>
