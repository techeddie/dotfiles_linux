winClass = window.get_active_class()
print("Window class:", winClass)

if "com.mitchellh.ghostty" in winClass:
    # Terminal expects Alt+. as ESC + .
    keyboard.send_keys("<escape>")
#else:
    # Regular Alt+. might be sent with real modifier elsewhere
 #   keyboard.send_keys("<alt>.")
