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


""""""
" Plugins
""""""
" Download Plug (plugin manager) automatically
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
    echo "Downloading junegunn/vim-plug to manage plugins..."
    silent !mkdir -p ~/.config/nvim/autoload/
    silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')

" Language
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
colorscheme onedark

"""""""""""""
" Remaps and leader keys
"""""""""""""
nnoremap <SPACE> <Nop>
let mapleader = " "

map <leader>rc :e $MYVIMRC<cr>
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>

" nnoremap <C-c> <silent> <C-c>  " Disables an annoying message maybe

