set runtimepath^=~/.eb-dotfiles/vim

if has('autocmd')
	execute pathogen#infect()
	execute pathogen#infect('~/.eb-dotfiles/vim/bundle/{}')
endif

" if using a basic vim version, this ensures vim-sensible is run
source ~/.eb-dotfiles/vim/bundle/vim-sensible/plugin/sensible.vim

"many of these options are from http://vim.wikia.com/wiki/Example_vimrc
set nocompatible
set number
set hidden
set autowrite
set noignorecase
set nosmartcase
set virtualedit=
set nostartofline
set pastetoggle=<F10>
set nobackup
set nowritebackup
set hlsearch
set directory=~/.eb-vimswap//

"set grepprg=ack-grep
set sw=4 ts=4 sts=0 et

" Filetype-specific settings

if has('autocmd')
	autocmd BufNewFile,BufReadPost *.md set filetype=markdown
	autocmd FileType haskell setlocal cc=100 sw=4 ts=4 sts=0 et
endif

" disable bell
if has('gui')
    set noerrorbells visualbell t_vb=
    autocmd GUIEnter * set visualbell t_vb=
endif

set background=dark
if has("gui_running")
    set guifont=Monaco:h13,Andale\ Mono\ Regular:h13,Menlo\ Regular:h13,Consolas\ Regular:h13,Courier\ New\ Regular:h13
else
    set t_Co=256
    "let g:solarized_termcolors=256 "degraded 256 colors
endif
if has('autocmd')
	"colorscheme hybrid
	"colorscheme desert256
	"colorscheme fu
	"colorscheme solarized
	"hi ColorColumn ctermbg=darkgrey
endif

" gp selects last paste
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'

" ctrlp plugin
if has('autocmd')
	let g:ctrlp_cmd = 'CtrlPBuffer'
endif

" vim2hs plugin
"if has('autocmd')
"	let g:haskell_conceal_enumerations = 1
"	let g:haskell_conceal = 1
"	let g:haskell_conceal_wide = 1
"endif