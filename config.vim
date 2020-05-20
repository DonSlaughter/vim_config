"Configuration and functions
set shortmess+=I "Disable Intro Message
set encoding=utf-8
set cursorline
set wildmenu
set hidden
"set cmdheight=2
set updatetime=300
set shortmess+=c
set nocompatible
set history=500
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
filetype plugin indent on

"Backup, Undo & Swap
set backup
set backupdir=~/.vim/.backup

set undofile
set undodir=~/.vim/.undo

set directory=~/.vim/.swap

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

set spelllang=de
"autocmd FileType tex setlocal spell
au BufRead,BufNewFile *.tex setlocal textwidth=80
" toggle relative line numbers with Ctrl + N

nmap <F8> :TagbarToggle<CR>


let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark
set termguicolors

"colorscheme dracula
"let g:dracula_italic = 1
"let g:dracula_bold = 1
"let g:dracula_underline = 1
"let g:dracula_undercurl = 1
"let g:dracula_inverse = 1
"let g:dracula_colorterm = 1

"let g:airline_theme='dracula'
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts=1

"FZF
command! -bang -nargs=? -complete=dir HFiles
  \ call fzf#vim#files(<q-args>, {'source': 'rg --hidden -l ""'}, <bang>0)

noremap <leader>h <Esc>:Helptags<CR>
noremap <leader>b <Esc>:Buffers<CR>
noremap <leader>t <Esc>:Tags<CR>
noremap <leader>f <Esc>:Files<CR>
noremap <leader>F <Esc>:HFiles<CR>

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


function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col -1] =~# '\s'
endfunction

" Window movement mappings
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


