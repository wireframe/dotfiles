" Vim-plug plugin manager
" see https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Core Plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-eunuch'

" Navigation Plugins
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc', {'do' : 'make'}
Plug 'pbrisbin/vim-mkdir'
if !has('nvim')
  Plug 'eiginn/netrw'
endif
Plug 'tpope/vim-vinegar'

" Editing Plugins
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug '907th/vim-auto-save'
Plug 'editorconfig/editorconfig-vim'
Plug 'Raimondi/vim_search_objects'
Plug 'terryma/vim-expand-region'

" Ruby development
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
Plug 'wireframe/vim-rspec-focus'
Plug 'nelstrom/vim-textobj-rubyblock'

" Git integrations
Plug 'mattn/webapi-vim' | Plug 'mattn/gist-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

" Completion Plugins
if !has('nvim')
  Plug 'Shougo/neocomplete.vim'
endif
if has('nvim')
  Plug 'Shougo/deoplete.nvim'
end
Plug 'tpope/vim-endwise'

" Syntax plugins
Plug 'scrooloose/syntastic'
Plug 'kana/vim-textobj-user'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'vim-ruby/vim-ruby'
Plug 'elzr/vim-json'
Plug 'slim-template/vim-slim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'tpope/vim-cucumber'

" UI Plugins
Plug 'flazz/vim-colorschemes'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'

call plug#end()
