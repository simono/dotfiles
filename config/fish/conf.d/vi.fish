# Fish config for vi mode.
#
# Location: ~/.config/fish/conf.d/vi.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Always start in normal mode
function vi_default_mode --on-event fish_prompt
    fish_vi_key_bindings "default"
end
