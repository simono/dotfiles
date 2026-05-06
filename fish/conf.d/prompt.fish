# Fish config for the pure prompt.
#
# Location: ~/.config/fish/conf.d/prompt.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Use fish-async-prompt to avoid lag from git status.
set -g async_prompt_functions _pure_prompt_git
