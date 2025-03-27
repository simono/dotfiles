# Fish config for ringing the bell.
#
# Location: ~/.config/fish/conf.d/bell.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Ring the bell after each command.
# This can be used to notify the user that a command has finished.
function __so_bell --on-event fish_postexec
    echo -ne '\a'
end
