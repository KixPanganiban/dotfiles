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

" ====================
" > PHP
" ====================
let g:php_cs_fixer_path = "~/.composer/vendor/bin/php-cs-fixer"
let g:php_cs_fixer_level = "psr2"
let g:phpcomplete_index_composer_command = "composer"

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
call dein#add('/Users/kix/.config/nvim/Dein.vim')   " Package manager
" Utilities and customization
call dein#add('flazz/vim-colorschemes')             " Tons of color schemes
call dein#add('kien/ctrlp.vim')                     " Jump to file with C-p
call dein#add('scrooloose/nerdtree')                " Tree browser
call dein#add('Xuyuanp/nerdtree-git-plugin')        " Git status for nerdtree
call dein#add('bling/vim-airline')                  " Lightweight powerline
call dein#add('airblade/vim-gitgutter')             " Git gutter
call dein#add('tpope/vim-fugitive')                 " Git integration
call dein#add('Yggdroot/indentLine')                " Indentline
call dein#add('scrooloose/syntastic')               " Syntax checking
call dein#add('Chiel92/vim-autoformat')             " Autoformat some code
call dein#add('hdima/python-syntax')                " Better python highlighting
call dein#add('stephpy/vim-php-cs-fixer')           " PHPCS autofixer
call dein#add('Shougo/unite.vim')                   " Extended UI
" Extended language support
call dein#add('kchmck/vim-coffee-script')           " CoffeeScript support
call dein#add('elixir-lang/vim-elixir')             " Elixir support
call dein#add('fatih/vim-go')                       " IDE-ish for Go
call dein#add('klen/python-mode')                   " IDE-ish for Python
call dein#add('Shougo/deoplete.nvim')               " Autocomplete engine
call dein#add('zchee/deoplete-go')                  " Deoplete source for Go
call dein#add('zchee/deoplete-jedi')                " Deoplete source for Python
call dein#add('carlitux/deoplete-ternjs')           " Deoplete source for js
call dein#add('pbogut/deoplete-padawan')            " Deoplete source for PHP
call dein#add('slashmili/alchemist.vim')            " Autocomplete for Elixir
call dein#end()

let g:pymode_rope = 0
let g:deoplete#enable_at_startup = 1

"=====================
" > Interface
"=====================
filetype plugin indent on
set smartindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
syntax enable
set number
set cursorline

let g:hybrid_use_Xresources=1
let g:airline_powerline_fonts = 1
set background=dark
set guifont=Hack:h11
colorscheme brogrammer

" 80char limit
set colorcolumn=80

" tabbing
set expandtab
set shiftwidth=4
set softtabstop=4

