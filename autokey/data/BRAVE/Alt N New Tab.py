winClass = window.get_active_class()

if "Brave-browser" in winClass:    
    keyboard.send_keys("<ctrl>+t")
else:
    keyboard.send_keys("<alt>+n")