# Fish config for Homebrew.
#
# Location: ~/.config/fish/conf.d/homebrew.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Install Fonts for all users
set -gx HOMEBREW_CASK_OPTS "--fontdir=/Library/Fonts"

# Homebrew Command Not Found
set -l __hb_cnf_handler (brew --repository)"/Library/Taps/homebrew/homebrew-command-not-found/handler.fish"
if test -f $__hb_cnf_handler
    source $__hb_cnf_handler
end
