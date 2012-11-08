#!/bin/bash

DIR=$(pwd)

#Vim Conf
cp $DIR/vim $HOME/.vim -R
rm  $HOME/.vimrc
ln -s  $HOME/.vim/vimrc $HOME/.vimrc


#Bash conf
cp $DIR/bash/bashrc $HOME/.bashrc
cp $DIR/bash/bash_aliases $HOME/.bash_aliases
cp $DIR/bash/asoundrc $HOME/.asoundrc

#reload bash
bash
