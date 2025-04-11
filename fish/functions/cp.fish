# Fish function to alias `cp`.
#
# Location: ~/.config/fish/functions/cp.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function cp --description 'alias cp=cp -iv'
    command cp -iv $argv
end
