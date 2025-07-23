# Fish config for fzf.fish.
#
# Location: ~/.config/fish/conf.d/fzf-fish.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Use eza for directory preview.
set -g fzf_preview_dir_cmd l --all --color=always --oneline

# Open files and directories in the editor.
set -g fzf_directory_opts --bind 'ctrl-o:execute($EDITOR {} &> /dev/tty)'

# fzf.fish binds everything to normal and insert mode.
# That's not what I want.
bind / _fzf_search_history
bind gf _fzf_search_directory
bind -M insert ctrl-g,f _fzf_search_directory
bind gl _fzf_search_git_log
bind -M insert ctrl-g,l _fzf_search_git_log
bind gs _fzf_search_git_status
bind -M insert ctrl-g,s _fzf_search_git_status
