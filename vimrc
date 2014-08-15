"many of these options are from http://vim.wikia.com/wiki/Example_vimrc

set nocompatible
set ruler
set autoindent
set backspace=indent,eol,start
set hidden
set autowrite
set noignorecase
set nosmartcase
set virtualedit=
"set grepprg=ack-grep
set showcmd
set nostartofline
set notimeout ttimeout ttimeoutlen=200
set pastetoggle=<F11>
set laststatus=2
set nobackup
set nowritebackup
set wildmenu
set hlsearch
set directory=~/.eb-vimswap//
filetype plugin on
syntax on

" disable bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" gp selects last paste
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
