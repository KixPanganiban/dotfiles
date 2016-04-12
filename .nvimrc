"=====================
" > System Settings
"=====================

let g:python_host_prog = '/usr/local/Cellar/python/2.7.11/bin/python2.7' 

"=====================
" > Interface
"=====================
filetype indent on
set smartindent
syntax on

let g:hybrid_use_Xresources=1
set background=dark
set guifont=Hack:h11
colorscheme hybrid
let g:airline_powerline_fonts = 1

" indentLine
let g:indentLine_char = '┊'
let g:indentLine_leadingSpaceChar = '.'
let g:indentLine_leadingSpaceEnabled  = 1

" 80char limit
set colorcolumn=80

" tabbing
set expandtab
set shiftwidth=4
set softtabstop=4

"=====================
" > Utilities
"=====================

set clipboard=unnamed

set ttimeout
set ttimeoutlen=0


"=====================
" > Keys
"=====================
let mapleader=","
noremap <Leader>n :NERDTree<cr>
noremap <F3> :Autoformat<CR>

"=====================
" > Plugins
"=====================

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'fatih/vim-go'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'Chiel92/vim-autoformat'

call vundle#end()
filetype plugin indent on
