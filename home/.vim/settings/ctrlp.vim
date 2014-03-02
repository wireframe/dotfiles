" ctrlp plugin
" file search tool

" remap CMD-T to launch ctrlp
let g:ctrlp_map = '<D-t>'

" exclude files from autocomplete
set wildignore+=*.rbc,*.scssc,*.sassc      " sass cache files
set wildignore+=*.orig                     " git conflict files
set wildignore+=SPEC-*.xml                 " rspec generated files
set wildignore+=TEST-*.xml                 " testunit generated files
set wildignore+=TEST-*.xml                 " testunit generated files
set wildignore+=TEST-*.xml                 " testunit generated files
set wildignore+=*/tmp/*                    " tmp files
set wildignore+=*.so,*.swp,*.zip           " binary files
