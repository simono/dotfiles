# Zsh Vi.
#
# Location: ~/.zsh/07_vi.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

# Use vi bindings
bindkey -v

# Map 'jj' to escape
bindkey -M viins 'jj' vi-cmd-mode

# Remove all bindings beginning with an escape character (probably cursor keys)
bindkey -rpM viins '^['
bindkey -rpM vicmd '^['

# vim-like undo and redo
bindkey -M vicmd 'u' undo
bindkey -M vicmd '^R' redo

# Some keys to change the case
bindkey -M vicmd 'gu' down-case-word
bindkey -M vicmd 'gU' up-case-word
bindkey -M vicmd 'g~' vi-oper-swap-case

# Start in normal mode
zle-line-init() {
	zle -K vicmd
}
zle -N zle-line-init

# Show the vi mode on the right side and update it
zle-keymap-select() {
	RPS1="${${KEYMAP/(main|viins)/-- INSERT --}/vicmd/}"
	RPS2=$RPS1
	zle reset-prompt
	RPS1=""
	RPS2=$RPS1
}
zle -N zle-keymap-select

# Edit the command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'v' edit-command-line
