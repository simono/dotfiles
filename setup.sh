#!/bin/sh
#
# Setup config files.
#
# Simon Olofsson <simon@olofsson.de>
#

set -o errexit
set -o nounset

current_dir="$(dirname $0)"

(cd $current_dir && git checkout main && git pull && git submodule update --init && ./link.sh)

if [ $(uname -s) = 'Darwin' ]; then
	caffeinate -w $$ &

	brew bundle install --global --no-lock
	localBrewfile="$HOME/.Brewfile-$(hostname -s)"
	test -r $localBrewfile && brew bundle install --file=$localBrewfile --no-lock

	brew upgrade --ignore-pinned
	brew cleanup

	clear
	brew outdated
	mas outdated
	softwareupdate -l
fi
