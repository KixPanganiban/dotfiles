scriptencoding utf-8
set encoding=utf-8

" Set plugins
call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
	Plug 'davidhalter/jedi-vim'
	Plug 'ctrlpvim/ctrlp.vim'
	Plug 'scrooloose/nerdtree'
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	Plug 'wincent/terminus'
	Plug 'rafi/awesome-vim-colorschemes'
	Plug 'tmhedberg/SimpylFold'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'plytophogy/vim-virtualenv'
	Plug 'zivyangll/git-blame.vim'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'fatih/vim-go'
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

" Set editor tweaks
autocmd FileType python setlocal tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Set keybindings
let mapleader = ","
map <F5> :NERDTreeToggle<CR>
map <F6> :Gstatus<CR>
map <F7> :Gcommit<CR>
map <F8> :Gpush<CR>

" Set python-specific tweaks
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0

" Set go-specific tweaks
let g:go_metalinter_autosave = 1
