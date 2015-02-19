#!/bin/sh

PWD=`pwd`
__SCRIPT=${0##*/}

_echo () {
   	echo $__SCRIPT: $@
}

for file in vim vimrc bashrc bash_aliases inputrc gitconfig
do
	if [ -L $HOME/.$file ]
	then
		rm $HOME/.$file
		_echo "cleaned up $HOME/.$file"
	fi

	if [ -f $HOME/.$file.orig ]
	then
		mv $HOME/.$file.orig $HOME/.$file
		_echo "restored $HOME/.$file"
   	fi
done

_echo SUCCESS 
