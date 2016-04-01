" Delegate plugin management to Vundle
" disable filetypes (required)
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

" Core Plugins
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-eunuch'

" Navigation Plugins
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimproc'
Plugin 'pbrisbin/vim-mkdir'
Plugin 'eiginn/netrw'
Plugin 'tpope/vim-vinegar'

" Editing Plugins
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'christoomey/vim-tmux-navigator'
Plugin '907th/vim-auto-save'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'Raimondi/vim_search_objects'
Plugin 'terryma/vim-expand-region'

" Ruby development
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'wireframe/vim-rspec-focus'
Plugin 'nelstrom/vim-textobj-rubyblock'

" Git integrations
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-fugitive'

" Completion Plugins
if !has('nvim')
  Plugin 'Shougo/neocomplete.vim'
endif
if has('nvim')
  Plugin 'Shougo/deoplete.nvim'
end
Plugin 'jaxbot/github-issues.vim'
Plugin 'solars/github-vim'
Plugin 'tpope/vim-endwise'

" Syntax plugins
Plugin 'scrooloose/syntastic'
Plugin 'kana/vim-textobj-user'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'vim-ruby/vim-ruby'
Plugin 'elzr/vim-json'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'mustache/vim-mustache-handlebars'

" UI Plugins
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'

call vundle#end()

" re-enable filtypes (required)
filetype plugin indent on

