active = window.get_active_class()

if "Alacritty" in active:
    keyboard.send_keys("<alt>+q")
elif "kitty" in active:
    keyboard.send_keys("<alt>+q")
elif "floating-term" in active:
    keyboard.send_keys("<alt>+q")
elif "guake" in active:
    keyboard.send_keys("<alt>+q")
elif "com.mitchellh.ghostty" in active:
    import subprocess
    subprocess.run(["tmux", "kill-pane"])
elif "xfce4-terminal" in active:
    keyboard.send_keys("<ctrl>+d")
else:
    keyboard.send_keys("<ctrl>+w")