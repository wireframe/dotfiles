" Unite.vim plugin
" https://github.com/Shougo/unite.vim
" see http://bling.github.io/blog/2013/06/02/unite-dot-vim-the-plugin-you-didnt-know-you-need/
" see http://www.codeography.com/2013/06/17/replacing-all-the-things-with-unite-vim.html

" set plugin default settings
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" find files
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files -start-insert file_rec/async:!<cr>

" find file content
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--line-numbers --nocolor --nogroup --hidden'
call unite#custom#source('file_rec,file_rec/async', 'ignore_globs', split(&wildignore, ','))
let g:unite_source_grep_recursive_opt = ''
noremap <leader>c :<C-u>Unite -no-quit -winheight=10 -buffer-name=grep grep:.<cr>

" find yank history
let g:unite_source_history_yank_enable = 1
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank history/yank<cr>

" find buffers
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffer buffer<cr>

" Custom mappings for the unite buffer
" Play nice with supertab
" Enable navigation with control-j and control-k in insert mode
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  let b:SuperTabDisabled=1
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)

  nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction
