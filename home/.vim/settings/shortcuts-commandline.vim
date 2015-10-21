" To map keys to work only in the command-line mode, use the cmap or cnoremap commands.
" see http://vim.wikia.com/wiki/Mapping_keys_in_Vim_-_Tutorial_(Part_1)

" save files that need sudo access
" http://www.catonmat.net/blog/sudo-vim/
cnoremap sudow w !sudo tee % >/dev/null

" define %% as helper for directory of current file
" see http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=expand('%:h').'/'<cr>
