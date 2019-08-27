#!/bin/bash
# .bashrc

# Return if it is a non interactive shell
[[ $- == *i* ]] || return

if [[ $(pwd) == *system32* ]]; then
	   cd || exit
fi
HISTSIZE=
HISTFILESIZE=


# Source global definitions

if [ -f /etc/bashrc ]; then
		# shellcheck source=/etc/bashrc
		. /etc/bashrc
fi

if [ -f "$HOME/.env" ]; then
		# shellcheck source=/dev/null
		. "$HOME/.env"
fi

if [ -f "$HOME/.alias" ];  then
		# shellcheck source=/dev/null
		. "$HOME/.alias"
fi

if [ -f "$HOME/.functions" ];  then
		# shellcheck source=/dev/null
		. "$HOME/.functions"
fi

if [ -f "$HOME/.local-env" ];  then
		# shellcheck source=/dev/null
		. "$HOME/.local-env"
fi

# Uses the previously defined cd function when you open a terminal
cd . || exit

# Add win sudo
# shellcheck source=/dev/null
[ -f ~/bin/win-sudo/s/path.sh ] && source ~/bin/win-sudo/s/path.sh
