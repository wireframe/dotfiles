" Unite.vim plugin
" https://github.com/Shougo/unite.vim
" see http://bling.github.io/blog/2013/06/02/unite-dot-vim-the-plugin-you-didnt-know-you-need/

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" find files
nnoremap <leader>f :Unite -start-insert file_rec/async:!<cr>

" find file content
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
              \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
              \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
let g:unite_source_grep_recursive_opt = ''
noremap <leader>c :Unite grep:.<cr>

" find yank history
let g:unite_source_history_yank_enable = 1
nnoremap <leader>y :Unite history/yank<cr>

" find buffers
nnoremap <leader>b :Unite -quick-match buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction
