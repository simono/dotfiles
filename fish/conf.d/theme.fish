# Fish config for the theme.
#
# Location: ~/.config/fish/conf.d/theme.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Choose theme based on system appearance.
# We do this before the prompt is drawn in case the appearance changed.
function __so_choose_theme --on-event fish_prompt
    if test "$(defaults read -g AppleInterfaceStyle 2> /dev/null)" = "Dark"
        fish_config theme choose "Rosé Pine Moon"
        set -gx DELTA_FEATURES "+dark"
    else
        fish_config theme choose "Rosé Pine Dawn"
        set -gx DELTA_FEATURES "+light"
    end
    # Make the pager background transparent
    set -e fish_pager_color_background
end
