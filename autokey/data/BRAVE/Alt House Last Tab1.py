winClass = window.get_active_class()

if "Brave-browser" in winClass:    
    keyboard.send_keys("<alt>+<shift>+l")
if "Doublecmd" in winClass:    
    keyboard.send_keys("<alt>+`")
if "Chromium" in winClass:    
    keyboard.send_keys("<alt>+`")    
if "Alacritty.Alacritty" in winClass:    
    keyboard.send_keys("<alt>+`")   
if "com.mitchellh.ghostty" in winClass:    
    keyboard.send_keys("<alt>+l")    
else:
    keyboard.send_keys("<alt>+`")
