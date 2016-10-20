" Find files using Unite.vim plugin
" https://github.com/Shougo/unite.vim
" Use ag for file name search
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files -start-insert file_rec/async:!<cr>
let g:unite_source_rec_async_command = [ 'ag', '--nocolor', '--nogroup', '--hidden', '-g', '' ]
