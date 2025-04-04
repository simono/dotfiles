# Fish function to update with Dotbot.
#
# Location: ~/.config/fish/functions/so-update.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function so-update --description 'Update with Dotbot'
    so-config
    dotbot -c $HOME/.dotfiles/update.yaml
end
