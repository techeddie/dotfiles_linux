winClass = window.get_active_class()

if "Brave-browser" in winClass:    
    keyboard.send_keys("<ctrl>+<shift>+a")
if "com.mitchellh.ghostty" in winClass:
     import subprocess
     subprocess.run(["tmux", "selectp -D"])
else:
    keyboard.send_keys("<alt>+l")