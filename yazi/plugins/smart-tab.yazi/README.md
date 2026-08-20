# smart-tab.yazi

A Yazi plugin that makes the tab key 'smart', it switches to the next tab if there is one and creates new if there isn't.

## Installation

**Via ya pkg:**
```bash
ya pkg add pakhromov/smart-tab
```

**Manual:**
```bash
git clone https://github.com/pakhromov/smart-tab.yazi ~/.config/yazi/plugins/smart-tab.yazi
```

Add to `~/.config/yazi/keymap.toml`:
```toml
[[mgr.prepend_keymap]]
on = "]"
run = "plugin smart-tab"
desc = "Next tab or create new"
```
