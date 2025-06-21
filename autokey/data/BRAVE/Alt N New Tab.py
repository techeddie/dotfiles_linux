winClass = window.get_active_class()

if "Brave-browser" in winClass:    
    keyboard.send_keys("<ctrl>+t")
if "Doublecmd" in winClass:    
    keyboard.send_keys("<alt>+t")
if "Alacritty.Alacritty" in winClass:    
    # keyboard.send_keys("<alt>+n")
    keyboard.send_keys("<ctrl>+a")    
    keyboard.send_keys("c")    
if "com.mitchellh.ghostty" in winClass:
     import subprocess
     subprocess.run(["tmux", "new-window"])      
else:
    keyboard.send_keys("<alt>+n")
