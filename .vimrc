" BASE ---------------------------------------------------------------- {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" }}}

" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin()

" Monokai colorscheme
Plug 'sickill/vim-monokai'

" NERDTree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Emmet
Plug 'mattn/emmet-vim'

" Ctrlp
Plug 'ctrlpvim/ctrlp.vim'

" Polyglot
Plug 'sheerun/vim-polyglot'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Commentary
Plug 'tpope/vim-commentary'

" Indent guides
Plug 'nathanaelkane/vim-indent-guides'

" Css color
Plug 'ap/vim-css-color'

" Matchtag
Plug 'valloric/matchtagalways'

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

" Autoclosetag
Plug 'alvan/vim-closetag'

call plug#end()

" }}}

" CORE ---------------------------------------------------------------- {{{

set number
set noswapfile
set ruler "show file stats
"set visualbell "blink cursor on error instead of beeping (grr)
set encoding=utf-8 "encoding
set wildmenu "better command-line completion
set showcmd "show partial commands in the last line of the screen
set laststatus=2 "always display the status line, even if only one window is displayed
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
syntax enable
set termguicolors
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

" Coc.vim autocompletion
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" }}}

