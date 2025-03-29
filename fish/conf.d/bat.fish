# Fish config for bat and related tools.
#
# Location: ~/.config/fish/conf.d/bat.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Use bat
abbr -a -- b bat

# Highlight help messages
abbr -a --position anywhere -- --help '--help | bat -plhelp'

# Make less more usable
set -gx LESS "--ignore-case --no-histdups --color=s+y"

# Use bat as manpager
# Reset the theme because Rosé Pine doesn't support highlighting for man pages.
set -gx MANPAGER "sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman --theme default'"
