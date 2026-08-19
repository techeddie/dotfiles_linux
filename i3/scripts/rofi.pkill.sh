ps -eo comm --no-headers | sort -u | rofi -dmenu -theme ~/gitREPO/dotfiles_linux/rofi/themes/gruvbox-dark-soft.rasi | xargs -r pkill > /dev/null 2>&1
