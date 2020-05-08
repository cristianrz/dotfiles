#!/bin/sh
# This file is read at bash startup

case $- in
*i*) ;;
*) return ;;
esac

cat ~/.cache/wal/sequences

if [ -z "$TMUX" ] && command -v tmux >/dev/null 2>&1 ; then
	tmux
fi

# shellcheck source=/dev/null
[ -f "$HOME"/.private ] && . "$HOME"/.private

# Aliases
alias amimullvad="curl https://am.i.mullvad.net/connected"
alias compress="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias cd-local='cd "$HOME/.local"'
alias cp="cp -v"
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias grep="grep --color=auto"
alias his="history 1000 | grep -i"
alias ll="ls -l"
alias ls='ls -h --color=auto --group-directories-first'
alias mkdir="mkdir -v"
alias mv="mv -v"
alias shellcheck="shellcheck -x"
alias shfmt="shfmt -p -s -i 0 -w"

# Exports
export EDITOR="vi"
export HISTFILE="$HOME"/.bash_history
export HISTSIZE=
export HISTFILESIZE= # Infinite history

PS1='\H $(basename "${PWD}")/ ($("$git" rev-parse --abbrev-ref HEAD 2>/dev/null)) \$ ' export PS1

# Functions

open() {
	case x"$1" in
	x-v) xdg-open "$@" ;;
	*) nohup xdg-open "$@" >/dev/null 2>&1 & ;;
	esac
}


# Misc
# synclient VertScrollDelta=-42
# synclient HorizScrollDelta=-42
