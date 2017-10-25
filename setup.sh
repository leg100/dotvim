#!/usr/bin/env bash

ln -nfs $PWD $HOME/.vim
ln -fs $PWD/vimrc $HOME/.vimrc

git submodule init
git submodule update
