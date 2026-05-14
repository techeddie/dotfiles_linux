import subprocess
# set clipboard
subprocess.run(['xclip', '-selection', 'clipboard'], input=b'restic stats --mode files-by-contents', check=True)
# paste via xdotool
subprocess.run(['xdotool', 'key', '--clearmodifiers', 'ctrl+shift+v'])