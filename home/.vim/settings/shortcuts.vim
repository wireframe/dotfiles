" define common shortcuts for normal mode
" see http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)

" don't use Ex mode, use Q for formatting
map Q gq

" navigate to current directory
map <leader>e :edit %%

" Fast saving of current file
nnoremap <leader>w :w!<cr>

" Fast closing of current buffer
nnoremap <leader>q :q!<cr>

" Quickly edit/reload the vimrc file
nnoremap <leader>vs :source $MYVIMRC<CR>
nnoremap <leader>ve :edit $MYVIMRC<CR>

" open alternate file in split
nnoremap <leader>a :AV<cr>

" open a new buffer (in a vertical split)
nnoremap <leader>n :vnew<CR>
