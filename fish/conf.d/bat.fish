# Fish config for bat and related tools.
#
# Location: ~/.config/fish/conf.d/bat.fish
#
# Simon Olofsson <simon@olofsson.de>
#

status is-interactive; or return

# Use bat
abbr b bat

# Highlight help messages
abbr --position anywhere --description='Page and highlight the help output' -- --help '--help | bat -plhelp'

# Use bat for man pages
set -gx MANPAGER "bat -plman"

# Make less more usable
set -gx LESS "--ignore-case --no-histdups --color=s+y"
