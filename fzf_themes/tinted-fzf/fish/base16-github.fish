# Scheme name: Github
# Scheme system: base16
# Scheme author: Tinted Theming (https://github.com/tinted-theming)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l color00 '#eaeef2'
set -l color01 '#d0d7de'
set -l color02 '#afb8c1'
set -l color03 '#8c959f'
set -l color04 '#6e7781'
set -l color05 '#424a53'
set -l color06 '#32383f'
set -l color07 '#1f2328'
set -l color08 '#fa4549'
set -l color09 '#e16f24'
set -l color0A '#bf8700'
set -l color0B '#2da44e'
set -l color0C '#339d9b'
set -l color0D '#218bff'
set -l color0E '#a475f9'
set -l color0F '#4d2d00'

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"
