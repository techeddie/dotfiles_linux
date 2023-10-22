winClass = window.get_active_class()

if "Alacritty.Alacritty" in winClass:
    keyboard.send_keys("<end>")
else:
    keyboard.send_keys("<end>")