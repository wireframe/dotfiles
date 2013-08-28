set nocompatible
syntax enable
set encoding=utf-8

" Delegate plugin management to Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
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

filetype plugin indent on

:runtime macros/matchit.vim       " enable matchit for textobj-ruby plugin

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
" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter
nnoremap <CR> :noh<CR><CR>        " clear last search pattern register by hitting return or escape

function s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

if has("autocmd")
  " In Makefiles, use real tabs, not tabs expanded to spaces
  au FileType make set noexpandtab

  " Make sure all mardown files have the correct filetype set and setup wrapping
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown | call s:setupWrapping()

  " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json set ft=javascript

  " make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
  au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

  " Remember last location in file, but not for commit messages.
  " see :help last-position-jump
  au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif

" provide some context when editing
set scrolloff=3

" don't use Ex mode, use Q for formatting
map Q gq

" remap leader to comma
let mapleader=","

" define %% as helper for directory of current file
" see http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" ctrlp plugin
" file search tool
" remap CMD-T to launch ctrlp
let g:ctrlp_map = '<D-t>'
" exclude files from autocomplete
set wildignore+=*.rbc,*.scssc,*.sassc      " sass cache files
set wildignore+=*.orig                     " git conflict files
set wildignore+=SPEC-*.xml                 " rspec generated files
set wildignore+=TEST-*.xml                 " testunit generated files
set wildignore+=TEST-*.xml                 " testunit generated files
set wildignore+=TEST-*.xml                 " testunit generated files
set wildignore+=*/tmp/*                    " tmp files
set wildignore+=*.so,*.swp,*.zip           " binary files

" ackmate plugin
" map CMD-SHIFT-F to find
map <D-F> :Ack<space>
" configure Ack.vim plugin to use Ag
let g:ackprg = 'ag --smart-case --nogroup --nocolor --column'

" mappings for common functions
" CMD-SHIFT-T to open a new tab
map <D-T> :tabnew<cr>

" shortcut to toggle to 'alternate' buffer
nnoremap <leader><leader> <c-^>

command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>

" shortcuts for creating split windows
" \ for vertical split
" - for horizontal split
nnoremap <leader>\ <C-w>v
nnoremap <leader>- <C-w>s

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" disable backups and swap files
set noswapfile
set directory=~/.vim/_temp      " where to put swap files.
set nobackup
set backupdir=~/.vim/_backup    " where to put backup files.

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

" include ctags from gems
set tags+=gems.tags

" Quickly edit/reload the vimrc file
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :edit $MYVIMRC<CR>

" navigate to current files
map <leader>e :edit %%
map <leader>v :view %%

" tagbar plugin
" http://github.com/majutsushi/tagbar
map <leader>t :TagbarToggle<cr>

" Map Command-# to switch tabs
map  <D-0> 0gt
imap <D-0> <Esc>0gt
map  <D-1> 1gt
imap <D-1> <Esc>1gt
map  <D-2> 2gt
imap <D-2> <Esc>2gt
map  <D-3> 3gt
imap <D-3> <Esc>3gt
map  <D-4> 4gt
imap <D-4> <Esc>4gt
map  <D-5> 5gt
imap <D-5> <Esc>5gt
map  <D-6> 6gt
imap <D-6> <Esc>6gt
map  <D-7> 7gt
imap <D-7> <Esc>7gt
map  <D-8> 8gt
imap <D-8> <Esc>8gt
map  <D-9> 9gt
imap <D-9> <Esc>9gt

" cleanup whitespace from file on save
" remove trailing whitespace
" convert hard tabs to soft tabs
function! <SID>CleanupWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    %s/\t/  /ge
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>CleanupWhitespace()

" support renaming file directly through vim
" see https://github.com/f1sherman/dotvim/blob/master/vimrc
map <leader>n :call RenameFile()<cr>
function! RenameFile()
  let s:old_name = expand('%')
  let s:new_name = input('New file name: ', expand('%'), 'file')
  if s:new_name != '' && s:new_name != s:old_name
    " create the directory if it doesn't already exist
    let s:dir = fnamemodify(s:new_name, ":p:h")
    if !isdirectory(s:dir)
      call mkdir(s:dir, "p")
    endif
    unlet s:dir

    try " first try to move with git so history is preserved properly
      exec ':Gmove ' . s:new_name
    catch E768
      " swap file exists, ignore and edit the moved file
      exec ':edit ' . s:new_name
    catch E492
      " file is not in git, move it outside of git
      exec ':saveas ' . s:new_name
      exec ':silent !rm ' . s:old_name
    catch /fugitive: fatal: not under version control/
      " file is not in git, move it outside of git
      exec ':saveas ' . s:new_name
      exec ':silent !rm ' . s:old_name
    finally
      exec ':CommandTFlush'
    endtry
    redraw!
  endif

  unlet s:old_name
  unlet s:new_name
endfunction