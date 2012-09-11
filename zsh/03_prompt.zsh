# Zsh Prompt.
#
# Location: ~/.zsh/prompt
#
# Simon Olofsson <simon@olofsson.de>
#

# Format for folders
local folder="%(4~.%1~.%~)"

# Prompt
PS1='%F{blue}%m%f:%F{cyan}$folder%f${vcs_info_msg_0_}%(?.%F{green}.%F{red})%#%f '
