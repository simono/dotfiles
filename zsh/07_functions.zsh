# Zsh Functions.
#
# Location: ~/.zsh/10_functions.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

# A Calculator
autoload -U zcalc

# When typing an URL, escape characters like *
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic
# Apply quoting to copy-pasted URLs
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic

# provides a simple way of adding or removing hooks
autoload -Uz add-zsh-hook

so-bell() {
	# Ring the bell before displaying the prompt
	echo -ne '\a'
}
add-zsh-hook precmd so-bell

so-tmp() {
	cd $(mktemp -d)
}

so-take() {
	mkdir -p "$1" && cd "$1"
}
