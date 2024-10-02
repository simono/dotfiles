# Zsh Options.
#
# Location: ~/.zsh/04_options.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

# Changing Directories
setopt auto_cd auto_pushd cdable_vars pushd_ignore_dups pushd_silent pushd_to_home
# Completion
setopt auto_menu complete_in_word
# Expansion and Globbing
setopt extended_glob nomatch
# History
setopt append_history hist_ignore_all_dups hist_reduce_blanks hist_verify
# Input/Output
setopt correct_all
unsetopt flow_control
# Job Control
setopt long_list_jobs
unsetopt notify
# Prompting
setopt prompt_subst transient_rprompt
# Zle
unsetopt beep
