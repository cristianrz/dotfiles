# shellcheck shell=sh
# ~/.profile: executed by the command interpreter for login shells.

# shellcheck source=/dev/null
[ -f "$HOME"/.private ] && . "$HOME"/.private

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
export HISTFILE="$HOME"/.bash_history

open() {
	if [ "x$1" = "x-v" ]; then
		shift
		xdg-open "$@"
	else
		nohup xdg-open "$@" >/dev/null 2>&1 &
	fi
}

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

