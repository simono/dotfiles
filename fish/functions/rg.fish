# Fish function to setup `rg` with `delta`.
#
# Location: ~/.config/fish/functions/rg.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function rg --description 'rg with delta syntax highlighting'
    command rg --json $argv | delta
end
