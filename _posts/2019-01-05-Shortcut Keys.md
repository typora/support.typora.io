---
layout: post
title: Shortcut Keys
author: typora.io
category: basic
tags: [shortcut keys]
typora-root-url: ../
---

* Outline
{:toc}
## Summary

You can use shortcut keys to quickly insert or modify styles or do other operations supported by Typora.

You can find shortcut keys in the right side of each menu items from menu bar.

## Frequently Used Shortcut Keys

### Autocomplete

On macOS, you can press `Esc` key to open inline preview for inline math, auto-complete for emoji, etc.

### File

| Function            | Hotkey (Windows/Linux) | Hotkey (macOS)      |
| :------------------ | :--------------------- | ------------------- |
| New                 | Ctrl + N               | Command + N         |
| New Window          | Ctrl + Shift + N       | Command +Shift + N  |
| New Tab             | *(Not Supported)*      | Command + T         |
| Open                | Ctrl + O               | Command + O         |
| Open Quickly        | Ctrl + P               | Command + Shift + O |
| Reopen Closed File  | Ctrl + Shift + T       | Command + Shift + T |
| Save                | Ctrl + S               | Command + S         |
| Save As / Duplicate | Ctrl + Shift + S       | Command + Shift + S |
| Preference          | Ctrl + ,               | Command + ,         |
| Close               | Ctrl + W               | Command + W         |



### Edit

| Function                                        | Hotkey (Windows/Linux)     | Hotkey (macOS)                      |
| :---------------------------------------------- | :------------------------- | ----------------------------------- |
| New Paragraph                                   | Enter                      | Enter                               |
| New Line                                        | Shift + Enter              | Shift + Enter                       |
| Cut                                             | Ctrl + X                   | Command + X                         |
| Copy                                            | Ctrl + C                   | Command + C                         |
| Paste                                           | Ctrl + V                   | Command + V                         |
| Copy As Markdown                                | Ctrl + Shift + C           | Command + Shift + C                 |
| Paste As Plain Text                             | Ctrl + Shift + V           | Command + Shift + V                 |
| Select All                                      | Ctrl + A                   | Command + A                         |
| Select Line/Sentence<br />Select Row (in table) | Ctrl + L                   | Command + L                         |
| Delete Row (in table)                           | Ctrl + Shift + Backspace   | Command + Shift + Backspace         |
| Select Style Scope<br />Select Cell (in table)  | Ctrl + E                   | Command + E                         |
| Select Word                                     | Ctrl + D                   | Command + D                         |
| Delete Word                                     | Ctrl + Shift + D           | Command + Shift + D                 |
| Jump to Top                                     | Ctrl + Home                | Command + ↑                         |
| Jump to Selection                               | Ctrl + J                   | Command + J                         |
| Jump to Buttom                                  | Ctrl + End                 | Command + ↓                         |
| Find                                            | Ctrl + F                   | Command + F                         |
| Find Next                                       | F3 / Enter                 | Command + G / Enter                 |
| Find Previous                                   | Shift + F3 / Shift + Enter | Command + Shift + G / Shift + Enter |
| Replace                                         | Ctrl + H                   | Command + H                         |

### Paragraph

| Function               | Hotkey (Windows/Linux) | Hotkey (macOS)            |
| :--------------------- | :--------------------- | ------------------------- |
| Heading 1 to 6         | Ctrl + 1/2/3/4/5/6     | Command + 1/2/3/4/5/6     |
| Paragraph              | Ctrl + 0               | Command + 0               |
| Increase Heading Level | Ctrl + =               | Command + =               |
| Decrease Heading Level | Ctrl + -               | Command + -               |
| Table                  | Ctrl + T               | Command + Option + T      |
| Code Fences            | Ctrl + Shift + K       | Command + Option + C      |
| Math Block             | Ctrl + Shift + M       | Command + Option + B      |
| Quote                  | Ctrl + Shift + Q       | Command + Option + Q      |
| Ordered List           | Ctrl + Shift + [       | Command + Option + O      |
| Unordered List         | Ctrl + Shift + ]       | Command + Option + U      |
| Indent                 | Ctrl + [ / Tab         | Command + [ / Tab         |
| Outdent                | Ctrl + ] / Shift + Tab | Command + ] / Shift + Tab |

### Format

| Function     | Hotkey (Windows/Linux) | Hotkey (macOS)        |
| :----------- | :--------------------- | --------------------- |
| Strong       | Ctrl + B               | Command + B           |
| Emphasis     | Ctrl + I               | Command + I           |
| Underline    | Ctrl + U               | Command + U           |
| Code         | Ctrl + Shift + `       | Command + Shift + `   |
| Strike       | Alt + Shift + 5        | Control + Shift + `   |
| Hyperlink    | Ctrl + K               | Command + K           |
| Image        | Ctrl + Shift + I       | Command + Control + I |
| Clear Format | Ctrl + \               | Command + \           |

### View

| Function                        | Hotkey (Windows/Linux) | Hotkey (macOS)        |
| :------------------------------ | :--------------------- | --------------------- |
| Toggle Sidebar                  | Ctrl + Shift + L       | Command + Shift + L   |
| Outline                         | Ctrl + Shift + 1       | Command + Control + 1 |
| Articles                        | Ctrl + Shift + 2       | Command + Control + 2 |
| File Tree                       | Ctrl + Shift + 3       | Command + Control + 3 |
| Source Code Mode                | Ctrl + /               | Command + /           |
| Focus Mode                      | F8                     | F8                    |
| Typewriter Mode                 | F9                     | F9                    |
| Toggler Fullscreen              | F11                    | Command + Option + F  |
| Actual Size                     | Ctrl + Shift + 0       | *(Not Supported)*     |
| Zoom In                         | Ctrl + Shift + =       | *(Not Supported)*     |
| Zoom Out                        | Ctrl + Shift + -       | *(Not Supported)*     |
| Switch Between Opened Documents | Ctrl + Tab             | Command + `           |
| Toggle DevTools                 | Ctrl + Shift + I       | -                     |

## Change Shortcut Keys

Users can set or reassign shortcut keys for commands in Typora's menu bar. This article will shows how to do this.

### macOS

We use macOS's system feature to customize Typora's key binding on macOS.

1. Open `System Preference` → `Keyboard`, select tab `Shortcuts`. Select `App Shortcuts` in its left panel.

   ![Snip20160814_1](/media/custom-key-binding/Snip20160814_1.png)

2. Click the "+" button, a dialog sheet would pop up. Select "Typora.app" from field `Application`, then enter the exact name of the menu command you want to add, and then type the shortcut key combination you want to assign.

   For example, assume you want to add/change the shortcut key to pin Typora's window, you can fill the dialog box as follows:

   ![Snip20160814_5](/media/custom-key-binding/Snip20160814_5.png)

   Then `Command+Shift+P` will be the shortcut key for menu command "always On Top"

### Windows / Linux

> Tip: This requires a version of Typora ≥ v0.9.16.

1. Open `Menu`  →  `Preference` in Typora, then click "Open Advanced Settings".

   ![sshot-1](/media/custom-key-binding/sshot-1.png)

2. Open and edit `conf.user.json` from opened "File Explore". If there's no such file, create one.

3. Set or add JSON object which represents a key binding, for example:

   ![Snip20160814_7](/media/custom-key-binding/Snip20160814_7.png)

4. Restart Typora, and the new key binding will be applied.

   ![sshot-2](/media/custom-key-binding/sshot-2.png)

You can set or change shortcut keys for menu items in the menu bar in native window style.

#### Q: Shortcut keys does not work on Ubuntu

For solutions to this problem please see:
- <https://help.ubuntu.com/community/KeyboardShortcuts> and 
- <https://askubuntu.com/questions/208310/ctrl-a-doesnt-work-in-browsers>.
