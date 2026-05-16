window_class = window.get_active_class()
if "kitty" in window_class:
    # pass through alt+comma to kitty as-is
    keyboard.send_keys('<alt>+<comma>')
else:
    keyboard.send_keys('=')