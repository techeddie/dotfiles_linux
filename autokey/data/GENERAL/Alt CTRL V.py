import time

# Get clipboard contents
text = clipboard.get_clipboard()

# Optional: small delay before typing (gives you time to focus window)
time.sleep(1)

# Type each character with a short delay
for char in text:
    keyboard.send_keys(char)
    time.sleep(0.02)  # 20 ms between keystrokes
    
# keyboard.send_keys("<enter>")