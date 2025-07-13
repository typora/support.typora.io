---
layout: post
title: Typora on macOS
author: typora.io
category: basic
tags:
- macOS
- OS X
typora-root-url: "../../"
typora-copy-images-to: "../../media/macOS"
last_modified_at: 2025-01-17
---

Typora is deeply integrated with the macOS desktop environment, like other native apps on macOS. The simplicity and extendable functions provided by macOS are also available in Typora.

* Outline
{:toc}
## System

### Apple Silicon

Typora is now native on Apple Silicon Mac devices.

### Open From Terminal 

You can use `open -a typora xxx.md` to open the Markdown file `xxx.md` in Typora from a command line. If Typora is your default editor for `.md` files, then `open xxx.md` would be enough.

You can also add

```sh
alias typora="open -a typora"
```

in your `.bash_profile` or other configuration file which then means you would be able to simply type `typora xxx.md` instead.

For details, you can [click here](https://support.typora.io/Use-Typora-From-Shell-or-cmd/).

### Quick Look

Typora does not provide a quick look plugin for now but you can use [QLMarkdown](https://github.com/toland/qlmarkdown) or [Glance](https://github.com/samuelmeuli/glance) to achieve this.

### Older macOS Support

The latest version of Typora supports macOS ≥ 11.0, for older macOS support, please check https://support.typora.io/Older-macOS-Support/.

## File

### Document-Based App

Typora is a documented-base app, so for macOS, the system provides built-in functions like **[auto-save](https://support.typora.io/Auto-Save/), [version control](https://support.typora.io/Version-Control/), quickly renaming from title bar**, etc.

For example, you can use <kbd>command</kbd> + click on the titlebar to quickly open parent folders of the current file in Typora (and in other macOS apps as well):

<video src="/media/macOS/titlebar.mp4" controls style="width:100%"> </video>

### Version Control and Recovery

On macOS, Typora integrates with the native version control function powered by the operation system.

You can simply choose `File` > `Revert To` > `Browse All Versions` from the main menu to browse and revert to a certain version. More details can be found [here](https://support.apple.com/guide/mac-help/mh40710/mac).

![Snip20170228_6](/media/macOS/Snip20170228_6.png)

For **untitled** drafts, they are located in `~/Library/Autosave Information`. But please save them just in case.

### Share

You can share a file from `File` → `Share` in the menu.

<img src="/media/macOS/Screen Shot 2020-12-07 at 00.11.46.png" alt="Screen Shot 2020-12-07 at 00.11.46" style="zoom:50%;" />

## Editing

### Grammar and Spelling Checker

Typora uses the macOS built-in grammar and spelling checker, you can enable / disable it in system preferences or from the menu bar.

<img src="/media/macOS/Screen Shot 2020-12-06 at 22.44.02.png" alt="Screen Shot 2020-12-06 at 22.44.02" style="zoom:50%;" />

You can also learn spellings from the context menu and the learned new words will be shared among different macOS apps.

### Substitutions

Typora supports macOS built-in text functions like: 

- **smart quote**
- **smart dashes**
-  **text replacement**
- **capitalize words automatically**
- **add period with double space**

You can configure them under system preferences.

<img src="/media/macOS/Screen Shot 2020-12-07 at 00.06.06.png" alt="Screen Shot 2020-12-07 at 00.06.06" style="zoom:50%;" />

After configuring, text substitution will be working in Typora. For features like smart dashes, smart quote and text replacement, you can also enable / disable them from Typora’s `Edit` → `Substitutions` menu.

<video src="/media/macOS/Screen Recording 2020-12-07 at 00.07.54.mov" style="width:100%" controls> </video>

### Services

You can use [service](https://www.computerworld.com/article/2476298/os-x-a-quick-guide-to-services-on-your-mac.html) to extend Typora’s functionality before Typora has its own plugin system.

For example, you can install [WordService](https://apps.apple.com/us/app/wordservice/id899972312?mt=12) for common text operations, such as insert date and time, etc.

<img src="/media/macOS/Screen Shot 2020-12-07 at 00.32.33.png" alt="Screen Shot 2020-12-07 at 00.32.33" style="zoom:50%;" />

### Continuity Camera

Use your iPhone, iPad, or iPod touch to scan documents, draw a sketch or take a picture of something nearby and insert it directly into Typora on macOS.

<img src="/media/macOS/Screen Shot 2020-12-06 at 22.20.07.png" alt="Screen Shot 2020-12-06 at 22.20.07" style="zoom:50%;" />

## View

### Touch Bar

You can use the touch bar for context aware quick editing.

![Screen Shot 2020-12-06 at 22.07.32](/media/macOS/Screen Shot 2020-12-06 at 22.07.32.png?lastModify=1607354481)

![Screen Shot 2020-12-06 at 22.08.21](/media/macOS/Screen Shot 2020-12-06 at 22.08.21.png?lastModify=1607354481)

<img src="/media/macOS/Screen Shot 2020-12-07 at 23.23.58.png" alt="Screen Shot 2020-12-07 at 23.23.58" />

Including to change block / inline styles, modify tables (add row, etc), change list indent, input predictions, etc.

### Dictionary Look Up / Link Preview

You can tap with three fingers on the trackpad to look up words or preview links, just like in Safari. You can find details [here](https://support.apple.com/guide/mac-help/mchl3983326c/mac).

<img src="/media/macOS/Screen Shot 2020-12-07 at 23.26.27.png" alt="Screen Shot 2020-12-07 at 23.26.27" style="zoom:50%;box-shadow: 0 0 5px #333;" />

### Dark Mode

Typora will use the system dark mode color scheme when using dark themes. Or, if you want Typora to auto apply themes based on the current macOS light / dark mode, you can choose different themes for light mode and dark mode.

<img src="/media/new-97/Screen Shot 2020-12-05 at 17.01.49.png" alt="Screen Shot 2020-12-05 at 17.01.49" style="zoom:50%;" />

