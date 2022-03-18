""""""
" ~/.config/nvim/init.vim
"""""

""""""
" Basic configuration
""""""
syntax on
set clipboard+=unnamedplus
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set noshowmode
set shortmess=I
set signcolumn=yes


""""""
" Plugins
""""""
call plug#begin('~/.vim/plugged')

" Functionality
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Language
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/gekoke/xonsh-vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Themes
Plug 'morhetz/gruvbox', { 'as': 'gruvbox' }
Plug 'joshdick/onedark.vim'
Plug 'romgrk/doom-one.vim'
Plug 'vim-airline/vim-airline'

call plug#end()

"""""""""""""
" Theme
"""""""""""""
au ColorScheme * hi Normal ctermbg=none guibg=none     " Set background to transparent after colorscheme load
au ColorScheme * hi SignColumn ctermbg=none guibg=none " Set gutter to transparent after colorscheme load
colorscheme gruvbox


"""""""""""""
" Remaps and leader keys
"""""""""""""
nnoremap <SPACE> <Nop>
let mapleader = " "

map <leader>rc :e $MYVIMRC<cr>
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
nnoremap <silent> <leader>j dd2kpJ  " Inverse of J

