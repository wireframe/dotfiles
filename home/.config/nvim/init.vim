" Plugin Initialization w/ vim-plug
source ~/.config/nvim/plugins.vim

" configure leader
let mapleader="\<Space>"

set background=dark
colorscheme gruvbox
set guifont=Monaco:h15

set nonumber
set ruler       " show the cursor position all the time
set cursorline
set showcmd     " display incomplete commands
set number      " show line numbers
set clipboard=unnamed "copy to system clipboard

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden

" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters

" load individual configuration files
" see https://github.com/skwp/dotfiles/blob/master/vimrc
for fpath in split(globpath('~/.config/nvim/config.d', '*.vim'), '\n')
  exe 'source' fpath
endfor

" load unversioned config
if filereadable(expand("~/.config/nvim/secrets.vim"))
  source ~/.config/nvim/secrets.vim
endif
