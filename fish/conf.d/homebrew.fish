# Fish config for Homebrew.
#
# Location: ~/.config/fish/conf.d/homebrew.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Setup shell for Homebrew
if command -q brew
    set -f brew brew
else if test -x /home/linuxbrew/.linuxbrew/bin/brew
    set -f brew /home/linuxbrew/.linuxbrew/bin/brew
else
    echo >&2 "homebrew.fish: brew not found"
    return
end

$brew shellenv fish | source

# Homebrew Command Not Found
set -l handler $HOMEBREW_PREFIX/Library/Homebrew/command-not-found/handler.fish
if test -f $handler
    source $handler
end
