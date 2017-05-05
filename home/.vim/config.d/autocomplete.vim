" NeoComplete Settings
" see https://github.com/Shougo/neocomplete.vim
let g:neocomplete#enable_at_startup = 1

" use tab to select completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" scroll popup with ctrl-j/k
inoremap <expr><C-j> pumvisible()?  "\<C-n>" : "\<C-j>"
inoremap <expr><C-k> pumvisible()?  "\<C-p>" : "\<C-k>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags

" NVim Deoplete Settings
" see https://github.com/Shougo/deoplete.nvim
let g:deoplete#enable_at_startup = 1
