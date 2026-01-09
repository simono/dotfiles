# Fish config for the theme.
#
# Location: ~/.config/fish/conf.d/theme.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Apply the theme.
function __so_apply_theme --on-variable fish_terminal_color_theme
    if test "$fish_terminal_color_theme" = "dark"
        set -f appearance "dark"
        set -f theme_variant "moon"
        set -f theme_variant_capitalized "Moon"

    else
        set -f appearance "light"
        set -f theme_variant "dawn"
        set -f theme_variant_capitalized "Dawn"
    end

    fish_config theme choose "Rosé Pine $theme_variant_capitalized"
    # Redraw the prompt
    commandline -f repaint

    # Set colors for Hydro
    set -g hydro_color_pwd $fish_color_foam
    set -g hydro_color_git $fish_color_iris
    set -g hydro_color_prompt $fish_color_pine
    set -g hydro_color_duration $fish_color_gold

    # Bat and delta both use `BAT_THEME`.
    set -gx BAT_THEME "rose-pine-$theme_variant"

    # delta can detect the background color of the terminal automatically.
    #
    # But this doesn't work when Delta is embedded in other tools or when its
    # output is piped.
    # See https://github.com/dandavison/delta/blob/d5e0565cbfa47acde98d41d8777ace5d1bc4d690/manual/src/full---help-output.md?plain=1#L133
    set -gx GIT_CONFIG_PARAMETERS "'delta.$appearance=true'"

    # Activate zebra feature for moved lines.
    # See https://dandavison.github.io/delta/color-moved-support.html
    set -gx DELTA_FEATURES "+zebra-$appearance"

    # Eza uses an environment variable to choose the theme.
    set -gx EZA_CONFIG_DIR "$HOME/.config/eza/rose-pine-$theme_variant"

    # For fd et al.
    set -gx LS_COLORS "$(vivid generate rose-pine-$theme_variant)"

    # Appearance and Theme for Vim.
    set -gx SO_VIM_THEME "$appearance rosepine_$theme_variant"
end
