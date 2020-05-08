# shellcheck shell=sh
# This file is read at login

NIX_PROFILE="$HOME/.nix-profile/etc/profile.d/nix.sh"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

