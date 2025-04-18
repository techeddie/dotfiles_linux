if "Alacritty" in window.get_active_class():
    keyboard.send_keys("<alt>+q")
if "com.mitchellh.ghostty" in window.get_active_class():
    keyboard.send_keys("<ctrl>+<shift>+q")    
if "xfce4-terminal" in window.get_active_class():
    keyboard.send_keys("<ctrl>+d")
else:
    keyboard.send_keys("<ctrl>+w")