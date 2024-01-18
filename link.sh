#!/bin/sh
#
# Link config files.
#
# Simon Olofsson <simon@olofsson.de>
#

set -o errexit
set -o nounset

current_dir="$(dirname $0)"

# link target linkName
link() {
	local target="$(pwd)/$current_dir/$1/$2"
	local linkName="$HOME/.$2"

	if [ ! -r $target ]; then
		return
	elif [ -L $linkName ]; then
		ln -nvsf $target $linkName
	elif [ ! -e $linkName ]; then
		ln -nvs $target $linkName
	else
		echo "$linkName already exists!"
	fi
}

link ack	ackrc
link git	gitconfig
link tmux	tmux.conf
mkdir -p $HOME/.tmux
link ''		tmux/rose-pine
link ''		tmux/tmux-sensible
mkdir -p $HOME/.vim/swap
mkdir -p $HOME/.vim/backup
mkdir -p $HOME/.vim/undo
mkdir -p $HOME/.vim/pack/my-plugins
link ''		vim/pack/my-plugins/start
link vim	vimrc
link zsh	zprofile
link zsh	zshrc
link ''		zsh

if [ $(uname -s) = 'Darwin' ]; then
	link ''		Brewfile
	link ''		"Brewfile-$(hostname -s)"
	link ''		terminal
fi
