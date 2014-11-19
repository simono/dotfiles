# Zsh Functions.
#
# Location: ~/.zsh/10_functions.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

# Update tmux window title
update_window_title() {
	if [[ $TERM == screen* ]]; then
		print -nP "\ek$1\e\\"
	fi
}

# Display the full command string
preexec() {
	update_window_title "$1"
}

# Extract path when showing a prompt
precmd() {
	vcs_info
	update_window_title "$folder%#"
	# Ring the bell before displaying the prompt
	echo -ne '\a'
}

so-diff() { diff -ruN "$@" | $PAGER }

so-xml-format() {
	for f in $@; do
		if [[ -f $f ]]; then
			xmllint --format "$f" --output "$f"
		else
			echo "$f is not a file."
		fi
	done
}

so-take() { mkdir -p "$1" && cd "$1" }

so-vm() { cp ~/.zsh/templates/vm/* . }
