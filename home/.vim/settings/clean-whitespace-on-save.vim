" cleanup whitespace from file on save
" remove trailing whitespace
" convert hard tabs to soft tabs
function! <SID>CleanupWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    %s/\t/  /ge
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>CleanupWhitespace()
