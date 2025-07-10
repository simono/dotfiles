# Fish function to alias `ll` to `eza`.
#
# Location: ~/.config/fish/functions/ll.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function ll --wraps='eza' --description 'alias ll=l --long --git --header --smart-group --time-style=relative $argv'
    l --long --git --header --smart-group --time-style=relative $argv
end
