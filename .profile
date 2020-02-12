#!/bin/sh
# executed by the command interpreter for login shells.

# shellcheck disable=SC1090
test -d "$HOME/.local/bin" && PATH="$HOME/.local/bin:$PATH"
export PATH

# if running bash
if test -n "$BASH_VERSION" && test -f "$HOME/.bashrc"; then
  # shellcheck disable=SC1090
  . "$HOME/.bashrc"
fi

