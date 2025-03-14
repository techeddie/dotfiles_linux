winClass = window.get_active_class()
if "Alacritty.Alacritty" in window.get_active_class():
    keyboard.send_keys("<alt>+j")
if "xfce4-terminal" in window.get_active_class():
    keyboard.send_keys("<alt>+j")
else:
    keyboard.send_keys("<ctrl>+<page_up>")