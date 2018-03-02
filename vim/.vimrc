set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" NERD tree plugin
Plugin 'scrooloose/nerdtree'

" Nord theme
Plugin 'arcticicestudio/nord-vim'

" Solarized theme
Plugin 'altercation/vim-colors-solarized.git'


" Smart comments
Plugin 'tpope/vim-commentary'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Shows a git diff in the gutter (sign column) and stages/undoes hunks.
Plugin 'airblade/vim-gitgutter'

" This plugin causes all trailing whitespace to be highlighted in red.
Plugin 'bronson/vim-trailing-whitespace'

" Insert or delete brackets, parens, quotes in pair.
Plugin 'jiangmiao/auto-pairs'

" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

" Emmet
Plugin 'mattn/emmet-vim'


call vundle#end()            " required
filetype plugin indent on    " required

"***************************************************************
"Basic Setting
"**************************************************************

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
set softtabstop=4

" Search
set hlsearch
set smartcase
set ignorecase
set incsearch

" Line managment
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set spell
set visualbell

set ruler

set undolevels=1000
set backspace=indent,eol,start


"*******************************************************************
"Visual Settings
"*******************************************************************

syntax on
set ruler

" Set colorscheme
let no_buffers_menu=1
if !exists('g:not_finish_neobundle')
	" colorscheme nord
        colorscheme solarized
	set background=dark
endif

" Set terminal colours to 256color
" Set font family
set mouse=a
set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

if has("gui_running")
	if has("gui_mac") || has("gui_macvim")
		set guifont=Menlo:h12
		set transparency=7
	endif
else
	let g:CSApprox_loaded = 1


	if $COLORTERM == 'gnome-terminal'
		set term=gnome-256color
	else
		if $TERM == 'xterm'
			set term=xterm-256color
		endif
	endif

endif

if &term =~ '256color'
	set t_ut=
endif

"*****************************************************************************
"" Airline
"*****************************************************************************
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline_left_sep          = '▶'
	let g:airline_left_alt_sep      = '»'
	let g:airline_right_sep         = '◀'
	let g:airline_right_alt_sep     = '«'
	let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
	let g:airline#extensions#readonly#symbol   = '⊘'
	let g:airline#extensions#linecolumn#prefix = '¶'
	let g:airline#extensions#paste#symbol      = 'ρ'
	let g:airline_symbols.linenr    = '␊'
	let g:airline_symbols.branch    = '⎇'
	let g:airline_symbols.paste     = 'ρ'
	let g:airline_symbols.paste     = 'Þ'
	let g:airline_symbols.paste     = '∥'
	let g:airline_symbols.whitespace = 'Ξ'
else
	let g:airline#extensions#tabline#left_sep = ''
	let g:airline#extensions#tabline#left_alt_sep = ''
	" powerline symbols
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
	let g:airline_symbols.readonly = ''
	let g:airline_symbols.linenr = ''
endif

let g:airline_theme = 'nord'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1

