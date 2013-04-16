#!/bin/bash

DATE=$(date +%Y%m%d)
DIR=$(pwd)


#Vims conf
if [ -d ~/.vim ]
then
    mv ~/.vim ~/.vim-$DATE
fi

if [ -f ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc-$DATE
fi

cp -R $DIR/vim $HOME/.vim
rm  $HOME/.vimrc
ln -s  $HOME/.vim/vimrc $HOME/.vimrc



BASHRC=".bashrc"
if [ $(uname) ==  "Darwin" ]
then
    BASHRC=".bash_profile"
fi
cp $DIR/bash/bashrc $HOME/$BASHRC

#BashConf
if [ -f ~/$BASHRC ]
then
    mv ~/$BASHRC ~/.bashrc-$DATE
fi

if [ -f ~/.bash_aliases ]
then
    mv ~/.bash_aliases ~/.bash_aliases-$DATE
fi
cp $DIR/bash/bash_aliases $HOME/.bash_aliases

#reload bash
bash
