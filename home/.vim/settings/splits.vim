" Set default location of created splits
set splitbelow
set splitright

" shortcuts for creating split windows
" \ for vertical split
" - for horizontal split
nnoremap <leader>\ <C-w>v
nnoremap <leader>- <C-w>s

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" fix neovim not correctly handling <C-H>
" this is a dirty, dirty hack
" see https://github.com/neovim/neovim/issues/2048
if has('nvim')
  nmap <BS> <C-W>h
endif
