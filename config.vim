"Configuration and functions
set encoding=utf-8
set cursorline
set wildmenu
set hidden
set updatetime=300
set nocompatible
set history=500
set scrolloff=3
set mouse=a
set clipboard=unnamed
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
filetype plugin indent on
"unrestricted backspacing in insert mode
set backspace=indent,start,eol

"Shortmess
set shortmess+=I "Disable Intro Message
set shortmess+=c
set shortmess+=A
set shortmess+=W

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


"Left Colums Signal allways on that the text wont jump on signal and numbers
"with relativenumber online switch with CTRL + n
set number relativenumber
set signcolumn=yes
nnoremap <C-n> :let[&nu, &rnu] = [!&rnu, &nu+&rnu==1]<CR>

"White Characters switch on an off with leader (,) w
set listchars=eol:$,tab:\|\ ,trail:~,extends:>,precedes:<,space:·
noremap <leader>w <ESC>:set list! <CR>


"Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
nnoremap <silent> <esc> :noh<return><esc>

"Latex stuff
let g:livepreview_engine = 'pdflatex'
let g:livepreview_previewer = 'evince'

"Nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set spelllang=de
"autocmd FileType tex setlocal spell
au BufRead,BufNewFile *.tex setlocal textwidth=80
" toggle relative line numbers with Ctrl + N


let g:gruvbox_italic=1
colorscheme gruvbox
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

if has('virtualedit')
	set virtualedit=block
endif
