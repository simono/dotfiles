# Zsh System specific stuff.
#
# Location: ~/.zsh/02_systems.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

case $(uname -s) in
	*BSD | 'Darwin' )
		local lsOpts='-G'
		alias so-mktemp='mktemp -t sim'
		;|
	*BSD | 'Linux' )
		local rmOpts='-I'
		;|
	'Linux' )
		local lsOpts='--color=auto'
		alias ack="ack-grep"
		alias so-mktemp='mktemp'
		;|
	*BSD | 'Darwin' | 'Linux' )
		;;
	* )
		echo "Unknown system: $(uname -s)"
		;;
esac
