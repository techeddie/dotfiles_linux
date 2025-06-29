ps -eo pid,comm --no-headers | rofi -dmenu -theme ~/gitREPO/dotfiles_linux/rofi/themes/DarkBlue.rasi  |  awk '{print $1}' | xargs -r kill > /dev/null 2>&1
