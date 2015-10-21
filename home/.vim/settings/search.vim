" Searching
set hlsearch                      " highlight matches
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter

" clear highlighting of current search term
" see http://stackoverflow.com/a/1352341/4163696
nnoremap <silent> <CR> :let @/=""<CR>
