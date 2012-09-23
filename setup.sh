#!/bin/sh
#
# Setup config files.
#
# Simon Olofsson <simon@olofsson.de>
#

set -o errexit
set -o nounset

# link target linkName
link() {
	local target="$(pwd)/$(dirname $0)/$1/$2"
	local linkName="$HOME/.$2"

	if [ -L $linkName ]; then
		ln -nvsf $target $linkName
	elif [ ! -e $linkName ]; then
		ln -nvs $target $linkName
	else
		echo "$linkName already exists!"
	fi
}

(cd $(dirname $0) && git pull && git submodule update --init)

link ack	ackrc
link git	gitconfig
link hg		hgrc
link tmux	tmux.conf
mkdir -p $HOME/.vim
link ''		vim/bundle
link vim	vimrc
link zsh	zprofile
link zsh	zshrc
link ''		zsh
