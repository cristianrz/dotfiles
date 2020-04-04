EDITOR="vi"

# source the system-wide mkshrc file
[[ -s /etc/mkshrc ]] && . /etc/mkshrc

#########
# Aliases
#########

alias compress="7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on"
alias cp="cp -v"
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias grep="/bin/env grep --color=auto"
alias his="history 1000 | grep -i"
alias ll="ls -lrt"
alias ls='/bin/env ls -N -h --group-directories-first'
alias mkdir="/bin/env mkdir -v"
alias mv="/bin/env mv -v"
alias open="/bin/env xdg-open"
alias shfmt="/bin/env shfmt -s -i 0 -w"
alias unstow="/bin/env stow -D"

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
path_add /usr/local/go/bin
export PATH

###########
# Functions
###########

amimullvad() {
	curl -s https://am.i.mullvad.net/connected
}

PENDING="$HOME"/.cache/tsk/pending.csv
if [ -f "$PENDING" ] && [ -n "$(cat "$HOME"/.cache/tsk/pending.csv)" ]; then
	tsk p
	echo
fi
unset PENDING

#########
# Sources
#########

if [ -f "$HOME"/.private ]; then
	. "$HOME"/.private
fi

##########
# Bindings
##########

case "$0" in
*mksh*) bind '^L=clear-screen' ;;
esac

PS1='[31m$(e=$?; (( e )) && printf "(%s) " "$e")[36m$USER[90m@[95m$HOSTNAME [90m${PWD##*/} [36m$[39m '
# PS1="$(
# 	EXIT="\$?"
# 	case "\$EXIT" in
# 	0) ;;
# 	*) printf '%s|' "\$EXIT" ;;
# 	esac
# 
# 	echo -e "EXIT=$?; \e[36m$USER\e[90m@\e[95m$HOSTNAME \e[90m\${PWD##*/} \e[36m$\e[39m "
# )"

# ${debian_chroot:+($debian_chroot)}${| \builtin typeset e=$? (( e )) && REPLY+="$e|" REPLY+=${USER}@${HOSTNAME%%.*}: \builtin typeset d=${PWD:-?}/ p=~; [[ $p = ?(*/) ]] || d=${d/#$p\//\~/} d=${d%/}; \builtin typeset m=${%d} n p=...; (( m > 0 )) || m=${#d} (( m > (n = (COLUMNS/3 < 7 ? 7 : COLUMNS/3)) )) && d=${d:(-n)} || p= REPLY+=$p$d \builtin return $e } $
