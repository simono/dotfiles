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

# History search with patterns in normal mode
bindkey -M vicmd '/' history-incremental-pattern-search-backward
bindkey -M isearch '^P' history-incremental-search-backward
bindkey -M isearch '^N' history-incremental-search-forward

# Auto-completion for history in insert mode
bindkey -M 'viins' '^N' history-beginning-search-backward
bindkey -M 'viins' '^P' history-beginning-search-forward

# Push the current buffer onto the buffer stack and clear the buffer
bindkey -M vicmd 'q' push-line-or-edit

# Edit the command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd '^v' edit-command-line
