if "Alacritty.Alacritty" in window.get_active_class():
    keyboard.send_keys("<alt>+q")
if "xfce4-terminal" in window.get_active_class():
    keyboard.send_keys("<ctrl>+<shift>+w")
else:
    keyboard.send_keys("<ctrl>+w")