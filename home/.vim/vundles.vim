" Delegate plugin management to Vundle
" disable filetypes (required)
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-rails'
Bundle 'scrooloose/syntastic'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'pangloss/vim-javascript'
Bundle 'plasticboy/vim-markdown'
Bundle 'tomasr/molokai'
Bundle 'vim-ruby/vim-ruby'
Bundle 'ervandew/supertab'
Bundle 'tpope/vim-dispatch'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'elzr/vim-json'

:runtime macros/matchit.vim       " enable matchit for textobj-ruby plugin

" re-enable filtypes (required)
filetype plugin indent on

