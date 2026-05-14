import subprocess
# set clipboard
subprocess.run(['xclip', '-selection', 'clipboard'], input=b'sudo apt update && sudo apt upgrade', check=True)
# paste via xdotool
subprocess.run(['xdotool', 'key', '--clearmodifiers', 'ctrl+shift+v'])