# Zsh VCS.
#
# Location: ~/.zsh/08_vcs.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

autoload -U vcs_info

local vcs_format="%F{magenta}%1.1s%F{red}%u%c%F{yellow}%b%f"

zstyle ':vcs_info:*' enable bzr git hg svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' formats "[$vcs_format]"
zstyle ':vcs_info:*' actionformats "[$vcs_format(%a)]"
# Use the git command not an alias or a function
zstyle ':vcs_info:git:*:-all-' command $commands[git]
zstyle ':vcs_info:*+set-message:*' hooks abbrv-branch
 	
function +vi-abbrv-branch() {
	# Show when we're not on master, default or trunk branch
	hook_com[branch]=${${hook_com[branch]##(master|default|trunk)*}:+B}
}
