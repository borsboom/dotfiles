set runtimepath^=~/.eb-dotfiles/vim
execute pathogen#infect()
execute pathogen#infect('~/.eb-dotfiles/vim/bundle/{}')

"many of these options are from http://vim.wikia.com/wiki/Example_vimrc

set nocompatible
set number
set hidden
set autowrite
set noignorecase
set nosmartcase
set virtualedit=
"set grepprg=ack-grep
set nostartofline
set pastetoggle=<F11>
set nobackup
set nowritebackup
set hlsearch
set directory=~/.eb-vimswap//

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Tab settings

set sw=4 ts=4 sts=0 et
au FileType haskell setlocal cc=100 sw=4 ts=4 sts=0 et

"" These are set by vim-sensible
"set ruler 
"set wildmenu
"set laststatus=2
"set notimeout ttimeout ttimeoutlen=200
"set showcmd
"set backspace=indent,eol,start
"set autoindent
"if has('syntax')
"    filetype plugin on
"    syntax on
"endif

" disable bell
if has('gui')
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=
endif

if has("gui_running")
    set background=light
    set guifont=Monaco:h13,Andale\ Mono\ Regular:h13,Menlo\ Regular:h13,Consolas\ Regular:h13,Courier\ New\ Regular:h13
else
    set background=dark
    set t_Co=256
    let g:solarized_termcolors=256 "degraded 256 colors
    colorscheme hybrid
    "colorscheme desert256
    "colorscheme fu
    "hi ColorColumn ctermbg=darkgrey
endif

" gp selects last paste
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" ctrlp plugin
let g:ctrlp_cmd = 'CtrlPBuffer'

" vim2hs plugin
let g:haskell_conceal_enumerations = 1
let g:haskell_conceal = 1
let g:haskell_conceal_wide = 1
