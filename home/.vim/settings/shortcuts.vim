" don't use Ex mode, use Q for formatting
map Q gq

" define %% as helper for directory of current file
" see http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" navigate to current directory
map <leader>e :edit %%

" Fast saving of current file
nmap <leader>w :w!<cr>

" Fast closing of current buffer
nmap <leader>q :q!<cr>

" Quickly edit/reload the vimrc file
nnoremap <leader>vs :source $MYVIMRC<CR>
nnoremap <leader>ve :edit $MYVIMRC<CR>

" open alternate file in split
map <leader>a :AV<cr>

" save files that need sudo access
" http://www.catonmat.net/blog/sudo-vim/
cnoremap sudow w !sudo tee % >/dev/null
