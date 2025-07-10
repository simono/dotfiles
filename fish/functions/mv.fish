# Fish function to alias `mv`.
#
# Location: ~/.config/fish/functions/mv.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function mv --description 'alias mv=mv -iv'
    command mv -iv $argv
end
