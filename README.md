# Cursorless Hats

This hosts some non-standard hat collections.

You can use the [put_hats.ps1](put_hats.ps1) script to manually install the hats now (puts them in latest `~/.vscode/extensions/pokey.cursorless-VERSION_NUMBER` folder).
Place the script in the hat source folder, then run it and reload vscode (command palette → "Developer: Reload Window").

I have the following talon command to automate this:
```
hats update:
    user.system_command('{user.my_talon_config_jacob_subfolder_path()}/cursorless-settings/hats/put_hats.ps1')
    user.switcher_focus("Code")
    sleep(300ms)
    user.vscode("workbench.action.reloadWindow")
```

Also, it looks like there will soon be the ability to configure cursorless to use a folder of you choosing ([PR](https://github.com/cursorless-dev/cursorless/pull/1853)).

My thanks to Martin Rykfors for the [hat sandbox idea](https://github.com/MartinRykfors/cursorless_hat_sandbox/blob/master/preview.md).
