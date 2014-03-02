" ackmate plugin
" map CMD-SHIFT-F to find
map <D-F> :Ack<space>

" configure Ack.vim plugin to use Ag
let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'
