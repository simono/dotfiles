# Fish function to update dotfiles with Dotbot.
#
# Location: ~/.config/fish/functions/so-dotfiles-update.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function so-dotfiles-update --description 'Update dotfiles with Dotbot'
    dotbot -q -c $HOME/.dotfiles/dotbot-sync.yaml
    dotbot -q -c $HOME/.dotfiles/dotbot-config.yaml
    caffeinate dotbot -c $HOME/.dotfiles/dotbot-update.yaml
end
