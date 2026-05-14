import subprocess
# set clipboard
subprocess.run(['xclip', '-selection', 'clipboard'], input=b'docker-compose down', check=True)
# paste via xdotool
subprocess.run(['xdotool', 'key', '--clearmodifiers', 'ctrl+shift+v'])