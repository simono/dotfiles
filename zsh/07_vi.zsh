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

# vim-like undo and redo
bindkey -M vicmd 'u' undo
bindkey -M vicmd '^R' redo

# Some keys to change the case
bindkey -M vicmd 'gu' down-case-word
bindkey -M vicmd 'gU' up-case-word
bindkey -M vicmd 'g~' vi-oper-swap-case

# Push the current buffer onto the buffer stack and clear the buffer
bindkey -M vicmd 'q' push-line-or-edit

# Start in normal mode
zle-line-init() {
	zle vi-cmd-mode
}
zle -N zle-line-init


# Edit the command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd 'v' edit-command-line
