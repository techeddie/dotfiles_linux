i3-msg exec keepassxc
# i3-msg -m -t subscribe '[ "window" ]' | grep -q build_output
i3-msg -m -t subscribe "[class=.*KeePass*]" | i3-msg "[class=.*KeePass*]" move scratchpad
