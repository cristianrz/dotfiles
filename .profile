#!/bin/env bash
# executed by the command interpreter for login shells.

# shellcheck disable=SC1090
test -d "$HOME/bin" && PATH="$HOME/bin:$PATH"
test -d "$HOME/.local/bin" && PATH="$HOME/.local/bin:$PATH"
export PATH

test "$0" == '-bash' && test -f "$HOME/.bashrc" && . "$HOME/.bashrc"
