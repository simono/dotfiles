# Fish config for worktrunk.
#
# Location: ~/.config/fish/conf.d/worktrunk.fish
#
# Simon Olofsson <simon@olofsson.de>
#

status is-interactive; or return

# Initialize worktrunk
wt config shell init fish | source

abbr wts 'wt switch'
abbr --description='Pick a worktree, local branch or remote branch' -- wtsb 'wt switch --branches --remotes'
