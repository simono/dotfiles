# Zsh System specific stuff.
#
# Location: ~/.zsh/system
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
	'Linux' )
		local lsOpts='--color=auto'
		local lsColors=$(dircolors -b)
		alias ack="ack-grep"
		alias so-mktemp='mktemp'
		;|
	*BSD | 'Darwin' | 'Linux' )
		;;
	* )
		echo "Unknown system: $(uname -s)"
		;;
esac
