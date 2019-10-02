# Zsh Functions.
#
# Location: ~/.zsh/10_functions.zsh
#
# Simon Olofsson <simon@olofsson.de>
#



# provides a simple way of adding or removing hooks
autoload -Uz add-zsh-hook

so-bell() {
	# Ring the bell before displaying the prompt
	echo -ne '\a'
}
add-zsh-hook precmd so-bell

so-xml-format() {
	for f in $@; do
		if [[ -f $f ]]; then
			xmllint --format "$f" --output "$f"
		else
			echo "$f is not a file."
		fi
	done
}

so-take() {
	mkdir -p "$1" && cd "$1"
}

so-vm() {
	git clone -q https://github.com/simono/template-vagrant-ansible.git .
	rm -rf .git LICENSE README.md &> /dev/null
}
