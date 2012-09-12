# Zsh Functions.
#
# Location: ~/.zsh/10_functions.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

# Update screen's window title
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

git() { hub "$@" }

so-diff() { diff -ruN "$@" | $PAGER }

so-svn-diff() {
	# Remove carriage returns from the diff
	svn diff "$@" | tr -d '\r' | $PAGER
}

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

so-svn-ls() { svn st | sed -nE "s/^[$1][[:space:]]+//p" }
