if "Alacritty.Alacritty" in window.get_active_class():
    keyboard.send_keys("<ctrl>+<shift>+c")
else:
    keyboard.send_keys("<ctrl>+c")