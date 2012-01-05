""
"" Thanks:
""   Gary Bernhardt  <destroyallsoftware.com>
""   Drew Neil  <vimcasts.org>
""   Tim Pope  <tbaggery.com>
""   Janus  <github.com/carlhuda/janus>
""

set nocompatible
syntax enable
set encoding=utf-8

call pathogen#infect()
filetype plugin indent on

set background=dark
color molokai
set nonumber
set ruler       " show the cursor position all the time
set cursorline
set showcmd     " display incomplete commands
set number      " show line numbers

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden

"" Whitespace
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
"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter
nnoremap <esc> :noh<return><esc>  " clear last search pattern register by hitting return or escape

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

let mapleader=","

" define %% as helper for directory of current file
" see http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" command T plugin
" mappings:
" * search only current directory
" options:
noremap <D-t> <ESC>:CommandT<cr>
noremap <leader>f <ESC>:CommandT<cr>
noremap <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>
let g:CommandTMaxHeight=10

" mappings for ackmate plugin
map <D-F> :Ack<space>

" mappings for common functions
map <D-T> :tabnew<cr>

" exclude files from command-t autocomplete
set wildignore+=*.rbc,*.scssc,*.sassc      " sass cache files
set wildignore+=*.orig                     " git conflict files
set wildignore+=spec/reports/SPEC-*.xml    " rspec generated files

nnoremap <leader><leader> <c-^>

" find merge conflict markers
nmap <silent> <leader>cf <ESC>/\v^[<=>]{7}( .*\|$)<CR>

command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

set backupdir=~/.vim/_backup    " where to put backup files.
set directory=~/.vim/_temp      " where to put swap files.

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


"github gist support
"load settings from global ~/.gitconfig
let g:github_user=system('git config -z --global --get github.user')
let g:github_token=system('git config -z --global --get github.token')

" include ctags from gems
set tags+=gems.tags

" Quickly edit/reload the vimrc file
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>ev :edit $MYVIMRC<CR>

" navigate to current files
map <leader>e :edit %%
map <leader>v :view %%
