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

    # Set colors for Hydro
    set -g hydro_color_pwd $fish_color_foam
    set -g hydro_color_git $fish_color_iris
    set -g hydro_color_prompt $fish_color_pine
    set -g hydro_color_duration $fish_color_gold

    # Bat and delta both use `BAT_THEME`.
    set -gx BAT_THEME "rose-pine-$theme_variant"

    # Eza uses an environment variable to choose the theme.
    set -gx EZA_CONFIG_DIR "$HOME/.config/eza/rose-pine-$theme_variant"

    # For fd et al.
    set -gx LS_COLORS "$(vivid generate rose-pine-$theme_variant)"

    # fzf
    source "$HOME/.config/fzf/rose-pine-$theme_variant.fish"
    # Set some defaults.
    # See https://github.com/PatrickF1/fzf.fish/blob/main/functions/_fzf_wrapper.fish
    set -a FZF_DEFAULT_OPTS '--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*"'
    # Set delta as diff highlighter for fzf.
    #
    # delta can detect the background color of the terminal automatically.
    # But when used in fzf's preview, it doesn't work.
    # See https://github.com/junegunn/fzf/issues/4317
    set -g fzf_diff_highlighter delta --paging=never --$appearance

    # Appearance and Theme for Vim.
    set -gx SO_VIM_THEME "$appearance rosepine_$theme_variant"
end

# Set the theme, based on the system appearance.
function so-theme
    # When `AppleInterfaceStyle` is set, dark mode is enabled.
    if defaults read -g AppleInterfaceStyle &> /dev/null
        set -U __so_theme dark moon Moon
    else
        set -U __so_theme light dawn Dawn
    end
end

# Initialize the theme.
so-theme
