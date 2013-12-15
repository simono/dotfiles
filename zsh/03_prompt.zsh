# Zsh Prompt.
#
# Location: ~/.zsh/03_prompt.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

# Format for folders
local folder="%(4~.%1~.%~)"

# The Solarized Colors
typeset -Ag FG
FG[yellow]="%{[38;5;136m%}"
FG[orange]="%{[38;5;166m%}"
FG[red]="%{[38;5;160m%}"
FG[magenta]="%{[38;5;125m%}"
FG[violet]="%{[38;5;061m%}"
FG[blue]="%{[38;5;033m%}"
FG[cyan]="%{[38;5;037m%}"
FG[green]="%{[38;5;064m%}"

# Prompt
PS1='$FG[yellow]%m%f:$FG[orange]$folder%f${vcs_info_msg_0_}%(?.$FG[green].$FG[red])%#%f '
