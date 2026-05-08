import sublime_plugin
from datetime import datetime

class InsertDateCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        date = datetime.now().strftime("%Y-%m-%d")
        for region in self.view.sel():
            self.view.insert(edit, region.begin(), date)

class InsertDateTimeCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        date = datetime.now().strftime("%Y-%m-%d %H:%M")
        for region in self.view.sel():
            self.view.insert(edit, region.begin(), date)

class InsertTimeCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        time = datetime.now().strftime("%H:%M")
        for region in self.view.sel():
            self.view.insert(edit, region.begin(), time)
