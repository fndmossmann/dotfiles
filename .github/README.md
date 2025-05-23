# Dotfiles

Dotfiles managed via bare repository

## Commands:
**Inicialize repo:**
```
git init --bare $HOME/.dotfiles
```
**Create git alias on .bashrc:**
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
source .bashrc
```
**Track files:**
```
dotfiles add .config/nvim/
dotfiles commit -m "add nvim"
dotfiles add .bashrc
dotfiles commit -m "add bashrc"
dotfiles push
```
**Restore:**
```
mkdir -p $HOME/.dotfiles
git clone --bare git@github.com:fndmossmann/dotfiles.git $HOME/.dotfiles
dotfiles checkout
```
The `dotfiles checkout` will probably fail.
Remove those files and run the command again.

**Wallpapers:**
From: https://github.com/matjam/hd-wallpapers

Saved them offline (and on this repo) for convenience.
