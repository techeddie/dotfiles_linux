winClass = window.get_active_class()

if "Brave-browser" in winClass:    
    keyboard.send_keys("<ctrl>+<Shift>+a")
else:
    keyboard.send_keys("<alt>+i")