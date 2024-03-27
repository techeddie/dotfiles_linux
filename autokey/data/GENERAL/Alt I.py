winClass = window.get_active_class()
if "Brave-browser" in winClass:    
    keyboard.send_keys("<ctrl>+<shift>+a")
if "Alacritty.Alacritty" in winClass:
    keyboard.send_keys("<end>")
#else:
    #keyboard.send_keys("<end>")