#!/usr/bin/env osascript -l JavaScript

function run(theme) {
  const terminal = Application("Terminal");
  try {
    terminal
      .windows()
      .forEach((w) =>
        w
          .tabs()
          .forEach(
            (t) => (t.currentSettings = terminal.settingsSets.byName(theme)),
          ),
      );
  } catch (e) {
    // Just log the error
    console.log(e);
  }
}
