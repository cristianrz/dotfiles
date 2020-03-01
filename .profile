#!/bin/sh
#
# Copyright 2019 Cristian Ariza
#
# See LICENSE file for license details.
#
# .profile: executed by the command interpreter for login shells.

# Stops git from prompting a graphical login
unset SSH_ASKPASS

# Sources

# shellcheck source=/dev/null
[ -f "$HOME"/.private ] && . "$HOME"/.private
[ -s /etc/mkshrc ] && . /etc/mkshrc

# Aliases
alias compress="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias cp="cp -v"
alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'
alias grep="/bin/env grep --color=auto"
alias his="history 1000 | grep -i"
alias ll="ls -lrt"
alias ls='/bin/env ls -N -h --group-directories-first'
alias mkdir="/bin/env mkdir -v"
alias mv="/bin/env mv -v"
alias open="/bin/env xdg-open"
alias shfmt="/bin/env shfmt -s -i 0 -w"
alias unstow="/bin/env stow -D"

# Exports
export GOBIN="$HOME/go/bin"
export GOPATH="$HOME/go"
export HISTFILE="$HOME"/.mksh_history
export HISTFILESIZE= # Infinite history
export TERM="screen-256color"

path_add(){
    case "$PATH" in
    "") PATH="$*" ;;
    *) PATH="$PATH:$*" ;;
    esac
}

unset PATH
path_add "$HOME"/bin
path_add "$HOME"/go/bin
path_add /usr/local/bin
path_add /usr/local/go/bin
path_add /usr/bin
path_add /bin
export PATH

PS1='[31m$(e=$?; (( e )) && printf "(%s) " "$e")[36m$USER[90m@[95m$HOSTNAME [90m${PWD##*/} [36m$[39m '
export PS1

# Functions
amimullvad() { curl -s https://am.i.mullvad.net/connected; }

# Bindings

case "$0" in
*mksh*) bind '^L=clear-screen' ;;
esac

# Misc

PENDING="$HOME"/.cache/tsk/pending.csv
if [ -f "$PENDING" ] && [ -n "$(cat "$HOME"/.cache/tsk/pending.csv)" ]; then
	tsk p
	echo
fi
unset PENDING

export EDITOR="vi"
