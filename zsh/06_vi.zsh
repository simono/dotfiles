# Zsh Vi.
#
# Location: ~/.zsh/07_vi.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

# Use vi bindings
bindkey -v

# Start in normal mode
zle-line-init() {
	zle vi-cmd-mode
}
zle -N zle-line-init

# Push the current buffer onto the buffer stack and clear the buffer
bindkey -M vicmd 'q' push-line-or-edit

# Edit the command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd '^v' edit-command-line
