" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'neovim/nvim-lsp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'arcticicestudio/nord-vim'
" Plug 'scrooloose/nerdtree'
Plug 'LunarWatcher/auto-pairs', { 'tag': '*' }
Plug 'nvim-lua/plenary.nvim',
Plug 'nvim-telescope/telescope.nvim'
Plug 'akinsho/toggleterm.nvim'
" Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'evanleck/vim-svelte'
Plug 'pangloss/vim-javascript'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'codechips/coc-svelte', {'do': 'npm install'}
" Plug 'ryanoasis/vim-devicons'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/tpope/vim-fugitive.git'
call plug#end()
