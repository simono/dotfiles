# Fish function to disable automatic dark/light mode detection in delta.
#
# The library used by delta doesn't detect the mode correctly when it changes.
#
# Location: ~/.config/fish/functions/ll.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function delta --description 'alias delta=delta --detect-dark-light never $argv'
    command delta --detect-dark-light never $argv
end
