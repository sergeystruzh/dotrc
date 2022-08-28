#!/bin/sh

# TODO
# only tested on linux
# When to use .bashrc vs .bash_profile?

PWD=`pwd`
__SCRIPT=${0##*/}

_echo () {
	echo $__SCRIPT: $@
}

for file in vim vimrc bashrc bash_aliases inputrc gitconfig tmux.conf
do
	if [ -L $HOME/.$file ]
	then
		_echo "$HOME/.$file already exists, skipping"
	else
		if [ -f $HOME/.$file ]
		then
			mv $HOME/.$file $HOME/.$file.orig
			_echo "$HOME/.$file backed up to $HOME/.$file.orig"
		fi
		_echo "installing $file.."
		ln -s $PWD/dot$file $HOME/.$file
	fi
done

_echo SUCCESS
