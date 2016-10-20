" search history of yank content using Unite.vim plugin
" https://github.com/Shougo/unite.vim
let g:unite_source_history_yank_enable = 1
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>
