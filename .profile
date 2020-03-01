#!/bin/sh
#
# Copyright 2019 Cristian Ariza
#
# See LICENSE file for license details.
#
# .profile: executed by the command interpreter for login shells.

# Stops git from prompting a graphical login
unset SSH_ASKPASS
EDITOR="vi"

# source the system-wide mkshrc file
[[ -s /etc/mkshrc ]] && . /etc/mkshrc

#########
# Aliases
#########

alias compress="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias cp="cp -v"
alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'
alias grep="/bin/env grep --color=auto"
alias his="history 1000 | grep -i"
alias ll="ls -lrt"
alias ls='/bin/env ls -N -h --group-directories-first'
alias mkdir="mkdir -v"
alias mv="mv -v"
alias open="xdg-open"
alias shfmt="shfmt -s -i 0 -w"
alias unstow="stow -D"
alias vi="vim.tiny"
test ! -f /bin/pip && alias pip="pip3"

#########
# Exports
#########


export GOBIN="$HOME/go/bin"
export GOPATH="$HOME/go"
export TERM="screen-256color"

export HISTFILESIZE= # Infinite history
export HISTFILE="$HOME"/.mksh_history

path_add(){
    case "$PATH" in
    "") PATH="$*" ;;
    *) PATH="$PATH":"$*" ;;
    esac
}

PATH=
path_add "$HOME"/bin
path_add "$HOME"/go/bin
path_add /usr/local/bin
path_add /usr/bin
path_add /bin
export PATH

###########
# Functions
###########

# ls and print a new line after cd
c() {
	cd "$@" &&
	ls &&
	echo ""
}

# opens a link inside a text file
openlink() {
	xdg-open "$(cat "$1")" > /dev/null 2>&1 &
}

case "$0" in
*bash*) . ~/.bashrc ;;
*mksh*) . ~/.mkshrc ;;
*oksh*) . ~/.okshrc ;;
*yash*) . ~/.yashrc ;;
esac

amimullvad() {
	curl -s https://am.i.mullvad.net/connected
}
