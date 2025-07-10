# Fish function to alias `l` to `eza`.
#
# Location: ~/.config/fish/functions/l.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function l --wraps='eza' --description 'alias l=eza --icons --group-directories-first $argv'
    eza --icons --group-directories-first $argv
end
