---
layout: post
title: Custom Key Binding
author: typora.io
category: how-to
tags: [key binding]
typora-root-url: ../
---

User can set or reassign shortcut keys for commands in Typora's menubar. This article will show how to customise typora' key binding.

# macOS

We use macOS's system feature to customise typora's key binding on macOS.

1. Open `System Preference` → `Keyboard`, select tab `Shortcuts`. Select `App Shortcuts` in its left panel.

   ![Snip20160814_1](/media/custom-key-binding/Snip20160814_1.png)

2. Click the "+" button, a dialog sheet would popup. Select "Typora.app" from field `Application`, then input the exact name of the menu command you want to add, and then input the shortcut key you want to assign.

   For example, assume you want to add/change the shortcut key to pin typora's window, you could fill the dialog like following:

   ![Snip20160814_5](/media/custom-key-binding/Snip20160814_5.png)

   Then `Command+Shift+P` will be the shortcut key for menu command "always On Top"

# Windows

*(Requires Typora ≥ v0.9.16)*

1. Open `Menu`  →  `Preference` in Typora, then click "Open Advanced Settings".

   ![sshot-1](/media/custom-key-binding/sshot-1.png)

2. Open and edit `conf.user.json` from opened "File Explore". If there's no such file, create one.

3. Set or add JSON object which represents a key binding, for example:

   ![Snip20160814_7](/media/custom-key-binding/Snip20160814_7.png)

4. Restart Typora, and the new key binding will be applied.

   ![sshot-2](/media/custom-key-binding/sshot-2.png)

You could set or change shortcut keys for menu items in menu bar in native window style.