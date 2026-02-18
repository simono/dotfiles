# Fish config for television.
#
# Location: ~/.config/fish/conf.d/television.fish
#
# Simon Olofsson <simon@olofsson.de>
#

status is-interactive; or return

# Shell integration
tv init fish | source

# Override default ctrl-r with / for history search
bind / tv_shell_history
