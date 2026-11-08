fish_add_path -g ~/.local/bin

set -gx EDITOR nvim
set -gx VISUAL nvim

if status is-interactive
    set -g fish_greeting
    zoxide init fish --cmd cd | source
    fzf --fish | source
end
