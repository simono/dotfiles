# Fish config for vi mode.
#
# Location: ~/.config/fish/conf.d/vi.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Set the editor to Vim
set -gx EDITOR 'vim'

abbr v 'vim'

# Always start in normal mode
function __so_vi_normal_mode --on-event fish_prompt
    fish_vi_key_bindings "default"
end

# Open command line in Editor
bind ctrl-v edit_command_buffer

# Move one word to the right
# or accept one word from the current autosuggestion
bind -M insert ctrl-e forward-word

# Move the cursor or search the history
bind -M insert ctrl-p up-or-search
