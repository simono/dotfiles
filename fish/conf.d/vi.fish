# Fish config for vi mode.
#
# Location: ~/.config/fish/conf.d/vi.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Always start in normal mode
function __so_vi_normal_mode --on-event fish_prompt
    fish_vi_key_bindings "default"
end

# Open command line in Editor
bind ctrl-v edit_command_buffer
