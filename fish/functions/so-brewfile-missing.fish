# Fish function to show installed Apps missing from the Brewfiles.
#
# Location: ~/.config/fish/functions/so-brewfile-missing.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function so-brewfile-missing --description 'Show installed Apps missing from the Brewfiles'
    for i in (brew leaves; brew ls --cask; mas list | string split -f 1 ' ')
        grep -qw $i ~/.Brewfile.local ~/.dotfiles/Brewfile* || echo $i
    end
end
