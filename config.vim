"Configuration and functions
set encoding=utf-8
set cursorline
set wildmenu
set hidden
set updatetime=300
set nocompatible "nvim is allway nocompatible
set history=500
set scrolloff=10
set splitbelow
set splitright
set mouse=a
set clipboard=unnamed
set list
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
filetype plugin indent on
"unrestricted backspacing in insert mode
set backspace=indent,start,eol

"Tab an spaces
"expandtab writes tab as spaces
"tab character can be written with CTRL-V<Tab>
"set expandtab
"all existing tab characters will be changed to 4 spaces
set noexpandtab
set tabstop=4
set shiftwidth=4

"Shortmess
set shortmess+=I "Disable Intro Message
set shortmess+=c
set shortmess+=A
set shortmess+=W

"Disables Automatic Commenting on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Backup, Undo & Swap
"dont create backup files as root user
if exists('$SUDO_USER')
    set nobackup
    set nowritebackup
else
    set backup
    set backupdir=~/.vim/.backup
endif

"dont create swap files as root user
if exists('$SUDO_USER')
    set noswapfile
else
    set directory=~/.vim/.swap//
endif

"dont create undo files as root user
if has('persistent_undo')
    if exists('$SUDO_USER')
        set noundofile
    else
        set undofile
        set undodir=~/.vim/.undo
    endif
endif

set number relativenumber
" toggle relative line numbers with Ctrl + N
nnoremap <C-n> :let[&nu, &rnu] = [!&rnu, &nu+&rnu==1]<CR>
"Left Colums Signal allways on that the text wont jump on signal and numbers
set signcolumn=yes

"White Characters switch on an off with leader (,) w
set listchars=eol:$,tab:\|\ ,trail:~,extends:>,precedes:<,space:·
noremap <leader>w <ESC>:set list! <CR>

" Character to show before the lines that have been soft-wrapped
set showbreak=↪

"Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <silent> <esc> :noh<return><esc>

"Latex stuff
let g:tex_flavor = 'latex'

"Nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set spelllang=de
"autocmd FileType tex setlocal spell
au BufRead,BufNewFile *.tex setlocal textwidth=80

let g:gruvbox_italic=1
colorscheme monokai
set background=dark
set termguicolors

let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

"FZF
command! -bang -nargs=? -complete=dir HFiles
  \ call fzf#vim#files(<q-args>, {'source': 'rg --hidden -l ""'}, <bang>0)

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'highlight': 'Comment' } }

if has('virtualedit')
    set virtualedit=block
endif

"Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

"FileType specific tabs:
"Yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']

augroup remember_folds
  autocmd!
  autocmd BufWinLeave *.* mkview
  autocmd BufWinEnter *.* silent! loadview
augroup END
