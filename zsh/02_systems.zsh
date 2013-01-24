# Zsh System specific stuff.
#
# Location: ~/.zsh/02_systems.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

case $(uname -s) in
	*BSD | 'Darwin' )
		local lsOpts='-G'
		local lsColors=$LSCOLORS
		alias so-mktemp='mktemp -t sim'
		;|
	*BSD | 'Linux' )
		local rmOpts='-I'
		;|
	'Darwin' )
		alias mark='/Applications/Marked.app/Contents/Resources/mark'
		alias mvimdiff='mvim -d'
		alias vim='mvim -v'
		alias vimdiff='vim -d'
		;|
	'Linux' )
		local lsOpts='--color=auto'
		lsColors=$(dircolors -b)
		alias ack="ack-grep"
		alias so-mktemp='mktemp'
		;|
	*BSD | 'Darwin' | 'Linux' )
		;;
	* )
		echo "Unknown system: $(uname -s)"
		;;
esac
