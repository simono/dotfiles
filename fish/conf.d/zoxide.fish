# Fish config for zoxide.
#
# Location: ~/.config/fish/conf.d/zoxide.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Clear fish's built-in autojump completions
complete -c j -e

# Initialize zoxide with j as command
zoxide init --cmd j fish | source

# Interactive mode via television
function ji
    set -l dir (tv zoxide)
    test -n "$dir" && j $dir
end
