" BASE ---------------------------------------------------------------- {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin()

" Monokai colorscheme
Plug 'crusoexia/vim-monokai'

" NERDTree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

call plug#end()

" }}}

" CORE ---------------------------------------------------------------- {{{

syntax on
set number
set noswapfile
set ruler "show file stats
"set visualbell "blink cursor on error instead of beeping (grr)
set encoding=utf-8 "encoding
set wildmenu "better command-line completion
set showcmd "show partial commands in the last line of the screen
set laststatus=2 "always display the status line, even if only one window is displayed
set termguicolors
set cursorline "highlight cursor line underneath the cursor horizontally.
"set cursorcolumn "highlight cursor line underneath the cursor vertically.
set scrolloff=10 "do not let cursor scroll below or above N number of lines when scrolling.
set showmatch "show matching words during a search.

set mouse=a "enable use of the mouse for all modes

" Set mapleader
let mapleader=" "


" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
"set autoindent

" }}}

" COLORSCHEMES ---------------------------------------------------------------- {{{

" Monokai
colorscheme monokai

" }}}

" MAPPINGS ---------------------------------------------------------------- {{{

" NERDTree
map <leader>e :NERDTreeToggle<CR>

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}

