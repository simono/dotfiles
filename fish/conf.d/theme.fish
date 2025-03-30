# Fish config for the theme.
#
# Location: ~/.config/fish/conf.d/theme.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Choose theme based on system appearance.
# We do this before the prompt is drawn in case the appearance changed.
function __so_choose_theme --on-event fish_prompt

    # Bat and delta both use `BAT_THEME`.
    #
    # They can detect the background color of the terminal automatically.
    # This doesn't work in tmux when switching terminal themes, so we set it manually.
    # See https://github.com/orgs/tmux/discussions/3994
    #
    # A possible workaround is to set the window background in tmux:
    # `set -g window-style 'bg=...'`

    if test "$(defaults read -g AppleInterfaceStyle 2> /dev/null)" = "Dark"
        fish_config theme choose "Rosé Pine Moon"
        set -gx BAT_THEME "rose-pine-moon"
        set -gx GIT_CONFIG_PARAMETERS "'delta.dark=true'"
    else
        fish_config theme choose "Rosé Pine Dawn"
        set -gx BAT_THEME "rose-pine-dawn"
        set -gx GIT_CONFIG_PARAMETERS "'delta.light=true'"
    end
    # Make the pager background transparent
    set -e fish_pager_color_background
end
