#!/bin/sh
#
# Link config files.
#
# Simon Olofsson <simon@olofsson.de>
#

set -o errexit
set -o nounset

full_path="$(pwd)/$(dirname $0)"

ln -vs $full_path/git/gitconfig $HOME/.gitconfig
