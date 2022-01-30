" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" "
"                     █ █   █ █  █ █ █ █  █ ██   ██ █  █ ███ █_   █ ██ ██                 "
"                     █ █   █ █    █ █    █ ███ ███ █  █ █   █ █  █ ██ ███                "
"                     █ █   █ █    █ █    █ ███████ █  █ █   █ █  █ █                     "
"                  _  █ ██ ██ █    █ █    █ ██ █ ██ █  █ ██ █ █   █ █                     "
"                 █ █  █ █ █ █     █ █    █ █ █_█ █ █  █ █   █ █  █ ██ ███                "
"                 █_█   ██_██    █_█_█_█  █_█     █_█  █_█   █_█  █_██_██                 "
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" "



" Display numbers to the line and relative to other lines.
set number relativenumber

" Use syntax highlighting.
syntax enable

" Highlight current line (Or underline depends on colorscheme)
set cursorline

" Cursor position relative to row and column.
set ruler

" Tabbing over moves four spaces.
set tabstop=4

" Number of spaces to use in automatic indentation.
set shiftwidth=4

" Copy indent from current line when starting a new line.
set autoindent

set smartindent

"Auto indentation based on filetype.
filetype plugin indent on

" Smart indentation for C-like language.
set cindent

" Set custom colorscheme.
colorscheme ayu
let ayucolor="light"

" Set background color.
set background=light

" Convert tabs to spaces.
"set expandtab

" Set the character encoding.
set encoding=UTF-8

" Hide mouse when typing.
set mousehide

" Ignore character case sensitivity during search.
set ignorecase

" Override the ignorance option if searching for capital letters.
set smartcase

" Search as characters are entered.
set incsearch

" Enable search highlighting for specific string.
set hlsearch

" Enable 23-bit true color.
set termguicolors

" Visual autocomplete for command menu.
set wildmenu

" Highlight matching for [{()}]
set showmatch

" Set spell checking for words
set spell

" Set mouse support 
"set mouse=n

" """"""""""""""""""""""""""""""""""""""""""""Plugins""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

	Plug 'scrooloose/syntastic'				"Linter or code checker for vim.
	Plug 'jiangmiao/auto-pairs'             "Automatically pair brackets when typing
	Plug 'ervandew/supertab'                "Auto completion tool to complete code by pressing TAB
	Plug 'itchyny/lightline.vim' 			"Statusline plugin.

call plug#end()

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Templates config [START]
autocmd BufNewFile *.c 0r ~/.vim/templates/C.c
autocmd BufWinEnter *.c call cursor(4,1)
"[END]

"Recommended setting for Syntastic [START]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"[END]

"Lightline configuration [START]
set laststatus=2

if !has('gui_running') 
	set t_Co=256
endif

let g:lightline = {
			\ 'colorscheme': 'ayu_light',
			\}
"[END]









" 1) Colors that need true color- {ayu, onhalf, jellybeans}
" 2) Colors that don't need true color- {xcodelight, soda}
