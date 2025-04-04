# Fish function to setup configs with Dotbot.
#
# Location: ~/.config/fish/functions/so-config.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function so-config --description 'Setup configs with Dotbot'
    dotbot -q -c $HOME/.dotfiles/config.yaml
end
