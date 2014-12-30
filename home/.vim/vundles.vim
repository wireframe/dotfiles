" Delegate plugin management to Vundle
" disable filetypes (required)
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

" Core Plugins
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-eunuch'

" Navigation Plugins
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'tpope/vim-vinegar'

" Editing Plugins
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-rails'
Plugin 'unifieddialog/vim-rspec-focus'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-dispatch'
Plugin 'christoomey/vim-tmux-navigator'
Plugin '907th/vim-auto-save'
Plugin 'jaxbot/github-issues.vim'
Plugin 'Shougo/neocomplete.vim'

" Syntax plugins
Plugin 'scrooloose/syntastic'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'

" UI Plugins
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

" re-enable filtypes (required)
filetype plugin indent on

