" Unite.vim plugin
" https://github.com/Shougo/unite.vim
" see http://bling.github.io/blog/2013/06/02/unite-dot-vim-the-plugin-you-didnt-know-you-need/
" see http://www.codeography.com/2013/06/17/replacing-all-the-things-with-unite-vim.html

" set plugin default settings
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

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
