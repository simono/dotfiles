# Fish function to create a temporary directory and jump to it.
#
# Location: ~/.config/fish/functions/so-tmp.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function so-tmp --description 'Create a temporary directory and jump to it'
    j (mktemp -d)
end
