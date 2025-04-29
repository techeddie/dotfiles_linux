# Scheme name: Gruvbox Dark
# Scheme system: base24
# Scheme author: Tinted Theming (https://github.com/tinted-theming), morhetz (https://github.com/morhetz/gruvbox)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#282828,fg:#ebdbb2,hl:#d65d0e"\
" --color=bg+:#504945,fg+:#b8bb26,hl+:#fabd2f"\
" --color=info:#b16286,border:#b16286,prompt:#98971a"\
" --color=pointer:#458588,marker:#fb4934,spinner:#fb4934,header:#cc241d"
