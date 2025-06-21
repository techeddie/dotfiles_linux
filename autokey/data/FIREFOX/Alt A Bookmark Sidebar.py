winClass = window.get_active_class()

if "firefox" in winClass:    
    keyboard.send_keys("<ctrl>+b")
if "com.mitchellh.ghostty" in winClass:
     import subprocess
     subprocess.run(["tmux", "previous-window"])  
else:
    keyboard.send_keys("<alt>+a")