# shellcheck shell=sh
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

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

# case x"$0" in
# x-ash) . "$HOME"/.ashrc ;;
# x-/bin/ash) . "$HOME"/.ashrc ;;
# xash) . "$HOME"/.ashrc ;;
# esac
