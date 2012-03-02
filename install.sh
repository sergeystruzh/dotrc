#!/bin/sh

# TODO
# only tested on linux
# When to use .bashrc vs .bash_profile?

PWD=`pwd`

# install vim stuff
if [ ! -e $HOME/.vim ]; then
	ln -s $PWD/vim $HOME/.vim
else
	echo "$HOME/.vim already exists, skipping"
fi

if [ ! -e $HOME/.vimrc ]; then
	ln -s $PWD/vim/dotvimrc $HOME/.vimrc
else
	echo "$HOME/.vimrc already exists, skipping"
fi

# install bash stuff
if [ ! -e $HOME/.bashrc ]; then
	ln -s $PWD/bash/dotbashrc $HOME/.bashrc
else
	echo "$HOME/.bashrc already exists, skipping"
fi

if [ ! -e $HOME/.inputrc ]; then
	ln -s $PWD/dotinputrc $HOME/.inputrc
else
	echo "$HOME/.inputrc already exists, skipping"
fi


