#!/bin/sh

BACKUP_DIR=~/dotfiles_backup
DOTFILEZ=".vim .vimrc .zshrc"

### Backup existing files
mkdir -p $BACKUP_DIR

### Symlink it up
for FILE in $DOTFILEZ
do
    echo "Backing up" $FILE "and creating symlink"
    mv ~/$FILE $BACKUP_DIR

    ln -s $PWD/$FILE ~/$FILE
done

echo "All done!"
