if has("vms")
  set nobackup    " do not keep a backup file, use versions instead
else
  set backup    " keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile  " keep an undo file (undo changes after closing)
  endif
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

set colorcolumn=79
set ic
set number

set backupdir=.vim/,~/.vim/backups/,/tmp/
set directory=.vim/,~/.vim/backups/,/tmp/
set undodir=.vim/,~/.vim/backups/,/tmp/

set t_Co=256
set t_ut=
set splitbelow
set termwinsize=8x0
