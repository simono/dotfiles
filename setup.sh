#!/bin/sh
#
# Setup config files.
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

	if [ -L $linkName ]; then
		ln -nvsf $target $linkName
	elif [ ! -e $linkName ]; then
		ln -nvs $target $linkName
	else
		echo "$linkName already exists!"
	fi
}

(cd $current_dir && git checkout master && git pull && git submodule update --init)

link ack	ackrc
link git	gitconfig
link tmux	tmux.conf
mkdir -p $HOME/.tmux
link ''	tmux/tmux-colors-solarized
link ''	tmux/tmux-sensible
mkdir -p $HOME/.vim/swap
mkdir -p $HOME/.vim/backup
mkdir -p $HOME/.vim/undo
link ''		vim/bundle
link vim	vimrc
link zsh	zprofile
link zsh	zshrc
link ''		zsh

if [ $(uname -s) = 'Darwin' ]; then

	if [ -x /usr/local/bin/ansible-playbook ]; then
		(cd $current_dir && ansible-playbook -i hosts homebrew.yml)
	else
		echo 'Please install Ansible!'
	fi
fi
