---
layout: post
title: Code Fences
author: typora.io
category: basic
tags:
- code
- fences
- code block
typora-root-url: ../../
typora-copy-images-to: "../../media/code"
last_modified_at: 2025-01-17
---

**Table of Contents**

* Outline
{:toc}


## Basic Usage

You can click `Paragraph` → `Code Fences` from the menu bar, or input <code>```</code> and <kbd>Enter</kbd> key to insert a code block in Typora.

<video src="/media/code/code-input.mp4" autoplay loop style="zoom:50%"></video>

## Syntax Highlight

When you specify a code language for the code block, Typora will highlight the code block based on the selected language.

You can modify the code language for existing code fences in the right bottom input widget of the code block. Or, when creating code fences in markdown, add the code language after <code>```</code>.

<img src="/media/code/react-code.png" alt="Screenshot 2023-05-16 at 19.55.37" style="zoom:50%;" />

### Supported Code Languages

Please [check here for supported code languages](/Code-Fences-Language-Support/).

## Code Actions

### Copy Code Content

You can click <kbd>Ctrl</kbd> / <kbd>Cmd</kbd> + <kbd>A</kbd> to select the whole code block and to copy the code contents.

Or, you can click `Code Tools` → `Copy Code Content` from the context menu, or from menubar → `Paragraph` to quickly copy contents inside the current code block.

### Auto Indent Contents

You can auto indent a selection or the whole code block in `Code Tools` from the context menu or menubar.

<video src="/media/code/auto-indent.mp4" autoplay loop style="zoom:50%"></video>

You can also do this by pressing <kbd>Shift</kbd> + <kbd>Tab</kbd> key after configuring [Shift + Tab Behavior](#shift--tab-behavior).

## Code Fences Options

You can find configurations about code fences under `Preferences Panel` → `Markdown` → `Code Fences`. 

**Please note that these options will be applied after you restart Typora**.

<img src="/media/code/options.png" alt="options" style="zoom:50%;" />

### Show / Hide Line Numbers

You can control whether Typora should show line numbers for code blocks by changing the option `Display line numbers for code fences` under `Preferences Panel` → `Markdown` → `Code Fences`.

| Show Line Numbers                                            | Hide Line Numbers                                            |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="/media/code/Screenshot 2023-05-16 at 20.11.34.png" alt="Screenshot 2023-05-16 at 20.11.34" style="zoom:50%;" /> | <img src="/media/code/Screenshot 2023-05-16 at 20.11.47.png" alt="Screenshot 2023-05-16 at 20.11.47" style="zoom:50%;" /> |

### Auto Wrap Long Lines

You can control whether Typora should auto wrap lines, or provide horizontal scroll, when a code block contains text lines that are longer than the width of its code block container. You can change this option from `Preferences Panel` → `Markdown` → `Code Fences` → `Auto wrap long lines`.

| Wrap Long Lines                                              | No Wrap for Long Lines                                       |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="/media/code/Screenshot 2023-05-16 at 20.21.20.png" alt="Screenshot 2023-05-16 at 20.21.20" style="zoom:50%;" /> | <img src="/media/code/Screenshot 2023-05-16 at 20.21.26.png" alt="Screenshot 2023-05-16 at 20.21.26" style="zoom:50%;" /> |

**Please note** that in exported PDF or printed pages, code blocks will always be wrapped, since there’s no scrollbars for “papers”.

### Shift + Tab Behavior

After version 1.5, by default, <kbd>Shift</kbd> + <kbd>Tab</kbd> and <kbd>Shift</kbd> + <kbd>[</kbd> will indent selected lines in code blocks. 

You can change the option `Use Shift+Tab to auto indent selected code` to let selected lines be [auto indented](#auto-indent-contents).

### Indent Size for Code

This option controls how many <kbd>Tab</kbd>'s are used to render the whitespace in a code block.

### Default Code Language

From version 1.6, you can now set a default code language for code blocks from `Preferences Panel` → `Code Fences`. 

<img src="/media/code/default-lang.png" alt="Screenshot 2023-05-25 at 10.51.51" style="zoom:50%;" />

And Typora provides some apply options:

- Apply default code language when adding code fences from the menubar, context menu, or from shortcut keys.
- Apply default code language when adding code fences by inputting markdown syntax <code>```</code>. You can press **Backspace** key or **Undo** to delete the auto applied code language.
- Apply in both cases.

| Auto Apply Code Language for Code Blocks inserted from menu  | Auto Apply Code Language for Code Blocks inserted from Markdown |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| <video src="/media/new-1.6/menu.mp4" style="width: 100%;" autoplay muted="muted" loop></video> | <video src="/media/new-1.6/code.mp4" style="width: 100%;" autoplay  muted="muted" loop></video> |

You can also choose **Last Used** to auto apply the last used code language when inserting new code blocks.

### Code Block Styles/Themes

You can customize code block styles [following this document](/Code-Block-Styles/).

![Snip20160623_11](/media/code/Snip20160623_11.png)
