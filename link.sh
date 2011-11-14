#!/bin/sh
#
# Link config files.
#
# Simon Olofsson <simon@olofsson.de>
#

set -o errexit
set -o nounset

full_path="$(pwd)/$(dirname $0)"

getopts f force && shift $((OPTIND-1))
test $force = 'f' || force=''
ln="ln -vs$force"

$ln $full_path/ack/ackrc	$HOME/.ackrc
$ln $full_path/git/gitconfig	$HOME/.gitconfig
$ln $full_path/hg/hgrc		$HOME/.hgrc
$ln $full_path/tmux/tmux.conf	$HOME/.tmux.conf
$ln $full_path/vim/vimrc	$HOME/.vimrc
$ln $full_path/zsh/zprofile	$HOME/.zprofile
$ln $full_path/zsh/zshrc	$HOME/.zshrc
