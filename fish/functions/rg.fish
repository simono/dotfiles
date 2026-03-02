# Fish function to setup `rg` with `delta`.
#
# Location: ~/.config/fish/functions/rg.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function rg --description 'rg with delta syntax highlighting'
    if isatty stdout
        command rg --json $argv | delta
    else
        command rg $argv
    end
end
