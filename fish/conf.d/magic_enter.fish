# Fish config for magic-enter.
#
# Location: ~/.config/fish/conf.d/magic_enter.fish
#
# Simon Olofsson <simon@olofsson.de>
#

status is-interactive; or return

# Sorts after the plugin's magic-enter.fish, so this replaces its default.
function magic-enter-cmd --description "Print the command to run when no command was given"
    if command git rev-parse --is-inside-work-tree &>/dev/null
        echo git status
    else
        echo ll
    end
end
