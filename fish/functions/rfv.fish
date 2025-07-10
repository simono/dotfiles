# Fish function to combine rg, fzf and vim 🤯
# See https://junegunn.github.io/fzf/tips/ripgrep-integration/
#
# Location: ~/.config/fish/functions/rfv.fish
#
# Simon Olofsson <simon@olofsson.de>
#

function rfv
    set -f reload 'reload:rg --column --color=always --smart-case {q} || :'
    set -f opener 'if [[ $FZF_SELECT_COUNT -eq 0 ]]; then
        vim {1} +{2}     # No selection. Open the current line in Vim.
        else
        vim +cw -q {+f}  # Build quickfix list for the selected items.
        fi'
    fzf --disabled --ansi --multi \
        --bind "start:$reload" --bind "change:$reload" \
        --bind "enter:become:$opener" \
        --bind "ctrl-o:execute:$opener" \
        --bind 'alt-a:select-all,alt-d:deselect-all,ctrl-/:toggle-preview' \
        --delimiter : \
        --preview 'bat --style=full --color=always --highlight-line {2} {1}' \
        --preview-window '~4,+{2}+4/3,<80(up)' \
        --query "$argv"
end
