import subprocess
# set clipboard
subprocess.run(['xclip', '-selection', 'clipboard'], input=b'ip -4 -brief addr', check=True)
# paste via xdotool
subprocess.run(['xdotool', 'key', '--clearmodifiers', 'ctrl+shift+v'])