#!/bin/sh
case $- in
*i*) ;;
*) return;;
esac

if [ -z "$TMUX" ]; then
	printf 'tmux? ' && read -r ans
	[ "$ans" = "y" ] || [ "$ans" = "" ] && exec tmux
fi

# shellcheck source=/dev/null
[ -f "$HOME"/.private ] && . "$HOME"/.private

# Aliases
alias amimullvad="curl https://am.i.mullvad.net/connected"
alias compress="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias cd-local="cd $HOME/.local"
alias cp="cp -v"
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias grep="grep --color=auto"
alias his="history 1000 | grep -i"
alias ll="ls -l"
alias ls='ls -h --color=auto --group-directories-first'
alias mkdir="mkdir -v"
alias mv="mv -v"
alias shellcheck="shellcheck -x"
alias shfmt="shfmt -s -i 0 -w"

# Exports
export EDITOR="vi"
export HISTFILE="$HOME"/.bash_history
export HISTSIZE=
export HISTFILESIZE= # Infinite history

PS1='\H \w \$ '
export PS1

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

wal -i ~/Pictures/stairs.jpg >/dev/null 2>&1

# case "$TERM" in
# linux | screen) ;;
# *) exec tmux ;;
# esac


alias LOCAL="/home/crz/.local"
