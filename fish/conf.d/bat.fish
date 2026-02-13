# Fish config for bat and related tools.
#
# Location: ~/.config/fish/conf.d/bat.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Use bat
abbr b bat

# Highlight help messages
abbr --position anywhere -- --help '--help | bat -plhelp'

# Make less more usable
set -gx LESS "--ignore-case --no-histdups --color=s+y"
