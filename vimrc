set nocompatible
syntax on

set cursorline
set showmode
set history=1000
set undolevels=100
set ruler

"Search and replace
set incsearch

"Spaces and tabs
set shiftwidth=4
set softtabstop=4
set tabstop=8
set shiftround
set expandtab

"Tabs
map <silent><A-Right> :tabnext<CR>
map <silent><A-Left> :tabprevious<CR>
map <silent><C-t> :tabnew<CR>

"number
set number
map <silent><F2> :set invnumber<CR>

"Saving 
map <silent><F3> :wq!<CR>
imap qq <Esc>:q!<CR>
imap ww <Esc>:wq<CR>

"Directory
map <silent><F4> :op .<CR>
set wildignore+=.git/*,.svn/*,.hg/*,_darcs/*,build/*,dist/*,*.o,*.so,*.pyc
