"=====================
" > System Settings
"=====================

if &compatible
    set nocompatible
endif
set clipboard=unnamed
set ttimeout
set ttimeoutlen=0

" =====================
" > Python
" =====================
let g:python_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let python_highlight_all = 1

"=====================
" > Keys
"=====================
let mapleader=","
noremap <Leader>n :NERDTree<cr>
noremap <F3> :Autoformat<CR>
noremap <ESC> :noh<CR><ESC>

"=====================
" > Plugins
"=====================

set runtimepath+=/Users/kix/.config/nvim/Dein.vim
call dein#begin('/Users/kix/.config/nvim/bundle')
call dein#add('/Users/kix/.config/nvim/Dein.vim')
call dein#add('kien/ctrlp.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('Xuyuanp/nerdtree-git-plugin')
call dein#add('bling/vim-airline')
call dein#add('airblade/vim-gitgutter')
call dein#add('tpope/vim-fugitive')
call dein#add('Yggdroot/indentLine')
call dein#add('fatih/vim-go')
call dein#add('Chiel92/vim-autoformat')
call dein#add('kchmck/vim-coffee-script')
call dein#add('klen/python-mode')
call dein#add('Shougo/deoplete.nvim')
call dein#add('zchee/deoplete-go')
call dein#add('zchee/deoplete-jedi')
call dein#add('flazz/vim-colorschemes')
call dein#add('hdima/python-syntax')
call dein#end()

let g:pymode_rope = 0
let g:deoplete#enable_at_startup = 1

"=====================
" > Interface
"=====================
filetype plugin indent on
set smartindent
syntax enable

let g:hybrid_use_Xresources=1
let g:airline_powerline_fonts = 1
set background=dark
set guifont=Hack:h11
colorscheme Tomorrow-Night-Bright

" 80char limit
set colorcolumn=80

" tabbing
set expandtab
set shiftwidth=4
set softtabstop=4

