" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup    " do not keep a backup file, use versions instead
else
  set backup    " keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile  " keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

if has('syntax') && has('eval')
  packadd! matchit
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" Declare the list of plugins.
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tomasiser/vim-code-dark'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set colorcolumn=80
set ic
set number
set mouse=a

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let g:NERDTreeWinSize=25

set backupdir=.vim/,~/.vim/backups/,/tmp/
set directory=.vim/,~/.vim/backups/,/tmp/
set undodir=.vim/,~/.vim/backups/,/tmp/

syntax on
set t_Co=256
set t_ut=
colorscheme codedark
set splitbelow
set termwinsize=8x0
let NERDTreeShowHidden=1

au VimEnter * NERDTree
au VimEnter * wincmd p

