#!/bin/bash
# .bashrc

# Return if it is a non interactive shell
[[ $- == *i* ]] || return

if [[ $(pwd) == *system32* ]]; then
	cd || exit
fi

# Source global definitions
# shellcheck disable=SC1091
[[ -f /etc/bashrc ]] && . /etc/bashrc

# shellcheck disable=SC1090
[[ -f "$HOME/.env" ]] && . "$HOME/.env"

# shellcheck disable=SC1090
[[ -f "$HOME/.alias" ]] && . "$HOME/.alias"

# shellcheck disable=SC1090
[[ -f "$HOME/.functions" ]] && . "$HOME/.functions"

# shellcheck disable=SC1090
[[ -f "$HOME/.local-env" ]] && . "$HOME/.local-env"

# Uses the previously defined cd function when you open a terminal
cd . || exit
