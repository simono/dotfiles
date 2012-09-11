# Zsh Misc.
#
# Location: ~/.zsh/misc
#
# Simon Olofsson <simon@olofsson.de>
#

# A Calculator
autoload -U zcalc

# Rename multiple files
autoload -U zmv

# The shell's MIME system
autoload -U zsh-mime-setup && zsh-mime-setup

# When typing an URL, escape characters like *
autoload -U url-quote-magic
zle -N self-insert url-quote-magic
