# Fish config for worktrunk.
#
# Location: ~/.config/fish/conf.d/worktrunk.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Initialize worktrunk
wt config shell init fish | source

abbr wts   'wt select --branches'
abbr wtsw  'wt switch'
abbr wtswc 'wt switch --create'
