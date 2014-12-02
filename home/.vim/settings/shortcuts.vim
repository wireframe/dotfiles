" don't use Ex mode, use Q for formatting
map Q gq

" define %% as helper for directory of current file
" see http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" navigate to current files
map <leader>e :edit %%
map <leader>v :view %%

" Fast saving of current file
nmap <leader>w :w!<cr>

" Fast closing of current buffer
nmap <leader>q :q!<cr>

" Quickly edit/reload the vimrc file
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :edit $MYVIMRC<CR>

" save files that need sudo access
" http://www.catonmat.net/blog/sudo-vim/
cnoremap sudow w !sudo tee % >/dev/null
