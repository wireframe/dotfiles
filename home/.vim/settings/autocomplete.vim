" exclude files from autocomplete
set wildignore+=*.rbc,*.scssc,*.sassc      " sass cache files
set wildignore+=*.orig                     " git conflict files
set wildignore+=*/coverage/*               " test coverage generated files
set wildignore+=*/vendor/*                 " vendor files
set wildignore+=TEST-*.xml                 " testunit generated files
set wildignore+=*/tmp/*                    " tmp files
set wildignore+=*/log/*                    " log log  files
set wildignore+=*.so,*.swp,*.zip           " binary files

" NeoComplete Settings
" see https://github.com/Shougo/neocomplete.vim
let g:neocomplete#enable_at_startup = 1

" use TAB to select completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
