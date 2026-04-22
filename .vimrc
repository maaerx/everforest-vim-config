" =======================
" Basic Settings
" ===========================
set nocompatible
set number                " Show line numbers
set cursorline            " Highlight current line
set nowrap                " No line wrapping
set encoding=utf-8
set mouse=a               " Enable mouse support
set clipboard=unnamed     " Use Windows system clipboard
set termguicolors
set nosplitright
set nosplitbelow

if has('termguicolors')
    set termguicolors
endif

let g:fzf_layout = { 'down': '30%' }
let g:fzf_preview_window = ['right:40%', 'ctrl-/']


vnoremap <C-c> "+y

nnoremap <C-v> "+p
inoremap <C-v> <C-r>+

nnoremap <C-z> u          " Ctrl+Z = Undo
inoremap <C-z> <Esc>u i   " Ctrl+Z in Insert mode

nnoremap <C-y> <C-r>      " Ctrl+Y = Redo
inoremap <C-y> <Esc><C-r>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:coc_disable_space_report = 1
nnoremap <silent> <C-Space> :Files<CR>
nnoremap <silent> <Nul> :Files<CR>

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:NERDTreeGitStatusWithFlags = 1
let g:NERDTreeHighlightCursorline = 1

" Indentation
" let NERDTreeMinimalUI = 1
" =======================
set tabstop=4             " Tab size
set shiftwidth=4          " Auto-indent width
set expandtab             " Use spaces instead of tabs
set autoindent
set smartindent
set pumheight=15
set updatetime=300

" =======================
" Search
" =======================
set hlsearch              " Highlight search results
set incsearch             " Incremental search
set ignorecase            " Case-insensitive search
set smartcase             " Unless uppercase letter typed

" =======================
" UI Improvements
" =======================
syntax on                 " Enable syntax highlighting
set showcmd               " Show commands as you type
set wildmenu              " Better command-line completion

"========================
"Everforest theme + Airline Costomization
"========================
let g:airline_theme = 'everforest'
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1
let g:airline#extensions#whitespace#enabled = 0

set background=dark
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
let g:everforest_enable_italic = 1

colorscheme everforest

hi CocMenuSel guibg=#45475a
set pumheight=5
set pumwidth=15


"========================
"Plugins
"========================

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/everforest'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-css-color'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


