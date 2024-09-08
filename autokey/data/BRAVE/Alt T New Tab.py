winClass = window.get_active_class()

if "Brave-browser" in winClass:    
    keyboard.send_keys("<ctrl>+t")
if "Doublecmd" in winClass:    
    keyboard.send_keys("<alt>+t")    
else:
    keyboard.send_keys("<alt>+n")