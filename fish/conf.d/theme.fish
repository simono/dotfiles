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

    # delta can detect the background color of the terminal automatically.
    #
    # But this doesn't work when Delta is embedded in other tools like fzf
    # or when it's output is piped.
    # See https://github.com/dandavison/delta/blob/d5e0565cbfa47acde98d41d8777ace5d1bc4d690/manual/src/full---help-output.md?plain=1#L133
    set -gx GIT_CONFIG_PARAMETERS "'delta.$appearance=true'"

    # Activate zebra feature for moved lines.
    # See https://dandavison.github.io/delta/color-moved-support.html
    set -gx DELTA_FEATURES "+zebra-$appearance"

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
    set -g fzf_diff_highlighter delta --paging=never

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

    # Return success.
    true
end

# Initialize the theme.
so-theme
