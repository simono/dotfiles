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

link git gitconfig
link tmux tmux.conf
link ripgrep ripgreprc
mkdir -p $HOME/.tmux
link '' tmux/rose-pine
link '' tmux/tmux-fingers
link '' tmux/tmux-sensible
mkdir -p $HOME/.vim/swap
mkdir -p $HOME/.vim/backup
mkdir -p $HOME/.vim/undo
mkdir -p $HOME/.vim/pack/my-plugins
link '' vim/pack/my-plugins/start
link vim vimrc
link zsh zprofile

mkdir -p $HOME/.config/fish/conf.d $HOME/.config/fish/functions
ln -nvsf $(pwd)/$current_dir/fish/fish_plugins $HOME/.config/fish/
ln -nvsf $(pwd)/$current_dir/fish/conf.d/* $HOME/.config/fish/conf.d/
ln -nvsf $(pwd)/$current_dir/fish/functions/* $HOME/.config/fish/functions/

mkdir -p "$(bat --config-dir)/themes"
ln -nvsf $(pwd)/$current_dir/bat/rose-pine/dist/themes/rose-pine-*.tmTheme "$(bat --config-dir)/themes/"
bat cache --build

mkdir -p $HOME/.config/eza/rose-pine-moon $HOME/.config/eza/rose-pine-dawn
ln -nvsf $(pwd)/$current_dir/eza/themes/themes/rose-pine-dawn.yml $HOME/.config/eza/rose-pine-dawn/theme.yml
ln -nvsf $(pwd)/$current_dir/eza/themes/themes/rose-pine-moon.yml $HOME/.config/eza/rose-pine-moon/theme.yml

mkdir -p $HOME/.config/starship
ln -nvsf $(pwd)/$current_dir/starship/rose-pine/rose-pine-dawn.toml $HOME/.config/starship/
ln -nvsf $(pwd)/$current_dir/starship/rose-pine/rose-pine-moon.toml $HOME/.config/starship/

if [ $(uname -s) = 'Darwin' ]; then
	link '' Brewfile
	link '' "Brewfile-$(hostname -s)"
	link '' terminal
fi
