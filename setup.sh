#!/bin/sh
#
# Setup config files.
#
# Simon Olofsson <simon@olofsson.de>
#

set -o errexit
set -o nounset

PACKAGES='ack reattach-to-user-namespace ssh-copy-id tmux zsh-completions'

# link target linkName
link() {
	local target="$(pwd)/$(dirname $0)/$1"
	local linkName="$HOME/$2"

	if [ -L $linkName ]; then
		ln -nvsf $target $linkName
	elif [ ! -e $linkName ]; then
		ln -nvs $target $linkName
	else
		echo "$linkName already exists!"
	fi
}

linkHidden() {
	link "$1/$2" ".$2"
}

(cd $(dirname $0) && git checkout master && git pull && git submodule update --init)

linkHidden ack	ackrc
linkHidden git	gitconfig
linkHidden hg		hgrc
linkHidden tmux	tmux.conf
mkdir -p $HOME/.tmux
linkHidden ''	tmux/tmux-colors-solarized
mkdir -p $HOME/.vim/swap
mkdir -p $HOME/.vim/backup
mkdir -p $HOME/.vim/undo
linkHidden ''		vim/bundle
linkHidden vim	vimrc
mkdir -p $HOME/bin
link vimpager/vimpager bin/vimpager
link vimpager/vimcat bin/vimcat
linkHidden zsh	zprofile
linkHidden zsh	zshrc
linkHidden ''		zsh

if [[ $(uname -s) = 'Darwin' ]]; then

	if [[ ! -x /usr/local/bin/brew ]]; then
		ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
	fi

	for p in $PACKAGES; do
		test -z "$(brew ls --versions $p)" && brew install $p
	done

fi
