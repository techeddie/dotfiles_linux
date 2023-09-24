if "Alacritty.Alacritty" in window.get_active_class():
    keyboard.send_keys("<alt>+q")
else:
    keyboard.send_keys("<ctrl>+w")