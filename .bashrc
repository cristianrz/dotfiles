# Sources

# shellcheck source=/dev/null
[ -f "$HOME"/.private ] && . "$HOME"/.private

# Aliases
alias amimullvad="curl https://am.i.mullvad.net/connected"
alias compress="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias cp="cp -v"
alias dot='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias grep="grep --color=auto"
alias his="history 1000 | grep -i"
alias ll="ls -lrt"
alias ls='ls -h --color=auto --group-directories-first'
alias mkdir="mkdir -v"
alias mv="mv -v"
alias shellcheck="shellcheck -x"
alias shfmt="shfmt -s -i 0 -w"
alias unstow="stow -D"

# Exports
export EDITOR="vi"
export HISTFILE="$HOME"/.bash_history
export HISTFILESIZE= # Infinite history

# path_add() {
# 	case "$PATH" in
# 	"") PATH="$*" ;;
# 	*) PATH="$PATH:$*" ;;
# 	esac
# }

# unset PATH
# path_add "$HOME"/bin
# path_add "$HOME"/go/bin
# path_add /usr/local/bin
# path_add /usr/local/go/bin
# path_add /usr/bin
# path_add /bin
# export PATH

PS1='\[\033[38;5;081m\]\u\[\033[38;5;245m\]@\[\033[38;5;206m\]\H \[\033[38;5;245m\]\w \[\033[38;5;081m\]$ \[\e[0m\]'
export PS1

# Functions

open() {
	if [ "x$1" = "x-v" ]; then
		shift
		xdg-open "$@"
	else
		nohup xdg-open "$@" >/dev/null 2>&1 &
	fi
}

# Misc
synclient VertScrollDelta=-42
synclient HorizScrollDelta=-42

case "$TERM" in
linux) ;;
screen) ;;
*) exec tmux ;;
esac

wal -i ~/Pictures/stairs.jpg >/dev/null 2>&1

PATH="$HOME/bin:/usr/local/bin:/usr/bin:/bin"
export PATH
