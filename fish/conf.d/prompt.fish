# Fish config for the pure prompt.
#
# Location: ~/.config/fish/conf.d/prompt.fish
#
# Simon Olofsson <simon@olofsson.de>
#

# Use fish-async-prompt to avoid lag from git status.
set -g async_prompt_functions _pure_prompt_git

if command -q kubectl
    set --universal pure_enable_k8s true
else
    set --universal pure_enable_k8s false
end
