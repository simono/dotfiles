# Fish config for zoxide.
#
# Location: ~/.config/fish/conf.d/zoxide.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Initialize zoxide with j as command
zoxide init --cmd j fish | source

# Override completions (clear vi mode history, add directories)
complete -c j -e
complete -c j -f -a '(__fish_complete_directories (commandline -ct) "")'

# Interactive mode via television
function ji
    set -l dir (tv zoxide)
    test -n "$dir" && j $dir
end
