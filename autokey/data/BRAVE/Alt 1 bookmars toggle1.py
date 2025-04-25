winClass = window.get_active_class()

if "Brave-browser" in winClass:    
    keyboard.send_keys("<alt>+<shift>+0")    
else:
    keyboard.send_keys("<alt>+1")