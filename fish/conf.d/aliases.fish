# Fish aliases.
#
# Location: ~/.config/fish/conf.d/aliases.fish
#
# Simon Olofsson <simon@olofsson.de>

# coreutils
alias cp 'command cp -iv'
alias df 'command df -h'
alias du 'command du -h'
alias mv 'command mv -iv'
alias rm 'command rm -Iv'

# eza
alias l 'eza --icons --group-directories-first'
alias ll 'l --long --git --header --smart-group --time-style=relative'
