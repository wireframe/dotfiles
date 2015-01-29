" Enable spellchecking for Markdown
autocmd FileType markdown setlocal spell

" wrap at 80 characters
" see http://robots.thoughtbot.com/wrap-existing-text-at-80-characters-in-vim
" trigger by highlighting text and executing: gq
au BufRead,BufNewFile *.md setlocal textwidth=80
