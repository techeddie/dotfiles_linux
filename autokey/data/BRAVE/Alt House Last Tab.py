winClass = window.get_active_class()

if "Brave-browser" in winClass:    
    keyboard.send_keys("<alt>+l")
if "Doublecmd" in winClass:    
    keyboard.send_keys("<alt>+l")
if "Alacritty.Alacritty" in winClass:    
    keyboard.send_keys("<alt>+l")   
else:
    keyboard.send_keys("<alt>+`")