if "Alacritty" in window.get_active_class():
    keyboard.send_keys("<alt>+q")
if "sp-term2" in window.get_active_class():
    keyboard.send_keys("<alt>+q")
if "guake" in window.get_active_class():
    keyboard.send_keys("<alt>+q")    
if "com.mitchellh.ghostty" in window.get_active_class():
     import subprocess
     subprocess.run(["tmux", "kill-pane"])     
if "xfce4-terminal" in window.get_active_class():
    keyboard.send_keys("<ctrl>+d")
else:
    keyboard.send_keys("<ctrl>+w")