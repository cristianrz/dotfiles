# Cristian’s dotfiles

## Installation

**Warning:** If you want to give these dot files a try, you should first fork this repository, review the code, and remove things you don’t want or need. Don’t blindly use my settings unless you know what that entails. Use at your own risk!

``` bash
alias dot='git --git-dir="$HOME"/.dot --work-tree="$HOME"'
git clone --bare https://github.com/cristianrz/dot.git "$HOME"/.dot
dot config --local status.showUntrackedFiles no
dot reset --hard
```

## Feedback

Suggestions/improvements
[welcome](https://github.com/cristianrz/dotfiles/issues)!
