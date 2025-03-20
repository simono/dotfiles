# Fish config for bat and related tools.
#
# Location: ~/.config/fish/conf.d/bat.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Make less more usable
set -gx LESS "--ignore-case --no-histdups --color=s+y"

# Use bat as manpager
set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
