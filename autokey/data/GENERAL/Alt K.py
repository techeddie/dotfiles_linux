winClass = window.get_active_class()
if "Alacritty.Alacritty" in window.get_active_class():
    keyboard.send_keys("<alt>+k")
if "Brave-browser" in winClass:    
    keyboard.send_keys("<ctrl>+<page_up>")    
else:
    keyboard.send_keys("<ctrl>+<page_down>")