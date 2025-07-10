# Fish function to alias `rm`.
#
# Location: ~/.config/fish/functions/rm.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function rm --description 'alias rm=rm -Iv'
    command rm -Iv $argv
end
