#!/bin/env bash
# executed by the command interpreter for login shells.

# shellcheck disable=SC1090
test -d "$HOME/bin" && PATH="$HOME/bin:$PATH"
test -d "$HOME/.local/bin" && PATH="$HOME/.local/bin:$PATH"
export PATH

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
  PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if test -d "$HOME/.local/bin"; then
  PATH="$HOME/.local/bin:$PATH"
fi
