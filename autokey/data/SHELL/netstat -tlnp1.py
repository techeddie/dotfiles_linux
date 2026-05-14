import subprocess
# set clipboard
subprocess.run(['xclip', '-selection', 'clipboard'], input=b'netstat -tlnp | rg LISTEN', check=True)
# paste via xdotool
subprocess.run(['xdotool', 'key', '--clearmodifiers', 'ctrl+shift+v'])