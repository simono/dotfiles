# fish function to alias `mv`.
#
# location: ~/.config/fish/functions/mv.fish
#
# simon olofsson <simon@olofsson.de>
#

function mv --description 'alias mv=mv -iv'
    command mv -iv $argv
end
