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

    # Eza and Starship use environment variables to choose the theme.
    # So we set it based on the appearance.

    if test "$(defaults read -g AppleInterfaceStyle 2> /dev/null)" = "Dark"
        fish_config theme choose "Rosé Pine Moon"
        set -gx BAT_THEME "rose-pine-moon"
        set -gx GIT_CONFIG_PARAMETERS "'delta.dark=true'"
        set -gx EZA_CONFIG_DIR "$HOME/.config/eza/dark"
        set -gx STARSHIP_CONFIG "$HOME/.config/rose-pine-moon.toml"
    else
        fish_config theme choose "Rosé Pine Dawn"
        set -gx BAT_THEME "rose-pine-dawn"
        set -gx GIT_CONFIG_PARAMETERS "'delta.light=true'"
        set -gx EZA_CONFIG_DIR "$HOME/.config/eza/light"
        set -gx STARSHIP_CONFIG "$HOME/.config/rose-pine-dawn.toml"
    end
    # Make the pager background transparent
    set -e fish_pager_color_background
end
