" Window movement mappings
" Using Alt & movementkeys instead of Ctrl + w 
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

" Window scaling
nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Right> <C-w>>
nnoremap <C-Left> <C-w><	

" Navigation
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"remap to get normal moving with long lines wich are displayed on one
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

"Command mode mappings
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"----
"Plugin mappings

"FZF mappings
"Hfiles defined in config.vim
noremap <leader>h <Esc>:Helptags<CR>
noremap <leader>b <Esc>:Buffers<CR>
noremap <leader>t <Esc>:Tags<CR>
noremap <leader>f <Esc>:Files<CR>
noremap <leader>F <Esc>:HFiles<CR>

"NERDTree
map <F6> :NERDTreeToggle <CR>

"Tagbar 
nmap <F8> :TagbarToggle<CR>

