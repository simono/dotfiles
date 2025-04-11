# fish function to alias `rm`.
#
# location: ~/.config/fish/functions/rm.fish
#
# simon olofsson <simon@olofsson.de>
#

function rm --description 'alias rm=rm -Iv'
    command rm -Iv $argv
end
