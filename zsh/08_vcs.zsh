# Zsh VCS.
#
# Location: ~/.zsh/08_vcs.zsh
#
# Simon Olofsson <simon@olofsson.de>
#

autoload -U vcs_info

local vcs_format='%F{magenta}%1.1s%F{red}%u%c%f'

zstyle ':vcs_info:*' enable bzr git hg svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' formats "[$vcs_format]"
zstyle ':vcs_info:*' actionformats "[$vcs_format(%a)]"
# hub slows this down
zstyle ':vcs_info:git:*:-all-' command /usr/bin/git
