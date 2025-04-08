# Fish config for the theme.
#
# Location: ~/.config/fish/conf.d/theme.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Update the theme.
function __so_update_theme --on-variable __so_theme
    set -f appearance "$__so_theme[1]"
    set -f theme_variant "$__so_theme[2]"
    set -f theme_variant_capitalized "$__so_theme[3]"

    fish_config theme choose "Rosé Pine $theme_variant_capitalized"
    # Redraw the prompt
    commandline -f repaint

    # Bat and delta both use `BAT_THEME`.
    set -gx BAT_THEME "rose-pine-$theme_variant"

    # delta can detect the background color of the terminal automatically.
    # This doesn't work in tmux when switching terminal themes, so we set it
    # manually.
    # See https://github.com/orgs/tmux/discussions/3994
    #
    # A possible workaround is to set the window background in tmux:
    # `set -g window-style 'bg=...'`
    set -gx GIT_CONFIG_PARAMETERS "'delta.$appearance=true'"

    # Eza and Starship use environment variables to choose the theme.
    set -gx EZA_CONFIG_DIR "$HOME/.config/eza/rose-pine-$theme_variant"
    set -gx STARSHIP_CONFIG "$HOME/.config/starship/rose-pine-$theme_variant.toml"

    # For fd et al.
    set -gx LS_COLORS "$(vivid generate rose-pine-$theme_variant)"

    # Appearance and Theme for Vim.
    set -gx SO_VIM_THEME "$appearance rosepine_$theme_variant"
end

# Initialize the theme.
__so_update_theme
