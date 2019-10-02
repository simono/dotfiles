# Zsh Functions.
#
# Location: ~/.zsh/10_functions.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

# A Calculator
autoload -U zcalc

# Rename multiple files
autoload -U zmv

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
	cd $(so-mktemp -d)
}

so-take() {
	mkdir -p "$1" && cd "$1"
}

so-vm() {
	git clone -q https://github.com/simono/template-vagrant-ansible.git .
	rm -rf .git LICENSE README.md &> /dev/null
}
