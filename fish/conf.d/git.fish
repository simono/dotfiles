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
abbr gba 'git branch -a'
abbr gc 'git commit'
abbr gca 'git commit -a'
abbr gd 'git diff'
abbr gdc 'git diff --cached'
abbr gl 'git log --graph'
abbr gpl 'git pull'
abbr gps 'git push'
abbr --description="Push, refusing to clobber others' commits" -- gpsf 'git push --force-with-lease'
abbr grm 'git rebase main'
abbr --description="Status view in the delta TUI" -- gs 'delta --tui'
abbr --description="Show, with deleted files as a header only" -- gsh 'git show -D'
abbr gsw 'git switch'
abbr gst 'git stash'
