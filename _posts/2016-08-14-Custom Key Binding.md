---
layout: post
title: Custom Key Binding
author: typora.io
category: how-to
tags: [key binding]
typora-root-url: ../
---

You can set or reassign shortcut keys for any command in Typora's menubar. Here's how to customise Typora's key bindings:

# OS X / macOS

Apple's system feature to customise typora's key bindings.

1. Open **System Preference → Keyboard** 

2. Select **Shortcuts** in the top menu

3. Select **App Shortcuts** in the left panel

4. Click the `+` button below the right pane 

   ![Snip20160814_1](/media/custom-key-binding/Snip20160814_1.png)

5. A dialog sheet will pop up. Select "Typora.app" from the  **Application** drop-down

6. In the **Menu Title:** field enter the exact name of the menu command you want to add

7. In the **Keyboard Shortcut:** field, enter the shortcut key combination you want to assign.

   For example, if you want to add or change the shortcut key to keep the Typora window on top of all others, you could fill in the dialog sheet like this to have  `Command+Shift+P` to be the shortcut key:

   ![Snip20160814_5](/media/custom-key-binding/Snip20160814_5.png)


# Windows

*(Requires Typora ≥ v0.9.16)*

1. Open **Menu**  → **Preferences** in Typora, then click **Open Advanced Settings**.

   ![sshot-1](/media/custom-key-binding/sshot-1.png)

2.  From the opened Advanced Settings window open and edit `conf.user.json`. Create one if it doesn't exist.

3. Set or add the JSON object which represents a key binding. For example:

   ![Snip20160814_7](/media/custom-key-binding/Snip20160814_7.png)

4. Restart Typora, and the new key binding will be applied.

   ![sshot-2](/media/custom-key-binding/sshot-2.png)

You also can set or change shortcut keys for menu items using standard Windows procedures.