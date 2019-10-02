# Zsh Misc.
#
# Location: ~/.zsh/09_misc.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

# A Calculator
autoload -U zcalc

# Rename multiple files
autoload -U zmv

# When typing an URL, escape characters like *
autoload -U url-quote-magic
zle -N self-insert url-quote-magic
