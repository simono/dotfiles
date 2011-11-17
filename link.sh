#!/bin/sh
#
# Link config files.
#
# Simon Olofsson <simon@olofsson.de>
#

set -o errexit
set -o nounset

# link target linkName
link() {
	local target="$(pwd)/$(dirname $0)/$1"
	local linkName="$HOME/$2"

	if [ -L $linkName ]; then
		ln -vsf $target $linkName
	elif [ ! -e $linkName ]; then
		ln -vs $target $linkName
	else
		echo "$linkName already exists!"
	fi
}

link ack/ackrc		.ackrc
link git/gitconfig	.gitconfig
link hg/hgrc		.hgrc
link tmux/tmux.conf	.tmux.conf
link vim/vimrc		.vimrc
link zsh/zprofile	.zprofile
link zsh/zshrc		.zshrc
