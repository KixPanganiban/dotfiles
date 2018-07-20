" Set plugins
call plug#begin('~/.vim/plugged')
	Plug 'davidhalter/jedi-vim'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'wincent/terminus'
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'tmhedberg/SimpylFold'
	Plug 'vim-syntastic/syntastic'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'plytophogy/vim-virtualenv'
	Plug 'zivyangll/git-blame.vim'
call plug#end()

" Set ui tweaks
colorscheme hybrid_material
set number
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:ˣ,space:·
set list
set background=dark
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1
set fillchars+=vert:\ￜ

" Set keybindings
let mapleader = ","

" Set python-specific tweaks
let g:syntastic_python_checkers = ['pycodestyle']
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0

