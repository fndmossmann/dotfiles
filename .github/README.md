# Dotfiles

Dotfiles organized by branch, for each machine.

## Commands:
**Inicialize repo:**
```
git init --bare $HOME/.dotfiles -b $HOSTNAME
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
git clone --bare -b $HOSTNAME git@github.com:fndmossmann/dotfiles.git $HOME/.dotfiles
```
