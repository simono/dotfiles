# Zsh Aliases.
#
# Location: ~/.zsh/05_aliases.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

alias cp='nocorrect cp -iv'
alias df='df -h'
alias du='du -h'
alias ll='ls -l'
alias ls="ls -hF $lsOpts"
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv -iv'
alias rm="rm -Iv"
alias sudo='nocorrect sudo'
alias zcalc='noglob zcalc'

# Directory operations
alias ...='cd ../..'
alias -- -='cd -'
