winClass = window.get_active_class()

if "firefox" in winClass:    
    keyboard.send_keys("<ctrl>+b") 
else:
    keyboard.send_keys("<alt>+b")