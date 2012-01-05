color vwilight
set guifont=Menlo\ Regular:h14
set linespace=2
set antialias

" Don't beep
set visualbell

set guioptions-=T   " No toolbar
set guioptions-=r   " No scrollbars

if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert

  " unmap <D-t> from opening new tabs (used for command-t plugin instead)
  macmenu &File.New\ Tab key=<nop>
  macmenu &File.Open\ Tab\.\.\. key=<nop>
end
