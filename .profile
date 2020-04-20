#!/usr/bin/env sh

# Sources

# shellcheck source=/dev/null
[ -f "$HOME"/.private ] && . "$HOME"/.private
[ -s /etc/mkshrc ] && . /etc/mkshrc

# Aliases
alias amimullvad="curl https://am.i.mullvad.net/connected"
alias compress="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias cp="cp -v"
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias grep="grep --color=auto"
alias his="history 1000 | grep -i"
alias ll="ls -lA"
alias ls='ls -N -h --color=auto --group-directories-first'
alias mkdir="mkdir -v"
alias mv="mv -v"
alias shellcheck="shellcheck -x"
alias shfmt="shfmt -s -i 0 -w"
alias unstow="stow -D"

# Exports
export EDITOR="vi"
export HISTFILESIZE= # Infinite history
export TERM="screen-256color"

case "$0" in
*mksh*) export HISTFILE="$HOME"/.mksh_history ;;
*bash*) export HISTFILE="$HOME"/.bash_history ;;
esac

# PS1='\[\033[38;5;081m\]\u\[\033[38;5;245m\]@\[\033[38;5;206m\]\H \[\033[38;5;245m\]\w \[\033[38;5;081m\]$ \[\e[0m\]'

path_add() {
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

case "$0" in
*mksh*) PS1='[31m$(e=$?; (( e )) && printf "(%s) " "$e")[36m$USER[90m@[95m$HOSTNAME [90m${PWD##*/} [36m$[39m ' ;;
*bash*) PS1='\[\033[38;5;081m\]\u\[\033[38;5;245m\]@\[\033[38;5;206m\]\H \[\033[38;5;245m\]\w \[\033[38;5;081m\]$ \[\e[0m\]' ;;
esac

export PS1

# Functions
gedit() {
	mousepad "$@" >/dev/null 2>&1 &
}

open() {
	if [ "x$1" = "x-v" ]; then
		shift
		xdg-open "$@"
	else
		nohup xdg-open "$@" >/dev/null 2>&1 &
	fi
}
