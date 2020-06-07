call plug#begin('~/.vim/plugged')
"FZF fuzzy finder
"using fzf in arch repository
"Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

"Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"look & themes & syntax
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
"Plug 'sheerun/vim-polyglot'
"Plug 'vim-python/python-syntax'

"Snipplets
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'

"Git stuff
Plug 'tpope/vim-fugitive'

"Latex stuff
Plug 'lervag/vimtex'

Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-peekaboo'
call plug#end()
