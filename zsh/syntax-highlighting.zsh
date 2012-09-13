# Zsh syntax highlighting.
#
# Location: ~/.zsh/syntax-highlighting.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[path]='fg=cyan'

dangerous_cmds=('rm' 'sudo')
for i in $dangerous_cmds; do
	ZSH_HIGHLIGHT_PATTERNS+=($i 'fg=white,bold,bg=red')
done
