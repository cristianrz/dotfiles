#!/bin/env sh
alias ls="ls -a"

# I prefer lrt rather than the usual ll
alias ll="ls -lrt"

# Alias xdg-open to open
alias open="xdg-open"

# Downloads from youtube in mp3 directly
alias yt2mp3="youtube-dl --extract-audio --audio-format mp3"

# This function searches through the history
alias his="history 1000 | grep"

# br edits file names in vim
alias br="vimv;ls -1"

# grep with colours
alias grep="grep --color=auto"

# Give priority to less over more
alias more="less"

# Exit terminal like in vim
alias :q="exit"

# Add more verbose to move copy and create directories
alias mv="mv -v"
alias cp="cp -v"
alias mkdir="mkdir -v"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
