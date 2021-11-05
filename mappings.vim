"substitute with leader and 's'
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>
"Allways very-magic search
nnoremap / /\v

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
"Saves files as sudo on files that require root privileges
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"Moving Lines vertically
xnoremap <silent> K :call functions#move_up()<CR>
xnoremap <silent> J :call functions#move_down()<CR>


"----
"Plugin mappings

"FZF mappings
"Hfiles defined in config.vim
noremap <leader>h <Esc>:Helptags<CR>
noremap <leader>H <Esc>:History:<CR>
noremap <leader>b <Esc>:Buffers<CR>
noremap <leader>t <Esc>:Tags<CR>
noremap <leader>f <Esc>:Files<CR>
noremap <leader>F <Esc>:HFiles<CR>
noremap <leader>l <Esc>:BLines<CR>
noremap <leader>L <Esc>:Lines<CR>
noremap <leader>r <Esc>:Rg<CR>
noremap <leader>m <Esc>:Marks<CR>

"NERDTree
map <F6> :NERDTreeToggle <CR>

"Tagbar
nmap <F8> :TagbarToggle<CR>

"nvim-compe
inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

"vim-vsnip
" Expand
"imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
"smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
"
"" Expand or jump
"imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
"smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
"
"" Jump forward or backward
"imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
"smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
"imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
"smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
"
"" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
"" See https://github.com/hrsh7th/vim-vsnip/pull/50
"nmap        s   <Plug>(vsnip-select-text)
"xmap        s   <Plug>(vsnip-select-text)
"nmap        S   <Plug>(vsnip-cut-text)
"xmap        S   <Plug>(vsnip-cut-text)
