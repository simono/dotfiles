# Fish config to highlight help messages.
#
# Location: ~/.config/fish/functions/bhelp.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function bhelp --description 'Highlight help messages with bat'
    "$argv" --help 2>&1 | bat --language=help --style=plain
end
