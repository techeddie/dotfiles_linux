winClass = window.get_active_class()
if "Alacritty.Alacritty" in window.get_active_class():
    keyboard.send_keys("<end>")
if "com.mitchellh.ghostty" in winClass:
    keyboard.send_keys("<f10>")
else:
    keyboard.send_keys("<end>")