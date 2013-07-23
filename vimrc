"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                           											"
"				Brandon To's vim dotfiles		                                		"
"			URL: https://github.com/brandonto/dotfiles		                        	"
"										                                            	"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""General options""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible	    "disable Vi compatibility mode
set backspace=2	    	"allows backspace to back over lines
set undolevels=100	    "allows more room for error

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""Display options""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
syntax enable             " enable syntax highlighting (previously syntax on).
colorscheme desert        " set colorscheme
set number                " show line numbers
set laststatus=2          " last window always has a statusline
set ruler                 " Always show info along bottom.

" Highlights white spaces at the end of lines in red
autocmd InsertEnter * syn clear EOLWS | syn match EOLWS excludenl /\s\+\%#\@!$/
autocmd InsertLeave * syn clear EOLWS | syn match EOLWS excludenl /\s\+$/
highlight EOLWS ctermbg=red guibg=red

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""Searching options""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""Indenting options""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype indent on        " activates indenting for files
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text
autocmd FileType html setlocal shiftwidth=2 tabstop=2 " tab spacing for HTML files
