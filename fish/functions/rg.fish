# Fish function to setup `rg` with `delta`.
#
# Location: ~/.config/fish/functions/rg.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function rg --description 'alias rg=rg --json $argv | delta'
    command rg --json $argv | delta
end
