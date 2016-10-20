" Find content in files using Unite.vim plugin
" https://github.com/Shougo/unite.vim
" Use ag to search in files
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
  \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
  \ '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'' ' .
  \ '--ignore ''**/*.pyc'''
let g:unite_source_grep_recursive_opt=''
" TODO: try using ripgrep instead of ag
" let g:unite_source_grep_command = 'rg'
" let g:unite_source_grep_default_opts = '--hidden --no-heading --vimgrep --smart-case'
noremap <leader>c :<C-u>Unite -no-quit -winheight=10 -buffer-name=grep grep:.<cr>
