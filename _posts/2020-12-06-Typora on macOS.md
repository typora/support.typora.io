---
layout: post
title: Typora on macOS
author: typora.io
category: basic
tags: [macOS, OS X]
typora-root-url: ../
typora-copy-images-to: ../media/macOS
---

Typora is deeply integrated with the macOS desktop environment, like other native apps on macOS. The simplicity and extendable functions provided by macOS is also available on Typora.

* Outline
{:toc}
## System

### Apple Silicon

Typora (≥ 0.9.9.36) is now native on Apple Silicon Mac devices.

### Open From Terminal 

You can use `open -a typora xxx.md` to open the markdown file `xxx.md` in Typora from a command line. If Typora is your default editor for `.md` files, when `open xxx.md` would be enough.

You can also add

```sh
alias typora="open -a typora"
```

in your `.bash_profile` or other configuration file, then you would be able to simply type `typora xxx.md` instead.

For detail, you can [click here](https://support.typora.io/Use-Typora-From-Shell-or-cmd/).

### Quick Look

Typora does not provide quick look plugin for now, but you can use [QLMarkdown](https://github.com/toland/qlmarkdown) or [Glance](https://github.com/samuelmeuli/glance) to achieve this.

### Older macOS Support

The latest version of Typora supports macOS ≥ 10.14, for older macOS support, please check https://support.typora.io/Older-macOS-Support/

## File

### Document-Based App

Typora is a documented-base app, so for macOS, the system provides built-in functions like **[auto-save](https://support.typora.io/Auto-Save/), [version control](https://support.typora.io/Version-Control/), quickly renaming from title bar**, etc.

For example, you can use command + click on titlebar to quickly open parent folders of current file in Typora (and in other macOS app as well):

<video src="/media/macOS/titlebar.mp4" controls style="width:100%"> </video>

### Version Control and Recovery

On macOS, Typora integrates with the native version control function powered by the operation system.

You could simply choose `File` > `Revert To` > `Browse All Versions` from main menu to browse and revert to certain version. More detail can be found [here](https://support.apple.com/guide/mac-help/mh40710/mac).

![Snip20170228_6](/media/macOS/Snip20170228_6.png)

For **untitled** drafts, they are located in `~/Library/Autosave Information`. But please save them just in case.

### Share

You can share a file from `File` → `Share` menu.

<img src="/media/macOS/Screen Shot 2020-12-07 at 00.11.46.png" alt="Screen Shot 2020-12-07 at 00.11.46" style="zoom:50%;" />

## Editing

### Grammar and Spelling Checker

Typora uses macOS built-in grammar and spelling checker, you can enable / disable it in system preferences or from menu bar.

<img src="/media/macOS/Screen Shot 2020-12-06 at 22.44.02.png" alt="Screen Shot 2020-12-06 at 22.44.02" style="zoom:50%;" />

You can also learn spellings from context menu, and the learned new words will be shared among different macOS apps.

### Substitutions

Typora supports macOS built-in text functions like: 

- **smart quote**
- **smart dashes**
-  **text replacement**
- **capitalize words automatically**
- **add period with double space**

You can config them under system preferences.

<img src="/media/macOS/Screen Shot 2020-12-07 at 00.06.06.png" alt="Screen Shot 2020-12-07 at 00.06.06" style="zoom:50%;" />

After config, text substitution will be working in Typora. For features like smart dashes, smart quote and text replacement, you can also enable / disable them from Typora’s `Edit` → `Substitutions` menu.

<video src="/media/macOS/Screen Recording 2020-12-07 at 00.07.54.mov" style="width:100%" controls> </video>

### Services

You can use [service](https://www.computerworld.com/article/2476298/os-x-a-quick-guide-to-services-on-your-mac.html) to extend Typora’s functionality before Typora have its own plugin system.

For example, you can install [WordService](https://apps.apple.com/us/app/wordservice/id899972312?mt=12) for common text operations, such as insert date and time, etc.

<img src="/media/macOS/Screen Shot 2020-12-07 at 00.32.33.png" alt="Screen Shot 2020-12-07 at 00.32.33" style="zoom:50%;" />

### Continuity Camera

Use your iPhone, iPad, or iPod touch to scan documents, draw sketch, or take a picture of something nearby and insert into into Typora on macOS directly.

<img src="/media/macOS/Screen Shot 2020-12-06 at 22.20.07.png" alt="Screen Shot 2020-12-06 at 22.20.07" style="zoom:50%;" />

## View

### Touch Bar

You can use touch bar for context aware quick editing.

![Screen Shot 2020-12-06 at 22.07.32](file:///Users/abner/Sites/typewiki/media/macOS/Screen Shot 2020-12-06 at 22.07.32.png?lastModify=1607354481)

![Screen Shot 2020-12-06 at 22.08.21](file:///Users/abner/Sites/typewiki/media/macOS/Screen Shot 2020-12-06 at 22.08.21.png?lastModify=1607354481)

<img src="/media/macOS/Screen Shot 2020-12-07 at 23.23.58.png" alt="Screen Shot 2020-12-07 at 23.23.58" />

Including change block / inline styles, modify tables (add row,  etc), change list indent, input predictions, etc.

### Dictionary Look Up / Link Preview

You can tap with three fingers on the trackpad to look up words or preview links, just like in Safari. You can find detail [here](https://support.apple.com/guide/mac-help/mchl3983326c/mac).

<img src="/media/macOS/Screen Shot 2020-12-07 at 23.26.27.png" alt="Screen Shot 2020-12-07 at 23.26.27" style="zoom:50%;box-shadow: 0 0 5px #333;" />

### Dark Mode

Typora will use system dark mode color scheme when using dark themes. Or, if you want typora to auto apply themes based on current macOS light / dark mode, you can choose different themes for light mode and dark mode.

<img src="/media/new-97/Screen Shot 2020-12-05 at 17.01.49.png" alt="Screen Shot 2020-12-05 at 17.01.49" style="zoom:50%;" />

