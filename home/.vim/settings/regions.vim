" configure expand-region plugin
" see https://github.com/terryma/vim-expand-region

" use v and CTRL + v to expand/contract selected region
" see http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
