" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Plugin Initialization w/ vim-plug
if filereadable(expand("./plugins.vim"))
  source ~/.vim/plugins.vim
endif

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

" load individual settings configuration files
" see https://github.com/skwp/dotfiles/blob/master/vimrc
for fpath in split(globpath('./config.d', '*.vim'), '\n')
  exe 'source' fpath
endfor


" load files outside of versioned dotfiles
if filereadable(expand("~/.secrets.vim"))
  source ~/.secrets.vim
endif
