# enable service
```bash
sudo systemctl disable ly@tty2.service    # only if ly was enabled before
sudo systemctl enable greetd.service
sudo reboot
```

# check
```bash
systemctl is-enabled greetd.service
systemctl status greetd.service
journalctl -u greetd -b
```
---
# optional: revert back to ly
```bash
sudo systemctl disable greetd.service
sudo systemctl enable ly@tty2.service
sudo reboot
```
