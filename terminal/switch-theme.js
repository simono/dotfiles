#!/usr/bin/env osascript -l JavaScript

const appearancePreferences = Application('System Events').appearancePreferences;
const settings = `rose-pine-${appearancePreferences.darkMode() ? 'moon' : 'dawn'}`;

const terminal = Application('Terminal');
terminal.windows().forEach(w => w.tabs().forEach(t => t.currentSettings = terminal.settingsSets.byName(settings)));
