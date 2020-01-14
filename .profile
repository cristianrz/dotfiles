#!/bin/sh
# executed by the command interpreter for login shells.

# Stops git from prompting a graphical login
unset SSH_ASKPASS

# if running mksh
if test "$0" == "-mksh"; then
  # shellcheck disable=SC1090
  . "$HOME/.mkshrc"
fi

# if running bash
if test -n "$BASH_VERSION" && test -f "$HOME/.bashrc"; then
  # shellcheck disable=SC1090
  . "$HOME/.bashrc"
fi

# set PATH so it includes user's private bin if it exists
if test -d "$HOME/bin"; then
  export PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if test -d "$HOME/.local/bin"; then
  export PATH="$HOME/.local/bin:$PATH"
fi
