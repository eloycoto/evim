#!/bin/bash

DATE=$(date +%Y%m%d)
DIR=$(pwd)

if [ -d ~/.vim ]
then
    mv ~/.vim ~/.vim-$DATE
fi

if [ -f ~/.vimrc ]
then
    mv ~/.vimrm ~/.vim/vimrc-$DATE
fi

cp $DIR/vim $HOME/.vim -R
ln -s  $HOME/.vim/vimrc $HOME/.vimrc

