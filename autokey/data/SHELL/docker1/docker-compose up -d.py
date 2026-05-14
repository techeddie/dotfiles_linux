import subprocess
# set clipboard
subprocess.run(['xclip', '-selection', 'clipboard'], input=b'docker-compose up -d', check=True)
# paste via xdotool
subprocess.run(['xdotool', 'key', '--clearmodifiers', 'ctrl+shift+v'])