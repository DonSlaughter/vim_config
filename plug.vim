"automatic installation for vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"FZF fuzzy finder
"using fzf in arch repository
"Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"if fzf is installed via git
if !empty(glob("~/.fzf/bin/fzf"))
    set rtp+=~/.fzf
endif

"Autocomplete
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

"Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"look & themes & syntax
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
"Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'preservim/nerdtree'
"Plug 'sheerun/vim-polyglot'
"Plug 'vim-python/python-syntax'

"Ansible"
"Plug 'pearofducks/ansible-vim'

"Snipplets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'

"Git stuff
Plug 'tpope/vim-fugitive'

"Latex stuff
Plug 'lervag/vimtex'

"Change Surroundings of text objects. "-> '
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
"Look at clipboard
Plug 'junegunn/vim-peekaboo'

call plug#end()
