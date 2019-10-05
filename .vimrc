" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
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

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'mattn/emmet-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'tyrannicaltoucan/vim-quantum'
Plug 'pangloss/vim-javascript'
Plug 'briancollins/vim-jst'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set colorcolumn=80
set expandtab
set ic
set number
set shiftwidth=2
set tabstop=2

let @h = 'i<!DOCTYPE html><html lang="en|€kb" dir-€kb=ltr"€kb€kb€kb€kb"ltr">	<head>		<meta>€kb charset="utf-8">		<title><tit€kb€kb€kb/*title€kb€kb€kb€kb€kb€kbtitle>	</head>	<o€kbbody>	</body></html>€ku€ku€ku€ku€ku€kr€kr€kr€kr€kr€kr€kr€kr€ýa'


noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
set termguicolors
colorscheme quantum

set t_te=[H[2J

set backupdir=.vim/,~/.vim/backups/,/tmp/
set directory=.vim/,~/.vim/backups/,/tmp/
set undodir=.vim/,~/.vim/backups/,/tmp/
