# Fish config for git abbreviations.
#
# Location: ~/.config/fish/conf.d/git.fish
#
# Simon Olofsson <simon@olofsson.de>
#

status is-interactive; or return

abbr g git
abbr ga 'git add'
abbr gb 'git branch'
abbr gc 'git commit'
abbr gca 'git commit -a'
abbr gd 'git diff'
abbr gdc 'git diff --cached'
abbr gl 'git log --graph'
abbr --description="Log commits not yet pushed, oldest first" -- glo 'git log -p --reverse -w @{push}..'
abbr gpl 'git pull'
abbr gps 'git push'
abbr --description="Push, refusing to clobber others' commits" -- gpsf 'git push --force-with-lease'
abbr grm 'git rebase main'
abbr gre 'git restore'
abbr gres 'git restore --staged'
abbr --description="Status view in the delta TUI" -- gs 'delta --tui'
abbr gsh 'git show'
abbr gsw 'git switch'
abbr gst 'git stash'
