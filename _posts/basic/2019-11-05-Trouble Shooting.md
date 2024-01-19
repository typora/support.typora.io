---
layout: post
title: Trouble Shooting
author: typora.io
category: basic
tags: [FAQ, tutorial]
typora-root-url: ../../
---

# Common

#### Inline math (Latex code), mermaid, etc are not working

Please enable related features in preferences panel.

#### How to downgrade

You can find old release builds here:

<https://typora.io/releases/all>

#### Recovered old / unsaved data

Please check http://support.typora.io/Version-Control/

# macOS

#### Cannot open / input on macOS 10.15

Please refer [#2923](https://github.com/typora/typora-issues/issues/2923), cleaning existing config / cache of Typora using 3rd app such as AppCleaner, and then restart Typora will get everything working again.

#### Cannot save / close / quit / export on macOS 10.15

Please refer [#2895](https://github.com/typora/typora-issues/issues/2895), cleaning existing config / cache of Typora using 3rd app such as AppCleaner, and then restart Typora will get everything working again.

#### How to uninstall Typora

You can remove following manually:

```
~/Applications/Typora.app
~/Library/Application Support/abnerworks.Typora/
~/Library/Caches/abnerworks.Typora/
~/Library/Preferences/abnerworks.Typora.plist
~/Library/Saved Application State/abnerworks.Typora.savedState
```

#### Typora always open a large file and hang on start

Please remove `~/Library/Saved Application State/abnerworks.Typora.savedState/` manually to prevent Typora from reopening last crashed files for next launch.

#### Typora window is blank after launch.

Try remove `~/Library/Caches/abnerworks.Typora/`, or reboot your macOS.

#### "Save" button is gray / disabled on macOS 12.3

Please try following workarounds:

1. Resize the Save As dialog and check. 
2. If the problem persists, pan around with the dialog and check if the Save button appears.

(refer https://helpx.adobe.com/in/illustrator/kb/unable-to-save-files-macOS.html)

Or you can try upgrade to 12.3.1 (https://ask.libreoffice.org/t/cannot-save-libre-office-documents-in-mac-os-monterey/76056)

## Windows

#### Typora window is blank / black

This may caused by compatibility issue between Electron / Chromium and certain GPU driver, please try

- Upgrade your GPU drive to latest

- Or, disable GPU rendering following [#2051](https://github.com/typora/typora-issues/issues/2051), in short

  Adding option `"flags": [["disable-gpu"]]` in
  `C:\Users\[your-user]\AppData\Roaming\Typora\conf\conf.user.json` .
  
-   Adding option `"flags": [["disable-gpu-sandbox"]]` in
  `C:\Users\[your-user]\AppData\Roaming\Typora\conf\conf.user.json` . (<https://github.com/electron/electron/issues/32074>)
  
- Uninstall Typora, delete `C:\Users\[username}]\AppData\Roaming\Typora`, then reinstall Typora.

#### Typora exit after launch on Windows 7

The version 1.4.3 does not support Windows 7 yet, please download to [1.3.8 (x64)](https://download.typora.io/windows/typora-setup-x64-1.3.8.exe) or [1.3.8 (ia32)](https://download.typora.io/windows/typora-setup-ia32-1.3.8.exe). 

## Linux

Please check http://support.typora.io/Typora-on-Linux/