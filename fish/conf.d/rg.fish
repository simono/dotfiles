# Fish config for ripgrep (rg).
#
# Location: ~/.config/fish/conf.d/rg.fish
#
# Simon Olofsson <simon@olofsson.de>
#

status is-interactive; or return

alias rg 'delta rg'

# Config file for ripgrep
set -gx RIPGREP_CONFIG_PATH "$HOME/.config/ripgrep/config"
