if has("vms")
  set nobackup    " do not keep a backup file, use versions instead
else
  set backup    " keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile  " keep an undo file (undo changes after closing)
  endif
endif

set colorcolumn=79
set ic
set number

set t_Co=256
set t_ut=
set backspace=indent,eol,start
set nocp

