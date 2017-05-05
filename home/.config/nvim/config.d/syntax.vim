" configure syntactic plugin
" see https://github.com/scrooloose/syntastic
let g:syntastic_ruby_checkers = ['rubocop']

" alias es6 files to javascript
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
