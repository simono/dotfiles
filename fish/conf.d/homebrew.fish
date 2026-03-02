# Fish config for Homebrew.
#
# Location: ~/.config/fish/conf.d/homebrew.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Setup shell for Homebrew
for prefix in /opt/homebrew /home/linuxbrew/.linuxbrew
    if test -d $prefix
        $prefix/bin/brew shellenv fish | source

        # Homebrew Command Not Found
        set -l handler $prefix/Library/Homebrew/command-not-found/handler.fish
        if test -f $handler
            source $handler
        end

        break
    end
end
