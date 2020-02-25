#!/bin/sh
#
# Copyright 2019 Cristian Ariza
#
# See LICENSE file for license details.
#
# .profile: executed by the command interpreter for login shells.

# Stops git from prompting a graphical login
unset SSH_ASKPASS

# shellcheck disable=SC1090
test -d "$HOME/.local/bin" && PATH="$HOME/.local/bin:$PATH"
export PATH

# if running bash
if test -n "$BASH_VERSION" && test -f "$HOME/.bashrc"; then
  # shellcheck disable=SC1090
  . "$HOME/.bashrc"
fi

case "$0" in
*bash*) . ~/.bashrc ;;
*mksh*) . ~/.mkshrc ;;
*oksh*) . ~/.okshrc ;;
*yash*) . ~/.yashrc ;;
esac
