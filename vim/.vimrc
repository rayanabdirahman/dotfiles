"*******************************************************************
"Install Plugins
"*******************************************************************

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Challenger Deep theme
Plugin 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

" Lightline for statusline/tabline
Plugin 'itchyny/lightline.vim'

" NERDtree plugin
Plugin 'scrooloose/nerdtree'

" Colorizing matching brackets
Plugin 'luochen1990/rainbow'

" Emmet using keys <CTRL-Y-,>
Plugin 'mattn/emmet-vim'

" YouCompleteMe code completion
Plugin 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" Typescript syntax highlighting
Plugin 'leafgarland/typescript-vim'

" Gitgutter
Plugin 'airblade/vim-gitgutter'

" Whitespace highlighted in red.
Plugin 'bronson/vim-trailing-whitespace'

" Quick commenting using keys <g-c>
Plugin 'tpope/vim-commentary'

" Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"*******************************************************************
"Basic Settings
"*******************************************************************

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencoding=utf-8

" Indentation
set autoindent
set cindent
set expandtab
set shiftwidth=2
set smartindent
set softtabstop=2

" Line managment
" show line number
set number


"*******************************************************************
"Visual Settings
"*******************************************************************

" turn syntax on for colorscheme
syntax on
set ruler

" set colorscheme
let g:challenger_deep_termcolors = 16
colorscheme challenger_deep

"*******************************************************************
"Lightline Settings
"*******************************************************************

" set theme to challenger deep
let g:lightline = { 'colorscheme': 'challenger_deep'}
set laststatus=2

"*******************************************************************
"Rainbow brackets Settings
"*******************************************************************

" enable bracket matching
let g:rainbow_active = 1

