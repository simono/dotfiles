#!/bin/sh
#
# Link config files.
#
# Simon Olofsson <simon@olofsson.de>
#

set -o errexit
set -o nounset

full_path="$(pwd)/$(dirname $0)"

ln -vs $full_path/ack/ackrc		$HOME/.ackrc
ln -vs $full_path/git/gitconfig		$HOME/.gitconfig
ln -vs $full_path/hg/hgrc		$HOME/.hgrc
ln -vs $full_path/tmux/tmux.conf	$HOME/.tmux.conf
ln -vs $full_path/vim/vimrc		$HOME/.vimrc
ln -vs $full_path/zsh/zprofile		$HOME/.zprofile
ln -vs $full_path/zsh/zshrc		$HOME/.zshrc
