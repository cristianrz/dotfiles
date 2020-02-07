# Cristian’s dotfiles

## Installation

**Warning:** If you want to give these dotfiles a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

``` bash
printf 'alias dotfiles="git --git-dir="$HOME"/.dotfiles/ --work-tree="$HOME"' >>~/.bashrc
. ~/.bashrc
git clone --bare https://github.com/cristianrz/dotfiles.git "$HOME"/.dotfiles
dotfiles config --local status.showUntrackedFiles no
dotfiles reset --hard
```

## Feedback

Suggestions/improvements
[welcome](https://github.com/cristianrz/dotfiles/issues)!


