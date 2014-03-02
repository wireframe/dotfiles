" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" turn on syntax highlighting
syntax enable
set encoding=utf-8

" =============== Vundle Initialization ===============
" This loads all the plugins specified in ~/.vim/vundle.vim
" Use Vundle plugin to manage all other plugins
if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

" remap leader to comma
let mapleader=","

set background=dark
color molokai
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
set backspace=indent,eol,start    " backspace through everything in insert mode

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

" don't use Ex mode, use Q for formatting
map Q gq

" define %% as helper for directory of current file
" see http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" shortcut to toggle to 'alternate' buffer
nnoremap <leader><leader> <c-^>

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %m\ %r

  " Add fugitive
  set statusline+=%{fugitive#statusline()}

  " Finish the statusline
  " set statusline+=Line:%l/%L[%p%%]
  " set statusline+=Col:%v
  " set statusline+=Buf:#%n
  " set statusline+=[%b][0x%B]
endif

" Quickly edit/reload the vimrc file
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :edit $MYVIMRC<CR>

" navigate to current files
map <leader>e :edit %%
map <leader>v :view %%

" load individual settings configuration files
" see https://github.com/skwp/dotfiles/blob/master/vimrc
for fpath in split(globpath('~/.vim/settings', '*.vim'), '\n')
  exe 'source' fpath
endfor

