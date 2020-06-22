
set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
" --- Syntax addons --- 
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'stephpy/vim-yaml'
" --- Python ---
Plugin 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plugin 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
Plugin 'mitsuhiko/vim-jinja'		" Jinja support for vim
Plugin 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim
"---------=== Code/project navigation ===-------------
Plugin 'scrooloose/nerdtree' 	    	" Project and file navigation
Plugin 'majutsushi/tagbar'          	" Class/module browser
"------------------=== Other ===----------------------
Plugin 'bling/vim-airline'   	    	" Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes' " Airline themes
Plugin 'fisadev/FixedTaskList.vim'  	" Pending tasks list
Plugin 'rosenfeld/conque-term'      	" Consoles as buffers
Plugin 'jiangmiao/auto-pairs'

"Plugin 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more
" Gruvbox colorscheme
set bg=dark
autocmd vimenter * colorscheme gruvbox 

" All of your Plugins must be added before the following line
call vundle#end()            " required
" Syntax highlight
set completeopt-=preview
set ttyfast
set ruler
set enc=utf-8	     " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch	     " инкреминтируемый поиск
set hlsearch	     " подсветка результатов поиска
set nu	             " показывать номера строк
set smarttab
set tabstop=8
set noshowmode

" настройки Vim-Airline
set laststatus=2
let g:airline_theme='base16'
"let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
" TagBar настройки
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии
" показать NERDTree на F3
map <F3> :NERDTreeToggle<CR>
"игноррируемые файлы с расширениями
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  
map <F2> :TaskList<CR> 	   " отобразить список тасков на F2
" Работа буфферами
map <C-q> :bd<CR> 	   " CTRL+Q - закрыть текущий буффер
syntax on
filetype on
filetype plugin on
filetype plugin indent on

"=====================================================
"" Python-mode settings
"=====================================================
"" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
" провека кода после сохранения
let g:pymode_lint_write = 1
" поддержка virtualenv
let g:pymode_virtualenv = 1
" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" отключить autofold по коду
let g:pymode_folding = 0
" возможность запускать код
let g:pymode_run = 0
let g:pymode_options_colorcolumn = 0
" Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "2"
" Keybinds
inoremap <C-space> <C-x><C-o>
nnoremap \ :noh<return>
imap <F5> <Esc>:w<CR>:!clear;python3 %<CR>
