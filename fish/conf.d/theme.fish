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
        set -gx BAT_THEME "rose-pine-moon"
        # Reset Workaround
        set -gx GIT_CONFIG_PARAMETERS "'delta.dark=true'"
    else
        fish_config theme choose "Rosé Pine Dawn"
        set -gx BAT_THEME "rose-pine-dawn"
        # Workaround for
        # https://github.com/dandavison/delta/pull/1980
        set -gx GIT_CONFIG_PARAMETERS "'delta.light=true'"
    end
    # Make the pager background transparent
    set -e fish_pager_color_background
end
