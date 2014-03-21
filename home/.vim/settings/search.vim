" Searching
set hlsearch                      " highlight matches
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter
map <leader>h :noh<CR>            " toggle highlighting of search terms

" clear search highlighting
" see http://stackoverflow.com/questions/4372660/get-rid-of-vims-highlight-after-searching-text
nnoremap <silent> <esc> :noh<cr><esc>

