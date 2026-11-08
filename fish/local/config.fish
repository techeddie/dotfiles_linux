if status is-interactive
    set -gx EDITOR nvim
    set -gx VISUAL nvim
    bind \ee 'y; commandline -f repaint'
end
