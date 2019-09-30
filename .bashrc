#!/bin/bash
# .bashrc

# Return if it is a non interactive shell
[[ $- == *i* ]] || return

if [[ $(pwd) == *system32* ]]; then
	   cd || exit
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
		. /etc/bashrc
fi

if [ -f "$HOME/.env" ]; then
		. "$HOME/.env"
fi

if [ -f "$HOME/.alias" ];  then
		. "$HOME/.alias"
fi

if [ -f "$HOME/.functions" ];  then
		. "$HOME/.functions"
fi

if [ -f "$HOME/.local-env" ];  then
		. "$HOME/.local-env"
fi

check_xterm

# Uses the previously defined cd function when you open a terminal
cd . || exit
