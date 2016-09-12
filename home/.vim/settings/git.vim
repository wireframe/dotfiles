" configuration for fugitive vim plugin
" see https://github.com/tpope/vim-fugitive
" see :help fugitive

" shortcuts for common operations
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gc :Gcommit --verbose<CR>
nnoremap <Leader>ga :Gcommit --ammend --verbose<CR>
nnoremap <Leader>gl :Glog<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gp :Gpush origin HEAD<CR>
nnoremap <Leader>gu :Git update<CR>

" configuration for git gutter plugin
" see https://github.com/airblade/vim-gitgutter
set updatetime=250
