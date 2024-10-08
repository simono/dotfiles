# Zsh Aliases.
#
# Location: ~/.zsh/05_aliases.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

alias cp='nocorrect cp -iv'
alias df='df -h'
alias du='du -h'
alias ll='eza --long --git --group-directories-first --header --smart-group --time-style=relative'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv -iv'
alias rm="rm -Iv"
alias sudo='nocorrect sudo'
alias zcalc='noglob zcalc'

# Use bat to highlight help messages
alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'

# Directory operations
alias ...='cd ../..'
alias -- -='cd -'
