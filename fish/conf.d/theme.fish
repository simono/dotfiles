# Fish config for the theme.
#
# Location: ~/.config/fish/conf.d/theme.fish
#
# Simon Olofsson <simon@olofsson.de>
#

status is-interactive; or return

# Fish 4.3+ auto themes handle light/dark switching automatically.
fish_config theme choose "Rosé Pine Moon Auto"

# Apply the theme.
function __so_apply_theme --on-variable fish_terminal_color_theme
    if test "$fish_terminal_color_theme" = dark
        set -f appearance dark
        set -f theme_variant moon
    else
        set -f appearance light
        set -f theme_variant dawn
    end

    # Pure prompt colors
    rose_pine_pure $theme_variant

    # Bat and delta both use `BAT_THEME`.
    set -gx BAT_THEME "rose-pine-$theme_variant"

    # Use Solarized for man pages because Rosé Pine doesn't support man page highlighting.
    set -gx MANPAGER "sh -c 'sed -u -e \"s/\\x1B\[[0-9;]*m//g; s/.\\x08//g\" | bat -p -lman --theme \"Solarized ($appearance)\"'"

    # delta can detect the background color of the terminal automatically.
    #
    # But this doesn't work when Delta is embedded in other tools or when its
    # output is piped.
    # See https://github.com/dandavison/delta/blob/main/manual/src/full---help-output.md?plain=1#L133
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
