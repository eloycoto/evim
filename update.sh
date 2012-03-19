#!/bin/bash

DATE=$(date +%Y%m%d)
DIR=$(pwd)

cp $DIR/vim $HOME/.vim -R
ln -s  $HOME/.vim/vimrc $HOME/.vimrc

