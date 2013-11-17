#!/bin/sh

BACKUP_DIR=~/dotfiles_backup
DOTFILEZ=".vim .vimrc .zshrc"

# Colourz
GREEN   = "\e[32m"
BLUE    = "\e[34m"
CLEAR   = "\e[0m"

echo "Setting up zsh stuff"
#Set up oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

### Backup existing files
mkdir -p $BACKUP_DIR

### Symlink it up
for FILE in $DOTFILEZ
do
    echo $GREEN "Backing up" $FILE "and creating symlink" $CLEAR

    if [ -f $FILE ];
    then
        mv ~/$FILE $BACKUP_DIR
    fi

    ln -s $PWD/$FILE ~/$FILE
done

cd ~/

echo "Setting up vim stuff"
#Set up Vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

echo "All done!"
