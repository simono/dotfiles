# Fish config for Homebrew.
#
# Location: ~/.config/fish/conf.d/homebrew.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Setup shell for Homebrew
for brew in /opt/homebrew/bin/brew /home/linuxbrew/.linuxbrew/bin/brew
    if test -x $brew
        $brew shellenv fish | source

        # Homebrew Command Not Found
        set -l handler (brew --repository)/Library/Homebrew/command-not-found/handler.fish
        if test -f $handler
            source $handler
        end

        break
    end
end
