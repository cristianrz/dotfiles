# shellcheck shell=sh
# This file is read at login

NIX_PROFILE="$HOME/.nix-profile/etc/profile.d/nix.sh"

# shellcheck source=/home/crz/.nix-profile/etc/profile.d/nix.sh
[ -e "$NIX_PROFILE" ] && . "$NIX_PROFILE"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ]; then
	PATH="$HOME/.local/bin:$PATH"
fi

if [ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
fi
