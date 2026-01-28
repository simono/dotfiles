# Fish config for zoxide.
#
# Location: ~/.config/fish/conf.d/zoxide.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Initialize zoxide
# use `j` as command
zoxide init --cmd j fish | source

# Interactive mode via television
function ji
    set -l dir (tv zoxide)
    test -n "$dir" && j $dir
end
