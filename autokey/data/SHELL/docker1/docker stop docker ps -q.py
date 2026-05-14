import subprocess
# set clipboard
subprocess.run(['xclip', '-selection', 'clipboard'], input=b'docker stop $(docker ps -a -q)', check=True)
# paste via xdotool
subprocess.run(['xdotool', 'key', '--clearmodifiers', 'ctrl+shift+v'])