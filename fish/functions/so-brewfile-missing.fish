# Fish function to show installed Apps missing from the Brewfiles.
#
# Location: ~/.config/fish/functions/so-brewfile-missing.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function so-brewfile-missing --description 'Show installed Apps missing from the Brewfiles'
    # Add mas output once it works again,
    # see https://github.com/mas-cli/mas/issues/724
    for i in $(brew leaves; brew ls --cask)
        grep -q $i ~/.Brewfile* || echo $i
    end
end
