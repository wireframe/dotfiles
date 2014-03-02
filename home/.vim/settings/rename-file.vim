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
