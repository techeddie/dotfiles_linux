winClass = window.get_active_class()

if "Brave-browser" in winClass:    
    keyboard.send_keys("<ctrl>+<shift>+a")    
else:
    keyboard.send_keys("<alt>+<down>")