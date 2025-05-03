# Fish config for Homebrew.
#
# Location: ~/.config/fish/conf.d/homebrew.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Setup shell for Homebrew
/opt/homebrew/bin/brew shellenv | source

# Somehow SHELL is not set correctly in fish
set -gx SHELL (type -p fish)

# Homebrew Command Not Found
set -l __hb_cnf_handler (brew --repository)"/Library/Taps/homebrew/homebrew-command-not-found/handler.fish"
if test -f $__hb_cnf_handler
    source $__hb_cnf_handler
end
