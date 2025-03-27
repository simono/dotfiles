# Fish function to alias `ll` to `eza`.
#
# Location: ~/.config/fish/functions/ll.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function ll --wraps='eza' --description 'alias ll=eza --long --git --group-directories-first --header --smart-group --time-style=relative $argv'
    eza --long --git --group-directories-first --header --smart-group --time-style=relative $argv
end
