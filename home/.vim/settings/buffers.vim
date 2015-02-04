" shortcut to toggle to 'alternate' buffer
nnoremap <leader><leader> <c-^>

" reload buffers from disk
" see http://superuser.com/questions/247083/reload-file-in-vim
" consider setting autoread flag instead
nnoremap <leader>r :bufdo e<CR>
