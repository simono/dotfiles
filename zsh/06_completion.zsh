# Zsh Completion.
#
# Location: ~/.zsh/06_completion.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

autoload -U compinit && compinit

# Description for options that are not described by the completion functions
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' complete true
# The completer functions to use
zstyle ':completion:*' completer _list _oldlist _expand _complete _ignored _match _correct _approximate _prefix
# Complete if there's only one match
zstyle ':completion:*' condition false
# Completing strings consisting of multiple parts, such as path names
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' format "$FG[cyan]Completing %d%f"
# Show the kind of matches
# Display all different types of matches separately
zstyle ':completion:*' group-name ''
# Ignore the current path when completing
zstyle ':completion:*' ignore-parents parent pwd .. directory
# Insert unambiguous completions
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ${(s.:.)lsColors}
# Use the same colors as ls
# Completion lists that don’t fit on the screen can be scrolled
zstyle ':completion:*:default' list-prompt ''
# Show all ambiguous pathname components
zstyle ':completion:*' list-suffixes true
# Try to match without a wildcard at first
zstyle ':completion:*' match-original both
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
# Try some fancy stuff, after simple completion
# Use menu selection with at least 4 Matches
zstyle ':completion:*' menu select=4
# Always add the original as possible correction
zstyle ':completion:*' original false
# What to preserve when completing path names
zstyle ':completion:*' preserve-prefix '//[^/]##/'
# Automatically rehash
zstyle ':completion:*' rehash true
# Display a message when the completion list does not fit on the screen as a whole
zstyle ':completion:*:default' select-prompt ''
# Add ‘.’ and ‘..’ as possible completions
zstyle ':completion:*' special-dirs true
# Treat multiple slashes as a single slash
zstyle ':completion:*' squeeze-slashes true
# Only complete named directories (instead of user directories)
zstyle ':completion:*:-tilde-:*' tag-order named-directories
# Use a completion cache
zstyle ':completion:*' use-cache true
