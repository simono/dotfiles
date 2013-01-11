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
alias rm="rm -v $rmOpts"
alias sudo='nocorrect sudo'
alias zcalc='noglob zcalc'
alias zmv='noglob zmv -vW'

# Directory operations
alias ...='cd ../..'
alias -- -='cd -'

# Custom aliases
alias so-brew-outdated='brew update; brew outdated'
alias so-du-dirs='du -s *(/)'
alias so-reset='cd; clear'
alias so-svn-hdiff='so-svn-diff -rBASE:HEAD'
alias so-svn-hlog='svn log -rHEAD:BASE'
alias so-tmp='cd $(so-mktemp -d)'
